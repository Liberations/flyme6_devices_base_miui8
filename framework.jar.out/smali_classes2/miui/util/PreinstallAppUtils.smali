.class public Lmiui/util/PreinstallAppUtils;
.super Ljava/lang/Object;
.source "PreinstallAppUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPreinstalledPackage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-static {p0}, Lmiui/os/MiuiInit;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supportSignVerifyInCust()Z
    .locals 2

    .prologue
    .line 20
    const-string v0, "support_sign_verify_in_cust"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
