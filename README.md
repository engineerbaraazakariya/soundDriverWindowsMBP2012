# soundDriverWindowsMBP2012


`c: & cd \dsdt`<br />
`set 64bit_OS_asl="C:\Program Files (x86)\Windows Kits\10\Tools\x64\ACPIVerify\asl.exe"`<br />
`set 32bit_OS_asl="C:\Program Files (x86)\Windows Kits\10\Tools\x86\ACPIVerify\asl.exe"`<br />
`copy /y %32bit_OS_asl% c:\dsdt > nul & copy /y %64bit_OS_asl% c:\dsdt > nul`<br />
`if not exist c:\dsdt\asl.exe echo ERROR: Failed to copy asl.exe to c:\dsdt`<br />
`acpidump -b -z`<br />
`asl /u dsdt.dat`<br />
`copy dsdt.asl dsdt-modified.asl`<br />
`iasl -da -dl -fe refs.txt dsdt.dat`<br />
// copy dsdt.dsl dsdt-modified.dsl<br />
`iasl -ve dsdt-modified.dsl`<br />
`asl /Fo=dsdt-modified.aml dsdt-modified.asl`<br />
`asl /loadtable dsdt-modified.aml`<br />
`bcdedit -set TESTSIGNING ON`<br />

REFERENCE:::::
https://egpu.io/forums/pc-setup/fix-dsdt-override-to-correct-error-12/?foro=signin
eGPU.io
MENU
Setup & Software DiscussionsThunderbolt Windows eGPU[GUIDE] DSDT override eGPU error 12 fix 
[GUIDE] DSDT override eGPU error 12 fix  
 Subscribe for new replies

1
  of  34 
     Last Post  RSS 
nando4
  nando4
(@nando4)
Noble Member
Admin
  
Joined: 6 years ago
Builds: 4
Posts: 2496
December 23, 2016 5:20 pm    
Page shortcut:  https://egpu.io/DSDT   |  dsdt

[GUIDE] DSDT override eGPU error 12 fix (Windows only)

 

here ◄ Mac owners please work through this thread to solve error 12 before doing a DSDT override
here ◄ pre-compiled DSDT overrides  - load or use as reference when making your own

 

Introduction
 

A Windows system's DSDT table root bridge definition (ACPI PNP0A08 or PNP0A03) is usually confined to a reserved 32-bit space (under 4GB) budgetted to be large enough to host the notebook's PCIe devices. A watermark TOLUD value is then set and locked in the system firmware. Windows OS honors the root bridge definition and will allocate PCIe devices within it. macOS ignores the root bridge constraints as too does Linux when booted with the 'pci=noCRS' parameter. Neither of those OS require a DSDT override and can allocate freely in the huge 64-bit PCIe address space.

 

When retrofitting a eGPU, an error 12 (This device cannot find enough free resources that it can use) can occur against an eGPU in Windows' device manager making it inoperable. This can indicate there is insufficient 32-bit addressing space available to host the eGPU. An eGPU requires a relatively large PCIe config space to allocate into. Decreasing TOLUD by reducing RAM to 2GB offers a somewhat impractical workaround. Rather, the definitive solution is below.

 

This three step solution removes Window's 32-bit PCIe allocation constraint in order to resolve the eGPU error 12:

 

Step 1. Create a dsdt-modified.aml DSDT file with a 36-bit root bridge
 

Step 2. Load your dsdt-modified.aml as registry override or in-memory substitution


Step 3. Confirm success with a 'Large Memory' area in Device Manager
 

 
macOS users: refer instead to Mikeal's post that covers these steps titled Windows 10 - Clover DSDT memory override [UEFI Windows on Macbooks only].

 

 


Step 1. Create a dsdt-modified.aml DSDT file with a 36-bit root bridge
 

 i. Download and install required tools:


Windows Binary Tools (WBT - Dec 2016) extracted to c:\dsdt directory.  [ newer WBT has parsing errors]
Windows Driver Kit (WDK), which contains the Windows ASL Compiler (asl.exe)
Notepad++ text editor with Search->Goto (line) menu for fast line editting if asl or iasl compilation fails below
 

ii. Copy WDK's ASL compiler into the c:\dsdt directory. Do this by opening Command Prompt (run as administrator) and then copy-and-paste the commands below.

mkdir c:\dsdt
c: & cd \dsdt
set 64bit_OS_asl="C:\Program Files (x86)\Windows Kits\10\Tools\x64\ACPIVerify\asl.exe"
set 32bit_OS_asl="C:\Program Files (x86)\Windows Kits\10\Tools\x86\ACPIVerify\asl.exe"
copy /y %32bit_OS_asl% c:\dsdt > nul & copy /y %64bit_OS_asl% c:\dsdt > nul
if not exist c:\dsdt\asl.exe echo ERROR: Failed to copy asl.exe to c:\dsdt
 

iii. Dump your ACPI tables to disk files (dsdt.asl and dsdt.dat) with these commands at Command Prompt (run as administrator). The created dsdt.asl is copied here as dsdt-modified.asl which is used later on to make our required modifications.

c: & cd \dsdt
acpidump -b -z
asl /u dsdt.dat
copy dsdt.asl dsdt-modified.asl
 

iv. You now can choose either the Intel method or Microsoft method (with blue dsdt-modified.dsl or magenta dsdt-modified.asl work file respectively) to generate a dsdt-modified.aml file, even trying both to maximize success. Consider:

- For systems other than Lenovo, use the Intel method as their DSDT usually has an Intel creation signature.

- Lenovo Thinkpad X220, T420, W530, T540P and likely other 2nd-4th gen i-core Lenovo Thinkpad systems are known to require the Microsoft method . The Intel method causes a "ACPI BIOS ERROR" on Windows bootup there.

 


