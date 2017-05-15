.class public abstract Lcom/juphoon/service/cprof/IRcsCprofService$Stub;
.super Landroid/os/Binder;
.source "IRcsCprofService.java"

# interfaces
.implements Lcom/juphoon/service/cprof/IRcsCprofService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/juphoon/service/cprof/IRcsCprofService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/juphoon/service/cprof/IRcsCprofService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.juphoon.service.cprof.IRcsCprofService"

.field static final TRANSACTION_Mtc_CprofPccAddAddr:I = 0x2a

.field static final TRANSACTION_Mtc_CprofPccAddName:I = 0x18

.field static final TRANSACTION_Mtc_CprofPccAddrGetAddr:I = 0x2e

.field static final TRANSACTION_Mtc_CprofPccAddrGetLabel:I = 0x2c

.field static final TRANSACTION_Mtc_CprofPccAddrGetPref:I = 0x32

.field static final TRANSACTION_Mtc_CprofPccAddrGetType:I = 0x30

.field static final TRANSACTION_Mtc_CprofPccAddrSetAddr:I = 0x2f

.field static final TRANSACTION_Mtc_CprofPccAddrSetLabel:I = 0x2d

.field static final TRANSACTION_Mtc_CprofPccAddrSetPref:I = 0x33

.field static final TRANSACTION_Mtc_CprofPccAddrSetType:I = 0x31

.field static final TRANSACTION_Mtc_CprofPccBirthGetCalType:I = 0x54

.field static final TRANSACTION_Mtc_CprofPccBirthGetDate:I = 0x4e

.field static final TRANSACTION_Mtc_CprofPccBirthGetNonGregDate:I = 0x50

.field static final TRANSACTION_Mtc_CprofPccBirthGetPlace:I = 0x52

.field static final TRANSACTION_Mtc_CprofPccBirthSetCalType:I = 0x55

.field static final TRANSACTION_Mtc_CprofPccBirthSetDate:I = 0x4f

.field static final TRANSACTION_Mtc_CprofPccBirthSetNonGregDate:I = 0x51

.field static final TRANSACTION_Mtc_CprofPccBirthSetPlace:I = 0x53

.field static final TRANSACTION_Mtc_CprofPccCareerGetDuty:I = 0x58

.field static final TRANSACTION_Mtc_CprofPccCareerGetEmployer:I = 0x56

.field static final TRANSACTION_Mtc_CprofPccCareerSetDuty:I = 0x59

.field static final TRANSACTION_Mtc_CprofPccCareerSetEmployer:I = 0x57

.field static final TRANSACTION_Mtc_CprofPccCommAddrAddTel:I = 0x42

.field static final TRANSACTION_Mtc_CprofPccCommAddrAddUri:I = 0x36

.field static final TRANSACTION_Mtc_CprofPccCommAddrGetTelId:I = 0x41

.field static final TRANSACTION_Mtc_CprofPccCommAddrGetTelSize:I = 0x40

.field static final TRANSACTION_Mtc_CprofPccCommAddrGetUriId:I = 0x35

.field static final TRANSACTION_Mtc_CprofPccCommAddrGetUriSize:I = 0x34

.field static final TRANSACTION_Mtc_CprofPccCommAddrRmvTel:I = 0x43

.field static final TRANSACTION_Mtc_CprofPccCommAddrRmvUri:I = 0x37

.field static final TRANSACTION_Mtc_CprofPccGetAddrId:I = 0x29

.field static final TRANSACTION_Mtc_CprofPccGetAddrSize:I = 0x28

.field static final TRANSACTION_Mtc_CprofPccGetNameId:I = 0x17

.field static final TRANSACTION_Mtc_CprofPccGetNameSize:I = 0x16

.field static final TRANSACTION_Mtc_CprofPccGetPccType:I = 0x14

.field static final TRANSACTION_Mtc_CprofPccIconExportFile:I = 0x62

.field static final TRANSACTION_Mtc_CprofPccIconGetData:I = 0x60

.field static final TRANSACTION_Mtc_CprofPccIconGetDesc:I = 0x5e

.field static final TRANSACTION_Mtc_CprofPccIconGetEncodingType:I = 0x5c

.field static final TRANSACTION_Mtc_CprofPccIconGetMimeType:I = 0x5a

.field static final TRANSACTION_Mtc_CprofPccIconImportFile:I = 0x63

.field static final TRANSACTION_Mtc_CprofPccIconSetData:I = 0x61

