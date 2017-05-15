.class public Lmiui/securitycenter/powercenter/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lmiui/securitycenter/powercenter/BatterySipper;",
        ">;"
    }
.end annotation


# static fields
.field static final APP:I = 0x6

.field static final BLUETOOTH:I = 0x4

.field static final CAMERA:I = 0x9

.field static final CELL:I = 0x1

.field static final FLASHLIGHT:I = 0x7

.field static final IDLE:I = 0x0

.field static final OTHER:I = 0xa

.field static final PHONE:I = 0x2

.field static final SCREEN:I = 0x5

.field static final USER:I = 0x8

.field static final WIFI:I = 0x3


# instance fields
.field cpuFgTime:J

.field cpuTime:J

.field defaultPackageName:Ljava/lang/String;

.field drainType:I

.field gpsTime:J

.field mobileRxBytes:J

.field mobileTxBytes:J

.field name:Ljava/lang/String;

.field noCoveragePercent:D

.field uid:I

.field usageTime:J

.field value:D

.field wakeLockTime:J

.field wifiRunningTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;IID)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drainType"    # I
    .param p3, "uid"    # I
    .param p4, "value"    # D

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    iput p2, p0, Lmiui/securitycenter/powercenter/BatterySipper;->drainType:I

    iput-wide p4, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    iput p3, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    invoke-direct {p0, p1}, Lmiui/securitycenter/powercenter/BatterySipper;->getNameAndPackageName(Landroid/content/Context;)V

    return-void
.end method

.method private getNameAndPackageName(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .local v8, "pm":Landroid/content/pm/PackageManager;
    iget v9, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .local v5, "packages":[Ljava/lang/String;
    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v9, v5

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v5, v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "cs":Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    :cond_2
    const/4 v9, 0x0

    aget-object v9, v5, v9

    iput-object v9, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "cs":Ljava/lang/CharSequence;
    :catch_0
    move-exception v9

    goto :goto_0

    :cond_3
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v7, v1, v3

    .local v7, "pkgName":Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget v9, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v9, :cond_5

    iget v9, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "cs":Ljava/lang/CharSequence;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    :cond_4
    iput-object v7, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v2    # "cs":Ljava/lang/CharSequence;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v9

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lmiui/securitycenter/powercenter/BatterySipper;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/securitycenter/powercenter/BatterySipper;->compareTo(Lmiui/securitycenter/powercenter/BatterySipper;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lmiui/securitycenter/powercenter/BatterySipper;)I
    .locals 4
    .param p1, "other"    # Lmiui/securitycenter/powercenter/BatterySipper;

    .prologue
    invoke-virtual {p1}, Lmiui/securitycenter/powercenter/BatterySipper;->getSortValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lmiui/securitycenter/powercenter/BatterySipper;->getSortValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public getDrainType()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->drainType:I

    return v0
.end method

.method public getObjectValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "drainType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->drainType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "usageTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "cpuTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->cpuTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, "gpsTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->gpsTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, "wifiRunningTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->wifiRunningTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v0, "cpuFgTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->cpuFgTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_8
    const-string v0, "wakeLockTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->wakeLockTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v0, "mobileRxBytes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->mobileRxBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v0, "mobileTxBytes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->mobileTxBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v0, "noCoveragePercent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->noCoveragePercent:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const-string v0, "defaultPackageName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSortValue()D
    .locals 2

    .prologue
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    return v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    return-wide v0
.end method
