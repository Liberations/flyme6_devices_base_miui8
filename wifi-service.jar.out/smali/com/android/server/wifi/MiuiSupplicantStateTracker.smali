.class public final Lcom/android/server/wifi/MiuiSupplicantStateTracker;
.super Ljava/lang/Object;
.source "MiuiSupplicantStateTracker.java"


# static fields
.field private static sNetid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->sNetid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->sNetid:I

    .line 37
    return-void
.end method

.method public static handleConnectNetwork(I)V
    .locals 0
    .param p0, "netid"    # I

    .prologue
    .line 20
    invoke-static {p0}, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->setNetId(I)V

    .line 21
    return-void
.end method

.method public static handleNetworkConnectionComplete()V
    .locals 0

    .prologue
    .line 16
    invoke-static {}, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->clear()V

    .line 17
    return-void
.end method

.method public static isConformAuthFailure(II)Z
    .locals 1
    .param p0, "netid"    # I
    .param p1, "authenticationFailuresCount"    # I

    .prologue
    .line 24
    if-lez p1, :cond_0

    invoke-static {p0}, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->match(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static match(I)Z
    .locals 1
    .param p0, "netid"    # I

    .prologue
    .line 32
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget v0, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->sNetid:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sendBroadcast(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.WIFI_CONNECTION_FAILURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    const-string v1, "wifiConfiguration"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 43
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 44
    return-void
.end method

.method public static setNetId(I)V
    .locals 0
    .param p0, "netid"    # I

    .prologue
    .line 28
    sput p0, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->sNetid:I

    .line 29
    return-void
.end method
