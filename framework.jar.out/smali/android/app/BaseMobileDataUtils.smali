.class public Landroid/app/BaseMobileDataUtils;
.super Ljava/lang/Object;
.source "BaseMobileDataUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobileDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    const-string v0, "mobile_data"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isMobileEnable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method public onMobileDataChange(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    return-void
.end method
