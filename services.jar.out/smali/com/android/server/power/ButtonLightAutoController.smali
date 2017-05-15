.class public Lcom/android/server/power/ButtonLightAutoController;
.super Ljava/lang/Object;
.source "ButtonLightAutoController.java"


# static fields
.field private static final ANIMATION_FPS:I = 0x14

.field private static final ANIMATION_RATE:I = 0xa0

.field private static final BUTTON_LIGHT_HIGH:I = 0x96

.field private static final BUTTON_LIGHT_LOW:I = 0x14

.field private static final BUTTON_LIGHT_MEDIUM:I = 0x50

.field private static final BUTTON_LUX_LEVEL0_D:F = 5.0f

.field private static final BUTTON_LUX_LEVEL0_U:F = 15.0f

.field private static final BUTTON_LUX_LEVEL1_D:F = 1000.0f

.field private static final BUTTON_LUX_LEVEL1_U:F = 1500.0f

.field static sButtonLight:Lcom/android/server/lights/Light;

.field private static sButtonLightAnimation:Ljava/lang/Runnable;

.field private static sButtonLightEnabled:Z

.field static sButtonLightTimeout:I

.field static sButtonLightTimeoutTask:Ljava/lang/Runnable;

.field static sButtonLightTurnOff:Z

.field static sCurrentBrightenss:I

.field static sDeltaBrightness:I

.field static sHandler:Landroid/os/Handler;

.field static sIsScreenOn:Z

.field private static sLightSensor:Landroid/hardware/Sensor;

.field static sLightSensorButtonBrightness:I

.field private static final sLightSensorListener:Landroid/hardware/SensorEventListener;

.field private static sSensorManager:Landroid/hardware/SensorManager;

.field static sTargetBrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/server/power/ButtonLightAutoController$1;

    invoke-direct {v0}, Lcom/android/server/power/ButtonLightAutoController$1;-><init>()V

    sput-object v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightAnimation:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/power/ButtonLightAutoController$2;

    invoke-direct {v0}, Lcom/android/server/power/ButtonLightAutoController$2;-><init>()V

    sput-object v0, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/server/power/ButtonLightAutoController$5;

    invoke-direct {v0}, Lcom/android/server/power/ButtonLightAutoController$5;-><init>()V

    sput-object v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->sSetNextStepBrightness()V

    return-void
.end method

