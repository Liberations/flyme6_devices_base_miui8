.class Lcom/android/server/wifi/WifiApManager$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiApManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApManager;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/wifi/WifiApManager$4;->this$0:Lcom/android/server/wifi/WifiApManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const-string v3, "wifi_state"

    const/16 v4, 0xe

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 99
    .local v1, "state":I
    const/16 v3, 0xd

    if-ne v1, v3, :cond_3

    .line 100
    invoke-static {}, Lcom/android/server/wifi/MiuiWifiNative;->getInstance()Lcom/android/server/wifi/MiuiWifiNative;

    move-result-object v2

    .line 102
    .local v2, "wifiNative":Lcom/android/server/wifi/MiuiWifiNative;
    invoke-virtual {v2}, Lcom/android/server/wifi/MiuiWifiNative;->connectToSap()Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    .end local v1    # "state":I
    .end local v2    # "wifiNative":Lcom/android/server/wifi/MiuiWifiNative;
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v1    # "state":I
    .restart local v2    # "wifiNative":Lcom/android/server/wifi/MiuiWifiNative;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiApManager$4;->this$0:Lcom/android/server/wifi/WifiApManager;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/wifi/WifiApManager;->mConnected:Z
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiApManager;->access$302(Lcom/android/server/wifi/WifiApManager;Z)Z

    .line 107
    iget-object v3, p0, Lcom/android/server/wifi/WifiApManager$4;->this$0:Lcom/android/server/wifi/WifiApManager;

    # getter for: Lcom/android/server/wifi/WifiApManager;->mMaxStationNum:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiApManager;->access$000(Lcom/android/server/wifi/WifiApManager;)I

    move-result v3

    if-lez v3, :cond_2

    .line 108
    iget-object v3, p0, Lcom/android/server/wifi/WifiApManager$4;->this$0:Lcom/android/server/wifi/WifiApManager;

    # getter for: Lcom/android/server/wifi/WifiApManager;->mMaxStationNum:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiApManager;->access$000(Lcom/android/server/wifi/WifiApManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/MiuiWifiNative;->setHotSpotMaxNum(I)V

    .line 111
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiApManager$4;->this$0:Lcom/android/server/wifi/WifiApManager;

    # getter for: Lcom/android/server/wifi/WifiApManager;->mHotSpotBlackSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/server/wifi/WifiApManager;->access$200(Lcom/android/server/wifi/WifiApManager;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Lcom/android/server/wifi/WifiApManager$4;->this$0:Lcom/android/server/wifi/WifiApManager;

    # getter for: Lcom/android/server/wifi/WifiApManager;->mHotSpotBlackSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/server/wifi/WifiApManager;->access$200(Lcom/android/server/wifi/WifiApManager;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/MiuiWifiNative;->setHotSpotDenyMac(Ljava/util/Set;)V

    goto :goto_0

    .line 115
    .end local v2    # "wifiNative":Lcom/android/server/wifi/MiuiWifiNative;
    :cond_3
    const/16 v3, 0xa

    if-eq v1, v3, :cond_4

    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 118
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiApManager$4;->this$0:Lcom/android/server/wifi/WifiApManager;

    # getter for: Lcom/android/server/wifi/WifiApManager;->mConnected:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiApManager;->access$300(Lcom/android/server/wifi/WifiApManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-static {}, Lcom/android/server/wifi/MiuiWifiNative;->getInstance()Lcom/android/server/wifi/MiuiWifiNative;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/MiuiWifiNative;->closeSapConnection()V

    .line 120
    iget-object v3, p0, Lcom/android/server/wifi/WifiApManager$4;->this$0:Lcom/android/server/wifi/WifiApManager;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiApManager;->mConnected:Z
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiApManager;->access$302(Lcom/android/server/wifi/WifiApManager;Z)Z

    goto :goto_0
.end method