OPTION 1: Use the Intel method
 

i. Save this >> refs.txt file << to your c:\dsdt folder. What is it used for? From tonymacx86: The iasl disassembler will attempt to guess the number of arguments [for unresolved symbols not defined in any file] but often guesses poorly. You can correct it by providing the external declarations in a refs.txt text file. It contains some common (and not so common) missing symbols . . .

 

ii. From the Command Prompt (admin), decompile dsdt.dat as dsdt.dsl . The refs.txt file is used here. dsdt.dsl is then copied as dsdt-modified.dsl on which we'll make the required changes on.

c: & cd \dsdt
iasl -da -dl -fe refs.txt dsdt.dat
copy dsdt.dsl dsdt-modified.dsl
 

iii. With Notepad++, open the resultant c:\dsdt\dsdt-modified.dsl file and search for ResourceProducer. Beneath it will be a series of "DWordMemory" resource entries. Under the last DWordMemory entry in that area, typically above the _CRS method, add a 'QWordMemory' (64-bit) entry as shown below. The range chosen is in the 36-bit range (< 64GB) to maintain compatibility with PAE-capable 32-bit Windows. A location above 48GB was chosen to alleviate issues with 32GB equipped systems. Here we use between 48.5GB to 56.25GB. Once systems start shipping with 64GB of RAM, this will need to be revised to use a 64-bit address.

 

DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
   0x00000000,         // Granularity
   0x000A0000,         // Range Minimum
   0x000BFFFF,         // Range Maximum
   0x00000000,         // Translation Offset
   0x00020000,         // Length
   ,, , AddressRangeMemory, TypeStatic)
// - ADD THIS SECTION ---------------------------------------------------------------------------
QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
   0x0000000000000000, // Granularity
   0x0000000C20000000, // Range Minimum,  set it to 48.5GB
   0x0000000E0FFFFFFF, // Range Maximum,  set it to 56.25GB
   0x0000000000000000, // Translation Offset
   0x00000001F0000000, // Length calculated by Range Max - Range Min.
   ,, , AddressRangeMemory, TypeStatic)
// ----------------------------------------------------------------------------------------------
})
   Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
 

iv. Create a dsdt-modified.aml file . The  '-ve' disables warning messages.

c: & cd \dsdt
iasl -ve dsdt-modified.dsl
 

It is unlikely this will succeed first time as the compiler is very strict. Errors reported will need to be looked at with Notepad++ on the line they occur on. Search for a unique error keyword from your dsdt-modified.dsl error line within dsdt-modified.asl (it may look a bit different) and the just swap the lines above/below into your dsdt-modified.dsl file and compile. This was sufficient to get a Dell XPS 9350, Dell E6540, 2016 15" Macbook Pro DSDT override all done perfectly.

 

If stuck then see eGPU.io's public pre-compiled DSDT repository for various systems. If one exists for your system then can download it along with Winmerge  to merge the file changes into your dsdt-modified.dsl work file. There are also other fixes like described at [Guide] Patching LAPTOP DSDT/SSDTs (tonymacx86). Consider also asking for guidance at the DSDT-centric tonymacx86.com DSDT forums . Then try compiling your DSDT again.

 

v . Proceed to Step 2 to load your dsdt-modified.aml file.

 


OPTION 2: Use the Microsoft method
 

 i. With Notepad++, find the working area in your c:\dsdt\dsdt-modified.asl file as shown in screenshots below. In that area, make the following two edits. These are annonated in those screenshots.

 

EDIT 1: use Windows' calc in programmers mode to add hexidecimal 2E (46 decimal) to your "Buffer(value)" line. Examples:

"Buffer(0x1C0)" becomes "Buffer(0x1EE)"
"Buffer(0x1D4)" becomes "Buffer(0x202)"

EDIT 2: replace "0x79, 0x00" in the hex table end with the following 46 hex values, also ending with "0x79, 0x00". This adds the same 36-bit QWordMemory resource entry shown in the Intel method but as a hex table.

 

[ copy-and-paste this table ]
0x8a, 0x2b, 0x00, 0x00, 0x0c, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x0c, 0x00, 0x00, 0x00, 0xff, 0xff,
0xff, 0x0f, 0x0e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0xf0, 0x01, 0x00, 0x00, 0x00, 0x79, 0x00   
 

For Lenovo Systems [ CLICK on images to zoom ]

	 	


 

 

For other systems [ CLICK on images to zoom ]

	 	


 

 

ii. At the Command Prompt (admin), compile your dsdt-modified.asl file to generate a dsdt-modified.aml file:

c: & cd \dsdt
asl /Fo=dsdt-modified.aml dsdt-modified.asl
 

This will almost certainly fail to generate a dsdt-modified.aml on your first compile attempt due to to error lines requiring further editting of your dsdt-modified.asl file, like the ones below (further example here), followed by another compile attempt. A successful compilation with many warnings is OK.

- ATMC() - error: ATMC is not a method -> swap ATMC with \_SB_.PCI0.LPC_.EC__.ATMC()
- Zero - error: unexpected ASL term type -> add 'Zero' as bracketted argument to line above it, eg: GLIS (Zero)
- Arg0 - error: unexpected ASL term type -> add 'Argo0' as bracketted argument to line above it, eg: GDCK (Arg0)

 

iii. Open c:\dsdt with Windows explorer. Compare the size of your created dsdt-modified.aml file against the memory dumped dsdt.dat. They should be within +/- 10% of each other in size. If not, repeat the above process to make sure no mistakes were made.

A HP Elitebook 8440P saw the generated dsdt-modified.aml being only 15% the size of the memory dumped dsdt.dat. There this process simply did not work. For such cases use the Intel method instead.

 