.field static final TRANSACTION_Mtc_CprofPccIconSetDesc:I = 0x5f

.field static final TRANSACTION_Mtc_CprofPccIconSetEncodingType:I = 0x5d

.field static final TRANSACTION_Mtc_CprofPccIconSetMimeType:I = 0x5b

.field static final TRANSACTION_Mtc_CprofPccLoadAddr:I = 0x5

.field static final TRANSACTION_Mtc_CprofPccLoadAll:I = 0x1

.field static final TRANSACTION_Mtc_CprofPccLoadBirth:I = 0x9

.field static final TRANSACTION_Mtc_CprofPccLoadCareer:I = 0xb

.field static final TRANSACTION_Mtc_CprofPccLoadCommAddr:I = 0x7

.field static final TRANSACTION_Mtc_CprofPccLoadIcon:I = 0xd

.field static final TRANSACTION_Mtc_CprofPccLoadName:I = 0x3

.field static final TRANSACTION_Mtc_CprofPccNameGetDispName:I = 0x20

.field static final TRANSACTION_Mtc_CprofPccNameGetFamily:I = 0x1e

.field static final TRANSACTION_Mtc_CprofPccNameGetFirst:I = 0x22

.field static final TRANSACTION_Mtc_CprofPccNameGetGiven:I = 0x1a

.field static final TRANSACTION_Mtc_CprofPccNameGetMiddle:I = 0x1c

.field static final TRANSACTION_Mtc_CprofPccNameGetPref:I = 0x26

.field static final TRANSACTION_Mtc_CprofPccNameGetType:I = 0x24

.field static final TRANSACTION_Mtc_CprofPccNameSetDispName:I = 0x21

.field static final TRANSACTION_Mtc_CprofPccNameSetFamily:I = 0x1f

.field static final TRANSACTION_Mtc_CprofPccNameSetFirst:I = 0x23

.field static final TRANSACTION_Mtc_CprofPccNameSetGiven:I = 0x1b

.field static final TRANSACTION_Mtc_CprofPccNameSetMiddle:I = 0x1d

.field static final TRANSACTION_Mtc_CprofPccNameSetPref:I = 0x27

.field static final TRANSACTION_Mtc_CprofPccNameSetType:I = 0x25

.field static final TRANSACTION_Mtc_CprofPccRmvAddr:I = 0x2b

.field static final TRANSACTION_Mtc_CprofPccRmvName:I = 0x19

.field static final TRANSACTION_Mtc_CprofPccSetPccType:I = 0x15

.field static final TRANSACTION_Mtc_CprofPccTelGetLabel:I = 0x44

.field static final TRANSACTION_Mtc_CprofPccTelGetPref:I = 0x4c

.field static final TRANSACTION_Mtc_CprofPccTelGetTel:I = 0x46

.field static final TRANSACTION_Mtc_CprofPccTelGetTelType:I = 0x48

.field static final TRANSACTION_Mtc_CprofPccTelGetXuiType:I = 0x4a

.field static final TRANSACTION_Mtc_CprofPccTelSetLabel:I = 0x45

.field static final TRANSACTION_Mtc_CprofPccTelSetPref:I = 0x4d

.field static final TRANSACTION_Mtc_CprofPccTelSetTel:I = 0x47

.field static final TRANSACTION_Mtc_CprofPccTelSetTelType:I = 0x49

.field static final TRANSACTION_Mtc_CprofPccTelSetXuiType:I = 0x4b

.field static final TRANSACTION_Mtc_CprofPccUploadAddr:I = 0x6

.field static final TRANSACTION_Mtc_CprofPccUploadAll:I = 0x2

.field static final TRANSACTION_Mtc_CprofPccUploadBirth:I = 0xa

.field static final TRANSACTION_Mtc_CprofPccUploadCareer:I = 0xc

.field static final TRANSACTION_Mtc_CprofPccUploadCommAddr:I = 0x8

.field static final TRANSACTION_Mtc_CprofPccUploadIcon:I = 0xe

.field static final TRANSACTION_Mtc_CprofPccUploadName:I = 0x4

.field static final TRANSACTION_Mtc_CprofPccUriGetLabel:I = 0x38

.field static final TRANSACTION_Mtc_CprofPccUriGetPref:I = 0x3e

.field static final TRANSACTION_Mtc_CprofPccUriGetType:I = 0x3c

.field static final TRANSACTION_Mtc_CprofPccUriGetUri:I = 0x3a

