.class public Lmiui/securitycenter/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OverLayUtil"

.field private static mNMService:Landroid/os/INetworkManagementService;

.field private static mSystemServiceClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getAdjustedNetworkStatsTethering()Landroid/net/NetworkStats;
    .locals 9

    .prologue
    .line 101
    const/4 v3, 0x0

    .line 104
    .local v3, "networkStatsTethering":Landroid/net/NetworkStats;
    :try_start_0
    sget-object v5, Lmiui/securitycenter/NetworkUtils;->mNMService:Landroid/os/INetworkManagementService;

    if-nez v5, :cond_0

    .line 105
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    sput-object v5, Lmiui/securitycenter/NetworkUtils;->mNMService:Landroid/os/INetworkManagementService;

    .line 108
    :cond_0
    sget-object v5, Lmiui/securitycenter/NetworkUtils;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v3

    .line 109
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    if-lez v5, :cond_2

    .line 111
    :try_start_1
    sget-object v5, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    if-nez v5, :cond_1

    .line 112
    const-string v5, "SYSTEMSERVERCLASSPATH"

    invoke-static {v5}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "systemServerClasspath":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 114
    new-instance v5, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v5, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    .line 120
    .end local v4    # "systemServerClasspath":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v5, "com.android.server.NetPluginDelegate"

    const/4 v6, 0x0

    sget-object v7, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 122
    .local v2, "netPluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getTetherStats"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/net/NetworkStats;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/net/NetworkStats;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Landroid/net/NetworkStats;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 124
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "netPluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    return-object v3

    .line 116
    .restart local v4    # "systemServerClasspath":Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    sput-object v5, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 125
    .end local v4    # "systemServerClasspath":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 127
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "OverLayUtil"

    const-string v6, "an exception occurred!!"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 132
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "OverLayUtil"

    const-string v6, "an exception occurred!!"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getMobileIface(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 85
    .local v1, "cm":Landroid/net/IConnectivityManager;
    const/4 v0, 0x0

    .line 87
    .local v0, "activeLink":Landroid/net/LinkProperties;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v3}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 94
    :goto_1
    return-object v3

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v3, "rmnet0"

    goto :goto_1
.end method

.method public static getNetworkStatsTethering()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v4, 0x0

    .line 140
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lmiui/securitycenter/NetworkUtils;->getAdjustedNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v3

    .line 141
    .local v3, "networkStatsTethering":Landroid/net/NetworkStats;
    const/4 v0, 0x0

    .line 142
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz v3, :cond_0

    .line 143
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 145
    invoke-virtual {v3, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 146
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v2, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "uid"

    iget v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v5, "iface"

    iget-object v6, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v5, "rxBytes"

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v5, "txBytes"

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v5, "tag"

    iget v6, v0, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    .end local v2    # "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v4
.end method

.method public static saveWifiConfiguration(Landroid/content/Context;Ljava/net/InetAddress;Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dns"    # Ljava/net/InetAddress;
    .param p2, "wifiConf"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 46
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 47
    :cond_0
    const-string v3, "OverLayUtil"

    const-string v4, "saveWifiConfiguration:  invalidate parameter!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v3

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v3, v4, :cond_1

    .line 52
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 53
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 58
    .local v0, "config":Landroid/net/StaticIpConfiguration;
    const/4 v1, 0x0

    .line 59
    .local v1, "oldDns":Ljava/net/InetAddress;
    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 60
    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "oldDns":Ljava/net/InetAddress;
    check-cast v1, Ljava/net/InetAddress;

    .line 62
    .restart local v1    # "oldDns":Ljava/net/InetAddress;
    :cond_3
    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 63
    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    if-eqz v1, :cond_4

    .line 65
    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_4
    new-instance v3, Lmiui/securitycenter/NetworkUtils$1;

    invoke-direct {v3}, Lmiui/securitycenter/NetworkUtils$1;-><init>()V

    invoke-virtual {v2, p2, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method public static setMobileDataState(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mobileDataEnabled"    # Z

    .prologue
    .line 40
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 41
    .local v0, "telephonyService":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 42
    return-void
.end method
