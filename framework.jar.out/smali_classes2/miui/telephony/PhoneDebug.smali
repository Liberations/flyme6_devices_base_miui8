.class public Lmiui/telephony/PhoneDebug;
.super Ljava/lang/Object;
.source "PhoneDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/PhoneDebug$Listener;
    }
.end annotation


# static fields
.field public static final PHONE_DEBUG_FLAG:Ljava/lang/String; = "phone_debug_flag"

.field public static VDBG:Z

.field private static sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/PhoneDebug$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lmiui/telephony/PhoneDebug;->VDBG:Z

    const/4 v4, 0x0

    sput-object v4, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    :try_start_0
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    const-string v4, "android"

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0xea60

    invoke-static {v4}, Lmiui/telephony/PhoneDebug;->registerDelay(I)V

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone_debug_flag"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_0

    const-string v4, "debug.miui.phone"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    sput-boolean v2, Lmiui/telephony/PhoneDebug;->VDBG:Z

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lmiui/telephony/PhoneDebug;->register()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneDebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    invoke-static {}, Lmiui/telephony/PhoneDebug;->register()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    return-object v0
.end method

.method public static addListener(Lmiui/telephony/PhoneDebug$Listener;)Lmiui/telephony/PhoneDebug$Listener;
    .locals 2
    .param p0, "listener"    # Lmiui/telephony/PhoneDebug$Listener;

    .prologue
    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Lmiui/telephony/PhoneDebug$Listener;->onDebugChanged()V

    :cond_1
    return-object p0
.end method

.method private static register()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "phone_debug_flag"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_0

    const-string v4, "debug.miui.phone"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    sput-boolean v2, Lmiui/telephony/PhoneDebug;->VDBG:Z

    const-string v2, "phone_debug_flag"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lmiui/telephony/PhoneDebug$2;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0}, Lmiui/telephony/PhoneDebug$2;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "te":Ljava/lang/Exception;
    const-string v2, "PhoneDebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static registerDelay(I)V
    .locals 2
    .param p0, "time"    # I

    .prologue
    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneDebug"

    const-string v1, "registerDelay"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/telephony/PhoneDebug$1;

    invoke-direct {v1, p0}, Lmiui/telephony/PhoneDebug$1;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static removeListener(Lmiui/telephony/PhoneDebug$Listener;)V
    .locals 1
    .param p0, "listener"    # Lmiui/telephony/PhoneDebug$Listener;

    .prologue
    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    :cond_0
    return-void
.end method