.field static final TRANSACTION_Mtc_CprofPccUriSetLabel:I = 0x39

.field static final TRANSACTION_Mtc_CprofPccUriSetPref:I = 0x3f

.field static final TRANSACTION_Mtc_CprofPccUriSetType:I = 0x3d

.field static final TRANSACTION_Mtc_CprofPccUriSetUri:I = 0x3b

.field static final TRANSACTION_Mtc_CprofQrCardCttExportFile:I = 0x6a

.field static final TRANSACTION_Mtc_CprofQrCardCttGetData:I = 0x69

.field static final TRANSACTION_Mtc_CprofQrCardCttGetDesc:I = 0x68

.field static final TRANSACTION_Mtc_CprofQrCardCttGetEncodingType:I = 0x67

.field static final TRANSACTION_Mtc_CprofQrCardCttGetMimeType:I = 0x66

.field static final TRANSACTION_Mtc_CprofQrCardGetBusinessFlag:I = 0x64

.field static final TRANSACTION_Mtc_CprofQrCardLoadAll:I = 0xf

.field static final TRANSACTION_Mtc_CprofQrCardLoadFlag:I = 0x10

.field static final TRANSACTION_Mtc_CprofQrCardLoadPcc:I = 0x12

.field static final TRANSACTION_Mtc_CprofQrCardLoadPccIcon:I = 0x13

.field static final TRANSACTION_Mtc_CprofQrCardPccAddrGetAddr:I = 0x7b

.field static final TRANSACTION_Mtc_CprofQrCardPccAddrGetLabel:I = 0x7a

.field static final TRANSACTION_Mtc_CprofQrCardPccAddrGetPref:I = 0x7d

.field static final TRANSACTION_Mtc_CprofQrCardPccAddrGetType:I = 0x7c

.field static final TRANSACTION_Mtc_CprofQrCardPccBirthGetCalType:I = 0x94

.field static final TRANSACTION_Mtc_CprofQrCardPccBirthGetDate:I = 0x91

.field static final TRANSACTION_Mtc_CprofQrCardPccBirthGetNonGregDate:I = 0x92

.field static final TRANSACTION_Mtc_CprofQrCardPccBirthGetPlace:I = 0x93

.field static final TRANSACTION_Mtc_CprofQrCardPccCareerGetDuty:I = 0x96

.field static final TRANSACTION_Mtc_CprofQrCardPccCareerGetEmployer:I = 0x95

.field static final TRANSACTION_Mtc_CprofQrCardPccCommAddrGetTelId:I = 0x8b

.field static final TRANSACTION_Mtc_CprofQrCardPccCommAddrGetTelSize:I = 0x8a

.field static final TRANSACTION_Mtc_CprofQrCardPccCommAddrGetUriId:I = 0x85

.field static final TRANSACTION_Mtc_CprofQrCardPccCommAddrGetUriSize:I = 0x84

.field static final TRANSACTION_Mtc_CprofQrCardPccGetAddrId:I = 0x79

.field static final TRANSACTION_Mtc_CprofQrCardPccGetAddrSize:I = 0x78

.field static final TRANSACTION_Mtc_CprofQrCardPccGetMediaId:I = 0x7f

.field static final TRANSACTION_Mtc_CprofQrCardPccGetMediaSize:I = 0x7e

.field static final TRANSACTION_Mtc_CprofQrCardPccGetNameId:I = 0x70

.field static final TRANSACTION_Mtc_CprofQrCardPccGetNameSize:I = 0x6f

.field static final TRANSACTION_Mtc_CprofQrCardPccGetPccType:I = 0x6e

.field static final TRANSACTION_Mtc_CprofQrCardPccGetUrl:I = 0x6b

.field static final TRANSACTION_Mtc_CprofQrCardPccGetVcard:I = 0x6d

.field static final TRANSACTION_Mtc_CprofQrCardPccHasVcard:I = 0x6c

.field static final TRANSACTION_Mtc_CprofQrCardPccIconClrData:I = 0x9d

.field static final TRANSACTION_Mtc_CprofQrCardPccIconExportFile:I = 0x9e

.field static final TRANSACTION_Mtc_CprofQrCardPccIconGetData:I = 0x9b

.field static final TRANSACTION_Mtc_CprofQrCardPccIconGetDesc:I = 0x9a

.field static final TRANSACTION_Mtc_CprofQrCardPccIconGetEncodingType:I = 0x99

.field static final TRANSACTION_Mtc_CprofQrCardPccIconGetMimeType:I = 0x98

