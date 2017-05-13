.class public Lcom/android/server/lights/MiuiLightsService;
.super Lcom/android/server/lights/LightsService;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/MiuiLightsService$LightContentObserver;,
        Lcom/android/server/lights/MiuiLightsService$LightImpl;,
        Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;
    }
.end annotation


# static fields
.field private static final LIGHT_ON_MS:I = 0x1f4

.field private static final STOP_FLASH_MSG:I = 0x1


# instance fields
.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLightContentObserver:Lcom/android/server/lights/MiuiLightsService$LightContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSupportButtonLight:Z

.field private mSupportLedLight:Z

.field private mSupportTapFingerprint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v0, Lcom/android/server/lights/MiuiLightsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/lights/MiuiLightsService$1;-><init>(Lcom/android/server/lights/MiuiLightsService;)V

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V

    aput-object v1, v0, v3

    .line 36
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {v1, p0, v5, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V

    aput-object v1, v0, v5

    .line 37
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {v1, p0, v4, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V

    aput-object v1, v0, v4

    .line 38
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/lights/MiuiLightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/lights/MiuiLightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportButtonLight:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/lights/MiuiLightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportLedLight:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/lights/MiuiLightsService;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/lights/MiuiLightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isDisableButtonLight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/lights/MiuiLightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnButtonLight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/lights/MiuiLightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnBatteryLight()Z

    move-result v0

    return v0
.end method

.method private isDisableButtonLight()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x2

    const/4 v0, 0x0

    .line 247
    iget-boolean v2, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z

    if-eqz v2, :cond_2

    .line 248
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_buttons_state"

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "single_key_use_enable"

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    .line 253
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_buttons_state"

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private isTurnOnBatteryLight()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 242
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "battery_light_turn_on"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTurnOnButtonLight()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 237
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_buttons_turn_on"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 42
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    .line 43
    const-string v0, "support_tap_fingerprint_sensor_to_home"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z

    .line 44
    const-string v0, "support_button_light"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportButtonLight:Z

    .line 45
    const-string v0, "support_led_light"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportLedLight:Z

    .line 46
    new-instance v0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;-><init>(Lcom/android/server/lights/MiuiLightsService;)V

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLightContentObserver:Lcom/android/server/lights/MiuiLightsService$LightContentObserver;

    .line 47
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLightContentObserver:Lcom/android/server/lights/MiuiLightsService$LightContentObserver;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->observe()V

    .line 48
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/lights/MiuiLightsService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 49
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_buttons_state"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 51
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportButtonLight:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    .line 54
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportLedLight:Z

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;-><init>(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/MiuiLightsService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    :cond_2
    return-void
.end method
