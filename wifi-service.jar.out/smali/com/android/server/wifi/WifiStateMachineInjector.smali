.class final Lcom/android/server/wifi/WifiStateMachineInjector;
.super Ljava/lang/Object;
.source "WifiStateMachineInjector.java"


# static fields
.field private static sWlanStatistics:Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fetchAndGetWlanStatistics()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/android/server/wifi/MiuiWifiNative;->getInstance()Lcom/android/server/wifi/MiuiWifiNative;

    move-result-object v0

    const-string v1, "wlan0"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/MiuiWifiNative;->getWlanStatistics(Ljava/lang/String;)Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiStateMachineInjector;->sWlanStatistics:Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;

    .line 26
    sget-object v0, Lcom/android/server/wifi/WifiStateMachineInjector;->sWlanStatistics:Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiStateMachineInjector;->sWlanStatistics:Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;

    invoke-virtual {v0}, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 36
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 33
    :pswitch_0
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/server/wifi/WifiStateMachineInjector;->sWlanStatistics:Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiStateMachineInjector;->sWlanStatistics:Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;

    invoke-virtual {v1}, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 31
    :pswitch_data_0
    .packed-switch 0x20053
        :pswitch_0
    .end packed-switch
.end method

.method static handleSupplicantStateChange(Landroid/os/Message;Landroid/net/wifi/WifiInfo;)V
    .locals 2
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 18
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/StateChangeResult;

    .line 19
    .local v0, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->getOctets()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 20
    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 22
    :cond_0
    return-void
.end method

.method static isExplicitlySelected(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method static setScanResults(Landroid/net/wifi/ScanResult;Ljava/lang/String;)V
    .locals 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p1, "infoElementsStr"    # Ljava/lang/String;

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 42
    .local v1, "seperator":I
    if-ltz v1, :cond_0

    .line 43
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/Utils;->parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;

    move-result-object v0

    .line 46
    .local v0, "infoElements":[Landroid/net/wifi/ScanResult$InformationElement;
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 49
    .end local v0    # "infoElements":[Landroid/net/wifi/ScanResult$InformationElement;
    .end local v1    # "seperator":I
    :cond_0
    return-void
.end method
