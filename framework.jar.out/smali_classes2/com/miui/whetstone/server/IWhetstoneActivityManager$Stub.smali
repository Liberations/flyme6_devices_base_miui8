.class public abstract Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;
.super Landroid/os/Binder;
.source "IWhetstoneActivityManager.java"

# interfaces
.implements Lcom/miui/whetstone/server/IWhetstoneActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/IWhetstoneActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.server.IWhetstoneActivityManager"

.field static final TRANSACTION_addAppToServiceControlWhitelist:I = 0x1c

.field static final TRANSACTION_bindWhetstoneService:I = 0x6

.field static final TRANSACTION_checkApplicationsMemoryThreshold:I = 0xb

.field static final TRANSACTION_checkIfPackageIsLocked:I = 0x16

.field static final TRANSACTION_checkIfPackageIsLockedWithUserId:I = 0x17

.field static final TRANSACTION_clearDeadAppFromNative:I = 0x13

.field static final TRANSACTION_distoryActivity:I = 0x5

.field static final TRANSACTION_getAndroidCachedEmptyProcessMemory:I = 0x9

.field static final TRANSACTION_getBackgroundAPPS:I = 0x2

.field static final TRANSACTION_getComponentManagerNative:I = 0x1a

.field static final TRANSACTION_getPackageNamebyPid:I = 0x1

.field static final TRANSACTION_getPartialWakeLockHoldByUid:I = 0x12

.field static final TRANSACTION_getPowerKeeperPolicy:I = 0x11

.field static final TRANSACTION_getProcessReceiverState:I = 0x19

.field static final TRANSACTION_getSystemPid:I = 0x7

.field static final TRANSACTION_isProcessExecutingServices:I = 0x1b

.field static final TRANSACTION_promoteApplicationLevel:I = 0xf

.field static final TRANSACTION_putUidFrozenState:I = 0xc

.field static final TRANSACTION_releaseApplicationPromoteLevel:I = 0x10

.field static final TRANSACTION_removeAppFromServiceControlWhitelist:I = 0x1d

.field static final TRANSACTION_removeTaskById:I = 0x1e

.field static final TRANSACTION_scheduleStopService:I = 0x4

.field static final TRANSACTION_scheduleTrimMemory:I = 0x3

.field static final TRANSACTION_setPerformanceComponents:I = 0x8

.field static final TRANSACTION_updateApplicationByLockedState:I = 0xd

.field static final TRANSACTION_updateApplicationByLockedStateWithUserId:I = 0xe

.field static final TRANSACTION_updateApplicationsMemoryThreshold:I = 0xa

.field static final TRANSACTION_updateFrameworkCommonConfig:I = 0x18

.field static final TRANSACTION_updateUserLockedAppList:I = 0x14

.field static final TRANSACTION_updateUserLockedAppListWithUserId:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    :sswitch_0
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPackageNamebyPid(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getBackgroundAPPS()[Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_3
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->scheduleTrimMemory(II)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_0

    move v3, v8

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_4
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .local v2, "_arg1":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->scheduleStopService(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1

    move v3, v8

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v6    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :sswitch_5
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->distoryActivity(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_3

    move v3, v8

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_6
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->bindWhetstoneService(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_7
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getSystemPid()I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v6    # "_result":I
    :sswitch_8
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ComponentName;

    .local v0, "_arg0":[Landroid/content/ComponentName;
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->setPerformanceComponents([Landroid/content/ComponentName;)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_4

    move v3, v8

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":[Landroid/content/ComponentName;
    .end local v6    # "_result":Z
    :sswitch_9
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getAndroidCachedEmptyProcessMemory()J

    move-result-wide v6

    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .end local v6    # "_result":J
    :sswitch_a
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationsMemoryThreshold(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_b
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg2":J
    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":J
    :sswitch_c
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->putUidFrozenState(II)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_5

    move v3, v8

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_d
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    move v2, v8

    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationByLockedState(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_6
    move v2, v3

    goto :goto_2

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    move v2, v8

    .restart local v2    # "_arg1":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg2":I
    invoke-virtual {p0, v0, v2, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v4    # "_arg2":I
    :cond_7
    move v2, v3

    goto :goto_3

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->promoteApplicationLevel(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_10
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->releaseApplicationPromoteLevel()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_11
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v6

    .local v6, "_result":Lcom/miui/whetstone/IPowerKeeperPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_8

    invoke-interface {v6}, Lcom/miui/whetstone/IPowerKeeperPolicy;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_8
    move-object v3, v9

    goto :goto_4

    .end local v6    # "_result":Lcom/miui/whetstone/IPowerKeeperPolicy;
    :sswitch_12
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPartialWakeLockHoldByUid(I)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_13
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->clearDeadAppFromNative()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_14
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateUserLockedAppList(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_15
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateUserLockedAppListWithUserId(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":I
    :sswitch_16
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkIfPackageIsLocked(Ljava/lang/String;)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_9

    move v3, v8

    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_17
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_a

    move v3, v8

    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_18
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateFrameworkCommonConfig(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getProcessReceiverState(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_b

    move v3, v8

    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_1a
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getComponentManagerNative()Lcom/miui/whetstone/IComponentManager;

    move-result-object v6

    .local v6, "_result":Lcom/miui/whetstone/IComponentManager;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_c

    invoke-interface {v6}, Lcom/miui/whetstone/IComponentManager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    :cond_c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .end local v6    # "_result":Lcom/miui/whetstone/IComponentManager;
    :sswitch_1b
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->isProcessExecutingServices(I)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_d

    move v3, v8

    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_1c
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->addAppToServiceControlWhitelist(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1d
    const-string v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->removeAppFromServiceControlWhitelist(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1e
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f

    move v2, v8

    .local v2, "_arg1":Z
    :goto_5
    invoke-virtual {p0, v0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->removeTaskById(IZ)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_e

    move v3, v8

    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v6    # "_result":Z
    :cond_f
    move v2, v3

    goto :goto_5

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
