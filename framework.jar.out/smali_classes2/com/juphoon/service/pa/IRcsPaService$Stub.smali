.class public abstract Lcom/juphoon/service/pa/IRcsPaService$Stub;
.super Landroid/os/Binder;
.source "IRcsPaService.java"

# interfaces
.implements Lcom/juphoon/service/pa/IRcsPaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/juphoon/service/pa/IRcsPaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/juphoon/service/pa/IRcsPaService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.juphoon.service.pa.IRcsPaService"

.field static final TRANSACTION_Mtc_PaArtMsgGetAuthor:I = 0x3f

.field static final TRANSACTION_Mtc_PaArtMsgGetMainText:I = 0x43

.field static final TRANSACTION_Mtc_PaArtMsgGetMediaUuid:I = 0x44

.field static final TRANSACTION_Mtc_PaArtMsgGetOrigLink:I = 0x41

.field static final TRANSACTION_Mtc_PaArtMsgGetSrcLink:I = 0x42

.field static final TRANSACTION_Mtc_PaArtMsgGetThumbLink:I = 0x40

.field static final TRANSACTION_Mtc_PaArtMsgGetTitle:I = 0x3e

.field static final TRANSACTION_Mtc_PaBscGetLogoUrl:I = 0x19

.field static final TRANSACTION_Mtc_PaBscGetName:I = 0x17

.field static final TRANSACTION_Mtc_PaBscGetPaUuid:I = 0x16

.field static final TRANSACTION_Mtc_PaBscGetRecmdLv:I = 0x18

.field static final TRANSACTION_Mtc_PaBscMsgGetCreateTime:I = 0x4c

.field static final TRANSACTION_Mtc_PaBscMsgGetFileDuration:I = 0x48

.field static final TRANSACTION_Mtc_PaBscMsgGetFileSize:I = 0x46

.field static final TRANSACTION_Mtc_PaBscMsgGetFileType:I = 0x47

.field static final TRANSACTION_Mtc_PaBscMsgGetMediaUuid:I = 0x4b

.field static final TRANSACTION_Mtc_PaBscMsgGetOrigLink:I = 0x4a

.field static final TRANSACTION_Mtc_PaBscMsgGetThumbLink:I = 0x49

.field static final TRANSACTION_Mtc_PaBscMsgGetTitle:I = 0x45

.field static final TRANSACTION_Mtc_PaDetailGetAcptStat:I = 0x24

.field static final TRANSACTION_Mtc_PaDetailGetActiveStat:I = 0x25

.field static final TRANSACTION_Mtc_PaDetailGetAddr:I = 0x29

.field static final TRANSACTION_Mtc_PaDetailGetCompany:I = 0x1c

.field static final TRANSACTION_Mtc_PaDetailGetEmail:I = 0x27

.field static final TRANSACTION_Mtc_PaDetailGetField:I = 0x2a

.field static final TRANSACTION_Mtc_PaDetailGetIntro:I = 0x1d

.field static final TRANSACTION_Mtc_PaDetailGetLogoUrl:I = 0x2b

.field static final TRANSACTION_Mtc_PaDetailGetMenuTimestamp:I = 0x1f

.field static final TRANSACTION_Mtc_PaDetailGetMenuType:I = 0x22

.field static final TRANSACTION_Mtc_PaDetailGetName:I = 0x1b

.field static final TRANSACTION_Mtc_PaDetailGetPaUuid:I = 0x1a

.field static final TRANSACTION_Mtc_PaDetailGetQrCode:I = 0x2c

.field static final TRANSACTION_Mtc_PaDetailGetRecmdLv:I = 0x21

.field static final TRANSACTION_Mtc_PaDetailGetSubsStat:I = 0x23

.field static final TRANSACTION_Mtc_PaDetailGetTel:I = 0x26

.field static final TRANSACTION_Mtc_PaDetailGetType:I = 0x20

.field static final TRANSACTION_Mtc_PaDetailGetUpdTime:I = 0x1e

.field static final TRANSACTION_Mtc_PaDetailGetZip:I = 0x28

.field static final TRANSACTION_Mtc_PaMenuGetCmdId:I = 0x2d

.field static final TRANSACTION_Mtc_PaMenuGetCmdType:I = 0x2e

.field static final TRANSACTION_Mtc_PaMenuGetPriority:I = 0x30

.field static final TRANSACTION_Mtc_PaMenuGetSubmenuId:I = 0x32

.field static final TRANSACTION_Mtc_PaMenuGetSubmenuSize:I = 0x31

.field static final TRANSACTION_Mtc_PaMenuGetTitle:I = 0x2f

.field static final TRANSACTION_Mtc_PaMsgGetActiveStat:I = 0x39

.field static final TRANSACTION_Mtc_PaMsgGetArtMsgId:I = 0x3d

.field static final TRANSACTION_Mtc_PaMsgGetArtMsgSize:I = 0x3c

.field static final TRANSACTION_Mtc_PaMsgGetCreateTime:I = 0x38

.field static final TRANSACTION_Mtc_PaMsgGetFwdable:I = 0x3a

.field static final TRANSACTION_Mtc_PaMsgGetGInfoId:I = 0x3b

.field static final TRANSACTION_Mtc_PaMsgGetMediaType:I = 0x33

