.class public abstract Lmiui/security/ISecurityManager$Stub;
.super Landroid/os/Binder;
.source "ISecurityManager.java"

# interfaces
.implements Lmiui/security/ISecurityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/ISecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/ISecurityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.security.ISecurityManager"

.field static final TRANSACTION_activityResume:I = 0x1e

.field static final TRANSACTION_addAccessControlPass:I = 0x6

.field static final TRANSACTION_addAccessControlPassForUser:I = 0x29

.field static final TRANSACTION_checkAccessControlPass:I = 0x8

.field static final TRANSACTION_checkAccessControlPassAsUser:I = 0x22

.field static final TRANSACTION_checkAccessControlPattern:I = 0x1a

.field static final TRANSACTION_checkAllowStartActivity:I = 0x25

.field static final TRANSACTION_checkSmsBlocked:I = 0x3

.field static final TRANSACTION_finishAccessControl:I = 0x1d

.field static final TRANSACTION_getAppPermissionControlOpen:I = 0x15

.field static final TRANSACTION_getApplicationAccessControlEnabled:I = 0x9

.field static final TRANSACTION_getApplicationAccessControlEnabledAsUser:I = 0x23

.field static final TRANSACTION_getApplicationChildrenControlEnabled:I = 0xb

.field static final TRANSACTION_getCurrentUserId:I = 0x21

.field static final TRANSACTION_getPackageNameByPid:I = 0x2

.field static final TRANSACTION_getSysAppCracked:I = 0x26

.field static final TRANSACTION_getWakePathCallListLog:I = 0x14

.field static final TRANSACTION_getWakeUpTime:I = 0xe

.field static final TRANSACTION_grantInstallPermission:I = 0x27

.field static final TRANSACTION_grantRuntimePermission:I = 0x20

.field static final TRANSACTION_haveAccessControlPattern:I = 0x1b

.field static final TRANSACTION_killNativePackageProcesses:I = 0x1

.field static final TRANSACTION_needFinishAccessControl:I = 0x1c

.field static final TRANSACTION_pushWakePathConfirmDialogWhiteList:I = 0x28

.field static final TRANSACTION_pushWakePathData:I = 0x11

.field static final TRANSACTION_pushWakePathWhiteList:I = 0x12

.field static final TRANSACTION_putSystemDataStringFile:I = 0xf

.field static final TRANSACTION_readSystemDataStringFile:I = 0x10

.field static final TRANSACTION_registerWakePathCallback:I = 0x17

.field static final TRANSACTION_removeAccessControlPass:I = 0x7

.field static final TRANSACTION_removeAccessControlPassAsUser:I = 0x18

.field static final TRANSACTION_removeWakePathData:I = 0x24

.field static final TRANSACTION_setAccessControlPattern:I = 0x19

.field static final TRANSACTION_setAppPermissionControlOpen:I = 0x16

.field static final TRANSACTION_setApplicationAccessControlEnabled:I = 0xa

.field static final TRANSACTION_setApplicationAccessControlEnabledForUser:I = 0x2a

.field static final TRANSACTION_setApplicationChildrenControlEnabled:I = 0xc

.field static final TRANSACTION_setCoreRuntimePermissionEnabled:I = 0x1f

.field static final TRANSACTION_setTrackWakePathCallListLogEnabled:I = 0x13

.field static final TRANSACTION_setWakeUpTime:I = 0xd

.field static final TRANSACTION_startInterceptSmsBySender:I = 0x4