.field static final TRANSACTION_Mtc_CprofQrCardPccIconGetUri:I = 0x97

.field static final TRANSACTION_Mtc_CprofQrCardPccIconHasData:I = 0x9c

.field static final TRANSACTION_Mtc_CprofQrCardPccMediaGetLabel:I = 0x80

.field static final TRANSACTION_Mtc_CprofQrCardPccMediaGetMediaUrl:I = 0x81

.field static final TRANSACTION_Mtc_CprofQrCardPccMediaGetPref:I = 0x83

.field static final TRANSACTION_Mtc_CprofQrCardPccMediaGetType:I = 0x82

.field static final TRANSACTION_Mtc_CprofQrCardPccNameGetDispName:I = 0x74

.field static final TRANSACTION_Mtc_CprofQrCardPccNameGetFamily:I = 0x73

.field static final TRANSACTION_Mtc_CprofQrCardPccNameGetFirst:I = 0x75

.field static final TRANSACTION_Mtc_CprofQrCardPccNameGetGiven:I = 0x71

.field static final TRANSACTION_Mtc_CprofQrCardPccNameGetMiddle:I = 0x72

.field static final TRANSACTION_Mtc_CprofQrCardPccNameGetPref:I = 0x77

.field static final TRANSACTION_Mtc_CprofQrCardPccNameGetType:I = 0x76

.field static final TRANSACTION_Mtc_CprofQrCardPccTelGetLabel:I = 0x8c

.field static final TRANSACTION_Mtc_CprofQrCardPccTelGetPref:I = 0x90

.field static final TRANSACTION_Mtc_CprofQrCardPccTelGetTel:I = 0x8d

.field static final TRANSACTION_Mtc_CprofQrCardPccTelGetTelType:I = 0x8e

.field static final TRANSACTION_Mtc_CprofQrCardPccTelGetXuiType:I = 0x8f

.field static final TRANSACTION_Mtc_CprofQrCardPccUriGetLabel:I = 0x86

.field static final TRANSACTION_Mtc_CprofQrCardPccUriGetPref:I = 0x89

.field static final TRANSACTION_Mtc_CprofQrCardPccUriGetType:I = 0x88

.field static final TRANSACTION_Mtc_CprofQrCardPccUriGetUri:I = 0x87

.field static final TRANSACTION_Mtc_CprofQrCardSetBusinessFlag:I = 0x65