.field static final TRANSACTION_Mtc_PaMsgGetMsgUuid:I = 0x34

.field static final TRANSACTION_Mtc_PaMsgGetPaUuid:I = 0x35

.field static final TRANSACTION_Mtc_PaMsgGetSmsDigest:I = 0x36

.field static final TRANSACTION_Mtc_PaMsgGetText:I = 0x37

.field static final TRANSACTION_Mtc_PaSessAddSubs:I = 0x1

.field static final TRANSACTION_Mtc_PaSessCancelSubs:I = 0x2

.field static final TRANSACTION_Mtc_PaSessComplainPub:I = 0xa

.field static final TRANSACTION_Mtc_PaSessDecodeMsg:I = 0xd

.field static final TRANSACTION_Mtc_PaSessEncodeMsg:I = 0xc

.field static final TRANSACTION_Mtc_PaSessGetMenuId:I = 0x12

.field static final TRANSACTION_Mtc_PaSessGetMenuSize:I = 0x11

.field static final TRANSACTION_Mtc_PaSessGetMsgId:I = 0x14

.field static final TRANSACTION_Mtc_PaSessGetMsgSize:I = 0x13

.field static final TRANSACTION_Mtc_PaSessGetPaId:I = 0x10

.field static final TRANSACTION_Mtc_PaSessGetPaSize:I = 0xf

.field static final TRANSACTION_Mtc_PaSessGetPrevMsg:I = 0x9

.field static final TRANSACTION_Mtc_PaSessGetPubDetail:I = 0x7

.field static final TRANSACTION_Mtc_PaSessGetPubLst:I = 0x5

.field static final TRANSACTION_Mtc_PaSessGetPubLstRecmd:I = 0x6

.field static final TRANSACTION_Mtc_PaSessGetPubMenu:I = 0x8

.field static final TRANSACTION_Mtc_PaSessGetResult:I = 0x15

.field static final TRANSACTION_Mtc_PaSessQryAllUsrSubs:I = 0x4

.field static final TRANSACTION_Mtc_PaSessQryUsrSubs:I = 0x3

.field static final TRANSACTION_Mtc_PaSessRelease:I = 0xe

.field static final TRANSACTION_Mtc_PaSessSetAcptStat:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p0, p0, v0}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/juphoon/service/pa/IRcsPaService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.juphoon.service.pa.IRcsPaService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/juphoon/service/pa/IRcsPaService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/juphoon/service/pa/IRcsPaService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/juphoon/service/pa/IRcsPaService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/juphoon/service/pa/IRcsPaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessAddSubs(Ljava/lang/String;)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_2
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessCancelSubs(Ljava/lang/String;)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_3
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessQryUsrSubs(III)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_4
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessQryAllUsrSubs()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetPubLst(Ljava/lang/String;III)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v6    # "_result":I
    :sswitch_6
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetPubLstRecmd(III)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_7
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetPubDetail(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_8
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetPubMenu(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_9
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetPrevMsg(Ljava/lang/String;IIII)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    :sswitch_a
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessComplainPub(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_b
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v7

    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessSetAcptStat(Ljava/lang/String;Z)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v6    # "_result":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessEncodeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessDecodeMsg(Ljava/lang/String;)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_e
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessRelease(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    :sswitch_f
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetPaSize(I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_10
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetPaId(II)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_11
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetMenuSize(I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_12
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetMenuId(II)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_13
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetMsgSize(I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_14
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetMsgId(II)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_15
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetResult(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscGetPaUuid(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscGetName(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscGetRecmdLv(I)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_19
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscGetLogoUrl(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_1a
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetPaUuid(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetName(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_1c
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetCompany(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetIntro(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_1e
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetUpdTime(I)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_1f
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetMenuTimestamp(I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_20
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetType(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_21
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetRecmdLv(I)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_22
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetMenuType(I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_23
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetSubsStat(I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_24
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetAcptStat(I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_25
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetActiveStat(I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_26
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetTel(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_27
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetEmail(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_28
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetZip(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_29
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetAddr(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_2a
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetField(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_2b
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetLogoUrl(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_2c
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetQrCode(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_2d
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMenuGetCmdId(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_2e
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMenuGetCmdType(I)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_2f
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMenuGetTitle(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_30
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMenuGetPriority(I)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_31
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMenuGetSubmenuSize(I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_32
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMenuGetSubmenuId(II)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_33
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetMediaType(I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_34
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetMsgUuid(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_35
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetPaUuid(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetSmsDigest(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetText(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_38
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetCreateTime(I)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_39
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetActiveStat(I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_3a
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetFwdable(I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_3b
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetGInfoId(I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_3c
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetArtMsgSize(I)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_3d
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetArtMsgId(II)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_3e
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaArtMsgGetTitle(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_3f
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaArtMsgGetAuthor(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_40
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaArtMsgGetThumbLink(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_41
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaArtMsgGetOrigLink(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_42
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaArtMsgGetSrcLink(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_43
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaArtMsgGetMainText(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_44
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaArtMsgGetMediaUuid(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_45
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetTitle(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_46
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetFileSize(I)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_47
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetFileType(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_48
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetFileDuration(I)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_49
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetThumbLink(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_4a
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetOrigLink(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_4b
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetMediaUuid(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_4c
    const-string v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetCreateTime(I)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
