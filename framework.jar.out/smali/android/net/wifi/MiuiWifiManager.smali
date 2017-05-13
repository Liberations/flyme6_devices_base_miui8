.class public Landroid/net/wifi/MiuiWifiManager;
.super Ljava/lang/Object;
.source "MiuiWifiManager.java"


# static fields
.field private static final BASE:I = 0x25fa0

.field public static final CMD_GET_OBSERVED_ACCESSPOINTS:I = 0x25fa3

.field public static final CMD_SET_OBSERVED_ACCESSPOINTS:I = 0x25fa2

.field public static final EXTRA_APS:Ljava/lang/String; = "extra_aps"

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_CONFIG:Ljava/lang/String; = "config"

.field public static final EXTRA_SSID:Ljava/lang/String; = "ssid"

.field public static final FAILED:I = 0x2

.field public static final GET_SUPPLICANT_CONFIGURATION:I = 0x25fa1

.field private static final MAX_RSSI:I = -0x41

.field private static final MIN_RSSI:I = -0x64

.field public static final OBSERVED_ACCESSPOINTS_CHANGED:Ljava/lang/String; = "android.net.wifi.observed_accesspionts_changed"

.field public static final OBSERVED_OPENAPS_CHANGED:Ljava/lang/String; = "android.net.wifi.observed_open_accesspionts_changed"

.field public static final SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiWifiManager"

.field public static final WPS_DEVICE_GUEST:Ljava/lang/String; = "guest"

.field public static final WPS_DEVICE_XIAOMI:Ljava/lang/String; = "xiaomi"

.field private static sInstance:Landroid/net/wifi/MiuiWifiManager;


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    :try_start_0
    const-string/jumbo v3, "wifi"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    .line 108
    .local v1, "service":Landroid/net/wifi/IWifiManager;
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "MiuiWifiManager"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "workThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 111
    iget-object v3, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v4, 0x0

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "service":Landroid/net/wifi/IWifiManager;
    .end local v2    # "workThread":Landroid/os/HandlerThread;
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MiuiWifiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "build WifiConfigForSupplicant failed exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static calculateSignalLevel(II)I
    .locals 3
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    .line 75
    const/16 v2, -0x64

    if-gt p0, v2, :cond_0

    .line 76
    const/4 v2, 0x0

    .line 82
    :goto_0
    return v2

    .line 77
    :cond_0
    const/16 v2, -0x41

    if-lt p0, v2, :cond_1

    .line 78
    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    .line 80
    :cond_1
    const/high16 v0, 0x420c0000    # 35.0f

    .line 81
    .local v0, "inputRange":F
    add-int/lit8 v2, p1, -0x1

    int-to-float v1, v2

    .line 82
    .local v1, "outputRange":F
    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_0
.end method

.method public static getInstance()Landroid/net/wifi/MiuiWifiManager;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroid/net/wifi/MiuiWifiManager;->sInstance:Landroid/net/wifi/MiuiWifiManager;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Landroid/net/wifi/MiuiWifiManager;

    invoke-direct {v0}, Landroid/net/wifi/MiuiWifiManager;-><init>()V

    sput-object v0, Landroid/net/wifi/MiuiWifiManager;->sInstance:Landroid/net/wifi/MiuiWifiManager;

    .line 122
    :cond_0
    sget-object v0, Landroid/net/wifi/MiuiWifiManager;->sInstance:Landroid/net/wifi/MiuiWifiManager;

    return-object v0
.end method

.method public static isMiWifi()Z
    .locals 5

    .prologue
    .line 92
    :try_start_0
    const-string/jumbo v3, "wifi"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    .line 93
    .local v0, "service":Landroid/net/wifi/IWifiManager;
    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 94
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getVendorInfo()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "vendor":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "XIAOMI_ROUTER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "miwifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    :cond_0
    const/4 v3, 0x1

    .line 101
    .end local v1    # "vendor":Ljava/lang/String;
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_0
    return v3

    .line 99
    :catch_0
    move-exception v3

    .line 101
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getObservedAccessPionts()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 147
    .local v1, "msg":Landroid/os/Message;
    const v4, 0x25fa3

    iput v4, v1, Landroid/os/Message;->what:I

    .line 148
    iget-object v4, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 149
    .local v2, "msgRusult":Landroid/os/Message;
    const/4 v3, 0x0

    .line 150
    .local v3, "observAps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 151
    .local v0, "bundle":Landroid/os/Bundle;
    iget v4, v2, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    if-eqz v0, :cond_0

    .line 152
    const-string v4, "extra_aps"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 154
    :cond_0
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 155
    return-object v3
.end method

.method public sendAsyncMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 160
    return-void
.end method

.method public sendSyncMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 163
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public setObservedAccessPionts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "observedAPs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "extra_aps"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 139
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 140
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x25fa2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 141
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    invoke-virtual {p0, v1}, Landroid/net/wifi/MiuiWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    .line 143
    return-void
.end method
