.class public Lmiui/securityspace/ConfigUtils;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isKitKat()Z
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "version":I
    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPad()Z
    .locals 2

    .prologue
    const-string v0, "is_pad"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSecuritySpace()Z
    .locals 1

    .prologue
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isKitKat()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportXSpace()Z
    .locals 1

    .prologue
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isKitKat()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
