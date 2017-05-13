.class public Lmiui/util/SmartCoverManager;
.super Ljava/lang/Object;
.source "SmartCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/SmartCoverManager$PowerManagerWrapper;
    }
.end annotation


# static fields
.field private static final ACTION_SMART_COVER_GUIDE:Ljava/lang/String; = "android.intent.action.SMART_COVER_GUIDE"

.field private static final EXCEPTION:Ljava/lang/String; = "exception"

.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I = 0x3a98

.field private static final LID_SWITCH_OPEN:Ljava/lang/String; = "lid switch open"

.field private static final MULTI:Z

.field private static final POWER:Ljava/lang/String; = "power"

.field private static final SETTINGS_PKG:Ljava/lang/String; = "com.android.settings"

.field private static final SMART_COVER_GUIDE_ACTIVITY:Ljava/lang/String; = "com.android.settings.MiuiSmartCoverGuideActivity"

.field private static final SMART_COVER_LID_OPEN:Ljava/lang/String; = "mSmartCoverLidOpen="

.field private static final SMART_COVER_MODE:Ljava/lang/String; = "mSmartCoverMode="

.field private static final SUPPORT_MULTIPLE_SMALL_WIN_COVER:Ljava/lang/String; = "support_multiple_small_win_cover"

.field private static final TAG:Ljava/lang/String; = "SmartCoverManager"

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mNeedResetTimeout:Z

.field private mPowerManagerWrapper:Lmiui/util/SmartCoverManager$PowerManagerWrapper;

.field private mSmartCoverLidOpen:Z

.field private mSmartCoverMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "support_multiple_small_win_cover"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/SmartCoverManager;->MULTI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    .line 237
    return-void
.end method

.method static synthetic access$000(Lmiui/util/SmartCoverManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lmiui/util/SmartCoverManager;

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/util/SmartCoverManager;)I
    .locals 1
    .param p0, "x0"    # Lmiui/util/SmartCoverManager;

    .prologue
    .line 27
    iget v0, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    return v0
.end method

.method private checkSmartCoverEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 176
    const-string v1, "persist.sys.smartcover_mode"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    .line 178
    iget v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    if-nez v1, :cond_0

    .line 179
    iput-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    .line 180
    const/4 v0, 0x0

    .line 182
    :cond_0
    return v0
.end method

