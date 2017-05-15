.class Lmiui/securitycenter/powercenter/BatterySipperHelper;
.super Ljava/lang/Object;
.source "BatterySipperHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addBatterySipper(Lmiui/securitycenter/powercenter/BatterySipper;Lcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;
    .locals 4
    .param p0, "sipper"    # Lmiui/securitycenter/powercenter/BatterySipper;
    .param p1, "osSipper"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    return-object p0
.end method

.method static makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drainType"    # I
    .param p2, "osSipper"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    if-nez p2, :cond_1

    new-instance v0, Lmiui/securitycenter/powercenter/BatterySipper;

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/powercenter/BatterySipper;-><init>(Landroid/content/Context;IID)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v3, -0x1

    .local v3, "uid":I
    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-static {v1}, Lmiui/securitycenter/powercenter/UidUtils;->getRealUid(I)I

    move-result v3

    :cond_2
    new-instance v0, Lmiui/securitycenter/powercenter/BatterySipper;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/powercenter/BatterySipper;-><init>(Landroid/content/Context;IID)V

    .local v0, "sipper":Lmiui/securitycenter/powercenter/BatterySipper;
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->cpuTime:J

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->gpsTime:J

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->wifiRunningTime:J

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->cpuFgTime:J

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->wakeLockTime:J

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->noCoveragePercent:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->mobileRxBytes:J

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iput-wide v4, v0, Lmiui/securitycenter/powercenter/BatterySipper;->mobileTxBytes:J

    iget-object v1, v0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v1, v0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    goto :goto_0
.end method