.field static final TRANSACTION_stopInterceptSmsBySender:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.security.ISecurityManager"

    invoke-virtual {p0, p0, v0}, Lmiui/security/ISecurityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "miui.security.ISecurityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/security/ISecurityManager;

    if-eqz v1, :cond_1

    check-cast v0, Lmiui/security/ISecurityManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lmiui/security/ISecurityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/security/ISecurityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_0

    :sswitch_1
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->killNativePackageProcesses(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_2
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "_arg0":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->checkSmsBlocked(Landroid/content/Intent;)Z

    move-result v8

    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto :goto_0

    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v8    # "_result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_1

    .restart local v8    # "_result":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v8    # "_result":Z
    :sswitch_4
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual {p0, v0, v2, v5}, Lmiui/security/ISecurityManager$Stub;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    :goto_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v8    # "_result":Z
    :sswitch_5
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/security/ISecurityManager$Stub;->stopInterceptSmsBySender()Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_3

    const/4 v7, 0x1

    :goto_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_4

    .end local v8    # "_result":Z
    :sswitch_6
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->addAccessControlPass(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->removeAccessControlPass(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .local v2, "_arg1":Landroid/content/Intent;
    :goto_5
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_5

    const/4 v7, 0x1

    :goto_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v8    # "_result":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_5

    .restart local v8    # "_result":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_6

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v8    # "_result":Z
    :sswitch_9
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_6

    const/4 v7, 0x1

    :goto_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_7

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_a
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    const/4 v2, 0x1

    .local v2, "_arg1":Z
    :goto_8
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->getApplicationChildrenControlEnabled(Ljava/lang/String;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_8

    const/4 v7, 0x1

    :goto_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v7, 0x0

    goto :goto_9

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_c
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    const/4 v2, 0x1

    .restart local v2    # "_arg1":Z
    :goto_a
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lmiui/security/ISecurityManager$Stub;->setWakeUpTime(Ljava/lang/String;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    :sswitch_e
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->getWakeUpTime(Ljava/lang/String;)J

    move-result-wide v8

    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":J
    :sswitch_f
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_a

    const/4 v7, 0x1

    :goto_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x0

    goto :goto_b

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_10
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .local v2, "_arg1":Landroid/content/pm/ParceledListSlice;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v0, v2, v5}, Lmiui/security/ISecurityManager$Stub;->pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v5    # "_arg2":I
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_c

    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :sswitch_12
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->pushWakePathWhiteList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":I
    :sswitch_13
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    const/4 v0, 0x1

    .local v0, "_arg0":Z
    :goto_d
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->setTrackWakePathCallListLogEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_c
    const/4 v0, 0x0

    goto :goto_d

    :sswitch_14
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/security/ISecurityManager$Stub;->getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    .local v8, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_d

    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    invoke-virtual {v8, p3, v7}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_e
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .end local v8    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_15
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->getAppPermissionControlOpen(I)I

    move-result v8

    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_16
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->setAppPermissionControlOpen(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    :sswitch_17
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IWakePathCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IWakePathCallback;

    move-result-object v0

    .local v0, "_arg0":Lcom/android/internal/app/IWakePathCallback;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":Lcom/android/internal/app/IWakePathCallback;
    :sswitch_18
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->removeAccessControlPassAsUser(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_19
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->setAccessControlPattern(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_1a
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->checkAccessControlPattern(Ljava/lang/String;I)Z

    move-result v8

    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_e

    const/4 v7, 0x1

    :goto_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v7, 0x0

    goto :goto_f

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_1b
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->haveAccessControlPattern(I)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_f

    const/4 v7, 0x1

    :goto_10
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v7, 0x0

    goto :goto_10

    .end local v0    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_1c
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->needFinishAccessControl(Landroid/os/IBinder;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_10

    const/4 v7, 0x1

    :goto_11
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v7, 0x0

    goto :goto_11

    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_result":Z
    :sswitch_1d
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->finishAccessControl(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_1e
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_11

    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "_arg0":Landroid/content/Intent;
    :goto_12
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->activityResume(Landroid/content/Intent;)I

    move-result v8

    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v8    # "_result":I
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_12

    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_1f
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12

    const/4 v0, 0x1

    .local v0, "_arg0":Z
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->setCoreRuntimePermissionEnabled(ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_12
    const/4 v0, 0x0

    goto :goto_13

    :sswitch_20
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->grantRuntimePermission(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_21
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/security/ISecurityManager$Stub;->getCurrentUserId()I

    move-result v8

    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v8    # "_result":I
    :sswitch_22
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_13

    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .local v2, "_arg1":Landroid/content/Intent;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v0, v2, v5}, Lmiui/security/ISecurityManager$Stub;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v8

    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_14

    const/4 v7, 0x1

    :goto_15
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v5    # "_arg2":I
    .end local v8    # "_result":Z
    :cond_13
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_14

    .restart local v5    # "_arg2":I
    .restart local v8    # "_result":Z
    :cond_14
    const/4 v7, 0x0

    goto :goto_15

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v5    # "_arg2":I
    .end local v8    # "_result":Z
    :sswitch_23
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_15

    const/4 v7, 0x1

    :goto_16
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_15
    const/4 v7, 0x0

    goto :goto_16

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_24
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->removeWakePathData(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    :sswitch_25
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_16

    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .local v5, "_arg2":Landroid/content/Intent;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg3":I
    invoke-virtual {p0, v0, v2, v5, v6}, Lmiui/security/ISecurityManager$Stub;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_17

    const/4 v7, 0x1

    :goto_18
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg2":Landroid/content/Intent;
    .end local v6    # "_arg3":I
    .end local v8    # "_result":Z
    :cond_16
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/content/Intent;
    goto :goto_17

    .restart local v6    # "_arg3":I
    .restart local v8    # "_result":Z
    :cond_17
    const/4 v7, 0x0

    goto :goto_18

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/Intent;
    .end local v6    # "_arg3":I
    .end local v8    # "_result":Z
    :sswitch_26
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/security/ISecurityManager$Stub;->getSysAppCracked()I

    move-result v8

    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v8    # "_result":I
    :sswitch_27
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_28
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .local v4, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v4}, Lmiui/security/ISecurityManager$Stub;->pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_29
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->addAccessControlPassForUser(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_2a
    const-string v7, "miui.security.ISecurityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_18

    const/4 v2, 0x1

    .local v2, "_arg1":Z
    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual {p0, v0, v2, v5}, Lmiui/security/ISecurityManager$Stub;->setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v5    # "_arg2":I
    :cond_18
    const/4 v2, 0x0

    goto :goto_19

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
