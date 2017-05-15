.class public Lmiui/securitycenter/net/NetworkStatWrapper;
.super Ljava/lang/Object;
.source "NetworkStatWrapper.java"


# static fields
.field private static mPreSnapshot:Landroid/net/NetworkStats;

.field private static mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field private static mStatsInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    sput-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v0, 0x0

    sput-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mPreSnapshot:Landroid/net/NetworkStats;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsInfo:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStatsInfo()Ljava/util/ArrayList;
    .locals 10
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
    :try_start_0
    sget-object v7, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v7}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v5

    .local v5, "newSnapshot":Landroid/net/NetworkStats;
    invoke-static {}, Lmiui/securitycenter/NetworkUtils;->getAdjustedNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v6

    .local v6, "newTetheringSnapshot":Landroid/net/NetworkStats;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkStats;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v5, v6}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    :cond_0
    sget-object v7, Lmiui/securitycenter/net/NetworkStatWrapper;->mPreSnapshot:Landroid/net/NetworkStats;

    if-nez v7, :cond_2

    sput-object v5, Lmiui/securitycenter/net/NetworkStatWrapper;->mPreSnapshot:Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "newTetheringSnapshot":Landroid/net/NetworkStats;
    :cond_1
    :goto_0
    sget-object v7, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsInfo:Ljava/util/ArrayList;

    return-object v7

    .restart local v6    # "newTetheringSnapshot":Landroid/net/NetworkStats;
    :cond_2
    :try_start_1
    sget-object v7, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    sget-object v7, Lmiui/securitycenter/net/NetworkStatWrapper;->mPreSnapshot:Landroid/net/NetworkStats;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    .local v0, "delta":Landroid/net/NetworkStats;
    sput-object v5, Lmiui/securitycenter/net/NetworkStatWrapper;->mPreSnapshot:Landroid/net/NetworkStats;

    const/4 v2, 0x0

    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz v0, :cond_1

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-virtual {v0, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .local v4, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "uid"

    iget v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "iface"

    iget-object v8, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "rxBytes"

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "txBytes"

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "tag"

    iget v8, v2, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "delta":Landroid/net/NetworkStats;
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v3    # "i":I
    .end local v4    # "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "newTetheringSnapshot":Landroid/net/NetworkStats;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
