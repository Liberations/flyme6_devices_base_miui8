.class public Lcom/android/server/display/PaperModeService;
.super Lcom/android/server/SystemService;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/PaperModeService$LocalService;,
        Lcom/android/server/display/PaperModeService$ScreenOnReceiver;,
        Lcom/android/server/display/PaperModeService$UserSwitchReceiver;,
        Lcom/android/server/display/PaperModeService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PaperModeService"

.field private static final URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

.field private static final URI_PAPER_MODE_TIME_ENABLE:Landroid/net/Uri;

.field private static final URI_PAPER_MODE_TYPE:Landroid/net/Uri;

.field private static final URI_PAPER_MODE_WHITE_LIST:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPaperModeEnabled:Z

.field private mPaperModePkg:Ljava/lang/String;

.field private mPaperModeTimeEnabled:Z

.field private mPaperModeType:I

.field private mPaperModeWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

.field private mShowToastPkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "screen_paper_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    const-string v0, "screen_paper_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TYPE:Landroid/net/Uri;

    const-string v0, "screen_paper_mode_white_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_WHITE_LIST:Landroid/net/Uri;

    const-string v0, "screen_paper_mode_time_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TIME_ENABLE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PaperModeService;->mShowToastPkgSet:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PaperModeService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/PaperModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updatePkgPaperMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/PaperModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updatePaperMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/PaperModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updateSettings()V

    return-void
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_WHITE_LIST:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/PaperModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeTimeEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/PaperModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/PaperModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .prologue
    iget v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeType:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/display/PaperModeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModePkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/display/PaperModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/display/PaperModeService;->mPaperModePkg:Ljava/lang/String;

    return-object p1
.end method

.method private initColorService(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const-string v1, "is_xiaomi"

    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.qti.service.colorservice"

    const-string v2, "com.qti.service.colorservice.ColorServiceApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/display/PaperModeService$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/PaperModeService$1;-><init>(Lcom/android/server/display/PaperModeService;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updatePaperMode()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeEnabled:Z

    invoke-static {v0}, Landroid/provider/MiuiSettings$ScreenEffect;->setScreenPaperMode(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeEnabled:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/provider/MiuiSettings$ScreenEffect;->setScreenPaperMode(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updatePkgPaperMode()V

    goto :goto_0
.end method

.method private updatePkgPaperMode()V
    .locals 5

    .prologue
    invoke-static {}, Landroid/provider/MiuiSettings$ScreenEffect;->isScreenPaperMode()Z

    move-result v1

    .local v1, "isScreenPaperMode":Z
    iget-object v3, p0, Lcom/android/server/display/PaperModeService;->mPaperModeWhiteList:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/display/PaperModeService;->mPaperModePkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .local v2, "paperModePkg":Ljava/lang/Boolean;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .local v0, "isPkgPaperMode":Z
    :goto_0
    if-eq v1, v0, :cond_0

    invoke-static {v0}, Landroid/provider/MiuiSettings$ScreenEffect;->setScreenPaperMode(Z)V

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/server/display/PaperModeService;->mShowToastPkgSet:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/server/display/PaperModeService;->mPaperModePkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/PaperModeService;->mShowToastPkgSet:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/server/display/PaperModeService;->mPaperModePkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/display/PaperModeService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/display/PaperModeService$2;

    invoke-direct {v4, p0}, Lcom/android/server/display/PaperModeService$2;-><init>(Lcom/android/server/display/PaperModeService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .end local v0    # "isPkgPaperMode":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_paper_mode_enabled"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_paper_mode_time_enabled"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/display/PaperModeService;->mPaperModeTimeEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_paper_mode"

    invoke-static {v0, v2, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeType:I

    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "screen_paper_mode_white_list"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$ScreenEffect;->getScreenModePkgList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeWhiteList:Ljava/util/HashMap;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/android/server/display/PaperModeService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/display/PaperModeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/PaperModeService$SettingsObserver;-><init>(Lcom/android/server/display/PaperModeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TYPE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_WHITE_LIST:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TIME_ENABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;

    invoke-direct {v1, p0, v5}, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;-><init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;

    invoke-direct {v1, p0, v5}, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;-><init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updateSettings()V

    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/display/PaperModeService;->initColorService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updatePaperMode()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const-class v0, Lcom/android/server/display/ScreenEffectManager;

    new-instance v1, Lcom/android/server/display/PaperModeService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/PaperModeService$LocalService;-><init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/PaperModeService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
