.class Lcom/android/server/wifi/WifiApManager$1;
.super Landroid/database/ContentObserver;
.source "WifiApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiApManager;->registerHotSpotMaxNumChangedObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiApManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/wifi/WifiApManager$1;->this$0:Lcom/android/server/wifi/WifiApManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 51
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager$1;->this$0:Lcom/android/server/wifi/WifiApManager;

    iget-object v2, p0, Lcom/android/server/wifi/WifiApManager$1;->this$0:Lcom/android/server/wifi/WifiApManager;

    # getter for: Lcom/android/server/wifi/WifiApManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApManager;->access$100(Lcom/android/server/wifi/WifiApManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/MiuiSettings$System;->getHotSpotMaxStationNum(Landroid/content/Context;)I

    move-result v2

    # setter for: Lcom/android/server/wifi/WifiApManager;->mMaxStationNum:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiApManager;->access$002(Lcom/android/server/wifi/WifiApManager;I)I

    .line 52
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager$1;->this$0:Lcom/android/server/wifi/WifiApManager;

    # getter for: Lcom/android/server/wifi/WifiApManager;->mMaxStationNum:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiApManager;->access$000(Lcom/android/server/wifi/WifiApManager;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 53
    invoke-static {}, Lcom/android/server/wifi/MiuiWifiNative;->getInstance()Lcom/android/server/wifi/MiuiWifiNative;

    move-result-object v0

    .line 54
    .local v0, "wifiNative":Lcom/android/server/wifi/MiuiWifiNative;
    iget-object v1, p0, Lcom/android/server/wifi/WifiApManager$1;->this$0:Lcom/android/server/wifi/WifiApManager;

    # getter for: Lcom/android/server/wifi/WifiApManager;->mMaxStationNum:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiApManager;->access$000(Lcom/android/server/wifi/WifiApManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/MiuiWifiNative;->setHotSpotMaxNum(I)V

    .line 56
    .end local v0    # "wifiNative":Lcom/android/server/wifi/MiuiWifiNative;
    :cond_0
    return-void
.end method