iv . Proceed to Step 2 to load your dsdt-modified.aml file.

 

 


Step 2. Load your dsdt-modified.aml as a registry override or in-memory substitution
 

OPTION 1: Load your dsdt-modified.aml as a registry override with Windows test signing mode enabled
 

Here we load your dsdt-modified.aml as Windows registry DSDT override. Do note that an invalid dsdt-modified.aml loaded in this way can cause a BSOD on bootup. Furthermore, Windows test signing mode can be problematic for app compatibility. Both these issues can be avoided by using OPTION 2: Avoid test signing mode - load your dsdt-modified.aml as an in memory DSDT substitution.

 

i. At Command Prompt (admin) type the following.  WDK containing asl.exe must be installed per Step 1 (i) and (ii)  for this to work.

c: & cd \dsdt
asl /loadtable dsdt-modified.aml  
 

ii. Enable TESTSIGNING mode for the registry override to apply. At the Command Prompt (admin) type:

bcdedit -set TESTSIGNING ON
 

If get an error like below when do this, then disable SECURE BOOT in your BIOS.

An error has occurred setting the element data
The value is protected by Secure Boot policy and cannot be modified or deleted

 

iii. Reboot your system and check for 'large memory' in step 3.

 

 


OPTION 2: Avoid test signing mode - load your dsdt-modified.aml as an in memory DSDT substitution
 

Here we avoid the problematic registry override & test signing mode altogether by loading the DSDT as an in-memory substitution before Windows loads with these steps:

 

i. Disable the previous registry DSDT override and test signing mode.

bcdedit -set TESTSIGNING OFF
 

ii. check whether you are using a MBR or UEFI Windows installation by viewing Device Manager->Disk Drives->[double-click boot drive]->Volumes->Populate->Partition Style. If it says "MBR", then it's a MBR install. If it says "GPT" then it's a UEFI install. This will determine which next step to apply.

 



 
iii. [ MBR mode ] Load the dsdt-modified.aml as an in-memory substitution via nando's DIY eGPU Setup 1.35 in the next post.

 

iv. [ UEFI mode] Load the dsdt-modified.aml as an in-memory substitution via Clover bootloader as follows:

 

Update Feb-2019 >> Mac users are advised to use @goalque's automate-eGPU EFI instead of Clover to load your resultant DSDT override to avoid issue noted below in the BIG WARNING.

 

BIG WARNING by nando4 >> @Goalque has correctly identified that Clover loads a DSDT table in firmware volume and as such can brick a Macbook as this user found. If you proceed with using Clover to do a DSDT override the you do so at your own risk!! For risk-adverse users it is suggested to simply do a DSDT registry override and persevere with Windows' test signing mode until other solutions are found and presented.

- Mount your EFI volume as s: drive and backup your existing \EFI\BOOT\BOOTX64.efi file. At Command Prompt (admin) type:

mountvol s: /s
copy s:\EFI\BOOT\BOOTX64.efi s:\EFI\BOOT\BOOTX64.win
 

- Download the Clover ISO file and install it by extracting with 7-zip (64-bit only) the clover.tar.lzma->clover.tar->clover.pkg->\EFI folder to s:\EFI. Be sure to use the the 7-zip interface to extract to s: drive as Windows explorer refuses to allow viewing of the s: EFI volume.

 

- Copy your dsdt-modified.aml file as dsdt.aml to s:\EFI\CLOVER\ACPI\Windows, the directory Clover uses to preload it. If your source dsdt-modified.aml file is not in c:\dsdt then use this workaround to copy-and-paste it. Locate your dsdt-modified.aml file with Explorer, right-click, rename to dsdt.aml, right-click, copy. Then hit CTRL+ALT+DEL, task manager, File->New task. Explore the s:\EFI\CLOVER\ACPI\WINDOWS directory and paste it there.

 

Otherwise at the Command Prompt (admin) type:

copy c:\dsdt\dsdt-modified.aml s:\EFI\CLOVER\ACPI\WINDOWS‌\dsdt.aml
 

- Reboot via Clover -> Windows EFI menu and proceed to step 3 to confirm it worked.

 


Step 3. Confirm success with a 'large memory' area in Device Manager
 

Check you now have a new Large Memory entry in Device Manager as shown below to confirm your dsdt-modified.aml was a success:



 

Success stories
 

Mikeal - 2016 15" Macbook Pro + Razer Core + GTX1070. SUCCESS! Allocated the eGPU into 36-bit space.
itsage - 2016 13" Macbook Pro + AKiTiO Thunder3 + GTX980Ti. SUCCESS! Allocated the eGPU into 36-bit space.
batist - 2013 15" Lenovo T540 + EXP GDC + GTX680. SUCCESS! Allocated the eGPU into 36-bit space.
nando4 - HP ZBook 17 G2 + AKiTiO Thunder2 + GTX970. SUCCESS! Allocated the eGPU into 36-bit space.


 

FAQ
 

1. I still have an error 12 with the 'large memory' area present. How can I fix it?

If Win10 doesn't automatically allocate your eGPU into the 36-bit space and still see error 12 then there are some further options to pursue:
 
i. [MBR/Legacy boot - not UEFI] Force allocate the eGPU into 36-bit PCI space before booting Windows with nando's DIY eGPU Setup 1.35 software:

At Windows boot menu, select Setup 1.35
Boot Setup 1.35 -> menu-based
Select PCI compaction->Endpoint=56.25GB (36-bit)
Select PCI compaction->Run compact. When prompted for the scope select eGPU.
Select Chainloader->Test Run
At Windows boot menu, select Windows.
 

Your result will be then be like shown in step 3 above, but you'll have the eGPU rather then the (example) HD8790M dGPU allocated into 36-bit PCI space.

 

