.class public Lmiui/util/SystemAnalytics;
.super Ljava/lang/Object;
.source "SystemAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/SystemAnalytics$Action;
    }
.end annotation


# static fields
.field public static final CONFIGKEY_BOOT_SHUT:Ljava/lang/String; = "systemserver_bootshuttime"

.field private static final LOGTYPE_EVENT:I = 0x0

.field private static final SYSTEM_APP_ID:Ljava/lang/String; = "systemserver"

.field private static final TAG:Ljava/lang/String; = "SystemAnalytics"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackSystem(Landroid/content/Context;Ljava/lang/String;Lmiui/util/SystemAnalytics$Action;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "action"    # Lmiui/util/SystemAnalytics$Action;

    .prologue
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.miui.analytics"

    const-string v3, "com.miui.analytics.EventService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "key"

    if-eqz p1, :cond_0

    .end local p1    # "key":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "content"

    invoke-virtual {p2}, Lmiui/util/SystemAnalytics$Action;->getContent()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SystemAnalytics"

    invoke-virtual {p2}, Lmiui/util/SystemAnalytics$Action;->getContent()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "extra"

    invoke-virtual {p2}, Lmiui/util/SystemAnalytics$Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appid"

    const-string v3, "systemserver"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local p1    # "key":Ljava/lang/String;
    :cond_0
    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    .end local p1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemAnalytics"

    const-string v3, "track system error!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
