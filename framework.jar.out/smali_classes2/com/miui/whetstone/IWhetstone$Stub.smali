.class public abstract Lcom/miui/whetstone/IWhetstone$Stub;
.super Landroid/os/Binder;
.source "IWhetstone.java"

# interfaces
.implements Lcom/miui/whetstone/IWhetstone;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IWhetstone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IWhetstone$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IWhetstone"

.field static final TRANSACTION_analyticTrack:I = 0x16

.field static final TRANSACTION_cancelLocationRequest:I = 0x1e

.field static final TRANSACTION_checkAppTheShotScreenPermission:I = 0x28

.field static final TRANSACTION_checkIfAppBelongToActive:I = 0x2f

.field static final TRANSACTION_checkIfHaveTheCallFunctionPermission:I = 0x1b

.field static final TRANSACTION_checkIfProcessBelongToActive:I = 0x30

.field static final TRANSACTION_checkPermissionLevel:I = 0x1c

.field static final TRANSACTION_completeBackagroundAllModes:I = 0x36

.field static final TRANSACTION_completeBackgroundModes:I = 0x35

.field static final TRANSACTION_decodeWatermark:I = 0x3c

.field static final TRANSACTION_deepClean:I = 0x15

.field static final TRANSACTION_encodeWatermark:I = 0x3b

.field static final TRANSACTION_getActiveAppListByLevel:I = 0x2e

.field static final TRANSACTION_getActiveAppListByType:I = 0x2d

.field static final TRANSACTION_getApplicationActiveLevel:I = 0x31

.field static final TRANSACTION_getApplicationThread:I = 0x7

.field static final TRANSACTION_getBatteryCapacity:I = 0x20

.field static final TRANSACTION_getBatteryChargeTime:I = 0x21

.field static final TRANSACTION_getBatteryCurrentNow:I = 0x23

.field static final TRANSACTION_getBatteryStandbyTime:I = 0x22

.field static final TRANSACTION_getComponentManager:I = 0x27

.field static final TRANSACTION_getForegroundApplicationThread:I = 0x8

.field static final TRANSACTION_getForegroundApplicationUid:I = 0x24

.field static final TRANSACTION_getForegroundPreTaskApp:I = 0x2a

.field static final TRANSACTION_getMetokToken:I = 0x17

.field static final TRANSACTION_getProcessActiveLevel:I = 0x32

.field static final TRANSACTION_getProcessBackgourndModes:I = 0x37

.field static final TRANSACTION_getSmartConfigLevel:I = 0x14

.field static final TRANSACTION_getWhetstoneLevel:I = 0x6

.field static final TRANSACTION_getWhetstonePackage:I = 0x2

.field static final TRANSACTION_getWhetstonePackageInfo:I = 0x3

.field static final TRANSACTION_getWhetstonePackageInfoByUid:I = 0x3d

.field static final TRANSACTION_injectInputEvent:I = 0xd

.field static final TRANSACTION_installPackage:I = 0xf

.field static final TRANSACTION_isInCharging:I = 0x10

.field static final TRANSACTION_isNeeded:I = 0x1

.field static final TRANSACTION_killApplication:I = 0x25

.field static final TRANSACTION_killApplicationAlways:I = 0x26

.field static final TRANSACTION_log:I = 0x3a

.field static final TRANSACTION_putSetting:I = 0xe

.field static final TRANSACTION_registTargetProcessForegroundNotify:I = 0x29

.field static final TRANSACTION_registerActiveAppStatusChange:I = 0x38

.field static final TRANSACTION_registerAppObserver:I = 0x2b

.field static final TRANSACTION_registerMiuiWhetstoneCloudSync:I = 0x18

.field static final TRANSACTION_registerMiuiWhetstoneCloudSyncList:I = 0x19

.field static final TRANSACTION_registerPackageStatusNotify:I = 0x4

.field static final TRANSACTION_requestBackgroundModes:I = 0x34

