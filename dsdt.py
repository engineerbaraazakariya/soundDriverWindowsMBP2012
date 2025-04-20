import subprocess
import os
import shutil

# Path configuration
acpidump_tool = r"acpidump.exe"  # Only If needed : Replace with path to acpidump.exe
asl_tool_path = r"asl.exe"  # Only If needed : Replace with path to asl.exe (Microsoft)
iasl_tool_path = r"iasl.exe"  # Only If needed : Replace with path to iasl.exe (Intel)

# Step 1: Dump ACPI tables using acpidump
def dump_acpi_tables():
    print("Dumping ACPI tables using acpidump...")
    try:
        subprocess.run([acpidump_tool, "-b", "-z"], check=True)
        print("ACPI tables dumped successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Error during ACPI table dumping: {e}")

# Step 2: Decompile DSDT using iASL tool (Intel method)
def decompile_dsdt_iasl():
    print("Decompiling DSDT using iASL tool (Intel method)...")
    try:
        subprocess.run([iasl_tool_path, "-d", "dsdt.dat"], check=True)
        print("DSDT decompiled successfully using iASL.")
    except subprocess.CalledProcessError as e:
        print(f"Error during DSDT decompilation using iASL: {e}")

# Step 3: Modify DSDT (Add QWordMemory entry after the entire DWordMemory block)
def modify_dsdt():
    print("Modifying DSDT file...")
    try:
        with open("dsdt-modified.dsl", "r") as file:
            dsdt_content = file.read()

        # Check if QWordMemory is already added to avoid multiple insertions
        if "QWordMemory" not in dsdt_content:
            # Find the last DWordMemory block in the file
            last_dword_index = dsdt_content.rfind("AddressRangeMemory, TypeStatic)")

            if last_dword_index != -1:
                # Add QWordMemory entry right after the last DWordMemory block
                modification = """
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                   0x0000000000000000, // Granularity
                   0x0000000C20000000, // Range Minimum,  set it to 48.5GB
                   0x0000000E0FFFFFFF, // Range Maximum,  set it to 56.25GB
                   0x0000000000000000, // Translation Offset
                   0x00000001F0000000, // Length calculated by Range Max - Range Min.
                   ,, , AddressRangeMemory, TypeStatic)
                """
                # Insert the modification after the last DWordMemory block
                dsdt_content = dsdt_content[:last_dword_index + len("AddressRangeMemory, TypeStatic)")] + modification + dsdt_content[last_dword_index + len("AddressRangeMemory, TypeStatic)"):]

                print("QWordMemory entry added successfully.")
            else:
                print("No DWordMemory entries found in the DSDT.")
        else:
            print("QWordMemory entry is already present in the DSDT.")

        # Write the modified content back to the file
        with open("dsdt-modified.dsl", "w") as file:
            file.write(dsdt_content)

        print("DSDT modified successfully.")
    except Exception as e:
        print(f"Error during DSDT modification: {e}")

# Step 4: Compile DSDT using iASL tool (Intel method)
def compile_dsdt_iasl():
    print("Compiling modified DSDT using iASL tool (Intel method)...")
    try:
        subprocess.run([iasl_tool_path, "-ve", "dsdt-modified.dsl"], check=True)
        print("DSDT compiled successfully using iASL.")
    except subprocess.CalledProcessError as e:
        print(f"Error during DSDT compilation using iASL: {e}")

# Step 5: Load DSDT override into Windows
def load_dsdt_override():
    print("Loading DSDT override into Windows...")
    try:
        subprocess.run([asl_tool_path, "/loadtable", "dsdt-modified.aml"], check=True)
        print("DSDT override loaded successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Error during DSDT loading: {e}")

# Step 6: Enable TESTSIGNING mode (optional)
def enable_testsigning():
    print("Enabling TESTSIGNING mode in Windows...")
    try:
        subprocess.run(["bcdedit", "-set", "TESTSIGNING", "ON"], check=True)
        print("TESTSIGNING mode enabled.")
    except subprocess.CalledProcessError as e:
        print(f"Error enabling TESTSIGNING: {e}")

# Step 7: Hide TESTSIGNING label on the desktop without disabling TESTSIGNING mode
def hide_testing_mode_label():
    print("Hiding 'Testing Mode' label on the desktop without disabling TESTSIGNING mode...")
    try:
        # Registry tweak to hide the "Testing Mode" label
        subprocess.run(["reg", "add", r"HKCU\Control Panel\Desktop", "/v", "UserInstalledTheme", "/t", "REG_SZ", "/d", "1", "/f"], check=True)
        print("'Testing Mode' label hidden successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Error hiding 'Testing Mode' label: {e}")

# Main function to automate the entire process
def automate_egpu_installation():
    print("Starting the eGPU DSDT modification process...\n")
    
    # Step 1: Dump ACPI tables
    dump_acpi_tables()

    # Only execute Intel method
    # Step 2: Decompile DSDT using Intel method
    decompile_dsdt_iasl()

    # Step 3: Modify the DSDT file
    modify_dsdt()

    # Step 4: Compile DSDT using Intel method
    compile_dsdt_iasl()

    # Step 5: Load DSDT override into Windows
    load_dsdt_override()

    # Step 6: Optionally enable TESTSIGNING mode
    enable_testsigning()

    # Step 7: Hide the 'Testing Mode' label
    hide_testing_mode_label()

    print("\neGPU DSDT modification completed.")

# Run the automation process
if __name__ == "__main__":
    automate_egpu_installation()