ii. Use the bcdedit forcedisable option to override the advanced PCI Express features and use legacy PCI Express behavior as explained by Microsoft. madjester confirmed this fixed error 12 on 2015 13" MBP after doing a DSDT override here (thank you!)

bcdedit.exe -set PCIEXPRESS FORCEDISABLE
 

iii. Re plug'n'play the devices. Go into Device Manager -> Video cards, delete the eGPU. Also go into Device Manager -> System devices and delete the PCI Express Root Port x entries.

Window should now be clever enough to re-allocate the eGPU into 36-bit space upon realizing there is insufficient 32-bit space to host it.

Can go one step further and delete your eGPU NVidia/ATiAMD driver, restart the system and reload it. That may help as well.

 

iv. From here:

remove all of the devices in Device Manager - Resources using the large memory space (All of the ones with a blue icon - not the USB icon one!)
Hot Plug the eGPU (Within a few minutes the eGPU will be usable without error 12 and the other devices will also come back and start working again)
Everything should work
 

2. How do I disable the registry DSDT override?

The easiest method is to disable TESTSIGNING. If your system fails to boot with the DSDT override in place then boot in Safe Mode and disable TEST SIGNING.

bcdedit -set TESTSIGNING OFF 
 

Remove the DSDT override from the registry:

c: & cd\dsdt
asl /loadtable -d dsdt-modified.aml
 

.. or remove this DSDT key in the registry. Windows will create a new one derived from your system bootup ACPI DSDT table upon restart:

HKEY_LOCAL_MACHINE\SYSTEM\ControlSetXXX\services\ACPI\Parameters\DSDT

* where XXX are 001, 002, 003 & so on.

and

HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\ACPI\Parameters\DSDT
 

eGPU Setup 1.35    •    eGPU Port Bandwidth Reference Table

 
2015 15" Dell Precision 7510 (Q M1000M) [6th,4C,H] + GTX 1080 Ti @32Gbps-M.2 (ADT-Link R43SG) + Win10 1803 // compares M.2 vs TB3 performance inc unoptimized H-CPU BIOS [build link]  


Lauri Elias, Dolphin, Way Yang Cheong and 11 people likedReplyQuoteLikeReport
 Topic Tags
error 12DSDT overridewindowseGPU Setup 1.3x
nando4
  nando4
(@nando4)
Noble Member
Admin
  
Joined: 6 years ago
Builds: 4
Posts: 2496
December 24, 2016 3:11 am    
GUIDE: an in-memory DSDT override using nando's DIY eGPU Setup 1.35 [MBR partitions only]

Windows 10 or 8 enumerates the DSDT table from the in-memory copy on every boot. The only way to change that is to either:

- perform a registry DSDT override with test signing enabled as described in the above post. Do not that some apps are either problematic or refuse to run with test signing enabled.

- perform an in-memory DSDT table substitution using nando's DIY eGPU Setup 1.35 pre-boot environment which eliminates the need to alter your registry or enable test signing as explained in this post.

 

How to do a in-memory DSDT override using nando's DIY eGPU Setup 1.35?
 

 Pre-requisite requirements
A c:\dsdt\dsdt-modified.aml file created at step1 above or downloaded from eGPU.io's DSDT repository.
 

This c:\dsdt\dsdt-modified.aml must be smaller than your memory dumped dsdt.dat
 

Check by doing a file size comparison like shown here. Setup 1.35 also does this check before loading your dsdt-modified.aml and won't load  it f it doesn't pass. This prevents corruption of other ACPI tables which would cause a Windows boot to crash.

To achieve a smaller dsdt-modified.aml file, incrementally remove sections listed below in your  dsdt-modified.dsl  (Intel method) or  dsdt-modified.asl  (Microsoft method), followed by a recompile with 'iasl -ve  dsdt-modified.dsl '  or 'asl /Fo=dsdt-modified.aml dsdt-modified.asl ' respectively. Then re-do the file size comparison.

i. remove unnecessary Linux and older Windows entries in the _OSI section of the file like highlighted here.

ii. remove unused PEG0, PEG1, PEG2, used to host a dGPU.  If do have a dGPU and intend to use it when your eGPU is active then keep PEG0.

iii. remove non-existent LPT (parallel ports), COM (serial) and eSATA ports.

iv. If have access to macOS, use MaciASL to compile your dsdt-modified.dsl. It creates a smaller dsdt-modified.aml.

 

How to load your dsdt-modified.aml via DIY eGPU Setup 1.35
 

1. Copy your dsdt-modified.aml file as dsdt.aml into Setup 1.35's  v:\config directory

:: Mount the Setup 1.35 disk image as V: drive
c:\eGPU\eGPU-setup-mount
copy c:\dsdt\dsdt-modified.aml v:\config\dsdt.aml

 

2. Boot into nando's DIY eGPU Setup 1.35 -> automated startup via startup.bat (default).

It will automatically load this dsdt.aml file and present the Windows bootloader where you then select Windows. Check for the 'Large Memory' area to indicate a successful in-memory DSDT override like shown below in View->Devices By Connection. Then check for error 12 against your eGPU..

 

3. If there is an error 12. then force allocate the eGPU into the DSDT override's 36-bit PCI space:

At Windows boot menu, select Setup 1.35
Boot Setup 1.35 -> menu-based
Select PCI compaction->Endpoint=56.25GB (36-bit)
Select PCI compaction->Run compact. When prompted for the scope select eGPU, force 32-bit=none.
Select startup.bat->Test Run.
Select Chainloader->Test Run
At Windows boot menu, select Windows.
 

Does this work?
 