.method static synthetic access$100(F)I
    .locals 1
    .param p0, "x0"    # F

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ButtonLightAutoController;->sGetNewBrightess(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(III)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/power/ButtonLightAutoController;->sAnimateButtonLight(III)V

    return-void
.end method

.method static doTurnOffButtonLight()V
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLight:Lcom/android/server/lights/Light;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->turnOffHWButtonLight()V

    goto :goto_0
.end method

.method private static sAnimateButtonLight(III)V
    .locals 3
    .param p0, "from"    # I
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    const/4 v1, 0x1

    if-le p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    div-int/lit8 v2, p2, 0x14

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v0, v1

    sput v0, Lcom/android/server/power/ButtonLightAutoController;->sDeltaBrightness:I

    sput p1, Lcom/android/server/power/ButtonLightAutoController;->sTargetBrightness:I

    sput p0, Lcom/android/server/power/ButtonLightAutoController;->sCurrentBrightenss:I

    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->sSetNextStepBrightness()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static final sGetNewBrightess(F)I
    .locals 5
    .param p0, "lux"    # F

    .prologue
    const v4, 0x44bb8000    # 1500.0f

    const/high16 v3, 0x40a00000    # 5.0f

    sget v0, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    .local v0, "brightness":I
    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_2

    cmpl-float v1, p0, v4

    if-lez v1, :cond_0

    const/16 v0, 0x96

    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_1

    const/16 v0, 0x50

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_5

    cmpl-float v1, p0, v4

    if-lez v1, :cond_3

    const/16 v0, 0x96

    goto :goto_0

    :cond_3
    cmpg-float v1, p0, v3

    if-gez v1, :cond_4

    const/16 v0, 0x14

    goto :goto_0

    :cond_4
    const/16 v0, 0x50

    goto :goto_0

    :cond_5
    cmpg-float v1, p0, v3

    if-gez v1, :cond_6

    const/16 v0, 0x14

    goto :goto_0

    :cond_6
    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_7

    const/16 v0, 0x50

    goto :goto_0

    :cond_7
    const/16 v0, 0x96

    goto :goto_0
.end method

.method private static sSetNextStepBrightness()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .local v0, "needChange":Z
    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sButtonLight:Lcom/android/server/lights/Light;

    sget v2, Lcom/android/server/power/ButtonLightAutoController;->sCurrentBrightenss:I

    invoke-virtual {v1, v2}, Lcom/android/server/lights/Light;->setBrightness(I)V

    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sDeltaBrightness:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Lcom/android/server/power/ButtonLightAutoController;->sCurrentBrightenss:I

    sget v3, Lcom/android/server/power/ButtonLightAutoController;->sTargetBrightness:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v1, v2, :cond_2

    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sCurrentBrightenss:I

    sget v2, Lcom/android/server/power/ButtonLightAutoController;->sDeltaBrightness:I

    add-int/2addr v1, v2

    sput v1, Lcom/android/server/power/ButtonLightAutoController;->sCurrentBrightenss:I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightAnimation:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x32

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sCurrentBrightenss:I

    sget v2, Lcom/android/server/power/ButtonLightAutoController;->sTargetBrightness:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sTargetBrightness:I

    sput v1, Lcom/android/server/power/ButtonLightAutoController;->sCurrentBrightenss:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static setButtonLight(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/lights/Light;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "buttonLight"    # Lcom/android/server/lights/Light;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/power/ButtonLightAutoController;->setButtonLight(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/lights/Light;Landroid/hardware/SensorManager;)V

    return-void
.end method

.method static setButtonLight(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/lights/Light;Landroid/hardware/SensorManager;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "buttonLight"    # Lcom/android/server/lights/Light;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    const/4 v5, 0x1

    sput-object p1, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    sput-object p2, Lcom/android/server/power/ButtonLightAutoController;->sButtonLight:Lcom/android/server/lights/Light;

    sput-object p3, Lcom/android/server/power/ButtonLightAutoController;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ButtonLightAutoController;->sLightSensor:Landroid/hardware/Sensor;

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/power/ButtonLightAutoController$3;

    sget-object v4, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, p0}, Lcom/android/server/power/ButtonLightAutoController$3;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_turn_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/ButtonLightAutoController$4;

    sget-object v3, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, p0}, Lcom/android/server/power/ButtonLightAutoController$4;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sput-boolean v5, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTurnOff:Z

    sput-boolean v5, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    const/16 v0, 0x50

    sput v0, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    invoke-static {p0}, Lcom/android/server/power/ButtonLightAutoController;->updateButtonLightTimeout(Landroid/content/Context;)V

    return-void
.end method

.method static setButtonLightTimeout()V
    .locals 6

    .prologue
    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLight:Lcom/android/server/lights/Light;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTurnOff:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTurnOff:Z

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLight:Lcom/android/server/lights/Light;

    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/android/server/power/ButtonLightAutoController;->sLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeout:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget v4, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeout:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static setScreenOn(Z)V
    .locals 1
    .param p0, "isScreenOn"    # Z

    .prologue
    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    if-ne v0, p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean p0, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->setButtonLightTimeout()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->doTurnOffButtonLight()V

    goto :goto_0
.end method

.method static turnOffButtonLight(I)V
    .locals 1
    .param p0, "newScreenState"    # I

    .prologue
    if-nez p0, :cond_0

    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTurnOff:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->doTurnOffButtonLight()V

    :cond_0
    return-void
.end method

.method static turnOffHWButtonLight()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTurnOff:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTurnOff:Z

    :cond_1
    return-void
.end method

.method static updateButtonLightState(ZZI)V
    .locals 1
    .param p0, "displayReady"    # Z
    .param p1, "isProximityPositive"    # Z
    .param p2, "displayPowerPolicy"    # I

    .prologue
    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->setButtonLightTimeout()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p1, :cond_0

    :cond_2
    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->doTurnOffButtonLight()V

    goto :goto_0
.end method

.method static updateButtonLightTimeout(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_buttons_timeout"

    const/16 v4, 0x1388

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .local v1, "buttonLightTimeout":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_buttons_turn_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .local v0, "buttonLightEnabled":Z
    :goto_0
    sget v2, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeout:I

    if-eq v1, v2, :cond_0

    sput v1, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeout:I

    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->setButtonLightTimeout()V

    :cond_0
    sget-boolean v2, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightEnabled:Z

    if-eq v0, v2, :cond_1

    sput-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightEnabled:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->turnOffHWButtonLight()V

    :cond_1
    return-void

    .end local v0    # "buttonLightEnabled":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