.method private enableInSmallWinMode(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    const/4 v3, 0x2

    iget v4, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    if-gt v3, v4, :cond_0

    move v0, v1

    .line 167
    .local v0, "supportSmallWinMode":Z
    :goto_0
    iget-object v3, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "is_small_window"

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    iget v2, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    invoke-static {v3, v4, v1, v2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 169
    return v0

    .end local v0    # "supportSmallWinMode":Z
    :cond_0
    move v0, v2

    .line 166
    goto :goto_0

    .restart local v0    # "supportSmallWinMode":Z
    :cond_1
    move v1, v2

    .line 167
    goto :goto_1
.end method

.method private guideSmartCoverSettingIfNeeded(Z)V
    .locals 6
    .param p1, "smartCoverEnable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 111
    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_cover_key"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    .line 113
    .local v0, "first":Z
    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_cover_key"

    invoke-static {v1, v2, v4, v4}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 118
    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    sget-boolean v1, Lmiui/util/SmartCoverManager;->MULTI:Z

    if-nez v1, :cond_2

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 122
    :cond_2
    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SMART_COVER_GUIDE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.MiuiSmartCoverGuideActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleLidSwitchChanged(ZZ)V
    .locals 4
    .param p1, "lidOpen"    # Z
    .param p2, "systemBooted"    # Z

    .prologue
    const/4 v0, 0x1

    .line 186
    iput-boolean p1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    .line 187
    if-nez p1, :cond_0

    .line 188
    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->setScreenOffByLid(Z)V

    .line 191
    :cond_0
    if-eqz p2, :cond_1

    .line 192
    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "miui.intent.action.SMART_COVER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "is_smart_cover_open"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 196
    :cond_1
    if-nez p1, :cond_3

    :goto_0
    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->enableInSmallWinMode(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    if-nez p1, :cond_4

    .line 198
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mPowerManagerWrapper:Lmiui/util/SmartCoverManager$PowerManagerWrapper;

    invoke-virtual {v0}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->goToSleep()V

    .line 204
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lmiui/util/SmartCoverManager;->updateScreenOffTimeoutIfNeeded(Z)V

    .line 205
    return-void

    .line 196
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :cond_4
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mPowerManagerWrapper:Lmiui/util/SmartCoverManager$PowerManagerWrapper;

    invoke-virtual {v0}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->wakeUp()V

    goto :goto_1
.end method

.method private setScreenOffByLid(Z)V
    .locals 5
    .param p1, "byLid"    # Z

    .prologue
    .line 229
    if-eqz p1, :cond_0

    const-string v1, "true"

    .line 231
    .local v1, "value":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string v2, "sys.keyguard.screen_off_by_lid"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_1
    return-void

    .line 229
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const-string v1, "false"

    goto :goto_0

    .line 232
    .restart local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 233
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "SmartCoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set screen off by lid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private triggerScreenOffTimeout(Z)V
    .locals 4
    .param p1, "change"    # Z

    .prologue
    .line 221
    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_off_timeout"

    if-eqz p1, :cond_0

    const/16 v0, 0x3a98

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    iput-boolean p1, p0, Lmiui/util/SmartCoverManager;->mNeedResetTimeout:Z

    .line 224
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "need_reset_screen_off_timeout"

    iget-boolean v2, p0, Lmiui/util/SmartCoverManager;->mNeedResetTimeout:Z

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 226
    return-void

    .line 221
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private updateScreenOffTimeoutIfNeeded(Z)V
    .locals 10
    .param p1, "lidOpen"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    const-wide/32 v4, 0x7fffffff

    iget-object v3, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_off_timeout"

    const-wide/16 v8, 0x3a98

    invoke-static {v3, v6, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    move v0, v1

    .line 213
    .local v0, "isNeverTurnOff":Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 214
    invoke-direct {p0, v1}, Lmiui/util/SmartCoverManager;->triggerScreenOffTimeout(Z)V

    .line 218
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isNeverTurnOff":Z
    :cond_1
    move v0, v2

    .line 211
    goto :goto_0

    .line 215
    .restart local v0    # "isNeverTurnOff":Z
    :cond_2
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lmiui/util/SmartCoverManager;->mNeedResetTimeout:Z

    if-eqz v1, :cond_0

    .line 216
    invoke-direct {p0, v2}, Lmiui/util/SmartCoverManager;->triggerScreenOffTimeout(Z)V

    goto :goto_1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 157
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSmartCoverLidOpen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 158
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSmartCoverMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 159
    return-void
.end method

.method public enableLidAfterBoot(I)Z
    .locals 7
    .param p1, "lidState"    # I

    .prologue
    const/4 v6, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 64
    invoke-direct {p0}, Lmiui/util/SmartCoverManager;->checkSmartCoverEnable()Z

    .line 66
    const/4 v2, -0x1

    iget v5, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    if-ne v2, v5, :cond_0

    .line 67
    sget-boolean v2, Lmiui/util/SmartCoverManager;->MULTI:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-static {v2}, Landroid/provider/MiuiSettings$System;->setSmartCoverMode(Z)V

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 71
    .local v0, "inSmallWinMode":Z
    const/4 v2, 0x2

    iget v5, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    if-gt v2, v5, :cond_4

    move v1, v3

    .line 72
    .local v1, "setSmallWinMode":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 73
    if-nez p1, :cond_5

    move v0, v3

    .line 75
    :cond_1
    :goto_2
    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->enableInSmallWinMode(Z)Z

    .line 78
    iget-object v2, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "need_reset_screen_off_timeout"

    invoke-static {v2, v3, v4, v6}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    iget-object v2, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_off_timeout"

    const v5, 0x7fffffff

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    iget-object v2, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "need_reset_screen_off_timeout"

    invoke-static {v2, v3, v4, v6}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 85
    :cond_2
    return v1

    .end local v0    # "inSmallWinMode":Z
    .end local v1    # "setSmallWinMode":Z
    :cond_3
    move v2, v4

    .line 67
    goto :goto_0

    .restart local v0    # "inSmallWinMode":Z
    :cond_4
    move v1, v4

    .line 71
    goto :goto_1

    .restart local v1    # "setSmallWinMode":Z
    :cond_5
    move v0, v4

    .line 73
    goto :goto_2
.end method

.method public getSmartCoverLidOpen()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    return v0
.end method

.method public getSmartCoverMode()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/os/PowerManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManager"    # Landroid/os/PowerManager;

    .prologue
    .line 53
    iput-object p1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 55
    new-instance v0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;

    invoke-direct {v0, p0, p2}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;-><init>(Lmiui/util/SmartCoverManager;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lmiui/util/SmartCoverManager;->mPowerManagerWrapper:Lmiui/util/SmartCoverManager$PowerManagerWrapper;

    .line 56
    invoke-direct {p0}, Lmiui/util/SmartCoverManager;->checkSmartCoverEnable()Z

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    .line 58
    return-void
.end method

.method public notifyLidSwitchChanged(ZZ)Z
    .locals 2
    .param p1, "lidOpen"    # Z
    .param p2, "systemBooted"    # Z

    .prologue
    .line 92
    invoke-direct {p0}, Lmiui/util/SmartCoverManager;->checkSmartCoverEnable()Z

    move-result v0

    .line 93
    .local v0, "smartCoverEnable":Z
    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->guideSmartCoverSettingIfNeeded(Z)V

    .line 95
    if-nez v0, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 100
    :goto_0
    return v1

    .line 99
    :cond_0
    invoke-direct {p0, p1, p2}, Lmiui/util/SmartCoverManager;->handleLidSwitchChanged(ZZ)V

    .line 100
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public notifyScreenTurningOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-boolean v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    if-eqz v1, :cond_0

    .line 132
    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->setScreenOffByLid(Z)V

    .line 134
    :cond_0
    iget-boolean v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onUserSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 149
    iget v0, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    if-ne v0, p1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    iput p1, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    .line 153
    iget-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->enableInSmallWinMode(Z)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