Yes.  Below we see the new 'Large Memory Area' indicating the PCI BUS now extends into 36-bit PCI space with the iGPU (didn't have an eGPU at hand) relocated into that 36-bit space.

  

This post was modified 4 weeks ago
eGPU Setup 1.35    •    eGPU Port Bandwidth Reference Table

 
2015 15" Dell Precision 7510 (Q M1000M) [6th,4C,H] + GTX 1080 Ti @32Gbps-M.2 (ADT-Link R43SG) + Win10 1803 // compares M.2 vs TB3 performance inc unoptimized H-CPU BIOS [build link]  


itsage likedReplyQuoteLikeReport
nando4
  nando4
(@nando4)
Noble Member
Admin
  
Joined: 6 years ago
Builds: 4
Posts: 2496
December 24, 2016 7:57 am    
Posted by: SamuelFDias
 Hello there! Smile no problem.

@nando4 I still have the same problem.. the eGpu insists to connect to other Pci root port, instead the one created under the large memory... What should I do?

I already unistall all the ports, the eGPU and the nvidia drivers, but it still not connect to the large memory..

Posted by: Yukikaze

Samuel, I think that Setup 1.35 should be able to fix that, because I believe you can force it to allocate the eGPU to the large/high memory area. I am not sure if there is a way to do it without Setup 1.35, but nando might know how to.

 

If the eGPU won't auto-allocate to the 'Large Memory' area, then revert to using eGPU Setup 1.35 software to hard allocate it in a pre-boot environment.

@everyone, the opening post is presented with an up-to-date DSDT override example using a 4th gen i-core Dell E6540. Unfortunately previous discussion was deleted along with the thread due to an offsite issue.  Sincerest apologies there.

eGPU Setup 1.35    •    eGPU Port Bandwidth Reference Table

 
2015 15" Dell Precision 7510 (Q M1000M) [6th,4C,H] + GTX 1080 Ti @32Gbps-M.2 (ADT-Link R43SG) + Win10 1803 // compares M.2 vs TB3 performance inc unoptimized H-CPU BIOS [build link]  


itsage likedReplyQuoteLikeReport
itsage
  itsage
(@itsage)
Founder
Admin
Joined: 6 years ago
Builds: 158
Posts: 7715
   
itsage - Facebook itsage - Twitter
January 3, 2017 1:56 am    
Thank you Nando4! I was able to solve Error 12 on the 2016 15" MacBook Pro following your DSDT Override instructions. No BSOD and Large Memory shows up in Device Manager.

LinkedIn | Youtube | Instagram
 
• external graphics card builds
• best laptops for external GPU
• eGPU enclosure buyer's guide

 
2022 13" ASUS ROG Flow X13 (RTX3050Ti) [R6K,8C,H] + RTX 3080 @ 32Gbps-USB4 (AORUS Gaming Box) + Win11 [build link]  


nando4 likedReplyQuoteLikeReport
sobi123
  sobi123
(@sobi123)
New Member
Joined: 6 years ago
Posts: 2
January 13, 2017 10:20 am    
Thanks @nando4, that did the trick It wouldn't run without setup 1.35 and compacting. After 2 days of tinkering with DSDT. I needed to cut "If (COND) FPED" statement and paste to where OS's are listed. Also added QWORD. Now that I know what I'm doing it's 2 min.

For reference my config is HP 2570p (i5 3360m) - Win 10 x64 + Asus GTX 1060 6GB Turbo + EXP GDC 8 ExpressCard PCIe x2 + 8GB 1600Mhz. Witcher 3 on Ultra Avg 40-50FPS 1080p.

Many thanks

Sobi

To do: Create my signature with system and expected eGPU configuration information to give context to my posts. I have no builds.

.

nando4 likedReplyQuoteLikeReport
Yukikaze
  Yukikaze
(@yukikaze)
Noble Member
Moderator
  
Joined: 6 years ago
Builds: 24
Posts: 1016
January 13, 2017 7:06 pm    
In my experience with my X230 and an Expresscard eGPU, the latest Lenovo X230 BIOS has no TOLUD problems. My HD7950 worked with it without any DSDT overrides or any Setup1.3x remapping of the eGPU. As far as I know, though, the X220 never got such a BIOS update.

Want to output 4K@60Hz out of an old system on the cheap? Read here.
Give your Node Pro a second Thunderbolt3 controller for reliable peripherals by re-using a TB3 dock (~50$).

"Always listen to experts. They'll tell you what can't be done, and why. Then do it."- Robert A. Heinlein, "Time Enough for Love."

 
2012 Mac Mini [3rd,4C,Q] + RX 480 @ 10Gbps-TB1 (Atto Thunderlink) + macOS 10.15.7 [build link]  


nando4 likedReplyQuoteLikeReport
Mikeal
  Mikeal
(@mikeal)
Active Member
Joined: 6 years ago
Builds: 1
Posts: 15
January 18, 2017 3:39 am    
GUIDE: an in-memory DSDT override using MaciASL+ Clover [UEFI Windows on Macbooks only]

 

here ◄ is Mikeal's updated second revision of this article

 

Update Feb-2019 >>Mac users are advised to use @goalque's automate-eGPU EFI instead of Clover to load your resultant DSDT override to avoid issue noted below in the BIG WARNING.

BIG WARNING by nando4 >> @Goalque has correctly identified that Clover loads a DSDT table in firmware volume and as such can brick a Macbook as this user  found. If you proceed with using Clover to do a DSDT override the  you do so at your own risk!! For risk-adverse users it is suggested to simply do a DSDT registry override and persevere with Windows' test signing mode until other solutions are found and presented.

 

I have this working on a 2016 15" Macbook Pro MBP w/touch RX460 1TB with Clover loading a modified DSDT and the problematic Win10 test signing disabled.  Thank you to nando4 for pointing out using Clover for DSDT link for UEFI installations,  instructions in the opening post and formatting this post.

 

1. Boot into Windows and disable test mode if enabled using Command Prompt (admin)

bcdedit -set TESTSIGNING OFF‌‌ 
 

2. Reboot into macOS. Install / Load MaciASL. We will use MaciASL in MacOS to extract, edit, and compile the DSDT table.



 

 

3.  Make the QWordMemory modification as detailed in opening thread post, copied here:


Search for "ResourceProducer".  Beneath it will be a series of "DWordMemory" resource entries. Under the last DWordMemory entry in that area, typically above the _CRS method, add a 'QWordMemory' (64-bit) entry as shown in red below. The range chosen is in the 36-bit range (< 64GB) to maintain compatibility with the PAE-capable 32-bit Windows. A location above 48GB was chosen to alleviate issues with 32GB equipped systems. Here we use between 48.5GB to 56.25GB. Once systems start shipping with 64GB, this will need to be revised to 64-bit space.

 

DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
   0x00000000,         // Granularity
   0x000A0000,         // Range Minimum
   0x000BFFFF,         // Range Maximum
   0x00000000,         // Translation Offset
   0x00020000,         // Length
   ,, , AddressRangeMemory, TypeStatic)
QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
   0x0000000000000000, // Granularity
   0x0000000C20000000, // Range Minimum,  set it to 48.5GB
   0x0000000E0FFFFFFF, // Range Maximum,  set it to 56.25GB
   0x0000000000000000, // Translation Offset
   0x00000001F0000000, // Length calculated by Range Max - Range Min.
   ,, , AddressRangeMemory, TypeStatic)
})
   Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
‌

Save as DSDT.aml‌

 

4.  Download clover‌

 

5. Insert / automount a usb drive‌

 

6. Run the Clover package installer, and select the USB drive as the destination drive‌

 

7. Open Terminal:

sudo bash ‌
mkdir /Volumes/EFI‌
mount -t msdos /dev/disk0s1 /Volumes/EFI‌‌
leave this window open‌

 

8. Open Finder

 Look for the usb device, go into the EFI folder, copy the CLOVER folder‌
Paste CLOVER folder into /Volumes/EFI/EFI/‌

‌

9. Go back to the elevated terminal window‌ and copy your DSDL.aml file to /Volumes/EFI/EFI/CLOVER/ACPI/WINDOWS‌.  Alternatively, use Finder to copy-and-paste your dsdt.aml file there.

cp ~/Documents/DSDT.aml /Volumes/EFI/EFI/CLOVER/ACPI/WINDOWS‌
 

The final file structure looking like this:



 

10. Reboot into Clover, select Windows, /clap && open beer to celebrate full Windows (no test signing mode) & eGPU functionality with 'large memory' area in Device Manager to indicate DSDT override was a success.

[ click to zoom ]


 

Update:  I still have an error 12 with the 'large memory' area present. How can I fix it?

 
If Win10 doesn't automatically allocate your eGPU into the 36-bit space and still see error 12 then there are some further options to pursue:
 
i. Use the bcdedit forcedisable option to override the advanced PCI Express features and use legacy PCI Express behavior as explained by Microsoft. madjester confirmed this fixed error 12 on 2015 13" MBP after doing a DSDT override here (thank you!)

bcdedit.exe -set PCIEXPRESS FORCEDISABLE
 

ii.  Work through https://egpu.io/forums/mac-setup/2016-macbook-pro-solving-egpu-error-12-in-windows-10/

 

Update: my internal soundcard doesn't work after applying this fix. What can I do?

See solution at https://egpu.io/forums/builds/2016-macbook-13-tb-akitio-thunder3-evga-gtx-1060-6gb/#post-2614

2016 15" MacBook Pro (RP460) [6th,4C,H] + GTX 980 Ti @ 32Gbps-TB3 (Razer Core) + macOS 10.12 & Win10 [build link]  

nando4 likedReplyQuoteLikeReport
Devaspark
  Devaspark
(@devaspark)
New Member
Joined: 6 years ago
Posts: 2
January 20, 2017 12:51 am    
Just wanted to let you know how it went for me. I also have the late 2016 MacBook Pro 460. I tried Mikeal's method and it worked perfectly.

However, one issue/side effect. If I boot up with both the Razer Core and the USB-C to USB adapter, it would give me the Code 12 Error. Only when I disconnected it and boot up with the RC, does it work. (to be clear, adapter with an usb device attached such as mouse or keyboard)

After booting up, you can connect the adapter normally.

It's kinda weird or maybe something wrong with my system allocation but the adapter somehow screws up the reallocation.

Hope this helps.

To do: Create my signature with system and expected eGPU configuration information to give context to my posts. I have no builds.

.

nando4 likedReplyQuoteLikeReport
Mikeal
  Mikeal
(@mikeal)
Active Member
Joined: 6 years ago
Builds: 1
Posts: 15
January 20, 2017 4:02 am    
Hi Devaspark,

Are you using the USB adapter on the same side the core is connected?  I stopped using that one because I was having issues and thought it was because they shared the thunderbolt controller.  I switched to a cheap ankar USB-C to 4 port USB 3.1 adapter on the other side.  Even if the core side 2nd adapter was working for me, it got bad performance(Oculus complained about tracking).  I have no problem running all 3 sensors and the Rift off the other side though.

2016 15" MacBook Pro (RP460) [6th,4C,H] + GTX 980 Ti @ 32Gbps-TB3 (Razer Core) + macOS 10.12 & Win10 [build link]  

ReplyQuoteLikeReport
StevenOmg
  StevenOmg
(@stevenomg)
New Member
Joined: 6 years ago
Posts: 3
January 20, 2017 4:12 am    
Hi，Devaspark @ Devaspark

