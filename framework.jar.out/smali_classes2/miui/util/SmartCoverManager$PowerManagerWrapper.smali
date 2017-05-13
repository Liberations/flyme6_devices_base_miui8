.class Lmiui/util/SmartCoverManager$PowerManagerWrapper;
.super Ljava/lang/Object;
.source "SmartCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SmartCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerManagerWrapper"
.end annotation


# instance fields
.field final GO_TO_SLEEP:Ljava/lang/String;

.field final GO_TO_SLEEP_FLAG_NO_DOZE:I

.field final GO_TO_SLEEP_REASON_LID_SWITCH:I

.field final WAKE_UP:Ljava/lang/String;

.field mPowerManager:Landroid/os/PowerManager;

.field final synthetic this$0:Lmiui/util/SmartCoverManager;


# direct methods
.method constructor <init>(Lmiui/util/SmartCoverManager;Landroid/os/PowerManager;)V
    .locals 1
    .param p2, "pm"    # Landroid/os/PowerManager;

    .prologue
    .line 246
    iput-object p1, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v0, 0x3

    iput v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->GO_TO_SLEEP_REASON_LID_SWITCH:I

    .line 240
    const/4 v0, 0x1

    iput v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->GO_TO_SLEEP_FLAG_NO_DOZE:I

    .line 241
    const-string/jumbo v0, "wakeUp"

    iput-object v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->WAKE_UP:Ljava/lang/String;

    .line 242
    const-string v0, "goToSleep"

    iput-object v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->GO_TO_SLEEP:Ljava/lang/String;

    .line 247
    iput-object p2, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 248
    return-void
.end method

.method private varargs callMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p3, "paramsType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    const/4 v1, 0x0

    .line 268
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v4, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 273
    :goto_0
    if-nez v1, :cond_0

    .line 287
    :goto_1
    return v2

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 277
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 279
    :try_start_1
    iget-object v4, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, v4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move v2, v3

    .line 287
    goto :goto_1

    .line 280
    :catch_1
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 283
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method private isAutoBrightnessMode()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 310
    iget-object v2, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    # getter for: Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lmiui/util/SmartCoverManager;->access$000(Lmiui/util/SmartCoverManager;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    iget-object v4, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    # getter for: Lmiui/util/SmartCoverManager;->mCurrentUserId:I
    invoke-static {v4}, Lmiui/util/SmartCoverManager;->access$100(Lmiui/util/SmartCoverManager;)I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private restoreScreenBrightnessByLid()V
    .locals 8

    .prologue
    .line 291
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 293
    .local v1, "power":Landroid/os/IPowerManager;
    :try_start_0
    invoke-direct {p0}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->isAutoBrightnessMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    iget-object v4, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    # getter for: Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lmiui/util/SmartCoverManager;->access$000(Lmiui/util/SmartCoverManager;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_auto_brightness_adj"

    const/high16 v6, 0x7fc00000    # NaNf

    iget-object v7, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    # getter for: Lmiui/util/SmartCoverManager;->mCurrentUserId:I
    invoke-static {v7}, Lmiui/util/SmartCoverManager;->access$100(Lmiui/util/SmartCoverManager;)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    .line 297
    .local v2, "screenAutoBrightnessAdjustmentSetting":F
    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 307
    .end local v2    # "screenAutoBrightnessAdjustmentSetting":F
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v4, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    # getter for: Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lmiui/util/SmartCoverManager;->access$000(Lmiui/util/SmartCoverManager;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    iget-object v6, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v6

    iget-object v7, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    # getter for: Lmiui/util/SmartCoverManager;->mCurrentUserId:I
    invoke-static {v7}, Lmiui/util/SmartCoverManager;->access$100(Lmiui/util/SmartCoverManager;)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 302
    .local v3, "screenBrightnessSetting":I
    invoke-interface {v1, v3}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    .end local v3    # "screenBrightnessSetting":I
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SmartCoverManager"

    const-string v5, "exception"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method goToSleep()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 251
    const-string v0, "goToSleep"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    invoke-direct {p0, v0, v1, v2}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->callMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 255
    :cond_0
    return-void
.end method

.method wakeUp()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 258
    invoke-direct {p0}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->restoreScreenBrightnessByLid()V

    .line 260
    const-string/jumbo v0, "wakeUp"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "lid switch open"

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->callMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 263
    :cond_0
    return-void
.end method
