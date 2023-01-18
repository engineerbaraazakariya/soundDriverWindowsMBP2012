// CreatorID=INTL	CreatorRev=20.10.2325
// FileLength=19795	FileChkSum=0x3b

DefinitionBlock("dsdt.dat", "DSDT", 0x01, "APPLE ", "MacBookP", 0x00090001)
{
    Name(SP2O, 0x4e)
    Name(SP1O, 0x164e)
    Name(IO1B, 0x600)
    Name(IO1L, 0x70)
    Name(IO2B, 0x680)
    Name(IO2L, 0x20)
    Name(IO3B, 0x290)
    Name(IO3L, 0x10)
    Name(SP3O, 0x2e)
    Name(IO4B, 0xa20)
    Name(IO4L, 0x20)
    Name(MCHB, 0xfed10000)
    Name(MCHL, 0x4000)
    Name(EGPB, 0xfed19000)
    Name(EGPL, 0x1000)
    Name(DMIB, 0xfed18000)
    Name(DMIL, 0x1000)
    Name(IFPB, 0xfed14000)
    Name(IFPL, 0x1000)
    Name(PEBS, 0xe0000000)
    Name(PELN, 0x4000000)
    Name(TTTB, 0xfed20000)
    Name(TTTL, 0x20000)
    Name(SMBS, 0xefa0)
    Name(SMBL, 0x10)
    Name(PBLK, 0x410)
    Name(PMBS, 0x400)
    Name(PMLN, 0x80)
    Name(LVL2, 0x414)
    Name(LVL3, 0x415)
    Name(LVL4, 0x416)
    Name(SMIP, 0xb2)
    Name(GPBS, 0x500)
    Name(GPLN, 0x80)
    Name(APCB, 0xfec00000)
    Name(APCL, 0x1000)
    Name(PM30, 0x430)
    Name(SRCB, 0xfed1c000)
    Name(SRCL, 0x4000)
    Name(SUSW, 0xff)
    Name(HPTB, 0xfed00000)
    Name(HPTC, 0xfed1f404)
    Name(ACPH, 0xde)
    Name(ASSB, 0x0)
    Name(AOTB, 0x0)
    Name(AAXB, 0x0)
    Name(PEHP, 0x1)
    Name(SHPC, 0x1)
    Name(PEPM, 0x1)
    Name(PEER, 0x1)
    Name(PECS, 0x1)
    Name(ITKE, 0x0)
    Name(DSSP, 0x0)
    Name(FHPP, 0x1)
    Name(FMBL, 0x1)
    Name(FDTP, 0x2)
    Name(BSH_, 0x0)
    Name(BEL_, 0x1)
    Name(BEH_, 0x2)
    Name(BRH_, 0x3)
    Name(BTF_, 0x4)
    Name(BHC_, 0x5)
    Name(BYB_, 0x6)
    Name(BPH_, 0x7)
    Name(BSHS, 0x8)
    Name(BELS, 0x9)
    Name(BRHS, 0xa)
    Name(BTFS, 0xb)
    Name(BEHS, 0xc)
    Name(BPHS, 0xd)
    Name(BTL_, 0x10)
    Name(BOF_, 0x20)
    Name(BEF_, 0x21)
    Name(BLLE, 0x22)
    Name(BLLC, 0x23)
    Name(BLCA, 0x24)
    Name(TCGM, 0x1)
    Name(TRTP, 0x1)
    Name(TRTD, 0x2)
    Name(TRTI, 0x3)
    Name(GCDD, 0x1)
    Name(DSTA, 0xa)
    Name(DSLO, 0xc)
    Name(DSLC, 0xe)
    Name(PITS, 0x10)
    Name(SBCS, 0x12)
    Name(SALS, 0x13)
    Name(LSSS, 0x2a)
    Name(SOOT, 0x35)
    Name(PDBR, 0x4d)
    Name(WOWE, 0x0)
    Name(TAPD, 0x0)
    OperationRegion(GNVS, SystemMemory, 0x8cd40c10, 0x187)
    Field(GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS, 16,
        SMIF, 8,
        PRM0, 8,
        PRM1, 8,
        SCIF, 8,
        PRM2, 8,
        PRM3, 8,
        LCKF, 8,
        PRM4, 8,
        PRM5, 8,
        P80D, 32,
        LIDS, 8,
        PWRS, 8,
        DBGS, 8,
        THOF, 8,
        ACT1, 8,
        ACTT, 8,
        PSVT, 8,
        TC1V, 8,
        TC2V, 8,
        TSPV, 8,
        CRTT, 8,
        DTSE, 8,
        DTS1, 8,
        DTS2, 8,
        DTSF, 8,
        Offset(0x25),
        REVN, 8,
        , 16,
        APIC, 8,
        TCNT, 8,
        PCP0, 8,
        PCP1, 8,
        PPCM, 8,
        PPMF, 32,
        C67L, 8,
        NATP, 8,
        CMAP, 8,
        CMBP, 8,
        LPTP, 8,
        FDCP, 8,
        CMCP, 8,
        CIRP, 8,
        SMSC, 8,
        W381, 8,
        SMC1, 8,
        IGDS, 8,
        TLST, 8,
        CADL, 8,
        PADL, 8,
        CSTE, 16,
        NSTE, 16,
        SSTE, 16,
        NDID, 8,
        DID1, 32,
        DID2, 32,
        DID3, 32,
        DID4, 32,
        DID5, 32,
        KSV0, 32,
        KSV1, 8,
        Offset(0x67),
        BLCS, 8,
        BRTL, 8,
        ALSE, 8,
        ALAF, 8,
        LLOW, 8,
        LHIH, 8,
        , 8,
        EMAE, 8,
        EMAP, 16,
        EMAL, 16,
        , 8,
        MEFE, 8,
        DSTS, 8,
        , 16,
        TPMP, 8,
        TPME, 8,
        MORD, 8,
        TCGP, 8,
        PPRP, 32,
        PPRQ, 8,
        LPPR, 8,
        GTF0, 56,
        GTF2, 56,
        IDEM, 8,
        GTF1, 56,
        BID_, 8,
        Offset(0xaa),
        ASLB, 32,
        IBTT, 8,
        IPAT, 8,
        ITVF, 8,
        ITVM, 8,
        IPSC, 8,
        IBLC, 8,
        IBIA, 8,
        ISSC, 8,
        I409, 8,
        I509, 8,
        I609, 8,
        I709, 8,
        IPCF, 8,
        IDMS, 8,
        IF1E, 8,
        HVCO, 8,
        NXD1, 32,
        NXD2, 32,
        NXD3, 32,
        NXD4, 32,
        NXD5, 32,
        NXD6, 32,
        NXD7, 32,
        NXD8, 32,
        GSMI, 8,
        PAVP, 8,
        , 8,
        OSCC, 8,
        NEXP, 8,
        SDGV, 8,
        SDDV, 8,
        Offset(0xeb),
        DSEN, 8,
        ECON, 8,
        GPIC, 8,
        CTYP, 8,
        L01C, 8,
        VFN0, 8,
        VFN1, 8,
        Offset(0x100),
        NVGA, 32,
        NVHA, 32,
        AMDA, 32,
        DID6, 32,
        DID7, 32,
        DID8, 32,
        EBAS, 32,
        CPSP, 32,
        EECP, 32,
        EVCP, 32,
        XBAS, 32,
        OBS1, 32,
        OBS2, 32,
        OBS3, 32,
        OBS4, 32,
        OBS5, 32,
        OBS6, 32,
        OBS7, 32,
        OBS8, 32,
        Offset(0x157),
        ATMC, 8,
        PTMC, 8,
        ATRA, 8,
        PTRA, 8,
        PNHM, 32,
        TBAB, 32,
        TBAH, 32,
        RTIP, 8,
        TSOD, 8,
        ATPC, 8,
        PTPC, 8,
        PFLV, 8,
        BREV, 8,
        DPBM, 8,
        DPCM, 8,
        DPDM, 8,
        ALFP, 8,
        IMON, 8,
        SDID, 8,
        BLCP, 8,
        BLCC, 8,
        , 8,
        BLCT, 32,
        BLCB, 32,
        NHIB, 32,
        GVNV, 32
    }
    Scope(\_SB_)
    {
        Name(PR00, Package(0x1c)
        {
            Package(0x4)
            {
                0x1fffff,
                0x0,
                LNKF,
                0x0
            },
            Package(0x4)
            {
                0x1fffff,
                0x1,
                LNKD,
                0x0
            },
            Package(0x4)
            {
                0x1fffff,
                0x2,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0x1fffff,
                0x3,
                LNKA,
                0x0
            },
            Package(0x4)
            {
                0x1dffff,
                0x0,
                LNKG,
                0x0
            },
            Package(0x4)
            {
                0x1dffff,
                0x1,
                LNKD,
                0x0
            },
            Package(0x4)
            {
                0x1dffff,
                0x2,
                LNKA,
                0x0
            },
            Package(0x4)
            {
                0x1dffff,
                0x3,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0x1affff,
                0x0,
                LNKH,
                0x0
            },
            Package(0x4)
            {
                0x1affff,
                0x1,
                LNKF,
                0x0
            },
            Package(0x4)
            {
                0x1affff,
                0x2,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0x1affff,
                0x3,
                LNKD,
                0x0
            },
            Package(0x4)
            {
                0x1bffff,
                0x0,
                LNKG,
                0x0
            },
            Package(0x4)
            {
                0x18ffff,
                0x0,
                LNKE,
                0x0
            },
            Package(0x4)
            {
                0x19ffff,
                0x0,
                LNKE,
                0x0
            },
            Package(0x4)
            {
                0x16ffff,
                0x0,
                LNKA,
                0x0
            },
            Package(0x4)
            {
                0x16ffff,
                0x1,
                LNKD,
                0x0
            },
            Package(0x4)
            {
                0x16ffff,
                0x2,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0x16ffff,
                0x3,
                LNKB,
                0x0
            },
            Package(0x4)
            {
                0x1cffff,
                0x0,
                LNKA,
                0x0
            },
            Package(0x4)
            {
                0x1cffff,
                0x1,
                LNKB,
                0x0
            },
            Package(0x4)
            {
                0x1cffff,
                0x2,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0x1cffff,
                0x3,
                LNKD,
                0x0
            },
            Package(0x4)
            {
                0x1ffff,
                0x0,
                LNKA,
                0x0
            },
            Package(0x4)
            {
                0x1ffff,
                0x1,
                LNKB,
                0x0
            },
            Package(0x4)
            {
                0x1ffff,
                0x2,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0x1ffff,
                0x3,
                LNKD,
                0x0
            },
            Package(0x4)
            {
                0x2ffff,
                0x0,
                LNKA,
                0x0
            }
        })
        Name(AR00, Package(0x1c)
        {
            Package(0x4)
            {
                0x1fffff,
                0x0,
                0x0,
                0x15
            },
            Package(0x4)
            {
                0x1fffff,
                0x1,
                0x0,
                0x13
            },
            Package(0x4)
            {
                0x1fffff,
                0x2,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0x1fffff,
                0x3,
                0x0,
                0x10
            },
            Package(0x4)
            {
                0x1dffff,
                0x0,
                0x0,
                0x16
            },
            Package(0x4)
            {
                0x1dffff,
                0x1,
                0x0,
                0x13
            },
            Package(0x4)
            {
                0x1dffff,
                0x2,
                0x0,
                0x10
            },
            Package(0x4)
            {
                0x1dffff,
                0x3,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0x1affff,
                0x0,
                0x0,
                0x17
            },
            Package(0x4)
            {
                0x1affff,
                0x1,
                0x0,
                0x15
            },
            Package(0x4)
            {
                0x1affff,
                0x2,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0x1affff,
                0x3,
                0x0,
                0x13
            },
            Package(0x4)
            {
                0x1bffff,
                0x0,
                0x0,
                0x16
            },
            Package(0x4)
            {
                0x18ffff,
                0x0,
                0x0,
                0x14
            },
            Package(0x4)
            {
                0x19ffff,
                0x0,
                0x0,
                0x14
            },
            Package(0x4)
            {
                0x16ffff,
                0x0,
                0x0,
                0x10
            },
            Package(0x4)
            {
                0x16ffff,
                0x1,
                0x0,
                0x13
            },
            Package(0x4)
            {
                0x16ffff,
                0x2,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0x16ffff,
                0x3,
                0x0,
                0x11
            },
            Package(0x4)
            {
                0x1cffff,
                0x0,
                0x0,
                0x10
            },
            Package(0x4)
            {
                0x1cffff,
                0x1,
                0x0,
                0x11
            },
            Package(0x4)
            {
                0x1cffff,
                0x2,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0x1cffff,
                0x3,
                0x0,
                0x13
            },
            Package(0x4)
            {
                0x1ffff,
                0x0,
                0x0,
                0x10
            },
            Package(0x4)
            {
                0x1ffff,
                0x1,
                0x0,
                0x11
            },
            Package(0x4)
            {
                0x1ffff,
                0x2,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0x1ffff,
                0x3,
                0x0,
                0x13
            },
            Package(0x4)
            {
                0x2ffff,
                0x0,
                0x0,
                0x10
            }
        })
        Name(PR04, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                LNKA,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                LNKB,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                LNKD,
                0x0
            }
        })
        Name(AR04, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                0x0,
                0x10
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                0x0,
                0x11
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                0x0,
                0x13
            }
        })
        Name(PR05, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                LNKB,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                LNKD,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                LNKA,
                0x0
            }
        })
        Name(AR05, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                0x0,
                0x11
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                0x0,
                0x13
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                0x0,
                0x10
            }
        })
        Name(PR06, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                LNKD,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                LNKA,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                LNKB,
                0x0
            }
        })
        Name(AR06, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                0x0,
                0x13
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                0x0,
                0x10
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                0x0,
                0x11
            }
        })
        Name(PR07, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                LNKD,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                LNKA,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                LNKB,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                LNKC,
                0x0
            }
        })
        Name(AR07, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                0x0,
                0x13
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                0x0,
                0x10
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                0x0,
                0x11
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                0x0,
                0x12
            }
        })
        Name(PR08, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                LNKA,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                LNKB,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                LNKD,
                0x0
            }
        })
        Name(AR08, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                0x0,
                0x10
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                0x0,
                0x11
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                0x0,
                0x13
            }
        })
        Name(PR09, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                LNKB,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                LNKD,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                LNKA,
                0x0
            }
        })
        Name(AR09, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                0x0,
                0x11
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                0x0,
                0x13
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                0x0,
                0x10
            }
        })
        Name(PR0E, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                LNKD,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                LNKA,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                LNKB,
                0x0
            }
        })
        Name(AR0E, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                0x0,
                0x13
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                0x0,
                0x10
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                0x0,
                0x11
            }
        })
        Name(PR0F, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                LNKD,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                LNKA,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                LNKB,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                LNKC,
                0x0
            }
        })
        Name(AR0F, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                0x0,
                0x13
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                0x0,
                0x10
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                0x0,
                0x11
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                0x0,
                0x12
            }
        })
        Name(PR02, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                LNKA,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                LNKB,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                LNKD,
                0x0
            }
        })
        Name(AR02, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                0x0,
                0x10
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                0x0,
                0x11
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                0x0,
                0x13
            }
        })
        Name(PR0A, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                LNKB,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                LNKD,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                LNKA,
                0x0
            }
        })
        Name(AR0A, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                0x0,
                0x11
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                0x0,
                0x13
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                0x0,
                0x10
            }
        })
        Name(PR0B, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                LNKD,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                LNKA,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                LNKB,
                0x0
            }
        })
        Name(AR0B, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                0x0,
                0x13
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                0x0,
                0x10
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                0x0,
                0x11
            }
        })
        Name(PR0C, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                LNKD,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                LNKA,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                LNKB,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                LNKC,
                0x0
            }
        })
        Name(AR0C, Package(0x4)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                0x0,
                0x13
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                0x0,
                0x10
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                0x0,
                0x11
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                0x0,
                0x12
            }
        })
        Name(PR01, Package(0xc)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                LNKF,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                LNKG,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                LNKH,
                0x0
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                LNKE,
                0x0
            },
            Package(0x4)
            {
                0x1ffff,
                0x0,
                LNKG,
                0x0
            },
            Package(0x4)
            {
                0x1ffff,
                0x1,
                LNKF,
                0x0
            },
            Package(0x4)
            {
                0x1ffff,
                0x2,
                LNKE,
                0x0
            },
            Package(0x4)
            {
                0x1ffff,
                0x3,
                LNKH,
                0x0
            },
            Package(0x4)
            {
                0x5ffff,
                0x0,
                LNKC,
                0x0
            },
            Package(0x4)
            {
                0x5ffff,
                0x1,
                LNKE,
                0x0
            },
            Package(0x4)
            {
                0x5ffff,
                0x2,
                LNKG,
                0x0
            },
            Package(0x4)
            {
                0x5ffff,
                0x3,
                LNKF,
                0x0
            }
        })
        Name(AR01, Package(0xc)
        {
            Package(0x4)
            {
                0xffff,
                0x0,
                0x0,
                0x15
            },
            Package(0x4)
            {
                0xffff,
                0x1,
                0x0,
                0x16
            },
            Package(0x4)
            {
                0xffff,
                0x2,
                0x0,
                0x17
            },
            Package(0x4)
            {
                0xffff,
                0x3,
                0x0,
                0x14
            },
            Package(0x4)
            {
                0x1ffff,
                0x0,
                0x0,
                0x16
            },
            Package(0x4)
            {
                0x1ffff,
                0x1,
                0x0,
                0x15
            },
            Package(0x4)
            {
                0x1ffff,
                0x2,
                0x0,
                0x14
            },
            Package(0x4)
            {
                0x1ffff,
                0x3,
                0x0,
                0x17
            },
            Package(0x4)
            {
                0x5ffff,
                0x0,
                0x0,
                0x12
            },
            Package(0x4)
            {
                0x5ffff,
                0x1,
                0x0,
                0x14
            },
            Package(0x4)
            {
                0x5ffff,
                0x2,
                0x0,
                0x16
            },
            Package(0x4)
            {
                0x5ffff,
                0x3,
                0x0,
                0x15
            }
        })
        Name(PRSA, Buffer(0x6)
        {
	0x23, 0xf8, 0xdc, 0x18, 0x79, 0x00
        })
        Alias(PRSA, PRSB)
        Alias(PRSA, PRSC)
        Alias(PRSA, PRSD)
        Alias(PRSA, PRSE)
        Alias(PRSA, PRSF)
        Alias(PRSA, PRSG)
        Alias(PRSA, PRSH)
        Device(PCI0)
        {
            Name(_HID, 0x80ad041)
            Name(_CID, 0x30ad041)
            Name(_ADR, 0x0)
            Method(^BN00, 0x0, NotSerialized)
            {
                Return(0x0)
            }
            Method(_BBN, 0x0, NotSerialized)
            {
                Return(BN00())
            }
            Name(_UID, 0x0)
            Method(_PRT, 0x0, NotSerialized)
            {
                If(PICM)
                {
                    Return(AR00())
                }
                Return(PR00())
            }
            OperationRegion(HBUS, PCI_Config, 0x0, 0x100)
            Field(HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset(0x40),
                EPEN, 1,
                , 11,
                EPBR, 20,
                , 32,
                MHEN, 1,
                , 14,
                MHBR, 17,
                , 32,
                GCLK, 1,
                , 31,
                D0EN, 1,
                Offset(0x60),
                PXEN, 1,
                PXSZ, 2,
                , 23,
                PXBR, 6,
                , 32,
                DIEN, 1,
                , 11,
                DIBR, 20,
                , 32,
                , 20,
                MEBR, 12,
                Offset(0x80),
                , 4,
                PM0H, 2,
                , 2,
                PM1L, 2,
                , 2,
                PM1H, 2,
                , 2,
                PM2L, 2,
                , 2,
                PM2H, 2,
                , 2,
                PM3L, 2,
                , 2,
                PM3H, 2,
                , 2,
                PM4L, 2,
                , 2,
                PM4H, 2,
                , 2,
                PM5L, 2,
                , 2,
                PM5H, 2,
                , 2,
                PM6L, 2,
                , 2,
                PM6H, 2,
                , 2,
                Offset(0xa8),
                , 20,
                TUUD, 19,
                Offset(0xbc),
                , 20,
                TLUD, 12,
                Offset(0xc8),
                , 7,
                HTSE, 1
            }
            OperationRegion(MCHT, SystemMemory, 0xfed10000, 0x6000)
            Field(MCHT, ByteAcc, NoLock, Preserve)
            {
                Offset(0x5994),
                RPSL, 8,
                , 24,
                RP0C, 8,
                RP1C, 8,
                RPNC, 8
            }
            Name(BUF0, Buffer(0x1ee)
            {
	0x88, 0x0d, 0x00, 0x02, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x01, 0x87, 0x17, 0x00, 0x01, 0x0c, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf7, 0x0c, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0xf8, 0x0c, 0x00, 0x00, 0x47, 0x01, 0xf8, 0x0c, 0xf8, 0x0c,
	0x01, 0x08, 0x87, 0x17, 0x00, 0x01, 0x0c, 0x03, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x0d, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0xf3, 0x00, 0x00, 0x87, 0x17, 0x00, 0x00, 0x0c, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x0a, 0x00, 0xff, 0xff, 0x0b, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x87, 0x17, 0x00, 0x00, 0x0c, 0x03,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0c, 0x00, 0xff, 0x3f, 0x0c, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x87, 0x17, 0x00, 0x00,
	0x0c, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x0c, 0x00, 0xff, 0x7f,
	0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x87, 0x17,
	0x00, 0x00, 0x0c, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x0c, 0x00,
	0xff, 0xbf, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x87, 0x17, 0x00, 0x00, 0x0c, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0,
	0x0c, 0x00, 0xff, 0xff, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40,
	0x00, 0x00, 0x87, 0x17, 0x00, 0x00, 0x0c, 0x03, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x0d, 0x00, 0xff, 0x3f, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x40, 0x00, 0x00, 0x87, 0x17, 0x00, 0x00, 0x0c, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x40, 0x0d, 0x00, 0xff, 0x7f, 0x0d, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x87, 0x17, 0x00, 0x00, 0x0c, 0x03,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x0d, 0x00, 0xff, 0xbf, 0x0d, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x87, 0x17, 0x00, 0x00,
	0x0c, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0x0d, 0x00, 0xff, 0xff,
	0x0d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x87, 0x17,
	0x00, 0x00, 0x0c, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0e, 0x00,
	0xff, 0x3f, 0x0e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x87, 0x17, 0x00, 0x00, 0x0c, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40,
	0x0e, 0x00, 0xff, 0x7f, 0x0e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40,
	0x00, 0x00, 0x87, 0x17, 0x00, 0x00, 0x0c, 0x03, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x80, 0x0e, 0x00, 0xff, 0xbf, 0x0e, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x40, 0x00, 0x00, 0x87, 0x17, 0x00, 0x00, 0x0c, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x00, 0xc0, 0x0e, 0x00, 0xff, 0xff, 0x0e, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x87, 0x17, 0x00, 0x00, 0x0c, 0x03,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0f, 0x00, 0xff, 0xff, 0x0f, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x87, 0x17, 0x00, 0x00,
	0x0c, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff,
	0xaf, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb0, 0xfe, 0x87, 0x17,
	0x00, 0x00, 0x0c, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd4, 0xfe,
	0xff, 0x4f, 0xd4, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00,
	0x79, 0x00
            })
            Method(_CRS, 0x0, Serialized)
            {
                If(PM1L)
                {
                    CreateDWordField(BUF0, 0x7c, C0LN)
                    Store(Zero, C0LN)
                }
                If(LEqual(PM1L, 0x1))
                {
                    CreateBitField(BUF0, 0x358, C0RW)
                    Store(Zero, C0RW)
                }
                If(PM1H)
                {
                    CreateDWordField(BUF0, 0x96, C4LN)
                    Store(Zero, C4LN)
                }
                If(LEqual(PM1H, 0x1))
                {
                    CreateBitField(BUF0, 0x428, C4RW)
                    Store(Zero, C4RW)
                }
                If(PM2L)
                {
                    CreateDWordField(BUF0, 0xb0, C8LN)
                    Store(Zero, C8LN)
                }
                If(LEqual(PM2L, 0x1))
                {
                    CreateBitField(BUF0, 0x4f8, C8RW)
                    Store(Zero, C8RW)
                }
                If(PM2H)
                {
                    CreateDWordField(BUF0, 0xca, CCLN)
                    Store(Zero, CCLN)
                }
                If(LEqual(PM2H, 0x1))
                {
                    CreateBitField(BUF0, 0x5c8, CCRW)
                    Store(Zero, CCRW)
                }
                If(PM3L)
                {
                    CreateDWordField(BUF0, 0xe4, D0LN)
                    Store(Zero, D0LN)
                }
                If(LEqual(PM3L, 0x1))
                {
                    CreateBitField(BUF0, 0x698, D0RW)
                    Store(Zero, D0RW)
                }
                If(PM3H)
                {
                    CreateDWordField(BUF0, 0xfe, D4LN)
                    Store(Zero, D4LN)
                }
                If(LEqual(PM3H, 0x1))
                {
                    CreateBitField(BUF0, 0x768, D4RW)
                    Store(Zero, D4RW)
                }
                If(PM4L)
                {
                    CreateDWordField(BUF0, 0x118, D8LN)
                    Store(Zero, D8LN)
                }
                If(LEqual(PM4L, 0x1))
                {
                    CreateBitField(BUF0, 0x838, D8RW)
                    Store(Zero, D8RW)
                }
                If(PM4H)
                {
                    CreateDWordField(BUF0, 0x132, DCLN)
                    Store(Zero, DCLN)
                }
                If(LEqual(PM4H, 0x1))
                {
                    CreateBitField(BUF0, 0x908, DCRW)
                    Store(Zero, DCRW)
                }
                If(PM5L)
                {
                    CreateDWordField(BUF0, 0x14c, E0LN)
                    Store(Zero, E0LN)
                }
                If(LEqual(PM5L, 0x1))
                {
                    CreateBitField(BUF0, 0x9d8, E0RW)
                    Store(Zero, E0RW)
                }
                If(PM5H)
                {
                    CreateDWordField(BUF0, 0x166, E4LN)
                    Store(Zero, E4LN)
                }
                If(LEqual(PM5H, 0x1))
                {
                    CreateBitField(BUF0, 0xaa8, E4RW)
                    Store(Zero, E4RW)
                }
                If(PM6L)
                {
                    CreateDWordField(BUF0, 0x180, E8LN)
                    Store(Zero, E8LN)
                }
                If(LEqual(PM6L, 0x1))
                {
                    CreateBitField(BUF0, 0xb78, E8RW)
                    Store(Zero, E8RW)
                }
                If(PM6H)
                {
                    CreateDWordField(BUF0, 0x19a, ECLN)
                    Store(Zero, ECLN)
                }
                If(LEqual(PM6H, 0x1))
                {
                    CreateBitField(BUF0, 0xc48, ECRW)
                    Store(Zero, ECRW)
                }
                If(PM0H)
                {
                    CreateDWordField(BUF0, 0x1b4, F0LN)
                    Store(Zero, F0LN)
                }
                If(LEqual(PM0H, 0x1))
                {
                    CreateBitField(BUF0, 0xd18, F0RW)
                    Store(Zero, F0RW)
                }
                CreateDWordField(BUF0, 0x1c2, M1MN)
                CreateDWordField(BUF0, 0x1c6, M1MX)
                CreateDWordField(BUF0, 0x1ce, M1LN)
                ShiftLeft(TLUD, 0x14, M1MN)
                Add(Subtract(M1MX, M1MN, ), 0x1, M1LN)
                Return(BUF0)
            }
            Name(GUID, Buffer(0x10)
            {
	0x5b, 0x4d, 0xdb, 0x33, 0xf7, 0x1f, 0x1c, 0x40, 0x96, 0x57, 0x74, 0x41,
	0xc0, 0x3d, 0xd7, 0x66
            })
            Name(SUPP, 0x0)
            Name(CTRL, 0x0)
            Method(_OSC, 0x4, Serialized)
            {
                Store(Arg3, Local0)
                CreateDWordField(Local0, 0x0, CDW1)
                CreateDWordField(Local0, 0x4, CDW2)
                CreateDWordField(Local0, 0x8, CDW3)
                Store(CDW2, SUPP)
                Store(CDW3, CTRL)
                If(LEqual(0x1, OSDW()))
                {
                    If(LAnd(LEqual(Arg0, GUID), NEXP))
                    {
                        If(Not(And(CDW1, 0x1, ), ))
                        {
                            If(And(CTRL, 0x2, ))
                            {
                                NHPG()
                            }
                            If(And(CTRL, 0x4, ))
                            {
                                NPME()
                            }
                        }
                        If(LNot(LEqual(Arg1, One)))
                        {
                            Or(CDW1, 0x8, CDW1)
                        }
                        If(LNot(LEqual(CDW3, CTRL)))
                        {
                            Or(CDW1, 0x10, CDW1)
                        }
                        Store(CTRL, CDW3)
                        Store(CTRL, OSCC)
                        Return(Local0)
                    }
                    Else
                    {
                        Or(CDW1, 0x4, CDW1)
                        Return(Local0)
                    }
                }
                Else
                {
                    If(LEqual(Arg0, Buffer(0x10)
                    {
	0xa9, 0x12, 0x95, 0x7c, 0x05, 0x17, 0xb4, 0x4c, 0xaf, 0x7d, 0x50, 0x6a,
	0x24, 0x23, 0xab, 0x71
                    }))
                    {
                        Store(0x1, \_SB_.PCI0.XHC1.PASS)
                        Store(0x1, \_SB_.PCI0.XHC1.PAHC)
                        Store(0x1, \_SB_.PCI0.XHC1.PBSS)
                        Store(0x1, \_SB_.PCI0.XHC1.PBHC)
                        Store(0x1, GI60)
                        Store(0x1, \_SB_.PCI0.XHC1.PCSS)
                        Store(0x1, \_SB_.PCI0.XHC1.PCHC)
                        Store(0x1, \_SB_.PCI0.XHC1.PDSS)
                        Store(0x1, \_SB_.PCI0.XHC1.PDHC)
                        Store(0x1, GI74)
                    }
                    If(LEqual(Arg0, GUID))
                    {
                        If(LEqual(\_SB_.PCI0.DTBP, 0x1))
                        {
                            And(CDW3, 0xfffffffb, CDW3)
                        }
                    }
                    Return(Local0)
                }
            }
            Scope(\_SB_.PCI0)
            {
                Method(AR00, 0x0, NotSerialized)
                {
                    Return(\_SB_.AR00)
                }
                Method(PR00, 0x0, NotSerialized)
                {
                    Return(\_SB_.PR00)
                }
                Method(AR01, 0x0, NotSerialized)
                {
                    Return(\_SB_.AR01)
                }
                Method(PR01, 0x0, NotSerialized)
                {
                    Return(\_SB_.PR01)
                }
                Method(AR02, 0x0, NotSerialized)
                {
                    Return(\_SB_.AR02)
                }
                Method(PR02, 0x0, NotSerialized)
                {
                    Return(\_SB_.PR02)
                }
                Method(AR04, 0x0, NotSerialized)
                {
                    Return(\_SB_.AR04)
                }
                Method(PR04, 0x0, NotSerialized)
                {
                    Return(\_SB_.PR04)
                }
                Method(AR05, 0x0, NotSerialized)
                {
                    Return(\_SB_.AR05)
                }
                Method(PR05, 0x0, NotSerialized)
                {
                    Return(\_SB_.PR05)
                }
                Method(AR06, 0x0, NotSerialized)
                {
                    Return(\_SB_.AR06)
                }
                Method(PR06, 0x0, NotSerialized)
                {
                    Return(\_SB_.PR06)
                }
                Method(AR07, 0x0, NotSerialized)
                {
                    Return(\_SB_.AR07)
                }
                Method(PR07, 0x0, NotSerialized)
                {
                    Return(\_SB_.PR07)
                }
                Method(AR08, 0x0, NotSerialized)
                {
                    Return(\_SB_.AR08)
                }
                Method(PR08, 0x0, NotSerialized)
                {
                    Return(\_SB_.PR08)
                }
                Method(AR09, 0x0, NotSerialized)
                {
                    Return(\_SB_.AR09)
                }
                Method(PR09, 0x0, NotSerialized)
                {
                    Return(\_SB_.PR09)
                }
                Method(AR0A, 0x0, NotSerialized)
                {
                    Return(\_SB_.AR0A)
                }
                Method(PR0A, 0x0, NotSerialized)
                {
                    Return(\_SB_.PR0A)
                }
                Method(AR0B, 0x0, NotSerialized)
                {
                    Return(\_SB_.AR0B)
                }
                Method(PR0B, 0x0, NotSerialized)
                {
                    Return(\_SB_.PR0B)
                }
            }
            Device(MCHC)
            {
                Name(_ADR, 0x0)
            }
            Device(P0P2)
            {
                Name(_ADR, 0x10000)
                Name(_PRW, Package(0x2)
                {
                    0x9,
                    0x3
                })
                Method(_PRT, 0x0, NotSerialized)
                {
                    If(PICM)
                    {
                        Return(AR02())
                    }
                    Return(PR02())
                }
            }
            Device(PEG1)
            {
                Name(_ADR, 0x10001)
                Name(_PRW, Package(0x2)
                {
                    0x9,
                    0x3
                })
                Method(_PRT, 0x0, NotSerialized)
                {
                    If(PICM)
                    {
                        Return(AR0A())
                    }
                    Return(PR0A())
                }
            }
            Device(IGPU)
            {
                Name(_ADR, 0x20000)
            }
            Device(SATA)
            {
                Name(_ADR, 0x1f0002)
            }
            Device(SBUS)
            {
                Name(_ADR, 0x1f0003)
                OperationRegion(SMBP, PCI_Config, 0x40, 0xc0)
                Field(SMBP, DWordAcc, NoLock, Preserve)
                {
                    , 2,
                    I2CE, 1
                }
                OperationRegion(SMPB, PCI_Config, 0x20, 0x4)
                Field(SMPB, DWordAcc, NoLock, Preserve)
                {
                    , 5,
                    SBAR, 11
                }
                OperationRegion(SMBI, SystemIO, ShiftLeft(SBAR, 0x5, ), 0x10)
                Field(SMBI, ByteAcc, NoLock, Preserve)
                {
                    HSTS, 8,
                    , 8,
                    HCON, 8,
                    HCOM, 8,
                    TXSA, 8,
                    DAT0, 8,
                    DAT1, 8,
                    HBDR, 8,
                    PECR, 8,
                    RXSA, 8,
                    SDAT, 16
                }
                Method(SSXB, 0x2, Serialized)
                {
                    If(STRT())
                    {
                        Return(0x0)
                    }
                    Store(0x0, I2CE)
                    Store(0xbf, HSTS)
                    Store(Arg0, TXSA)
                    Store(Arg1, HCOM)
                    Store(0x48, HCON)
                    If(COMP())
                    {
                        Or(HSTS, 0xff, HSTS)
                        Return(0x1)
                    }
                    Return(0x0)
                }
                Method(SRXB, 0x1, Serialized)
                {
                    If(STRT())
                    {
                        Return(0xffff)
                    }
                    Store(0x0, I2CE)
                    Store(0xbf, HSTS)
                    Store(Or(Arg0, 0x1, ), TXSA)
                    Store(0x44, HCON)
                    If(COMP())
                    {
                        Or(HSTS, 0xff, HSTS)
                        Return(DAT0)
                    }
                    Return(0xffff)
                }
                Method(SWRB, 0x3, Serialized)
                {
                    If(STRT())
                    {
                        Return(0x0)
                    }
                    Store(0x0, I2CE)
                    Store(0xbf, HSTS)
                    Store(Arg0, TXSA)
                    Store(Arg1, HCOM)
                    Store(Arg2, DAT0)
                    Store(0x48, HCON)
                    If(COMP())
                    {
                        Or(HSTS, 0xff, HSTS)
                        Return(0x1)
                    }
                    Return(0x0)
                }
                Method(SRDB, 0x2, Serialized)
                {
                    If(STRT())
                    {
                        Return(0xffff)
                    }
                    Store(0x0, I2CE)
                    Store(0xbf, HSTS)
                    Store(Or(Arg0, 0x1, ), TXSA)
                    Store(Arg1, HCOM)
                    Store(0x48, HCON)
                    If(COMP())
                    {
                        Or(HSTS, 0xff, HSTS)
                        Return(DAT0)
                    }
                    Return(0xffff)
                }
                Method(SWRW, 0x3, Serialized)
                {
                    If(STRT())
                    {
                        Return(0x0)
                    }
                    Store(0x0, I2CE)
                    Store(0xbf, HSTS)
                    Store(Arg0, TXSA)
                    Store(Arg1, HCOM)
                    And(Arg2, 0xff, DAT1)
                    And(ShiftRight(Arg2, 0x8, ), 0xff, DAT0)
                    Store(0x4c, HCON)
                    If(COMP())
                    {
                        Or(HSTS, 0xff, HSTS)
                        Return(0x1)
                    }
                    Return(0x0)
                }
                Method(SRDW, 0x2, Serialized)
                {
                    If(STRT())
                    {
                        Return(0xffff)
                    }
                    Store(0x0, I2CE)
                    Store(0xbf, HSTS)
                    Store(Or(Arg0, 0x1, ), TXSA)
                    Store(Arg1, HCOM)
                    Store(0x4c, HCON)
                    If(COMP())
                    {
                        Or(HSTS, 0xff, HSTS)
                        Return(Or(ShiftLeft(DAT0, 0x8, ), DAT1, ))
                    }
                    Return(0xffffffff)
                }
                Method(SBLW, 0x4, Serialized)
                {
                    If(STRT())
                    {
                        Return(0x0)
                    }
                    Store(Arg3, I2CE)
                    Store(0xbf, HSTS)
                    Store(Arg0, TXSA)
                    Store(Arg1, HCOM)
                    Store(SizeOf(Arg2), DAT0)
                    Store(0x0, Local1)
                    Store(DerefOf(Index(Arg2, 0x0, )), HBDR)
                    Store(0x54, HCON)
                    While(LGreater(SizeOf(Arg2), Local1))
                    {
                        Store(0x4e20, Local0)
                        While(LAnd(LNot(And(HSTS, 0x80, )), Local0))
                        {
                            Decrement(Local0)
                        }
                        If(LNot(Local0))
                        {
                            KILL()
                            Return(0x0)
                        }
                        Increment(Local1)
                        If(LGreater(SizeOf(Arg2), Local1))
                        {
                            Store(DerefOf(Index(Arg2, Local1, )), HBDR)
                            Store(0x80, HSTS)
                        }
                    }
                    Store(0x80, HSTS)
                    If(COMP())
                    {
                        Or(HSTS, 0xff, HSTS)
                        Return(0x1)
                    }
                    Return(0x0)
                }
                Method(SBLR, 0x3, Serialized)
                {
                    Name(TBUF, Buffer(0x100)
                    {
                    })
                    If(STRT())
                    {
                        Return(0x0)
                    }
                    Store(Arg2, I2CE)
                    Store(0xbf, HSTS)
                    Store(Or(Arg0, 0x1, ), TXSA)
                    Store(Arg1, HCOM)
                    Store(0x54, HCON)
                    Store(0xfa0, Local0)
                    While(LAnd(LNot(And(HSTS, 0x80, )), Local0))
                    {
                        Decrement(Local0)
                        Stall(0x32)
                    }
                    If(LNot(Local0))
                    {
                        KILL()
                        Return(0x0)
                    }
                    Store(DAT0, Index(TBUF, 0x0, ))
                    Store(0x80, HSTS)
                    Store(0x1, Local1)
                    While(LLess(Local1, DerefOf(Index(TBUF, 0x0, ))))
                    {
                        Store(0xfa0, Local0)
                        While(LAnd(LNot(And(HSTS, 0x80, )), Local0))
                        {
                            Decrement(Local0)
                            Stall(0x32)
                        }
                        If(LNot(Local0))
                        {
                            KILL()
                            Return(0x0)
                        }
                        Store(HBDR, Index(TBUF, Local1, ))
                        Store(0x80, HSTS)
                        Increment(Local1)
                    }
                    If(COMP())
                    {
                        Or(HSTS, 0xff, HSTS)
                        Return(TBUF)
                    }
                    Return(0x0)
                }
                Method(STRT, 0x0, Serialized)
                {
                    Store(0xc8, Local0)
                    While(Local0)
                    {
                        If(And(HSTS, 0x40, ))
                        {
                            Decrement(Local0)
                            Sleep(0x1)
                            If(LEqual(Local0, 0x0))
                            {
                                Return(0x1)
                            }
                        }
                        Else
                        {
                            Store(0x0, Local0)
                        }
                    }
                    Store(0xfa0, Local0)
                    While(Local0)
                    {
                        If(And(HSTS, 0x1, ))
                        {
                            Decrement(Local0)
                            Stall(0x32)
                            If(LEqual(Local0, 0x0))
                            {
                                KILL()
                            }
                        }
                        Else
                        {
                            Return(0x0)
                        }
                    }
                    Return(0x1)
                }
                Method(COMP, 0x0, Serialized)
                {
                    Store(0xfa0, Local0)
                    While(Local0)
                    {
                        If(And(HSTS, 0x2, ))
                        {
                            Return(0x1)
                        }
                        Else
                        {
                            Decrement(Local0)
                            Stall(0x32)
                            If(LEqual(Local0, 0x0))
                            {
                                KILL()
                            }
                        }
                    }
                    Return(0x0)
                }
                Method(KILL, 0x0, Serialized)
                {
                    Or(HCON, 0x2, HCON)
                    Or(HSTS, 0xff, HSTS)
                }
                Device(BUS0)
                {
                    Name(_CID, "smbus")
                    Name(_ADR, 0x0)
                    Device(MKY0)
                    {
                        Name(_ADR, 0x0)
                        Name(_CID, "mikey")
                        Method(_DSM, 0x4, NotSerialized)
                        {
                            Store(Package(0xa)
                            {
                                "refnum",
                                0x0,
                                "address",
                                0x39,
                                "device-id",
                                0xcd2,
                                "ramp-control-address",
                                0x3b,
                                "hdet",
                                0x1
                            }, Local0)
                            DTGP(Arg0, Arg1, Arg2, Arg3, RefOf(Local0))
                            Return(Local0)
                        }
                        Method(H1EN, 0x1, Serialized)
                        {
                            If(LNot(LGreater(Arg0, 0x1)))
                            {
                                If(LEqual(Arg0, 0x1))
                                {
                                    Or(GP16, 0x1, GP16)
                                }
                                Else
                                {
                                    And(GP16, 0x0, GP16)
                                }
                            }
                        }
                        Method(H1IL, 0x0, Serialized)
                        {
                            Store(GP05, Local0)
                            Return(Local0)
                        }
                        Method(H1IP, 0x1, Serialized)
                        {
                            Store(Arg0, Local0)
                            If(LNot(LGreater(Arg0, 0x1)))
                            {
                                Not(Arg0, Arg0)
                                Store(Arg0, GI05)
                            }
                        }
                        Name(H1IN, 0x15)
                        Scope(\_GPE)
                        {
                            Method(_L15, 0x0, NotSerialized)
                            {
                                If(OSDW())
                                {
                                    Notify(\_SB_.PCI0.SBUS.BUS0.MKY0, 0x80)
                                }
                                Else
                                {
                                    Store(0x0, GI05)
                                    Store(0x0, GU05)
                                    Notify(\_SB_.PWRB, 0x2)
                                }
                            }
                        }
                        Method(P1IL, 0x0, Serialized)
                        {
                            Store(GP03, Local0)
                            Return(Local0)
                        }
                        Method(P1IP, 0x1, Serialized)
                        {
                            If(LNot(LGreater(Arg0, 0x1)))
                            {
                                Not(Arg0, Arg0)
                                Store(Arg0, GI03)
                            }
                        }
                        Name(P1IN, 0x13)
                        Scope(\_GPE)
                        {
                            Method(_L13, 0x0, NotSerialized)
                            {
                                XOr(GI03, 0x1, GI03)
                                If(OSDW())
                                {
                                    Notify(\_SB_.PCI0.SBUS.BUS0.MKY0, 0x81)
                                }
                                Else
                                {
                                    Notify(\_SB_.PWRB, 0x2)
                                }
                            }
                        }
                    }
                }
                Device(BUS1)
                {
                    Name(_CID, "smbus")
                    Name(_ADR, 0x1)
                }
            }
            Device(LPCB)
            {
                Name(_ADR, 0x1f0000)
                Scope(\_SB_)
                {
                    OperationRegion(\_SB_.PCI0.LPCB.LPC1, PCI_Config, 0x40, 0xc0)
                    Field(\_SB_.PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                        Offset(0x20),
                        PARC, 8,
                        PBRC, 8,
                        PCRC, 8,
                        PDRC, 8,
                        , 32,
                        PERC, 8,
                        PFRC, 8,
                        PGRC, 8,
                        PHRC, 8
                    }
                    Device(LNKA)
                    {
                        Name(_HID, 0xf0cd041)
                        Name(_UID, 0x1)
                        Method(_DIS, 0x0, Serialized)
                        {
                            Or(PARC, 0x80, PARC)
                        }
                        Name(_PRS, Buffer(0x6)
                        {
	0x23, 0xfa, 0xd4, 0x18, 0x79, 0x00
                        })
                        Method(_CRS, 0x0, Serialized)
                        {
                            Name(RTLA, Buffer(0x6)
                            {
	0x23, 0x00, 0x00, 0x18, 0x79, 0x00
                            })
                            CreateWordField(RTLA, 0x1, IRQ0)
                            Store(Zero, IRQ0)
                            ShiftLeft(0x1, And(PARC, 0xf, ), IRQ0)
                            Return(RTLA)
                        }
                        Method(_SRS, 0x1, Serialized)
                        {
                            CreateWordField(Arg0, 0x1, IRQ0)
                            FindSetRightBit(IRQ0, Local0)
                            Decrement(Local0)
                            Store(Local0, PARC)
                        }
                        Method(_STA, 0x0, Serialized)
                        {
                            If(And(PARC, 0x80, ))
                            {
                                Return(0x9)
                            }
                            Else
                            {
                                Return(0xb)
                            }
                        }
                    }
                    Device(LNKB)
                    {
                        Name(_HID, 0xf0cd041)
                        Name(_UID, 0x2)
                        Method(_DIS, 0x0, Serialized)
                        {
                            Or(PBRC, 0x80, PBRC)
                        }
                        Name(_PRS, Buffer(0x6)
                        {
	0x23, 0xfa, 0xd8, 0x18, 0x79, 0x00
                        })
                        Method(_CRS, 0x0, Serialized)
                        {
                            Name(RTLB, Buffer(0x6)
                            {
	0x23, 0x00, 0x00, 0x18, 0x79, 0x00
                            })
                            CreateWordField(RTLB, 0x1, IRQ0)
                            Store(Zero, IRQ0)
                            ShiftLeft(0x1, And(PBRC, 0xf, ), IRQ0)
                            Return(RTLB)
                        }
                        Method(_SRS, 0x1, Serialized)
                        {
                            CreateWordField(Arg0, 0x1, IRQ0)
                            FindSetRightBit(IRQ0, Local0)
                            Decrement(Local0)
                            Store(Local0, PBRC)
                        }
                        Method(_STA, 0x0, Serialized)
                        {
                            If(And(PBRC, 0x80, ))
                            {
                                Return(0x9)
                            }
                            Else
                            {
                                Return(0xb)
                            }
                        }
                    }
                    Device(LNKC)
                    {
                        Name(_HID, 0xf0cd041)
                        Name(_UID, 0x3)
                        Method(_DIS, 0x0, Serialized)
                        {
                            Or(PCRC, 0x80, PCRC)
                        }
                        Name(_PRS, Buffer(0x6)
                        {
	0x23, 0xfa, 0xd4, 0x18, 0x79, 0x00
                        })
                        Method(_CRS, 0x0, Serialized)
                        {
                            Name(RTLC, Buffer(0x6)
                            {
	0x23, 0x00, 0x00, 0x18, 0x79, 0x00
                            })
                            CreateWordField(RTLC, 0x1, IRQ0)
                            Store(Zero, IRQ0)
                            ShiftLeft(0x1, And(PCRC, 0xf, ), IRQ0)
                            Return(RTLC)
                        }
                        Method(_SRS, 0x1, Serialized)
                        {
                            CreateWordField(Arg0, 0x1, IRQ0)
                            FindSetRightBit(IRQ0, Local0)
                            Decrement(Local0)
                            Store(Local0, PCRC)
                        }
                        Method(_STA, 0x0, Serialized)
                        {
                            If(And(PCRC, 0x80, ))
                            {
                                Return(0x9)
                            }
                            Else
                            {
                                Return(0xb)
                            }
                        }
                    }
                    Device(LNKD)
                    {
                        Name(_HID, 0xf0cd041)
                        Name(_UID, 0x4)
                        Method(_DIS, 0x0, Serialized)
                        {
                            Or(PDRC, 0x80, PDRC)
                        }
                        Name(_PRS, Buffer(0x6)
                        {
	0x23, 0xfa, 0xd8, 0x18, 0x79, 0x00
                        })
                        Method(_CRS, 0x0, Serialized)
                        {
                            Name(RTLD, Buffer(0x6)
                            {
	0x23, 0x00, 0x00, 0x18, 0x79, 0x00
                            })
                            CreateWordField(RTLD, 0x1, IRQ0)
                            Store(Zero, IRQ0)
                            ShiftLeft(0x1, And(PDRC, 0xf, ), IRQ0)
                            Return(RTLD)
                        }
                        Method(_SRS, 0x1, Serialized)
                        {
                            CreateWordField(Arg0, 0x1, IRQ0)
                            FindSetRightBit(IRQ0, Local0)
                            Decrement(Local0)
                            Store(Local0, PDRC)
                        }
                        Method(_STA, 0x0, Serialized)
                        {
                            If(And(PDRC, 0x80, ))
                            {
                                Return(0x9)
                            }
                            Else
                            {
                                Return(0xb)
                            }
                        }
                    }
                    Device(LNKE)
                    {
                        Name(_HID, 0xf0cd041)
                        Name(_UID, 0x5)
                        Method(_DIS, 0x0, Serialized)
                        {
                            Or(PERC, 0x80, PERC)
                        }
                        Name(_PRS, Buffer(0x6)
                        {
	0x23, 0xfa, 0xd4, 0x18, 0x79, 0x00
                        })
                        Method(_CRS, 0x0, Serialized)
                        {
                            Name(RTLE, Buffer(0x6)
                            {
	0x23, 0x00, 0x00, 0x18, 0x79, 0x00
                            })
                            CreateWordField(RTLE, 0x1, IRQ0)
                            Store(Zero, IRQ0)
                            ShiftLeft(0x1, And(PERC, 0xf, ), IRQ0)
                            Return(RTLE)
                        }
                        Method(_SRS, 0x1, Serialized)
                        {
                            CreateWordField(Arg0, 0x1, IRQ0)
                            FindSetRightBit(IRQ0, Local0)
                            Decrement(Local0)
                            Store(Local0, PERC)
                        }
                        Method(_STA, 0x0, Serialized)
                        {
                            If(And(PERC, 0x80, ))
                            {
                                Return(0x9)
                            }
                            Else
                            {
                                Return(0xb)
                            }
                        }
                    }
                    Device(LNKF)
                    {
                        Name(_HID, 0xf0cd041)
                        Name(_UID, 0x6)
                        Method(_DIS, 0x0, Serialized)
                        {
                            Or(PFRC, 0x80, PFRC)
                        }
                        Name(_PRS, Buffer(0x6)
                        {
	0x23, 0xfa, 0xd8, 0x18, 0x79, 0x00
                        })
                        Method(_CRS, 0x0, Serialized)
                        {
                            Name(RTLF, Buffer(0x6)
                            {
	0x23, 0x00, 0x00, 0x18, 0x79, 0x00
                            })
                            CreateWordField(RTLF, 0x1, IRQ0)
                            Store(Zero, IRQ0)
                            ShiftLeft(0x1, And(PFRC, 0xf, ), IRQ0)
                            Return(RTLF)
                        }
                        Method(_SRS, 0x1, Serialized)
                        {
                            CreateWordField(Arg0, 0x1, IRQ0)
                            FindSetRightBit(IRQ0, Local0)
                            Decrement(Local0)
                            Store(Local0, PFRC)
                        }
                        Method(_STA, 0x0, Serialized)
                        {
                            If(And(PFRC, 0x80, ))
                            {
                                Return(0x9)
                            }
                            Else
                            {
                                Return(0xb)
                            }
                        }
                    }
                    Device(LNKG)
                    {
                        Name(_HID, 0xf0cd041)
                        Name(_UID, 0x7)
                        Method(_DIS, 0x0, Serialized)
                        {
                            Or(PGRC, 0x80, PGRC)
                        }
                        Name(_PRS, Buffer(0x6)
                        {
	0x23, 0xfa, 0xd4, 0x18, 0x79, 0x00
                        })
                        Method(_CRS, 0x0, Serialized)
                        {
                            Name(RTLG, Buffer(0x6)
                            {
	0x23, 0x00, 0x00, 0x18, 0x79, 0x00
                            })
                            CreateWordField(RTLG, 0x1, IRQ0)
                            Store(Zero, IRQ0)
                            ShiftLeft(0x1, And(PGRC, 0xf, ), IRQ0)
                            Return(RTLG)
                        }
                        Method(_SRS, 0x1, Serialized)
                        {
                            CreateWordField(Arg0, 0x1, IRQ0)
                            FindSetRightBit(IRQ0, Local0)
                            Decrement(Local0)
                            Store(Local0, PGRC)
                        }
                        Method(_STA, 0x0, Serialized)
                        {
                            If(And(PGRC, 0x80, ))
                            {
                                Return(0x9)
                            }
                            Else
                            {
                                Return(0xb)
                            }
                        }
                    }
                    Device(LNKH)
                    {
                        Name(_HID, 0xf0cd041)
                        Name(_UID, 0x8)
                        Method(_DIS, 0x0, Serialized)
                        {
                            Or(PHRC, 0x80, PHRC)
                        }
                        Name(_PRS, Buffer(0x6)
                        {
	0x23, 0xfa, 0xd8, 0x18, 0x79, 0x00
                        })
                        Method(_CRS, 0x0, Serialized)
                        {
                            Name(RTLH, Buffer(0x6)
                            {
	0x23, 0x00, 0x00, 0x18, 0x79, 0x00
                            })
                            CreateWordField(RTLH, 0x1, IRQ0)
                            Store(Zero, IRQ0)
                            ShiftLeft(0x1, And(PHRC, 0xf, ), IRQ0)
                            Return(RTLH)
                        }
                        Method(_SRS, 0x1, Serialized)
                        {
                            CreateWordField(Arg0, 0x1, IRQ0)
                            FindSetRightBit(IRQ0, Local0)
                            Decrement(Local0)
                            Store(Local0, PHRC)
                        }
                        Method(_STA, 0x0, Serialized)
                        {
                            If(And(PHRC, 0x80, ))
                            {
                                Return(0x9)
                            }
                            Else
                            {
                                Return(0xb)
                            }
                        }
                    }
                }
                OperationRegion(LPC0, PCI_Config, 0x40, 0xc0)
                Field(LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset(0x40),
                    IOD0, 8,
                    IOD1, 8,
                    Offset(0xb0),
                    RAEN, 1,
                    , 13,
                    RCBA, 18
                }
                Device(DMAC)
                {
                    Name(_HID, 0x2d041)
                    Name(_CRS, Buffer(0x25)
                    {
	0x47, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x20, 0x47, 0x01, 0x81, 0x00,
	0x81, 0x00, 0x01, 0x11, 0x47, 0x01, 0x93, 0x00, 0x93, 0x00, 0x01, 0x0d,
	0x47, 0x01, 0xc0, 0x00, 0xc0, 0x00, 0x01, 0x20, 0x2a, 0x10, 0x01, 0x79,
	0x00
                    })
                }
                Device(FWHD)
                {
                    Name(_HID, 0x8d425)
                    Name(_CRS, Buffer(0xe)
                    {
	0x86, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0x00, 0x00, 0x00, 0x01,
	0x79, 0x00
                    })
                }
                Device(HPET)
                {
                    Name(_HID, 0x301d041)
                    Name(_CID, 0x10cd041)
                    Name(BUF0, Buffer(0x14)
                    {
	0x22, 0x01, 0x00, 0x22, 0x00, 0x01, 0x86, 0x09, 0x00, 0x01, 0x00, 0x00,
	0xd0, 0xfe, 0x00, 0x04, 0x00, 0x00, 0x79, 0x00
                    })
                    Method(_STA, 0x0, NotSerialized)
                    {
                        If(LNot(LLess(OSYS, 0x7d1)))
                        {
                            If(HPAE)
                            {
                                Return(0xf)
                            }
                        }
                        Else
                        {
                            If(HPAE)
                            {
                                Return(0xb)
                            }
                        }
                        Return(0x0)
                    }
                    Method(_CRS, 0x0, Serialized)
                    {
                        If(HPAE)
                        {
                            CreateDWordField(BUF0, 0xa, HPT0)
                            If(LEqual(HPAS, 0x1))
                            {
                                Store(0xfed01000, HPT0)
                            }
                            If(LEqual(HPAS, 0x2))
                            {
                                Store(0xfed02000, HPT0)
                            }
                            If(LEqual(HPAS, 0x3))
                            {
                                Store(0xfed03000, HPT0)
                            }
                        }
                        Return(BUF0)
                    }
                }
                Device(IPIC)
                {
                    Name(_HID, 0xd041)
                    Name(_CRS, Buffer(0x8d)
                    {
	0x47, 0x01, 0x20, 0x00, 0x20, 0x00, 0x01, 0x02, 0x47, 0x01, 0x24, 0x00,
	0x24, 0x00, 0x01, 0x02, 0x47, 0x01, 0x28, 0x00, 0x28, 0x00, 0x01, 0x02,
	0x47, 0x01, 0x2c, 0x00, 0x2c, 0x00, 0x01, 0x02, 0x47, 0x01, 0x30, 0x00,
	0x30, 0x00, 0x01, 0x02, 0x47, 0x01, 0x34, 0x00, 0x34, 0x00, 0x01, 0x02,
	0x47, 0x01, 0x38, 0x00, 0x38, 0x00, 0x01, 0x02, 0x47, 0x01, 0x3c, 0x00,
	0x3c, 0x00, 0x01, 0x02, 0x47, 0x01, 0xa0, 0x00, 0xa0, 0x00, 0x01, 0x02,
	0x47, 0x01, 0xa4, 0x00, 0xa4, 0x00, 0x01, 0x02, 0x47, 0x01, 0xa8, 0x00,
	0xa8, 0x00, 0x01, 0x02, 0x47, 0x01, 0xac, 0x00, 0xac, 0x00, 0x01, 0x02,
	0x47, 0x01, 0xb0, 0x00, 0xb0, 0x00, 0x01, 0x02, 0x47, 0x01, 0xb4, 0x00,
	0xb4, 0x00, 0x01, 0x02, 0x47, 0x01, 0xb8, 0x00, 0xb8, 0x00, 0x01, 0x02,
	0x47, 0x01, 0xbc, 0x00, 0xbc, 0x00, 0x01, 0x02, 0x47, 0x01, 0xd0, 0x04,
	0xd0, 0x04, 0x01, 0x02, 0x22, 0x04, 0x00, 0x79, 0x00
                    })
                }
                Device(MATH)
                {
                    Name(_HID, 0x40cd041)
                    Name(_CRS, Buffer(0xd)
                    {
	0x47, 0x01, 0xf0, 0x00, 0xf0, 0x00, 0x01, 0x01, 0x22, 0x00, 0x20, 0x79,
	0x00
                    })
                }
                Device(LDRC)
                {
                    Name(_HID, 0x20cd041)
                    Name(_UID, 0x2)
                    Name(_CRS, Buffer(0x62)
                    {
	0x47, 0x01, 0x2e, 0x00, 0x2e, 0x00, 0x01, 0x02, 0x47, 0x01, 0x4e, 0x00,
	0x4e, 0x00, 0x01, 0x02, 0x47, 0x01, 0x61, 0x00, 0x61, 0x00, 0x01, 0x01,
	0x47, 0x01, 0x63, 0x00, 0x63, 0x00, 0x01, 0x01, 0x47, 0x01, 0x65, 0x00,
	0x65, 0x00, 0x01, 0x01, 0x47, 0x01, 0x67, 0x00, 0x67, 0x00, 0x01, 0x01,
	0x47, 0x01, 0x80, 0x00, 0x80, 0x00, 0x01, 0x01, 0x47, 0x01, 0x92, 0x00,
	0x92, 0x00, 0x01, 0x01, 0x47, 0x01, 0xb2, 0x00, 0xb2, 0x00, 0x01, 0x02,
	0x47, 0x01, 0x00, 0x10, 0x00, 0x10, 0x01, 0x10, 0x47, 0x01, 0x00, 0x04,
	0x00, 0x04, 0x01, 0x80, 0x47, 0x01, 0x00, 0x05, 0x00, 0x05, 0x01, 0x80,
	0x79, 0x00
                    })
                }
                Device(RTC_)
                {
                    Name(_HID, 0xbd041)
                    Name(_CRS, Buffer(0xa)
                    {
	0x47, 0x01, 0x70, 0x00, 0x70, 0x00, 0x01, 0x08, 0x79, 0x00
                    })
                }
                Device(TIMR)
                {
                    Name(_HID, 0x1d041)
                    Name(_CRS, Buffer(0x12)
                    {
	0x47, 0x01, 0x40, 0x00, 0x40, 0x00, 0x01, 0x04, 0x47, 0x01, 0x50, 0x00,
	0x50, 0x00, 0x10, 0x04, 0x79, 0x00
                    })
                }
                Device(SMC_)
                {
                    Name(_HID, 0x1001006)
                    Name(_CID, "smc-huronriver")
                    Name(_STA, 0xb)
                    Name(_CRS, Buffer(0x19)
                    {
	0x47, 0x01, 0x00, 0x03, 0x00, 0x03, 0x01, 0x20, 0x86, 0x09, 0x00, 0x01,
	0x00, 0x00, 0xf0, 0xfe, 0x00, 0x00, 0x01, 0x00, 0x22, 0x40, 0x00, 0x79,
	0x00
                    })
                    Device(SMS0)
                    {
                        Name(_HID, 0x3001006)
                        Name(_CID, "smc-sms")
                        Method(_DSM, 0x4, NotSerialized)
                        {
                            Store(Package(0x2)
                            {
                                "disk-sense-level",
                                SDID
                            }, Local0)
                            DTGP(Arg0, Arg1, Arg2, Arg3, RefOf(Local0))
                            Return(Local0)
                        }
                    }
                }
                Device(ALS0)
                {
                    Name(_HID, "ACPI0008")
                    Name(_CID, "smc-als")
                    Name(BUFF, Buffer(0x2)
                    {
                    })
                    CreateByteField(BUFF, 0x0, OB0_)
                    CreateByteField(BUFF, 0x1, OB1_)
                    CreateWordField(BUFF, 0x0, ALSI)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        If(LNot(LLess(OSYS, 0x7d9)))
                        {
                            Return(0xf)
                        }
                        Else
                        {
                            Return(0x0)
                        }
                    }
                    Method(_ALI, 0x0, NotSerialized)
                    {
                        Store(\_SB_.PCI0.LPCB.EC__.ALB0, OB0_)
                        Store(\_SB_.PCI0.LPCB.EC__.ALB1, OB1_)
                        Store(ALSI, Local0)
                        Return(Local0)
                    }
                    Name(_ALR, Package(0x5)
                    {
                        Package(0x2)
                        {
                            0xa,
                            0x0
                        },
                        Package(0x2)
                        {
                            0x14,
                            0xa
                        },
                        Package(0x2)
                        {
                            0x32,
                            0x50
                        },
                        Package(0x2)
                        {
                            0x5a,
                            0x12c
                        },
                        Package(0x2)
                        {
                            0x64,
                            0x3e8
                        }
                    })
                }
                Device(EC__)
                {
                    Name(_HID, 0x90cd041)
                    Name(_UID, 0x0)
                    Name(_CRS, Buffer(0x12)
                    {
	0x47, 0x01, 0x62, 0x00, 0x62, 0x00, 0x00, 0x01, 0x47, 0x01, 0x66, 0x00,
	0x66, 0x00, 0x00, 0x01, 0x79, 0x00
                    })
                    Name(_GPE, 0x17)
                    Name(_PRW, Package(0x2)
                    {
                        0x23,
                        0x4
                    })
                    Name(ECOK, 0x0)
                    OperationRegion(ECOR, EmbeddedControl, 0x0, 0xff)
                    Field(ECOR, ByteAcc, Lock, Preserve)
                    {
                        ECVS, 8,
                        , 8,
                        , 8,
                        G3HT, 1,
                        , 7,
                        WBCB, 1,
                        DSLP, 1,
                        , 6,
                        , 8,
                        WKRS, 8,
                        Offset(0x10),
                        ECSS, 8,
                        PLIM, 8,
                        ALB0, 8,
                        ALB1, 8,
                        WTLB, 8,
                        WTMB, 8,
                        Offset(0x20),
                        SPTR, 8,
                        SSTS, 8,
                        SADR, 8,
                        SCMD, 8,
                        SBFR, 256,
                        SCNT, 8,
                        SAAD, 8,
                        SAD0, 8,
                        SAD1, 8,
                        SMUX, 8,
                        Offset(0x60),
                        ELSW, 1,
                        EACP, 1,
                        ECDI, 1,
                        ENMI, 1,
                        , 4,
                        EMHP, 1,
                        , 7,
                        , 8,
                        , 8,
                        SWLO, 1,
                        SWLC, 1,
                        SWAI, 1,
                        SWAR, 1,
                        SWCI, 1,
                        SWCE, 1,
                        SWMI, 1,
                        SWMR, 1,
                        SWPB, 1,
                        SWGP, 1,
                        SWPM, 1,
                        SWWT, 1,
                        SWLB, 1,
                        , 3,
                        , 8,
                        , 8,
                        EWLO, 1,
                        EWLC, 1,
                        EWAI, 1,
                        EWAR, 1,
                        EWCI, 1,
                        EWCE, 1,
                        EWMI, 1,
                        EWMR, 1,
                        EWPB, 1,
                        EWGP, 1,
                        EWPM, 1,
                        ENWT, 1,
                        EWLB, 1,
                        , 3,
                        , 8,
                        , 8,
                        LWLO, 1,
                        LWLC, 1,
                        LWAI, 1,
                        LWAR, 1,
                        LWCI, 1,
                        LWCE, 1,
                        LWMI, 1,
                        LWMR, 1,
                        LWPB, 1,
                        LWGP, 1,
                        LWPM, 1,
                        LWWT, 1,
                        LWLB, 1,
                        , 3,
                        , 8,
                        , 8
                    }
                    Field(ECOR, ByteAcc, Lock, Preserve)
                    {
                        , 24,
                        G3AD, 1,
                        BLOD, 1,
                        S4WE, 1,
                        , 5,
                        Offset(0x6c),
                        LWE0, 8,
                        LWE1, 8,
                        LWE2, 8,
                        LWE3, 8
                    }
                    Field(ECOR, ByteAcc, Lock, Preserve)
                    {
                        Offset(0x24),
                        SBDW, 16,
                        Offset(0x46),
                        SADW, 16
                    }
                    Method(WAKE, 0x0, NotSerialized)
                    {
                        If(ECOK)
                        {
                            Store("EC Wake reason =", Debug)
                            Store(WKRS, Debug)
                            Store(EWAI, Debug)
                            Store(EWAR, Debug)
                            Return(WKRS)
                        }
                        Else
                        {
                            Return(0x0)
                        }
                    }
                    Device(SMB0)
                    {
                        Name(_HID, "ACPI0001")
                        Name(_EC_, 0x2010)
                        Mutex(SMTX, 0x0)
                        Method(_STA, 0x0, NotSerialized)
                        {
                            If(OSDW())
                            {
                                Return(0xf)
                            }
                            Else
                            {
                                Return(0x0)
                            }
                        }
                        Device(SBS0)
                        {
                            Name(_HID, "ACPI0002")
                            Name(_SBS, 0x1)
                        }
                        Method(SBPC, 0x1, NotSerialized)
                        {
                            Store(Arg0, Local0)
                            While(Local0)
                            {
                                If(LEqual(SPTR, 0x0))
                                {
                                    Return(And(SSTS, 0x1f, ))
                                }
                                Sleep(0x1)
                                Decrement(Local0)
                            }
                            Return(0x18)
                        }
                        Method(SBRW, 0x3, NotSerialized)
                        {
                            Store(One, Local0)
                            If(LNot(Acquire(\_SB_.PCI0.LPCB.EC__.SMB0.SMTX, 0xffff)))
                            {
                                If(LEqual(SPTR, 0x0))
                                {
                                    Store(ShiftLeft(Arg0, 0x1, ), SADR)
                                    Store(Arg1, SCMD)
                                    Store(0x9, SPTR)
                                    Store(SBPC(0x3e8), Local0)
                                    If(LNot(Local0))
                                    {
                                        Store(SBDW, Arg2)
                                    }
                                }
                                Release(\_SB_.PCI0.LPCB.EC__.SMB0.SMTX)
                            }
                            Return(Local0)
                        }
                        Method(SBRB, 0x3, NotSerialized)
                        {
                            Store(One, Local0)
                            Store(Buffer(0x1)
                            {
	0x00
                            }, Local1)
                            If(LNot(Acquire(\_SB_.PCI0.LPCB.EC__.SMB0.SMTX, 0xffff)))
                            {
                                If(LEqual(SPTR, 0x0))
                                {
                                    Store(ShiftLeft(Arg0, 0x1, ), SADR)
                                    Store(Arg1, SCMD)
                                    Store(0xb, SPTR)
                                    Store(SBPC(0x3e8), Local0)
                                    If(LNot(Local0))
                                    {
                                        Store(SBFR, Arg2)
                                    }
                                }
                                Release(\_SB_.PCI0.LPCB.EC__.SMB0.SMTX)
                            }
                            Return(Local0)
                        }
                    }
                    Method(_Q10, 0x0, NotSerialized)
                    {
                        If(OSDW())
                        {
                            Notify(\_SB_.PCI0.LPCB.EC__.SMB0, 0x80)
                        }
                        Else
                        {
                            If(And(SSTS, 0x40, ))
                            {
                                If(LNot(Acquire(\_SB_.PCI0.LPCB.EC__.SMB0.SMTX, 0xffff)))
                                {
                                    Store(ShiftRight(SAAD, 0x1, ), Local0)
                                    If(LEqual(Local0, 0xa))
                                    {
                                        \_SB_.BAT0.BNOT(SADW)
                                    }
                                    Store(0x0, SSTS)
                                    Release(\_SB_.PCI0.LPCB.EC__.SMB0.SMTX)
                                }
                            }
                        }
                    }
                    Method(_Q20, 0x0, NotSerialized)
                    {
                        Store(ELSW, LIDS)
                        Store(ELSW, \_SB_.PCI0.IGPU.CLID)
                        Notify(\_SB_.LID0, 0x80)
                    }
                    Method(_Q21, 0x0, NotSerialized)
                    {
                        If(EACP)
                        {
                            Store(0x1, PWRS)
                        }
                        Else
                        {
                            Store(0x0, PWRS)
                        }
                        Notify(\_SB_.ADP1, 0x80)
                        PNOT()
                    }
                    Method(_Q40, 0x0, NotSerialized)
                    {
                        Notify(\_SB_.PCI0.LPCB.ALS0, 0x80)
                    }
                    Method(_Q5A, 0x0, NotSerialized)
                    {
                        Notify(\_SB_.SLPB, 0x80)
                    }
                    Method(_Q80, 0x0, NotSerialized)
                    {
                        Notify(\_PR_.CPU0, 0x80)
                        Notify(\_PR_.CPU1, 0x80)
                        Notify(\_PR_.CPU2, 0x80)
                        Notify(\_PR_.CPU3, 0x80)
                        Notify(\_PR_.CPU4, 0x80)
                        Notify(\_PR_.CPU5, 0x80)
                        Notify(\_PR_.CPU6, 0x80)
                        Notify(\_PR_.CPU7, 0x80)
                        Store(EGPS, Local0)
                        If(LEqual(Local0, 0x0))
                        {
                            Notify(\_SB_.PCI0.P0P2.GFX0, 0xd1)
                        }
                        Else
                        {
                            If(LAnd(LGreater(Local0, 0x0), LNot(LGreater(Local0, 0x1))))
                            {
                                Notify(\_SB_.PCI0.P0P2.GFX0, 0xd2)
                            }
                            If(LAnd(LGreater(Local0, 0x1), LNot(LGreater(Local0, 0x7))))
                            {
                                Notify(\_SB_.PCI0.P0P2.GFX0, 0xd3)
                            }
                            If(LAnd(LGreater(Local0, 0x8), LNot(LGreater(Local0, 0xc))))
                            {
                                Notify(\_SB_.PCI0.P0P2.GFX0, 0xd4)
                            }
                            If(LAnd(LGreater(Local0, 0xc), LNot(LGreater(Local0, 0xf))))
                            {
                                Notify(\_SB_.PCI0.P0P2.GFX0, 0xd5)
                            }
                        }
                    }
                    Method(_QCD, 0x0, NotSerialized)
                    {
                        If(ECDI)
                        {
                            Notify(\_SB_.PCI0.SATA.PRT1, 0x81)
                        }
                        Else
                        {
                            Notify(\_SB_.PCI0.SATA.PRT1, 0x82)
                        }
                    }
                    Method(_REG, 0x2, NotSerialized)
                    {
                        If(LOr(LEqual(Arg0, 0x3), LNot(LLess(OSYS, 0x7d6))))
                        {
                            Store(Arg1, ECOK)
                            If(LEqual(Arg1, 0x1))
                            {
                                Store(0x0, ECSS)
                                Store(ELSW, LIDS)
                                Store(ELSW, \_SB_.PCI0.IGPU.CLID)
                                Notify(\_SB_.LID0, 0x80)
                                Store(EACP, PWRS)
                                Notify(\_SB_.ADP1, 0x80)
                            }
                        }
                    }
                }
                Scope(\_SB_)
                {
                    Device(BAT0)
                    {
                        Name(_HID, 0xa0cd041)
                        Name(_UID, 0x0)
                        Name(_PCL, Package(0x1)
                        {
                            \_SB_
                        })
                        Name(BSSW, 0xffff)
                        Name(PBIF, Package(0xd)
                        {
                            0x0,
                            0xffffffff,
                            0xffffffff,
                            0x1,
                            0xffffffff,
                            0xfa,
                            0x64,
                            0xa,
                            0xa,
                            " ",
                            " ",
                            " ",
                            " "
                        })
                        Name(PBST, Package(0x4)
                        {
                            0x0,
                            0xffffffff,
                            0xffffffff,
                            0xffffffff
                        })
                        Method(_STA, 0x0, NotSerialized)
                        {
                            If(OSDW())
                            {
                                Return(0x0)
                            }
                            If(\_SB_.PCI0.LPCB.EC__.ECOK)
                            {
                                UBSS()
                                If(And(BSSW, 0x1, ))
                                {
                                    Return(0x1f)
                                }
                                Else
                                {
                                    Return(0xf)
                                }
                            }
                            Else
                            {
                                Return(0xf)
                            }
                        }
                        Method(_BST, 0x0, NotSerialized)
                        {
                            If(And(BSSW, 0x1, ))
                            {
                                UBST()
                            }
                            Else
                            {
                                Store(0x0, Index(PBST, 0x0, ))
                                Store(0xffffffff, Index(PBST, 0x1, ))
                                Store(0xffffffff, Index(PBST, 0x2, ))
                            }
                            Return(PBST)
                        }
                        Method(_BIF, 0x0, NotSerialized)
                        {
                            If(And(BSSW, 0x1, ))
                            {
                                UBIF()
                            }
                            Return(PBIF)
                        }
                        Method(BNOT, 0x1, NotSerialized)
                        {
                            Store(BSSW, Local0)
                            Store(Arg0, BSSW)
                            Notify(\_SB_.BAT0, 0x80)
                            If(And(XOr(Local0, Arg0, ), 0x1, ))
                            {
                                Notify(\_SB_.BAT0, 0x81)
                            }
                        }
                        Method(UBSS, 0x0, NotSerialized)
                        {
                            \_SB_.PCI0.LPCB.EC__.SMB0.SBRW(0xa, 0x1, RefOf(BSSW))
                        }
                        Method(UBIF, 0x0, NotSerialized)
                        {
                            \_SB_.PCI0.LPCB.EC__.SMB0.SBRW(0xb, 0x18, RefOf(Local0))
                            Multiply(Local0, 0xa, Index(PBIF, 0x1, ))
                            \_SB_.PCI0.LPCB.EC__.SMB0.SBRW(0xb, 0x10, RefOf(Local0))
                            Multiply(Local0, 0xa, Index(PBIF, 0x2, ))
                            \_SB_.PCI0.LPCB.EC__.SMB0.SBRW(0xb, 0x19, RefOf(Local0))
                            Store(Local0, Index(PBIF, 0x4, ))
                            \_SB_.PCI0.LPCB.EC__.SMB0.SBRB(0xb, 0x21, RefOf(Local0))
                            Store(Local0, Index(PBIF, 0x9, ))
                            Store(Buffer(0x1)
                            {
	0x00
                            }, Index(PBIF, 0xa, ))
                            \_SB_.PCI0.LPCB.EC__.SMB0.SBRB(0xb, 0x22, RefOf(Local0))
                            Store(Local0, Index(PBIF, 0xb, ))
                            \_SB_.PCI0.LPCB.EC__.SMB0.SBRB(0xb, 0x20, RefOf(Local0))
                            Store(Local0, Index(PBIF, 0xc, ))
                        }
                        Method(UBST, 0x0, NotSerialized)
                        {
                            \_SB_.PCI0.LPCB.EC__.SMB0.SBRW(0xb, 0x9, RefOf(Local2))
                            Store(Local2, Index(PBST, 0x3, ))
                            \_SB_.PCI0.LPCB.EC__.SMB0.SBRW(0xb, 0xa, RefOf(Local0))
                            If(And(Local0, 0x8000, ))
                            {
                                Not(Local0, Local0)
                                And(Increment(Local0), 0xffff, Local0)
                            }
                            Multiply(Local0, Local2, Local0)
                            Divide(Local0, 0x3e8, , Index(PBST, 0x1, ))
                            \_SB_.PCI0.LPCB.EC__.SMB0.SBRW(0xb, 0xf, RefOf(Local0))
                            Multiply(Local0, 0xa, Index(PBST, 0x2, ))
                            Store(0x0, Local1)
                            If(PWRS)
                            {
                                \_SB_.PCI0.LPCB.EC__.SMB0.SBRW(0xb, 0x16, RefOf(Local0))
                                If(LNot(And(Local0, 0x40, )))
                                {
                                    Store(0x2, Local1)
                                }
                            }
                            Else
                            {
                                Store(0x1, Local1)
                            }
                            Store(Local1, Index(PBST, 0x0, ))
                        }
                    }
                }
                Device(GMUX)
                {
                    Name(_HID, 0xb001006)
                    Name(_CID, "gmux")
                    Name(_STA, 0xb)
                    Name(_CRS, Buffer(0xa)
                    {
	0x47, 0x01, 0x00, 0x07, 0xff, 0x07, 0x01, 0xff, 0x79, 0x00
                    })
                    Name(_PRW, Package(0x2)
                    {
                        0x16,
                        0x3
                    })
                    Scope(\_GPE)
                    {
                        Method(_L16, 0x0, NotSerialized)
                        {
                            Notify(\_SB_.PCI0.LPCB.GMUX, 0x80)
                        }
                    }
                    Name(GMGP, 0x16)
                    Method(GMSP, 0x1, NotSerialized)
                    {
                        If(LNot(LGreater(Arg0, 0x1)))
                        {
                            Or(GP06, Arg0, GP06)
                        }
                    }
                    Method(GMLV, 0x0, NotSerialized)
                    {
                        Return(GP06)
                    }
                }
            }
            Device(HDEF)
            {
                Name(_ADR, 0x1b0000)
                Name(_PRW, Package(0x2)
                {
                    0x9,
                    0x3
                })
            }
            Device(RP01)
            {
                Name(_ADR, 0x1c0000)
                Name(_PRW, Package(0x2)
                {
                    0x9,
                    0x3
                })
                Method(_PRT, 0x0, NotSerialized)
                {
                    If(PICM)
                    {
                        Return(AR04())
                    }
                    Return(PR04())
                }
            }
            Device(RP02)
            {
                Name(_ADR, 0x1c0001)
                Name(_PRW, Package(0x2)
                {
                    0x9,
                    0x3
                })
                Method(_PRT, 0x0, NotSerialized)
                {
                    If(PICM)
                    {
                        Return(AR05())
                    }
                    Return(PR05())
                }
            }
            Device(RP03)
            {
                Name(_ADR, 0x1c0002)
                Name(_PRW, Package(0x2)
                {
                    0x9,
                    0x3
                })
                Method(_PRT, 0x0, NotSerialized)
                {
                    If(PICM)
                    {
                        Return(AR06())
                    }
                    Return(PR06())
                }
            }
            Scope(\_SB_.PCI0.RP01)
            {
                OperationRegion(A1E0, PCI_Config, 0x0, 0x60)
                Field(A1E0, ByteAcc, NoLock, Preserve)
                {
                    , 32,
                    BMIE, 3,
                    Offset(0x19),
                    SECB, 8,
                    SBBN, 8,
                    , 24,
                    , 13,
                    MABT, 1,
                    Offset(0x4a),
                    , 5,
                    TPEN, 1,
                    Offset(0x50),
                    , 4,
                    LDIS, 1,
                    , 24,
                    LACT, 1
                }
                Method(_BBN, 0x0, NotSerialized)
                {
                    If(LAnd(LEqual(BMIE, 0x0), LEqual(SECB, 0xff)))
                    {
                        Return(SNBS)
                    }
                    Else
                    {
                        Return(SECB)
                    }
                }
                Method(_STA, 0x0, NotSerialized)
                {
                    Return(0xf)
                }
                Name(BMIS, 0x0)
                Name(SNBS, 0x0)
                Name(SOBS, 0x0)
                Name(LPFL, 0x0)
                Method(C4PU, 0x0, Serialized)
                {
                    Store(SOBS, SBBN)
                    Store(SNBS, SECB)
                    Store(BMIS, BMIE)
                    Store(0x0, LDIS)
                    Store(0x0, Local0)
                    Store(Or(LPFL, 0x20, ), LPFL)
                    Store(0x0, GP49)
                    While(0x1)
                    {
                        Sleep(0x5)
                        Sleep(0x64)
                        Store(0x0, Local1)
                        Add(Timer, 0x989680, Local2)
                        While(LNot(LGreater(Timer, Local2)))
                        {
                            If(LAnd(LEqual(LACT, 0x1), LAnd(LNot(LEqual(\_SB_.PCI0.RP01.GIGE.AVND, 0xffff)), LNot(LEqual(\_SB_.PCI0.RP01.SDXC.AVND, 0xffff)))))
                            {
                                Store(0x1, Local1)
                                Break
                            }
                            Sleep(0xa)
                        }
                        If(LEqual(Local1, 0x1))
                        {
                            Store(And(LPFL, Not(0x20, ), ), LPFL)
                            Store(0x1, MABT)
                            Break
                        }
                        If(LEqual(Local0, 0x4))
                        {
                            Store(Or(LPFL, Or(0x20, 0x80, ), ), LPFL)
                            Break
                        }
                        Increment(Local0)
                        Store(0x1, GP49)
                        Sleep(0x64)
                        Store(0x0, GP49)
                    }
                    Return(Zero)
                }
                Method(C4PD, 0x0, Serialized)
                {
                    Store(Or(LPFL, 0x10, ), LPFL)
                    Store(BMIE, BMIS)
                    Store(SECB, SNBS)
                    Store(SBBN, SOBS)
                    Store(0x0, BMIE)
                    Store(0xff, SECB)
                    Store(0xfe, SBBN)
                    Store(TPEN, Local0)
                    Store(0x1, LDIS)
                    Add(Timer, 0x989680, Local0)
                    While(LNot(LGreater(Timer, Local0)))
                    {
                        If(LEqual(LACT, 0x0))
                        {
                            Store(And(LPFL, Not(0x10, ), ), LPFL)
                            Break
                        }
                        Sleep(0xa)
                    }
                    If(And(LPFL, 0x10, ))
                    {
                        Store(Or(LPFL, Or(0x10, 0x40, ), ), LPFL)
                    }
                    Store(0x1, GP49)
                    Sleep(0x32)
                }
                Method(C4LP, 0x0, Serialized)
                {
                    If(LNot(OSDW()))
                    {
                        Return(Zero)
                    }
                    If(LAnd(LEqual(And(LPFL, 0x4, ), 0x0), LEqual(And(LPFL, 0x3, ), 0x3)))
                    {
                        Store(And(LPFL, Not(0x10, ), ), LPFL)
                        C4PD()
                        Store(Or(LPFL, 0x4, ), LPFL)
                        Return(Zero)
                    }
                    If(LAnd(LEqual(And(LPFL, 0x4, ), 0x4), LNot(LEqual(And(LPFL, 0x3, ), 0x3))))
                    {
                        Store(And(LPFL, Not(0x20, ), ), LPFL)
                        C4PU()
                        Store(And(LPFL, Not(0x4, ), ), LPFL)
                        Return(Zero)
                    }
                    Return(Zero)
                }
                Device(GIGE)
                {
                    Name(_ADR, 0x0)
                    OperationRegion(ARE0, PCI_Config, 0x0, 0x4)
                    Field(ARE0, ByteAcc, NoLock, Preserve)
                    {
                        AVND, 16
                    }
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_PRW, Package(0x2)
                    {
                        0x9,
                        0x3
                    })
                    Method(_RMV, 0x0, NotSerialized)
                    {
                        Return(0x0)
                    }
                    Method(_PSW, 0x1, NotSerialized)
                    {
                        If(Arg0)
                        {
                            Store(0x1, GP12)
                        }
                        Else
                        {
                            Store(0x0, GP12)
                        }
                    }
                    Name(_GPE, 0x1d)
                    Method(ELPR, 0x1, Serialized)
                    {
                        If(Arg0)
                        {
                            Store(Or(LPFL, 0x1, ), LPFL)
                        }
                        Else
                        {
                            Store(And(LPFL, Not(0x1, ), ), LPFL)
                        }
                        C4LP()
                    }
                    Method(EDET, 0x0, NotSerialized)
                    {
                        Return(GP13)
                    }
                }
                Device(SDXC)
                {
                    Name(_ADR, 0x1)
                    Name(_PRW, Package(0x2)
                    {
                        0x1e,
                        0x3
                    })
                    Method(_RMV, 0x0, NotSerialized)
                    {
                        Return(0x0)
                    }
                    OperationRegion(ARE1, PCI_Config, 0x0, 0x4)
                    Field(ARE1, ByteAcc, NoLock, Preserve)
                    {
                        AVND, 16
                    }
                    Name(_GPE, 0x1e)
                    Method(SLPR, 0x1, Serialized)
                    {
                        If(Arg0)
                        {
                            Store(Or(LPFL, 0x2, ), LPFL)
                        }
                        Else
                        {
                            Store(And(LPFL, Not(0x2, ), ), LPFL)
                        }
                        C4LP()
                        Return(LPFL)
                    }
                }
            }
            Scope(\_SB_.PCI0.RP02)
            {
                OperationRegion(A1E0, PCI_Config, 0x0, 0xff)
                Field(A1E0, ByteAcc, NoLock, Preserve)
                {
                    , 32,
                    BMIE, 3,
                    Offset(0x19),
                    SECB, 8,
                    SBBN, 8,
                    , 24,
                    , 13,
                    MABT, 1,
                    Offset(0x4a),
                    , 5,
                    TPEN, 1,
                    Offset(0x50),
                    , 4,
                    LDIS, 1,
                    , 24,
                    LACT, 1,
                    Offset(0xa4),
                    PSTA, 2
                }
                Method(_BBN, 0x0, NotSerialized)
                {
                    If(LAnd(LEqual(BMIE, 0x0), LEqual(SECB, 0xff)))
                    {
                        Return(SNBS)
                    }
                    Else
                    {
                        Return(SECB)
                    }
                }
                Method(_STA, 0x0, NotSerialized)
                {
                    Return(0xf)
                }
                Name(BMIS, 0x0)
                Name(SNBS, 0x0)
                Name(SOBS, 0x0)
                Method(APPD, 0x0, Serialized)
                {
                }
                Method(APPU, 0x0, Serialized)
                {
                }
                Method(ALPR, 0x1, NotSerialized)
                {
                    If(LEqual(Arg0, 0x1))
                    {
                        APPD()
                    }
                    Else
                    {
                        APPU()
                    }
                }
                Method(_PS0, 0x0, Serialized)
                {
                    ALPR(0x0)
                }
                Method(_PS3, 0x0, Serialized)
                {
                    ALPR(0x1)
                }
                Device(ARPT)
                {
                    Name(_ADR, 0x0)
                    OperationRegion(ARE2, PCI_Config, 0x0, 0xff)
                    Field(ARE2, ByteAcc, NoLock, Preserve)
                    {
                        AVND, 16,
                        ADID, 16,
                        Offset(0x44),
                        PSTA, 2
                    }
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_PRW, Package(0x2)
                    {
                        0x9,
                        0x3
                    })
                    Method(_RMV, 0x0, NotSerialized)
                    {
                        Return(0x0)
                    }
                    Method(WWEN, 0x1, NotSerialized)
                    {
                        Store(Arg0, WOWE)
                    }
                }
            }
            Scope(\_SB_.PCI0.RP03)
            {
                OperationRegion(A1E0, PCI_Config, 0x19, 0x1)
                Field(A1E0, ByteAcc, NoLock, Preserve)
                {
                    SECB, 8
                }
                Method(_BBN, 0x0, NotSerialized)
                {
                    Return(SECB)
                }
                Method(_STA, 0x0, NotSerialized)
                {
                    Return(0xf)
                }
                Device(FRWR)
                {
                    Name(_ADR, 0x0)
                    Name(_GPE, 0x11)
                    Method(_DSM, 0x4, NotSerialized)
                    {
                        Store(Package(0x4)
                        {
                            "fwports",
                            Buffer(0x4)
                            {
	0x01, 0x00, 0x00, 0x00
                            },
                            "fws0",
                            Buffer(0x4)
                            {
	0x01, 0x00, 0x00, 0x00
                            }
                        }, Local0)
                        DTGP(Arg0, Arg1, Arg2, Arg3, RefOf(Local0))
                        Return(Local0)
                    }
                    Method(_RMV, 0x0, NotSerialized)
                    {
                        Return(0x0)
                    }
                    Method(FPEN, 0x1, Serialized)
                    {
                        If(LNot(LGreater(Arg0, 0x1)))
                        {
                            Store(Arg0, GP48)
                        }
                    }
                    Scope(\_GPE)
                    {
                        Method(_L11, 0x0, NotSerialized)
                        {
                            If(OSDW())
                            {
                                Notify(\_SB_.PCI0.RP03.FRWR, 0x0)
                            }
                            Else
                            {
                                Notify(\_SB_.PWRB, 0x2)
                            }
                        }
                    }
                }
            }
        }
        Device(ADP1)
        {
            Name(_HID, "ACPI0003")
            Name(_PRW, Package(0x2)
            {
                0x23,
                0x4
            })
            Name(WK00, 0x1)
            Method(SWAK, 0x1, NotSerialized)
            {
                And(Arg0, 0x3, WK00)
                If(LNot(WK00))
                {
                    Store(0x1, WK00)
                }
            }
            Method(_PSR, 0x0, NotSerialized)
            {
                Return(PWRS)
            }
            Method(_PCL, 0x0, NotSerialized)
            {
                Return(\_SB_)
            }
            Method(_PSW, 0x1, NotSerialized)
            {
                If(OSDW())
                {
                    If(\_SB_.PCI0.LPCB.EC__.ECOK)
                    {
                        If(Arg0)
                        {
                            If(And(WK00, 0x1, ))
                            {
                                Store(0x1, \_SB_.PCI0.LPCB.EC__.EWAI)
                            }
                            If(And(WK00, 0x2, ))
                            {
                                Store(0x1, \_SB_.PCI0.LPCB.EC__.EWAR)
                            }
                        }
                        Else
                        {
                            Store(0x0, \_SB_.PCI0.LPCB.EC__.EWAI)
                            Store(0x0, \_SB_.PCI0.LPCB.EC__.EWAR)
                        }
                    }
                }
            }
        }
        Device(LID0)
        {
            Name(_HID, 0xd0cd041)
            Name(_PRW, Package(0x2)
            {
                0x23,
                0x4
            })
            Method(_LID, 0x0, NotSerialized)
            {
                Return(LIDS)
            }
            Method(_PSW, 0x1, NotSerialized)
            {
                If(\_SB_.PCI0.LPCB.EC__.ECOK)
                {
                    If(Arg0)
                    {
                        Store(0x1, \_SB_.PCI0.LPCB.EC__.EWLO)
                    }
                    Else
                    {
                        Store(0x0, \_SB_.PCI0.LPCB.EC__.EWLO)
                    }
                }
            }
        }
        Device(PWRB)
        {
            Name(_HID, 0xc0cd041)
        }
    }
    Scope(\_PR_)
    {
        Processor(CPU0, 0x1, 0x410, 0x6)
        {
        }
        Processor(CPU1, 0x2, 0x410, 0x6)
        {
        }
        Processor(CPU2, 0x3, 0x410, 0x6)
        {
        }
        Processor(CPU3, 0x4, 0x410, 0x6)
        {
        }
        Processor(CPU4, 0x5, 0x410, 0x6)
        {
        }
        Processor(CPU5, 0x6, 0x410, 0x6)
        {
        }
        Processor(CPU6, 0x7, 0x410, 0x6)
        {
        }
        Processor(CPU7, 0x8, 0x410, 0x6)
        {
        }
    }
    Mutex(MUTX, 0x0)
    OperationRegion(PRT0, SystemIO, 0x80, 0x4)
    Field(PRT0, DWordAcc, Lock, Preserve)
    {
        P80H, 32
    }
    OperationRegion(PLMT, SystemIO, 0x310, 0xa)
    Field(PLMT, WordAcc, Lock, Preserve)
    {
        CPLT, 8,
        IGPS, 8,
        MPLT, 8,
        CFIL, 8,
        EGPS, 8
    }
    Method(P8XH, 0x2, Serialized)
    {
        If(LEqual(Arg0, 0x0))
        {
            Store(Or(And(P80D, 0xffffff00, ), Arg1, ), P80D)
        }
        If(LEqual(Arg0, 0x1))
        {
            Store(Or(And(P80D, 0xffff00ff, ), ShiftLeft(Arg1, 0x8, ), ), P80D)
        }
        If(LEqual(Arg0, 0x2))
        {
            Store(Or(And(P80D, 0xff00ffff, ), ShiftLeft(Arg1, 0x10, ), ), P80D)
        }
        If(LEqual(Arg0, 0x3))
        {
            Store(Or(And(P80D, 0xffffff, ), ShiftLeft(Arg1, 0x18, ), ), P80D)
        }
        Store(P80D, P80H)
    }
    OperationRegion(SPRT, SystemIO, 0xb2, 0x2)
    Field(SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP, 8,
        SSMY, 8
    }
    Method(\_PIC, 0x1, NotSerialized)
    {
        Store(Arg0, GPIC)
        Store(Arg0, PICM)
    }
    Method(GETB, 0x3, Serialized)
    {
        Multiply(Arg0, 0x8, Local0)
        Multiply(Arg1, 0x8, Local1)
        CreateField(Arg2, Local0, Local1, TBF3)
        Return(TBF3)
    }
    Method(PNOT, 0x0, Serialized)
    {
        If(LGreater(TCNT, 0x1))
        {
            If(And(PDC0, 0x8, ))
            {
                Notify(\_PR_.CPU0, 0x80)
                If(And(PDC0, 0x10, ))
                {
                    Notify(\_PR_.CPU0, 0x81)
                }
            }
            If(And(PDC1, 0x8, ))
            {
                Notify(\_PR_.CPU1, 0x80)
                If(And(PDC1, 0x10, ))
                {
                    Notify(\_PR_.CPU1, 0x81)
                }
            }
            If(And(PDC2, 0x8, ))
            {
                Notify(\_PR_.CPU2, 0x80)
                If(And(PDC2, 0x10, ))
                {
                    Notify(\_PR_.CPU2, 0x81)
                }
            }
            If(And(PDC3, 0x8, ))
            {
                Notify(\_PR_.CPU3, 0x80)
                If(And(PDC3, 0x10, ))
                {
                    Notify(\_PR_.CPU3, 0x81)
                }
            }
            If(And(PDC4, 0x8, ))
            {
                Notify(\_PR_.CPU4, 0x80)
                If(And(PDC4, 0x10, ))
                {
                    Notify(\_PR_.CPU4, 0x81)
                }
            }
            If(And(PDC5, 0x8, ))
            {
                Notify(\_PR_.CPU5, 0x80)
                If(And(PDC5, 0x10, ))
                {
                    Notify(\_PR_.CPU5, 0x81)
                }
            }
            If(And(PDC6, 0x8, ))
            {
                Notify(\_PR_.CPU6, 0x80)
                If(And(PDC6, 0x10, ))
                {
                    Notify(\_PR_.CPU6, 0x81)
                }
            }
            If(And(PDC7, 0x8, ))
            {
                Notify(\_PR_.CPU7, 0x80)
                If(And(PDC7, 0x10, ))
                {
                    Notify(\_PR_.CPU7, 0x81)
                }
            }
        }
        Else
        {
            Notify(\_PR_.CPU0, 0x80)
            Notify(\_PR_.CPU0, 0x81)
        }
    }
    Method(TRAP, 0x2, Serialized)
    {
        Store(Arg1, SMIF)
        If(LEqual(Arg0, \TRTP))
        {
            Store(0x0, TRP0)
        }
        If(LEqual(Arg0, \TRTD))
        {
            Store(Arg1, DTSF)
            Store(0x0, TRPD)
            Return(DTSF)
        }
        If(LEqual(Arg0, \TRTI))
        {
            Store(0x0, TRPH)
        }
        Return(SMIF)
    }
    Scope(\_SB_)
    {
        Method(_INI, 0x0, NotSerialized)
        {
            PINI()
            \_SB_.PCI0.ZYXW
        }
        Device(PNLF)
        {
            Name(_ADR, 0x0)
            Name(_HID, 0x2001006)
            Name(_CID, "backlight")
            Name(_UID, 0xe)
            Name(_STA, 0xb)
        }
        Device(SLPB)
        {
            Name(_HID, 0xe0cd041)
            Name(_STA, 0xb)
        }
    }
    Scope(\_SB_.PCI0)
    {
        Method(_INI, 0x0, NotSerialized)
        {
            Store(0x7dc, OSYS)
            If(CondRefOf(\_OSI, Local0))
            {
                If(_OSI("Darwin"))
                {
                    Store(0x2710, OSYS)
                }
                If(\_OSI("Linux"))
                {
                    Store(0x3e8, OSYS)
                }
                If(\_OSI("Windows 2009"))
                {
                    Store(0x7d9, OSYS)
                }
                If(\_OSI("Windows 2012"))
                {
                    Store(0x7dc, OSYS)
                }
            }
        }
        Method(NHPG, 0x0, Serialized)
        {
        }
        Method(NPME, 0x0, Serialized)
        {
        }
    }
    Scope(\)
    {
        Name(PICM, 0x0)
        Method(OSDW, 0x0, NotSerialized)
        {
            If(LEqual(OSYS, 0x2710))
            {
                Return(0x1)
            }
            Else
            {
                Return(0x0)
            }
        }
        Method(PINI, 0x0, NotSerialized)
        {
            Store(0x7dc, OSYS)
            If(CondRefOf(_OSI, Local0))
            {
                If(_OSI("Darwin"))
                {
                    Store(0x2710, OSYS)
                }
                Else
                {
                    If(_OSI("Linux"))
                    {
                        Store(0x3e8, OSYS)
                    }
                    Else
                    {
                        If(_OSI("Windows 2009"))
                        {
                            Store(0x7d9, OSYS)
                        }
                        Else
                        {
                            If(_OSI("Windows 2012"))
                            {
                                Store(0x7dc, OSYS)
                            }
                        }
                    }
                }
            }
            Else
            {
                Store(0x7dc, OSYS)
            }
        }
    }
    Scope(\_SB_.PCI0)
    {
        Device(PDRC)
        {
            Name(_HID, 0x20cd041)
            Name(_UID, 0x1)
            Name(BUF0, Buffer(0x86)
            {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xd2, 0xfe, 0x00, 0x00, 0x02, 0x00,
	0x86, 0x09, 0x00, 0x00, 0x00, 0x00, 0xd9, 0xfe, 0x00, 0x40, 0x00, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x50, 0xd4, 0xfe, 0x00, 0xb0, 0x04, 0x00,
	0x86, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0x00, 0x00, 0x00, 0x01,
	0x86, 0x09, 0x00, 0x00, 0x00, 0x00, 0xe0, 0xfe, 0x00, 0x00, 0x10, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00,
	0x79, 0x00
            })
            Method(_CRS, 0x0, Serialized)
            {
                CreateDWordField(BUF0, 0x4, RBR0)
                ShiftLeft(\_SB_.PCI0.LPCB.RCBA, 0xe, RBR0)
                CreateDWordField(BUF0, 0x7c, TBR0)
                Store(TBAB, TBR0)
                CreateDWordField(BUF0, 0x80, TBLN)
                If(LEqual(TBAB, 0x0))
                {
                    Store(0x0, TBLN)
                }
                CreateDWordField(BUF0, 0x10, MBR0)
                ShiftLeft(\_SB_.PCI0.MHBR, 0xf, MBR0)
                CreateDWordField(BUF0, 0x1c, DBR0)
                ShiftLeft(\_SB_.PCI0.DIBR, 0xc, DBR0)
                CreateDWordField(BUF0, 0x28, EBR0)
                ShiftLeft(\_SB_.PCI0.EPBR, 0xc, EBR0)
                CreateDWordField(BUF0, 0x34, XBR0)
                ShiftLeft(\_SB_.PCI0.PXBR, 0x1a, XBR0)
                CreateDWordField(BUF0, 0x38, XSZ0)
                ShiftRight(0x10000000, \_SB_.PCI0.PXSZ, XSZ0)
                Return(BUF0)
            }
        }
    }
    Scope(\)
    {
        OperationRegion(IO_T, SystemIO, 0x1000, 0x10)
        Field(IO_T, ByteAcc, NoLock, Preserve)
        {
            TRPI, 16,
            , 16,
            , 16,
            , 16,
            TRP0, 8,
            , 8,
            , 8,
            , 8,
            , 8,
            , 8,
            , 8,
            , 8
        }
        OperationRegion(IO_D, SystemIO, 0x810, 0x4)
        Field(IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD, 8
        }
        OperationRegion(IO_H, SystemIO, 0x1000, 0x4)
        Field(IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH, 8
        }
        OperationRegion(PMIO, SystemIO, \PMBS, 0x80)
        Field(PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset(0x20),
            , 1,
            , 1,
            SPST, 1,
            , 3,
            , 6,
            , 1,
            , 1,
            , 2,
            , 9,
            GS09, 1,
            , 3,
            GS13, 1,
            , 2,
            , 3,
            , 1,
            , 28,
            , 1,
            , 2,
            , 3,
            , 6,
            , 1,
            , 1,
            , 2,
            , 9,
            GE09, 1,
            , 3,
            GE13, 1,
            , 2,
            , 3,
            , 1,
            , 28,
            Offset(0x42),
            , 1,
            GPEC, 1,
            , 1,
            , 5,
            Offset(0x64),
            , 4,
            , 3,
            , 2,
            SCIS, 1,
            , 4,
            , 2
        }
        OperationRegion(GPIO, SystemIO, \GPBS, 0x64)
        Field(GPIO, ByteAcc, NoLock, Preserve)
        {
            , 5,
            GU05, 1,
            , 2,
            GUV1, 8,
            GUV2, 8,
            GUV3, 8,
            GD00, 4,
            GD04, 1,
            , 5,
            GD10, 1,
            , 1,
            GD12, 1,
            , 1,
            GD14, 1,
            , 9,
            GD24, 1,
            , 7,
            , 32,
            , 3,
            GP03, 1,
            GP04, 1,
            GP05, 1,
            GP06, 1,
            GP07, 1,
            GP08, 1,
            GP09, 1,
            GP10, 1,
            GP11, 1,
            GP12, 1,
            GP13, 1,
            GP14, 1,
            GP15, 1,
            GP16, 1,
            GP17, 1,
            GP18, 1,
            GP19, 1,
            GP20, 1,
            GP21, 1,
            GP22, 1,
            GP23, 1,
            GP24, 1,
            , 2,
            GP27, 1,
            GP28, 1,
            , 3,
            Offset(0x18),
            GB00, 8,
            GB01, 8,
            GB02, 8,
            GB03, 8,
            Offset(0x2c),
            , 3,
            GI03, 1,
            GI04, 1,
            GI05, 1,
            GI06, 1,
            , 1,
            GI08, 1,
            GI09, 1,
            GI10, 1,
            GI11, 1,
            , 4,
            GIV2, 8,
            GIV3, 8,
            GUV4, 8,
            GUV5, 8,
            GUV6, 8,
            GUV7, 8,
            GIO4, 8,
            GI40, 1,
            GI41, 1,
            GI42, 1,
            , 3,
            GI46, 1,
            , 1,
            GIO6, 8,
            , 3,
            GI59, 1,
            GI60, 1,
            , 3,
            , 4,
            GP36, 1,
            , 3,
            GP40, 1,
            GP41, 1,
            GP42, 1,
            , 2,
            GP45, 1,
            GP46, 1,
            , 1,
            GP48, 1,
            GP49, 1,
            GL06, 6,
            , 3,
            GP59, 1,
            GP60, 1,
            , 3,
            , 32,
            GUV8, 8,
            GUV9, 8,
            GUVA, 8,
            GUVB, 8,
            GIO8, 4,
            GI68, 1,
            GI69, 1,
            GI70, 1,
            GI71, 1,
            GI72, 1,
            GI73, 1,
            GI74, 1,
            GIO9, 4,
            GIOA, 8,
            GIOB, 8,
            , 1,
            GP64, 1,
            , 3,
            GP68, 1,
            GP69, 1,
            GL08, 2,
            GP72, 1,
            GP73, 1,
            GP74, 1,
            GL09, 5,
            GL0A, 8,
            GL0B, 8
        }
        OperationRegion(RCRB, SystemMemory, \SRCB, 0x4000)
        Field(RCRB, DWordAcc, Lock, Preserve)
        {
            Offset(0x1000),
            Offset(0x3000),
            Offset(0x3404),
            HPAS, 2,
            , 5,
            HPAE, 1,
            Offset(0x3418),
            , 1,
            , 1,
            SATD, 1,
            SMBD, 1,
            HDAD, 1,
            , 2,
            UH6D, 1,
            UH1D, 1,
            UH2D, 1,
            UH3D, 1,
            UH4D, 1,
            UH5D, 1,
            , 3,
            RP1D, 1,
            RP2D, 1,
            RP3D, 1,
            RP4D, 1,
            RP5D, 1,
            RP6D, 1,
            RP7D, 1,
            RP8D, 1,
            , 4,
            UH7D, 1
        }
    }
    Scope(\_GPE)
    {
        Method(_L07, 0x0, NotSerialized)
        {
            Store(0x20, \_SB_.PCI0.SBUS.HSTS)
        }
        Method(_L09, 0x0, NotSerialized)
        {
            Notify(\_SB_.PCI0.P0P2, 0x2)
            Notify(\_SB_.PCI0.RP01, 0x2)
            Notify(\_SB_.PCI0.RP02, 0x2)
            Notify(\_SB_.PCI0.RP03, 0x2)
            \_SB_.PCI0.TGPE
            Notify(\_SB_.PCI0.RP01.GIGE, 0x2)
            Notify(\_SB_.PCI0.RP02.ARPT, 0x2)
        }
        Method(_L0D, 0x0, NotSerialized)
        {
            Notify(\_SB_.PWRB, 0x2)
            Notify(\_SB_.PCI0.EHC1, 0x2)
            Notify(\_SB_.PCI0.EHC2, 0x2)
            If(OSDW())
            {
                Notify(\_SB_.PCI0.HDEF, 0x2)
            }
        }
    }
    Method(DTGP, 0x5, NotSerialized)
    {
        If(LEqual(Arg0, Buffer(0x10)
        {
	0xc6, 0xb7, 0xb5, 0xa0, 0x18, 0x13, 0x1c, 0x44, 0xb0, 0xc9, 0xfe, 0x69,
	0x5e, 0xaf, 0x94, 0x9b
        }))
        {
            If(LEqual(Arg1, One))
            {
                If(LEqual(Arg2, Zero))
                {
                    Store(Buffer(0x1)
                    {
	0x03
                    }, Arg4)
                    Return(One)
                }
                If(LEqual(Arg2, One))
                {
                    Return(One)
                }
            }
        }
        Store(Buffer(0x1)
        {
	0x00
        }, Arg4)
        Return(Zero)
    }
    Name(_S0_, Package(0x3)
    {
        0x0,
        0x0,
        0x0
    })
    Name(_S4_, Package(0x3)
    {
        0x6,
        0x6,
        0x0
    })
    Name(_S5_, Package(0x3)
    {
        0x7,
        0x7,
        0x0
    })
    Method(_PTS, 0x1, NotSerialized)
    {
        Store(0x0, P80D)
        P8XH(0x0, Arg0)
        Store(Arg0, \_SB_.PCI0.LPCB.EC__.ECSS)
        If(LNot(LLess(Arg0, 0x3)))
        {
            Store(0x1, GP22)
        }
        Store(0x0, GP49)
        If(LNot(OSDW()))
        {
            Store(0x1, GP12)
        }
        If(LAnd(LNot(OSDW()), LNot(LLess(Arg0, 0x4))))
        {
            Store(0x0, \_SB_.PCI0.LPCB.EC__.EWLO)
            \_SB_.PCI0.DTLK
        }
    }
    Method(_WAK, 0x1, NotSerialized)
    {
        P8XH(0x0, 0x0)
        Store(0x0, \_SB_.PCI0.LPCB.EC__.ECSS)
        If(OSDW())
        {
        }
        Store(\_SB_.PCI0.LPCB.EC__.ELSW, LIDS)
        Store(\_SB_.PCI0.LPCB.EC__.ELSW, \_SB_.PCI0.IGPU.CLID)
        Store(\_SB_.PCI0.LPCB.EC__.EACP, PWRS)
        If(LNot(OSDW()))
        {
            Store(0x0, \_SB_.PCI0.LPCB.EC__.LWE0)
            Store(0x0, \_SB_.PCI0.LPCB.EC__.LWE1)
            Store(0x0, \_SB_.PCI0.LPCB.EC__.LWE2)
            Store(0x0, \_SB_.PCI0.LPCB.EC__.LWE3)
        }
        \_SB_.PCI0.XHC1._INI
        PNOT()
        Return(Package(0x2)
        {
            0x0,
            0x0
        })
    }
}