I have the Macbook pro 450 and I also use Mikeal's way to deal with the problem of the Code 12 Error. However, I have the issue of the DSDT compilation. Do you have this error: code 4096, unexpected PARSEOP_IF, expecting“,"or")"

If you have fixed the same errors, would you like to tell me how to do? Thank you.

To do: Create my signature with system and expected eGPU configuration information to give context to my posts. I have no builds.

.

ReplyQuoteLikeReport

1
  of  34 
Leave a reply

RE: [GUIDE] DSDT override eGPU error 12 fix

File Edit View Insert Format Tools Table 
14px

 
 Subscribe to this topic
 Preview 0 Revisions Saved
  All forum topics
  Previous Topic
Next Topic  
 Related Topics
 [GUIDE] Windows 10 / 11 solutions for eGPU BSOD, crashing, freezing and stuttering - (Link State Power Mgmt, Nvidia Power Mgmt, TdrDelay & TdrDdiDelay, Disable iGPU/dGPU, Disable DynamickTick, Disable Nvidia Resizable BAR)3 days ago
 Problem: Razer Core X is not charging my laptop2 weeks ago
 [WIN 11, ERROR CODE 12 + BSOD] Need help troubleshooting1 month ago
 How to disconnect Nvidia eGPU without crashing the Windows OS?2 months ago
 Sonnet 750ex USB Hub/Ethernet issues5 months ago
 Topic Tags:  error 12 (59), DSDT override (2), windows (38), eGPU Setup 1.3x (2)
 Currently viewing this topic 7 member and 10 guests.


 Truth Glow
(@truth_glow)
Online Members
 joysthokkins                       valoriesiede950
Recent Posts
chx
Wikingoo SFF eGPUs

Housing 1 & Housing 2 eGPU From the looks it is utilizing the same TB3-PCIe boa...

By chx, 3 hours ago

chx
RE: EXP GDC TH3P4G2 / TH3P4G3 Thunderbolt GPU Dock Review

Aye, that was a scam, it was delivered to Ontario while I am in BC, I asked what's up...

By chx, 4 hours ago

OmegaMalkior
RE: 2022 14" ASUS ZenBook 14X Space Edition [12th,14C,H] + RTX 4090 @ 32Gbps-TB4 (Razer Core X) + Win11 22H2

@wildfear @pau1ow got it fixed, had to do a clean install for it to work right. Haven...

By OmegaMalkior, 4 hours ago

Umamis Boy
RE: Some games don't fully utilize egpu (50% or less) while others do.

@dxphegpuio, I purchased a different EGPU on Amazon. It's called the Akitio Node Tita...

By Umamis Boy, 5 hours ago

nu_ninja
RE: 2022 14" Lenovo Thinkpad T14s Gen 3 (680M) [R6K,8C,U] + RX 580 @ 32Gbps-USB4 (AKiTiO Node) + Linux Fedora Silver Blue 36 & Win11

@alfonso_taboada Yes I tested an nvidia gtx 745 and it worked in windows and linux ...

By nu_ninja, 6 hours ago

marginose
2013 15" Acer Aspire E1-572 [4th,2C,U] + GTX 750 Ti @ 4Gbps-mPCIe2 (PCE164P-N03) + Win10 22H2