.field static final TRANSACTION_Mtc_CprofQrCardUploadFlag:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p0, p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/juphoon/service/cprof/IRcsCprofService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/juphoon/service/cprof/IRcsCprofService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/juphoon/service/cprof/IRcsCprofService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/juphoon/service/cprof/IRcsCprofService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccLoadAll()I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v3    # "_result":I
    :sswitch_2
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUploadAll()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v3    # "_result":I
    :sswitch_3
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccLoadName()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v3    # "_result":I
    :sswitch_4
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUploadName()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v3    # "_result":I
    :sswitch_5
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccLoadAddr()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v3    # "_result":I
    :sswitch_6
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUploadAddr()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v3    # "_result":I
    :sswitch_7
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccLoadCommAddr()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v3    # "_result":I
    :sswitch_8
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUploadCommAddr()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_9
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccLoadBirth()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUploadBirth()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccLoadCareer()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUploadCareer()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccLoadIcon(ILjava/lang/String;)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUploadIcon()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardLoadAll()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_10
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardLoadFlag()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_11
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardUploadFlag()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_12
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardLoadPcc(Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_13
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardLoadPccIcon(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_14
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccGetPccType()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_15
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccSetPccType(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_16
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccGetNameSize()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_17
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccGetNameId(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_18
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddName()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_19
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccRmvName(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_1a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameGetGiven(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameSetGiven(ILjava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_1c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameGetMiddle(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameSetMiddle(ILjava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_1e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameGetFamily(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameSetFamily(ILjava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_20
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameGetDispName(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_21
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameSetDispName(ILjava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_22
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameGetFirst(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_23
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameSetFirst(ILjava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_24
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameGetType(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_25
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameSetType(II)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_26
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameGetPref(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_27
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccNameSetPref(II)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_28
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccGetAddrSize()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_29
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccGetAddrId(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_2a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddAddr()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_2b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccRmvAddr(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_2c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrGetLabel(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_2d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrSetLabel(ILjava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_2e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrGetAddr(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_2f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrSetAddr(ILjava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_30
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrGetType(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_31
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrSetType(II)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_32
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrGetPref(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_33
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccAddrSetPref(II)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_34
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrGetUriSize()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_35
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrGetUriId(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_36
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrAddUri()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_37
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrRmvUri(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_38
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriGetLabel(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriSetLabel(ILjava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_3a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriGetUri(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_3b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriSetUri(ILjava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_3c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriGetType(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_3d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriSetType(II)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_3e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriGetPref(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_3f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccUriSetPref(II)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_40
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrGetTelSize()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_41
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrGetTelId(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_42
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrAddTel()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_43
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCommAddrRmvTel(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_44
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelGetLabel(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_45
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelSetLabel(ILjava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_46
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelGetTel(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_47
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelSetTel(ILjava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_48
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelGetTelType(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_49
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelSetTelType(II)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_4a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelGetXuiType(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_4b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelSetXuiType(II)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_4c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelGetPref(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_4d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccTelSetPref(II)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_4e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthGetDate()Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_4f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthSetDate(Ljava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_50
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthGetNonGregDate()Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_51
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthSetNonGregDate(Ljava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_52
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthGetPlace()Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_53
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthSetPlace(Ljava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_54
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthGetCalType()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_55
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccBirthSetCalType(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_56
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCareerGetEmployer()Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_57
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCareerSetEmployer(Ljava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_58
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCareerGetDuty()Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_59
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccCareerSetDuty(Ljava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_5a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconGetMimeType()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_5b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconSetMimeType(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_5c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconGetEncodingType()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_5d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconSetEncodingType(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_5e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconGetDesc()Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_5f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconSetDesc(Ljava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_60
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconGetData()Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_61
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconSetData(Ljava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_62
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconExportFile(Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_63
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofPccIconImportFile(Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_64
    const-string v6, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardGetBusinessFlag()Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":Z
    :sswitch_65
    const-string v6, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardSetBusinessFlag(Z)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":I
    :cond_1
    move v0, v4

    goto :goto_1

    :sswitch_66
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardCttGetMimeType()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_67
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardCttGetEncodingType()I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":I
    :sswitch_68
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardCttGetDesc()Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_69
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardCttGetData()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_6a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardCttExportFile(Ljava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_6b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetUrl(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_6c
    const-string v6, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccHasVcard(I)Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_6d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetVcard(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_6e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetPccType(I)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_6f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetNameSize(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_70
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetNameId(II)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_71
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccNameGetGiven(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_72
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccNameGetMiddle(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_73
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccNameGetFamily(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_74
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccNameGetDispName(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_75
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccNameGetFirst(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_76
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccNameGetType(I)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_77
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccNameGetPref(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_78
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetAddrSize(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_79
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetAddrId(II)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_7a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccAddrGetLabel(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_7b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccAddrGetAddr(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_7c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccAddrGetType(I)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_7d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccAddrGetPref(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_7e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetMediaSize(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_7f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccGetMediaId(II)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_80
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccMediaGetLabel(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_81
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccMediaGetMediaUrl(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_82
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccMediaGetType(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_83
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccMediaGetPref(I)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_84
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccCommAddrGetUriSize(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_85
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccCommAddrGetUriId(II)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_86
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccUriGetLabel(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_87
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccUriGetUri(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_88
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccUriGetType(I)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_89
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccUriGetPref(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_8a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccCommAddrGetTelSize(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_8b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccCommAddrGetTelId(II)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_8c
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccTelGetLabel(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_8d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccTelGetTel(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_8e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccTelGetTelType(I)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_8f
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccTelGetXuiType(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_90
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccTelGetPref(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_91
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccBirthGetDate(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_92
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccBirthGetNonGregDate(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_93
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccBirthGetPlace(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_94
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccBirthGetCalType(I)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_95
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccCareerGetEmployer(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_96
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccCareerGetDuty(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_97
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconGetUri(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_98
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconGetMimeType(I)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_99
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconGetEncodingType(I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_9a
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconGetDesc(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_9b
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconGetData(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_9c
    const-string v6, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconHasData(I)Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_9d
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconClrData(I)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_9e
    const-string v4, "com.juphoon.service.cprof.IRcsCprofService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/juphoon/service/cprof/IRcsCprofService$Stub;->Mtc_CprofQrCardPccIconExportFile(ILjava/lang/String;)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
