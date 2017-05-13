.class Lcom/android/server/wifi/WifiApManager;
.super Ljava/lang/Object;
.source "WifiApManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHotSpotBlackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxStationNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "WifiApManager"

    iput-object v0, p0, Lcom/android/server/wifi/WifiApManager;->TAG:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/android/server/wifi/WifiApManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiApManager$4;-><init>(Lcom/android/server/wifi/WifiApManager;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    iput-object p1, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/android/server/wifi/WifiApManager;->mHandler:Landroid/os/Handler;

    .line 35
    const-string v0, "qcom"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApManager;->registerHotSpotMaxNumChangedObserver()V

    .line 37
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApManager;->registerHotSpotBlackSetChangedObserver()V

    .line 38
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApManager;->registerHotSpotVendorSpecificChangedObserver()V

    .line 39
    iget-object v0, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/WifiApManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 42
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiApManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApManager;

    .prologue
    .line 21
    iget v0, p0, Lcom/android/server/wifi/WifiApManager;->mMaxStationNum:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiApManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApManager;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/android/server/wifi/WifiApManager;->mMaxStationNum:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiApManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiApManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/wifi/WifiApManager;->mHotSpotBlackSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/WifiApManager;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApManager;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/server/wifi/WifiApManager;->mHotSpotBlackSet:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiApManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApManager;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiApManager;->mConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/WifiApManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApManager;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiApManager;->mConnected:Z

    return p1
.end method

.method private registerHotSpotBlackSetChangedObserver()V
    .locals 5

    .prologue
    .line 64
    new-instance v0, Lcom/android/server/wifi/WifiApManager$2;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiApManager$2;-><init>(Lcom/android/server/wifi/WifiApManager;Landroid/os/Handler;)V

    .line 74
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_mac_black_set"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 76
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getHotSpotMacBlackSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mHotSpotBlackSet:Ljava/util/Set;

    .line 77
    return-void
.end method

.method private registerHotSpotMaxNumChangedObserver()V
    .locals 5

    .prologue
    .line 48
    new-instance v0, Lcom/android/server/wifi/WifiApManager$1;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiApManager$1;-><init>(Lcom/android/server/wifi/WifiApManager;Landroid/os/Handler;)V

    .line 58
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_max_station_num"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 60
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getHotSpotMaxStationNum(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiApManager;->mMaxStationNum:I

    .line 61
    return-void
.end method

.method private registerHotSpotVendorSpecificChangedObserver()V
    .locals 5

    .prologue
    .line 80
    new-instance v0, Lcom/android/server/wifi/WifiApManager$3;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiApManager$3;-><init>(Lcom/android/server/wifi/WifiApManager;Landroid/os/Handler;)V

    .line 88
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_vendor_specific"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    return-void
.end method