System specs (model inc screen size, CPU, iGPU, dGPU, operating system which eGPU is ...

By marginose, 7 hours ago

Alfonso Taboada
RE: 2022 14" Lenovo Thinkpad T14s Gen 3 (680M) [R6K,8C,U] + RX 580 @ 32Gbps-USB4 (AKiTiO Node) + Linux Fedora Silver Blue 36 & Win11

Did you try an nvidia egpu as well?

By Alfonso Taboada, 11 hours ago

stillyahoo
RE: 2017 15" Dell Inspiron 15 7577 (GTX1050) [7th,4C,H] + RTX 3070 @ 32Gbps-TB3 (Razer Core X) + Win10 21H1 // tested with extra GPUs GTX 1050Ti, 1060, 1660S

@surfx Thank you mate you are a legend. I haven't even read through your results ye...

By stillyahoo, 13 hours ago

Ariel Garza
Video signal dropping from Razer Core X

About two weeks ago, I noticed that I had no signal on my monitor (Vizio D32f-J04) af...

By Ariel Garza, 1 day ago

Escape FromVorkuta
eGPU slow without DXVK on Windows in Call of Duty 4 - Demo(GT 1030)

Hello. Im facing a problem. If i play in 1080p with DirectX my framerate jumps ...

By Escape FromVorkuta, 1 day ago

Dolphin
RE: [GUIDE] DSDT override eGPU error 12 fix

I am curious about your case that the iGPU faces the error 12 while the eGPU is worki...

By Dolphin, 1 day ago

DXPHeGPUio
RE: Some games don't fully utilize egpu (50% or less) while others do.

Does Forza drop to 15-20 FPS on the benchmark framerate graph and stutter so bad that...

By DXPHeGPUio, 1 day ago

Umamis Boy
RE: Some games don't fully utilize egpu (50% or less) while others do.

@dxphegpuio, I maxed the power draw to the CPU before trying it. I'm glad I'm not the...

By Umamis Boy, 1 day ago

DXPHeGPUio
RE: Some games don't fully utilize egpu (50% or less) while others do.

Spider Man Remastered is one of those games that are abjectly bad on eGPUs. This guy ...

By DXPHeGPUio, 1 day ago

heisejianmo
RE: [GUIDE] DSDT override eGPU error 12 fix

Hi, I am encountering error 12 on my integrated GPU instead of my eGPU after setting ...

By heisejianmo, 1 day ago

Boltoway
RE: Buyer's Guide: Laptops

@sou_fantastico, The laptop guide was created during a time when Thunderbolt and e...

By Boltoway, 1 day ago

Boltoway
RE: 2018 15" Lenovo Thinkpad P52 (Q P3200) [8th,6C,H] + GTX 1080 Ti @ 32Gbps-TB3 (Razer Core) + Win10

@iliffe, You have two options here. You could get a Thunderbolt 3 eGPU or you coul...

By Boltoway, 1 day ago

Umamis Boy
Some games don't fully utilize egpu (50% or less) while others do.

-Razer Core X with a 1660ti (latest nvidia drivers) -GPD Win Max 2 with USB 4 port,...

By Umamis Boy, 2 days ago

Sou Fantástico
Buyer's Guide: Laptops

Hi all,   Newcomer to this fine community, hoping to find a good laptop+eGPU...

By Sou Fantástico, 2 days ago

iliffe
ThinkPad P52 (2018) i7-8850H 4.3ghz, 16GB DDR4 2400mhz, Nvidia Quadro P1000 4GB

Hi Everyone, I was wondering if there is anyone that could help me, i am looking to...

By iliffe, 2 days ago

nando4
RE: Is JHH-Link Dock-M.2 NGFF cable compatible with PCE164P-N08 eGPU adapter?

Doubt a JHH-Link Dock M.2 NGFF cable will work with a PCE164P-N03 / PCE164P-N06 type ...

By nando4, 2 days ago

DiogoBr127
Is JHH-Link Dock-M.2 NGFF cable compatible with PCE164P-N08 eGPU adapter?

Guys, a friend is wanting to make an Egpu and with that came some doubts, I have a PC...

By DiogoBr127, 2 days ago

Anton Kulaga
Razer Core + Nvidia + System76 laptop

I have System76 Lemur Pro (lemp11) laptop and Razer Core with Nvidia RTX3060 and I co...

By Anton Kulaga, 2 days ago

Darío Morata Fernández
RE: [GUIDE] error 12/43 & other detection, bootup, stability & performance issues

@celia_dahlem, Did you try to uninstall drivers with DDU and make a clean install of ...

By Darío Morata Fernández, 3 days ago

22t
RE: [GUIDE] Windows 10 / 11 solutions for eGPU BSOD, crashing, freezing and stuttering - (Link State Power Mgmt, Nvidia Power Mgmt, TdrDelay & TdrDdiDelay, Disable iGPU/dGPU, Disable DynamickTick, Disable Nvidia Resizable BAR)

@nando4, I now have a question, the 500w power supply can be connected normally on my...

By 22t, 3 days ago

SurfX
RE: 2017 15" Dell Inspiron 15 7577 (GTX1050) [7th,4C,H] + RTX 3070 @ 32Gbps-TB3 (Razer Core X) + Win10 21H1 // tested with extra GPUs GTX 1050Ti, 1060, 1660S

@stillyahoo, I did some tests... TL;DNR - You will be capped by the CPU and TB3. Be...

By SurfX, 3 days ago

Grzegorz Kraczek
RE: [SCRIPT] nvidia-error43-fixer

Tested the script today and it works! Thanks for this easy way. Perfect 😎

By Grzegorz Kraczek, 3 days ago

Darío Morata Fernández
RE: [GUIDE] error 12/43 & other detection, bootup, stability & performance issues

Hi everyone!. I'm trying to set up a Lenovo Ideapad 3 eGPU with ryzen 5700u via M.2 p...

By Darío Morata Fernández, 4 days ago

alex
2020 13" MacBook Pro [10th,4C,G] + GTX 1070 Ti @ 32Gbps-TB3 (Sonnet Breakaway 550) + Win10 1909

Hi all !! I bought an enclosure off ebay used in summer for £100 but couldn't get i...

By alex, 4 days ago

Célia Dahlem
RE: [GUIDE] error 12/43 & other detection, bootup, stability & performance issues

Hello, I'm trying to upgrade my Lenovo m710q w10 sff Thinkcentre I5 7400T with...

By Célia Dahlem, 4 days ago

Fluke
RE: 2013 HP EliteDesk 800 G1 [4th,4C,T] + GTX 1070 @ 16Gbps-M.2 (ADT-Link R43SG) + Win10

Made some more testing with Sniper Ghost Warrior 3. I added the PCIe bus usage in gra...

By Fluke, 4 days ago

Boltoway
RE: [GUIDE] Windows 10 / 11 solutions for eGPU BSOD, crashing, freezing and stuttering - (Link State Power Mgmt, Nvidia Power Mgmt, TdrDelay & TdrDdiDelay, Disable iGPU/dGPU, Disable DynamickTick, Disable Nvidia Resizable BAR)

@v0van, Are you disabling then enabling the internal GPU after every restart? You ...

By Boltoway, 4 days ago

v0van
RE: [GUIDE] Windows 10 / 11 solutions for eGPU BSOD, crashing, freezing and stuttering - (Link State Power Mgmt, Nvidia Power Mgmt, TdrDelay & TdrDdiDelay, Disable iGPU/dGPU, Disable DynamickTick, Disable Nvidia Resizable BAR)

@, I still have a problem. Everything is installed works, and after a reboot there ar...

By v0van, 4 days ago

v0van
RE: [GUIDE] Windows 10 / 11 solutions for eGPU BSOD, crashing, freezing and stuttering - (Link State Power Mgmt, Nvidia Power Mgmt, TdrDelay & TdrDdiDelay, Disable iGPU/dGPU, Disable DynamickTick, Disable Nvidia Resizable BAR)

@boltoway, After the reboot, he started stuttering again. Removing the built-in NVIDI...

By v0van, 4 days ago

evilx
RE: Mantiz Saturn Pro Review - King of the Ring

I recently purchased the Saturn Pro and have nothing but issues. I’ve tried half a do...

By evilx, 4 days ago

Forum Activity

