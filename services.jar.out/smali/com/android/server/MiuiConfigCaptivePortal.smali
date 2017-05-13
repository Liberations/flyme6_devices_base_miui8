.class public Lcom/android/server/MiuiConfigCaptivePortal;
.super Ljava/lang/Object;
.source "MiuiConfigCaptivePortal.java"


# static fields
.field private static final CN_CAPTIVE_PORTAL_SERVER:Ljava/lang/String; = "connect.rom.miui.com"

.field private static final CN_OPERATOR:Ljava/lang/String; = "460"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final enableDataAndWifiRoam(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_and_wifi_roam"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static final getCaptivePortalServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "server"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    .line 49
    .local v4, "telephonyManager":Lmiui/telephony/TelephonyManager;
    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v1, 0x1

    .line 50
    .local v1, "isExistIccCard":Z
    :goto_0
    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 51
    .local v3, "numPhones":I
    const/4 v2, 0x0

    .line 53
    .local v2, "networkOperator":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 55
    invoke-virtual {v4, v0}, Lmiui/telephony/TelephonyManager;->getNetworkOperatorForSlot(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 63
    .end local v0    # "i":I
    :cond_0
    invoke-static {v2}, Lcom/android/server/MiuiConfigCaptivePortal;->isCnFromOperator(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CN"

    invoke-static {v5}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    :cond_1
    const-string p0, "connect.rom.miui.com"

    .line 68
    :cond_2
    return-object p0

    .line 49
    .end local v1    # "isExistIccCard":Z
    .end local v2    # "networkOperator":Ljava/lang/String;
    .end local v3    # "numPhones":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 54
    .restart local v0    # "i":I
    .restart local v1    # "isExistIccCard":Z
    .restart local v2    # "networkOperator":Ljava/lang/String;
    .restart local v3    # "numPhones":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 23
    invoke-static {v6}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "server":Ljava/lang/String;
    if-nez v4, :cond_1

    if-eqz p1, :cond_0

    const-string v5, "http"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "captive_portal_server"

    invoke-static {v5, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    if-nez v4, :cond_1

    .line 29
    :try_start_0
    const-string v5, "com.android.server.connectivity.NetworkMonitor"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v7, "DEFAULT_SERVER"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 30
    .local v1, "dsFiled":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 31
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    .end local v1    # "dsFiled":Ljava/lang/reflect/Field;
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    :try_start_1
    new-instance v5, Ljava/net/URL;

    const-string v7, "http"

    const-string v8, "/generate_204"

    invoke-direct {v5, v7, v4, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 43
    :goto_1
    return-object v5

    .line 32
    :catch_0
    move-exception v3

    .line 33
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    const-string v4, "connect.rom.miui.com"

    .line 36
    goto :goto_0

    .line 34
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 35
    .local v3, "ex":Ljava/lang/Exception;
    const-string v4, "connect.rom.miui.com"

    goto :goto_0

    .line 41
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 42
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/net/MalformedURLException;
    move-object v5, v6

    .line 43
    goto :goto_1
.end method

.method static isCnFromOperator(Ljava/lang/String;)Z
    .locals 3
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 72
    const-string v0, ""

    .line 73
    .local v0, "mcc":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 74
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    const-string v1, "460"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