.field static final TRANSACTION_requestCurrentLocation:I = 0x1d

.field static final TRANSACTION_screenShot:I = 0xc

.field static final TRANSACTION_setWhetstoneLevel:I = 0x5

.field static final TRANSACTION_unregisterActiveAppStatusChange:I = 0x39

.field static final TRANSACTION_unregisterAppObserver:I = 0x2c

.field static final TRANSACTION_unregisterMiuiWhetstoneCloudSync:I = 0x1a

.field static final TRANSACTION_updateActiveProcessStatus:I = 0x33

.field static final TRANSACTION_updateProcessCurrentPss:I = 0x1f

.field static final TRANSACTION_wifiSmartConfigMacAsyncWithUid:I = 0x11

.field static final TRANSACTION_wifiSmartConfigStartAsync:I = 0x9

.field static final TRANSACTION_wifiSmartConfigStop:I = 0xa

.field static final TRANSACTION_wifiSmartConfigSupport:I = 0xb

.field static final TRANSACTION_wifiSmartConfigUap:I = 0x13

.field static final TRANSACTION_wifiSmartConfigUapAsync:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IWhetstone$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.miui.whetstone.IWhetstone"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/miui/whetstone/IWhetstone;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 811
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 53
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->isNeeded(I)Z

    move-result v22

    .line 54
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v22, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v4, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 60
    .end local v5    # "_arg0":I
    .end local v22    # "_result":Z
    :sswitch_2
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 63
    .local v5, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-result-object v22

    .line 64
    .local v22, "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v22, :cond_1

    .line 66
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .line 70
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 76
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v22    # "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :sswitch_3
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->getWhetstonePackageInfo(Ljava/lang/String;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-result-object v22

    .line 80
    .restart local v22    # "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v22, :cond_2

    .line 82
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    :goto_3
    const/4 v4, 0x1

    goto :goto_0

    .line 86
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 92
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :sswitch_4
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 96
    .local v12, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 98
    .local v21, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/IPkgStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPkgStatusCallback;

    move-result-object v7

    .line 99
    .local v7, "_arg2":Lcom/miui/whetstone/IPkgStatusCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->registerPackageStatusNotify(Ljava/util/List;Ljava/util/List;Lcom/miui/whetstone/IPkgStatusCallback;)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 105
    .end local v7    # "_arg2":Lcom/miui/whetstone/IPkgStatusCallback;
    .end local v12    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 108
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->setWhetstoneLevel(I)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 114
    .end local v5    # "_arg0":I
    :sswitch_6
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getWhetstoneLevel()I

    move-result v22

    .line 116
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 122
    .end local v22    # "_result":I
    :sswitch_7
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 125
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->getApplicationThread(I)Landroid/os/IBinder;

    move-result-object v22

    .line 126
    .local v22, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 128
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 132
    .end local v5    # "_arg0":I
    .end local v22    # "_result":Landroid/os/IBinder;
    :sswitch_8
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getForegroundApplicationThread()Landroid/os/IBinder;

    move-result-object v22

    .line 134
    .restart local v22    # "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 136
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 140
    .end local v22    # "_result":Landroid/os/IBinder;
    :sswitch_9
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .local v10, "_arg5":Landroid/os/IBinder;
    move-object/from16 v4, p0

    .line 153
    invoke-virtual/range {v4 .. v10}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigStartAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 154
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 158
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Landroid/os/IBinder;
    :sswitch_a
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigStop()V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 165
    :sswitch_b
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigSupport()Z

    move-result v22

    .line 167
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v22, :cond_3

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 168
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 173
    .end local v22    # "_result":Z
    :sswitch_c
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 177
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 178
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->screenShot(II)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 179
    .local v22, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v22, :cond_4

    .line 181
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 187
    :goto_5
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 185
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 191
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v22    # "_result":Landroid/graphics/Bitmap;
    :sswitch_d
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 194
    sget-object v4, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputEvent;

    .line 200
    .local v5, "_arg0":Landroid/view/InputEvent;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 201
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v22

    .line 202
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v22, :cond_6

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 197
    .end local v5    # "_arg0":Landroid/view/InputEvent;
    .end local v6    # "_arg1":I
    .end local v22    # "_result":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/view/InputEvent;
    goto :goto_6

    .line 203
    .restart local v6    # "_arg1":I
    .restart local v22    # "_result":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_7

    .line 208
    .end local v5    # "_arg0":Landroid/view/InputEvent;
    .end local v6    # "_arg1":I
    .end local v22    # "_result":Z
    :sswitch_e
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 215
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->putSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    .line 216
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v22, :cond_7

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 217
    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    .line 222
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v22    # "_result":Z
    :sswitch_f
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 225
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 231
    .local v5, "_arg0":Landroid/net/Uri;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;

    move-result-object v6

    .line 233
    .local v6, "_arg1":Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 234
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)Z

    move-result v22

    .line 235
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v22, :cond_9

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 228
    .end local v5    # "_arg0":Landroid/net/Uri;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver;
    .end local v7    # "_arg2":I
    .end local v22    # "_result":Z
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/net/Uri;
    goto :goto_9

    .line 236
    .restart local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver;
    .restart local v7    # "_arg2":I
    .restart local v22    # "_result":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 241
    .end local v5    # "_arg0":Landroid/net/Uri;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver;
    .end local v7    # "_arg2":I
    .end local v22    # "_result":Z
    :sswitch_10
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->isInCharging()Z

    move-result v22

    .line 243
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v22, :cond_a

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 244
    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    .line 249
    .end local v22    # "_result":Z
    :sswitch_11
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 255
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 259
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 261
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 263
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .local v11, "_arg6":Landroid/os/IBinder;
    move-object/from16 v4, p0

    .line 264
    invoke-virtual/range {v4 .. v11}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 265
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 269
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Landroid/os/IBinder;
    :sswitch_12
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 273
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 275
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 277
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 279
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .local v9, "_arg4":Landroid/os/IBinder;
    move-object/from16 v13, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    .line 280
    invoke-virtual/range {v13 .. v19}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigUapAsync(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/os/IBinder;)V

    .line 281
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 285
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/os/IBinder;
    .end local v16    # "_arg2":J
    :sswitch_13
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 289
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 291
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 293
    .restart local v16    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v13, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v18, v8

    .line 294
    invoke-virtual/range {v13 .. v18}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigUap(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 295
    .local v22, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 301
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg2":J
    .end local v22    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getSmartConfigLevel()I

    move-result v22

    .line 303
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 309
    .end local v22    # "_result":I
    :sswitch_15
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 312
    sget-object v4, Lcom/miui/whetstone/WhetstoneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/whetstone/WhetstoneConfig;

    .line 317
    .local v5, "_arg0":Lcom/miui/whetstone/WhetstoneConfig;
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I

    move-result v22

    .line 318
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 315
    .end local v5    # "_arg0":Lcom/miui/whetstone/WhetstoneConfig;
    .end local v22    # "_result":I
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/miui/whetstone/WhetstoneConfig;
    goto :goto_c

    .line 324
    .end local v5    # "_arg0":Lcom/miui/whetstone/WhetstoneConfig;
    :sswitch_16
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 327
    sget-object v4, Lcom/miui/whetstone/WhetstoneAction;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/whetstone/WhetstoneAction;

    .line 332
    .local v5, "_arg0":Lcom/miui/whetstone/WhetstoneAction;
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->analyticTrack(Lcom/miui/whetstone/WhetstoneAction;)V

    .line 333
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 330
    .end local v5    # "_arg0":Lcom/miui/whetstone/WhetstoneAction;
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/miui/whetstone/WhetstoneAction;
    goto :goto_d

    .line 337
    .end local v5    # "_arg0":Lcom/miui/whetstone/WhetstoneAction;
    :sswitch_17
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getMetokToken()Ljava/lang/String;

    move-result-object v22

    .line 339
    .local v22, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 345
    .end local v22    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 348
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 354
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 355
    sget-object v4, Lcom/miui/whetstone/CloudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/whetstone/CloudControlInfo;

    .line 360
    .local v6, "_arg1":Lcom/miui/whetstone/CloudControlInfo;
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I

    move-result v22

    .line 361
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 351
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Lcom/miui/whetstone/CloudControlInfo;
    .end local v22    # "_result":I
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .line 358
    :cond_e
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/miui/whetstone/CloudControlInfo;
    goto :goto_f

    .line 367
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Lcom/miui/whetstone/CloudControlInfo;
    :sswitch_19
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 370
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 376
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_10
    sget-object v4, Lcom/miui/whetstone/CloudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v20

    .line 377
    .local v20, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/CloudControlInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I

    move-result v22

    .line 378
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 373
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v20    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/CloudControlInfo;>;"
    .end local v22    # "_result":I
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .line 384
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1a
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 387
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 392
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I

    move-result v22

    .line 393
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 390
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v22    # "_result":I
    :cond_10
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11

    .line 399
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1b
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 403
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 405
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 406
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->checkIfHaveTheCallFunctionPermission(III)Z

    move-result v22

    .line 407
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    if-eqz v22, :cond_11

    const/4 v4, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 408
    :cond_11
    const/4 v4, 0x0

    goto :goto_12

    .line 413
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v22    # "_result":Z
    :sswitch_1c
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 417
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 419
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 420
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->checkPermissionLevel(III)I

    move-result v22

    .line 421
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 427
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v22    # "_result":I
    :sswitch_1d
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 431
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/ILocationCallback;

    move-result-object v6

    .line 432
    .local v6, "_arg1":Lcom/miui/whetstone/ILocationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->requestCurrentLocation(Ljava/lang/String;Lcom/miui/whetstone/ILocationCallback;)V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 438
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Lcom/miui/whetstone/ILocationCallback;
    :sswitch_1e
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/ILocationCallback;

    move-result-object v5

    .line 441
    .local v5, "_arg0":Lcom/miui/whetstone/ILocationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->cancelLocationRequest(Lcom/miui/whetstone/ILocationCallback;)V

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 447
    .end local v5    # "_arg0":Lcom/miui/whetstone/ILocationCallback;
    :sswitch_1f
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 451
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 452
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->updateProcessCurrentPss(II)V

    .line 453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 458
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_20
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getBatteryCapacity()I

    move-result v22

    .line 460
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 466
    .end local v22    # "_result":I
    :sswitch_21
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getBatteryChargeTime()J

    move-result-wide v22

    .line 468
    .local v22, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 470
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 474
    .end local v22    # "_result":J
    :sswitch_22
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getBatteryStandbyTime()J

    move-result-wide v22

    .line 476
    .restart local v22    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 478
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 482
    .end local v22    # "_result":J
    :sswitch_23
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getBatteryCurrentNow()I

    move-result v22

    .line 484
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 490
    .end local v22    # "_result":I
    :sswitch_24
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getForegroundApplicationUid()I

    move-result v22

    .line 492
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 498
    .end local v22    # "_result":I
    :sswitch_25
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 502
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 504
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 505
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->killApplication(Ljava/lang/String;II)Z

    move-result v22

    .line 506
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    if-eqz v22, :cond_12

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 507
    :cond_12
    const/4 v4, 0x0

    goto :goto_13

    .line 512
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v22    # "_result":Z
    :sswitch_26
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 516
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 518
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 519
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->killApplicationAlways(IILjava/lang/String;)Z

    move-result v22

    .line 520
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    if-eqz v22, :cond_13

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 521
    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    .line 526
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v22    # "_result":Z
    :sswitch_27
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getComponentManager()Lcom/miui/whetstone/IComponentManager;

    move-result-object v22

    .line 528
    .local v22, "_result":Lcom/miui/whetstone/IComponentManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    if-eqz v22, :cond_14

    invoke-interface/range {v22 .. v22}, Lcom/miui/whetstone/IComponentManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 530
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 529
    :cond_14
    const/4 v4, 0x0

    goto :goto_15

    .line 534
    .end local v22    # "_result":Lcom/miui/whetstone/IComponentManager;
    :sswitch_28
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 538
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 539
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->checkAppTheShotScreenPermission(II)Z

    move-result v22

    .line 540
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    if-eqz v22, :cond_15

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 541
    :cond_15
    const/4 v4, 0x0

    goto :goto_16

    .line 546
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v22    # "_result":Z
    :sswitch_29
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 550
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 552
    .restart local v21    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/IProcessForegroundCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IProcessForegroundCallback;

    move-result-object v7

    .line 553
    .local v7, "_arg2":Lcom/miui/whetstone/IProcessForegroundCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->registTargetProcessForegroundNotify(Ljava/lang/String;Ljava/util/List;Lcom/miui/whetstone/IProcessForegroundCallback;)V

    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 559
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":Lcom/miui/whetstone/IProcessForegroundCallback;
    .end local v21    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2a
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getForegroundPreTaskApp()Lcom/miui/whetstone/AppInfo;

    move-result-object v22

    .line 561
    .local v22, "_result":Lcom/miui/whetstone/AppInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    if-eqz v22, :cond_16

    .line 563
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/miui/whetstone/AppInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 569
    :goto_17
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 567
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 573
    .end local v22    # "_result":Lcom/miui/whetstone/AppInfo;
    :sswitch_2b
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/IAppObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IAppObserver;

    move-result-object v5

    .line 576
    .local v5, "_arg0":Lcom/miui/whetstone/IAppObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->registerAppObserver(Lcom/miui/whetstone/IAppObserver;)V

    .line 577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 582
    .end local v5    # "_arg0":Lcom/miui/whetstone/IAppObserver;
    :sswitch_2c
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/IAppObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IAppObserver;

    move-result-object v5

    .line 585
    .restart local v5    # "_arg0":Lcom/miui/whetstone/IAppObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->unregisterAppObserver(Lcom/miui/whetstone/IAppObserver;)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 591
    .end local v5    # "_arg0":Lcom/miui/whetstone/IAppObserver;
    :sswitch_2d
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 594
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->getActiveAppListByType(I)Ljava/util/List;

    move-result-object v24

    .line 595
    .local v24, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 597
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 601
    .end local v5    # "_arg0":I
    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2e
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 604
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->getActiveAppListByLevel(I)Ljava/util/List;

    move-result-object v24

    .line 605
    .restart local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 607
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 611
    .end local v5    # "_arg0":I
    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2f
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 615
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 616
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->checkIfAppBelongToActive(Ljava/lang/String;I)Z

    move-result v22

    .line 617
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    if-eqz v22, :cond_17

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 618
    :cond_17
    const/4 v4, 0x0

    goto :goto_18

    .line 623
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v22    # "_result":Z
    :sswitch_30
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 627
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 629
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 630
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->checkIfProcessBelongToActive(Ljava/lang/String;II)Z

    move-result v22

    .line 631
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    if-eqz v22, :cond_18

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 632
    :cond_18
    const/4 v4, 0x0

    goto :goto_19

    .line 637
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v22    # "_result":Z
    :sswitch_31
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 641
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 642
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->getApplicationActiveLevel(Ljava/lang/String;I)I

    move-result v22

    .line 643
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 649
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v22    # "_result":I
    :sswitch_32
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 653
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 655
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 656
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->getProcessActiveLevel(Ljava/lang/String;II)I

    move-result v22

    .line 657
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 663
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v22    # "_result":I
    :sswitch_33
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 667
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 669
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 671
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 672
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/miui/whetstone/IWhetstone$Stub;->updateActiveProcessStatus(IIII)V

    .line 673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 678
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :sswitch_34
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 682
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 684
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 685
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->requestBackgroundModes(III)Z

    move-result v22

    .line 686
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    if-eqz v22, :cond_19

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 687
    :cond_19
    const/4 v4, 0x0

    goto :goto_1a

    .line 692
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v22    # "_result":Z
    :sswitch_35
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 696
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 698
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 699
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->completeBackgroundModes(III)Z

    move-result v22

    .line 700
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    if-eqz v22, :cond_1a

    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 701
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1b

    .line 706
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v22    # "_result":Z
    :sswitch_36
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 710
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 711
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->completeBackagroundAllModes(II)Z

    move-result v22

    .line 712
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    if-eqz v22, :cond_1b

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 713
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1c

    .line 718
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v22    # "_result":Z
    :sswitch_37
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 722
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 723
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->getProcessBackgourndModes(II)I

    move-result v22

    .line 724
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 730
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v22    # "_result":I
    :sswitch_38
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/active/IActiveAppStatusChange$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/active/IActiveAppStatusChange;

    move-result-object v5

    .line 733
    .local v5, "_arg0":Lcom/miui/whetstone/active/IActiveAppStatusChange;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->registerActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z

    move-result v22

    .line 734
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    if-eqz v22, :cond_1c

    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 735
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1d

    .line 740
    .end local v5    # "_arg0":Lcom/miui/whetstone/active/IActiveAppStatusChange;
    .end local v22    # "_result":Z
    :sswitch_39
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/active/IActiveAppStatusChange$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/active/IActiveAppStatusChange;

    move-result-object v5

    .line 743
    .restart local v5    # "_arg0":Lcom/miui/whetstone/active/IActiveAppStatusChange;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->unregisterActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z

    move-result v22

    .line 744
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    if-eqz v22, :cond_1d

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 745
    :cond_1d
    const/4 v4, 0x0

    goto :goto_1e

    .line 750
    .end local v5    # "_arg0":Lcom/miui/whetstone/active/IActiveAppStatusChange;
    .end local v22    # "_result":Z
    :sswitch_3a
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 754
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 755
    .local v6, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->log(I[B)V

    .line 756
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 760
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":[B
    :sswitch_3b
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    .line 763
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 769
    .local v5, "_arg0":Landroid/graphics/Bitmap;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 771
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/watermark/IWatermarkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/watermark/IWatermarkCallback;

    move-result-object v7

    .line 772
    .local v7, "_arg2":Lcom/miui/whetstone/watermark/IWatermarkCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/miui/whetstone/watermark/IWatermarkCallback;)V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 766
    .end local v5    # "_arg0":Landroid/graphics/Bitmap;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Lcom/miui/whetstone/watermark/IWatermarkCallback;
    :cond_1e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_1f

    .line 778
    .end local v5    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_3c
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 781
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 787
    .restart local v5    # "_arg0":Landroid/graphics/Bitmap;
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/watermark/IWatermarkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/watermark/IWatermarkCallback;

    move-result-object v6

    .line 788
    .local v6, "_arg1":Lcom/miui/whetstone/watermark/IWatermarkCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->decodeWatermark(Landroid/graphics/Bitmap;Lcom/miui/whetstone/watermark/IWatermarkCallback;)V

    .line 789
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 784
    .end local v5    # "_arg0":Landroid/graphics/Bitmap;
    .end local v6    # "_arg1":Lcom/miui/whetstone/watermark/IWatermarkCallback;
    :cond_1f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_20

    .line 794
    .end local v5    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_3d
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 798
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 799
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->getWhetstonePackageInfoByUid(Ljava/lang/String;I)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-result-object v22

    .line 800
    .local v22, "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    if-eqz v22, :cond_20

    .line 802
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 808
    :goto_21
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 806
    :cond_20
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
