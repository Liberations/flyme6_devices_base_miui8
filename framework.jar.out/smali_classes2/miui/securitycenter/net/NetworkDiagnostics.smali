.class public Lmiui/securitycenter/net/NetworkDiagnostics;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;,
        Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;,
        Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;,
        Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics"

.field private static final TEST_DNS4:Ljava/net/InetAddress;

.field private static final TEST_DNS6:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "8.8.8.8"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lmiui/securitycenter/net/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    .line 86
    const-string v0, "2001:4860:4860::8888"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lmiui/securitycenter/net/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lmiui/securitycenter/net/NetworkDiagnostics;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p0}, Lmiui/securitycenter/net/NetworkDiagnostics;->getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static activeNetworkDnsCheck(Landroid/content/Context;Ljava/net/InetAddress;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Ljava/net/InetAddress;
    .param p2, "timeoutMs"    # Ljava/lang/Long;

    .prologue
    const/4 v6, 0x0

    .line 378
    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 379
    :cond_0
    const-string v2, "NetworkDiagnostics"

    const-string v3, "activeNetworkIcmpCheck. invalidate parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 397
    :goto_0
    return-object v2

    .line 383
    :cond_1
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 384
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_2

    .line 385
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 388
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 389
    .local v1, "lp":Landroid/net/LinkProperties;
    if-nez p1, :cond_4

    if-eqz v1, :cond_4

    .line 390
    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 391
    :cond_3
    sget-object p1, Lmiui/securitycenter/net/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    .line 397
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-static {v2, v1, p1, p2}, Lmiui/securitycenter/net/NetworkDiagnostics;->dnsCheck(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/lang/Long;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 393
    :cond_5
    sget-object p1, Lmiui/securitycenter/net/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    goto :goto_1
.end method

.method public static activeNetworkIcmpCheck(Landroid/content/Context;Ljava/net/InetAddress;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Ljava/net/InetAddress;
    .param p2, "timeoutMs"    # Ljava/lang/Long;

    .prologue
    const/4 v6, 0x0

    .line 339
    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 340
    :cond_0
    const-string v2, "NetworkDiagnostics"

    const-string v3, "activeNetworkIcmpCheck. invalidate parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 358
    :goto_0
    return-object v2

    .line 344
    :cond_1
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 345
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_2

    .line 346
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 350
    .local v1, "lp":Landroid/net/LinkProperties;
    if-nez p1, :cond_4

    if-eqz v1, :cond_4

    .line 351
    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 352
    :cond_3
    sget-object p1, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    .line 358
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v1, p1, v4, v5}, Lmiui/securitycenter/net/NetworkDiagnostics;->icmpCheck(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 354
    :cond_5
    sget-object p1, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    goto :goto_1
.end method

.method public static dnsCheck(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/lang/Long;)Z
    .locals 10
    .param p0, "network"    # Landroid/net/Network;
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "timeoutMs"    # Ljava/lang/Long;

    .prologue
    const/4 v7, 0x0

    .line 402
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    .line 403
    :cond_0
    const-string v1, "NetworkDiagnostics"

    const-string v3, "dnsCheck. invalidate parameter"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 413
    :goto_0
    return v1

    .line 407
    :cond_1
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 408
    .local v2, "newLp":Landroid/net/LinkProperties;
    new-instance v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V

    .line 409
    .local v0, "dnsCheck":Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;
    invoke-virtual {v0}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->call()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 410
    .end local v0    # "dnsCheck":Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;
    .end local v2    # "newLp":Landroid/net/LinkProperties;
    :catch_0
    move-exception v6

    .line 411
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "NetworkDiagnostics"

    const-string v3, "dnsCheck"

    invoke-static {v1, v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    .line 413
    goto :goto_0
.end method

.method private static getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "ifname"    # Ljava/lang/String;

    .prologue
    .line 95
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 96
    .local v1, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 98
    .end local v1    # "ni":Ljava/net/NetworkInterface;
    :goto_0
    return-object v2

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static icmpCheck(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)Z
    .locals 9
    .param p0, "network"    # Landroid/net/Network;
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "timeoutMs"    # J

    .prologue
    const/4 v7, 0x0

    .line 363
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-nez v1, :cond_1

    .line 364
    :cond_0
    :try_start_0
    const-string v1, "NetworkDiagnostics"

    const-string v3, "icmpCheck. invalidate parameter"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 374
    :goto_0
    return v1

    .line 368
    :cond_1
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 369
    .local v2, "newLp":Landroid/net/LinkProperties;
    new-instance v0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V

    .line 370
    .local v0, "icmpCheck":Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;
    invoke-virtual {v0}, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->call()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 371
    .end local v0    # "icmpCheck":Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;
    .end local v2    # "newLp":Landroid/net/LinkProperties;
    :catch_0
    move-exception v6

    .line 372
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "NetworkDiagnostics"

    const-string v3, "icmpCheck"

    invoke-static {v1, v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    .line 374
    goto :goto_0
.end method

.method private static final now()J
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
