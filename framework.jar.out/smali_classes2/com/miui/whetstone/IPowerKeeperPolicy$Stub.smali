.class public abstract Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;
.super Landroid/os/Binder;
.source "IPowerKeeperPolicy.java"

# interfaces
.implements Lcom/miui/whetstone/IPowerKeeperPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IPowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IPowerKeeperPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IPowerKeeperPolicy"

.field static final TRANSACTION_getAlarmPolicies:I = 0x4

.field static final TRANSACTION_getAppBroadcastControlStat:I = 0xf

.field static final TRANSACTION_getBroadcastPolicies:I = 0x2

.field static final TRANSACTION_isLeScanAllowed:I = 0xb

.field static final TRANSACTION_notifyAppsPreInstalled:I = 0x9

.field static final TRANSACTION_offerPowerKeeperIBinder:I = 0x6

.field static final TRANSACTION_setAlarmPolicy:I = 0x3

.field static final TRANSACTION_setAppBGIdleFeatureEnable:I = 0x11

.field static final TRANSACTION_setAppBGIdleLevel:I = 0x13

.field static final TRANSACTION_setAppBGIdleStatus:I = 0x12

.field static final TRANSACTION_setAppBroadcastControlStat:I = 0xe

.field static final TRANSACTION_setAppPushAlarmLeader:I = 0x8

.field static final TRANSACTION_setAppPushAlarmProperty:I = 0x7

.field static final TRANSACTION_setBroadcastPolicy:I = 0x1

.field static final TRANSACTION_setLeScanFeature:I = 0xa

.field static final TRANSACTION_setLeScanParam:I = 0x10

.field static final TRANSACTION_startLeScan:I = 0xc

.field static final TRANSACTION_stopLeScan:I = 0xd

.field static final TRANSACTION_updateWakelockBlockedUid:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPowerKeeperPolicy;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/whetstone/IPowerKeeperPolicy;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/whetstone/IPowerKeeperPolicy;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v6, Lcom/miui/whetstone/BroadcastPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/whetstone/BroadcastPolicy;

    .local v0, "_arg0":[Lcom/miui/whetstone/BroadcastPolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setBroadcastPolicy([Lcom/miui/whetstone/BroadcastPolicy;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Z
    :cond_0
    move v1, v5

    goto :goto_1

    .end local v0    # "_arg0":[Lcom/miui/whetstone/BroadcastPolicy;
    :sswitch_2
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getBroadcastPolicies()[Lcom/miui/whetstone/BroadcastPolicy;

    move-result-object v3

    .local v3, "_result":[Lcom/miui/whetstone/BroadcastPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .end local v3    # "_result":[Lcom/miui/whetstone/BroadcastPolicy;
    :sswitch_3
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v6, Lcom/miui/whetstone/AlarmPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/whetstone/AlarmPolicy;

    .local v0, "_arg0":[Lcom/miui/whetstone/AlarmPolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .restart local v1    # "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAlarmPolicy([Lcom/miui/whetstone/AlarmPolicy;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Z
    :cond_1
    move v1, v5

    goto :goto_2

    .end local v0    # "_arg0":[Lcom/miui/whetstone/AlarmPolicy;
    :sswitch_4
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getAlarmPolicies()[Lcom/miui/whetstone/AlarmPolicy;

    move-result-object v3

    .local v3, "_result":[Lcom/miui/whetstone/AlarmPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .end local v3    # "_result":[Lcom/miui/whetstone/AlarmPolicy;
    :sswitch_5
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .local v2, "_arg2":Z
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->updateWakelockBlockedUid(ILjava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v2    # "_arg2":Z
    :cond_2
    move v2, v5

    goto :goto_3

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->offerPowerKeeperIBinder(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_7
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg1":Landroid/content/Intent;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    move v2, v4

    .restart local v2    # "_arg2":Z
    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppPushAlarmProperty(ILandroid/content/Intent;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/Intent;
    goto :goto_4

    :cond_4
    move v2, v5

    goto :goto_5

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/Intent;
    :sswitch_8
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .restart local v1    # "_arg1":Landroid/content/Intent;
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppPushAlarmLeader(ILandroid/content/Intent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Landroid/content/Intent;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/Intent;
    goto :goto_6

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/Intent;
    :sswitch_9
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->notifyAppsPreInstalled()V

    goto/16 :goto_0

    :sswitch_a
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    move v0, v4

    .local v0, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setLeScanFeature(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_6
    move v0, v5

    goto :goto_7

    :sswitch_b
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->isLeScanAllowed(I)Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_7

    move v5, v4

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_c
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->startLeScan(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_8

    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_d
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_9
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->stopLeScan(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_9

    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_e
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    move v1, v4

    .local v1, "_arg1":Z
    :goto_a
    invoke-virtual {p0, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppBroadcastControlStat(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_a
    move v1, v5

    goto :goto_a

    .end local v0    # "_arg0":I
    :sswitch_f
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getAppBroadcastControlStat(I)Z

    move-result v3

    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_b

    move v5, v4

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_10
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_b
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setLeScanParam(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_b

    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_11
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    move v0, v4

    .local v0, "_arg0":Z
    :goto_c
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppBGIdleFeatureEnable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_d
    move v0, v5

    goto :goto_c

    :sswitch_12
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    move v1, v4

    .restart local v1    # "_arg1":Z
    :goto_d
    invoke-virtual {p0, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppBGIdleStatus(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_e
    move v1, v5

    goto :goto_d

    .end local v0    # "_arg0":I
    :sswitch_13
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppBGIdleLevel(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
