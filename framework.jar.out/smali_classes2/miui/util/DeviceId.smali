.class public abstract Lmiui/util/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, ""

    .local v0, "id":Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/TelephonyManagerUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/net/ConnectivityHelper;->isWifiOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method
