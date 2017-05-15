.class Lcom/android/server/lights/MiuiLightsService$LightContentObserver;
.super Landroid/database/ContentObserver;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightContentObserver"
.end annotation


# instance fields
.field public final BATTERY_LIGHT_TURN_ON_URI:Landroid/net/Uri;

.field public final BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

.field public final CALL_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

.field public final MMS_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

.field public final SCREEN_BUTTONS_STATE_URI:Landroid/net/Uri;

.field public final SCREEN_BUTTONS_TURN_ON_URI:Landroid/net/Uri;

.field public final SINGLE_KEY_USE_ACTION_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/MiuiLightsService;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/lights/MiuiLightsService;->access$600(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "screen_buttons_state"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_STATE_URI:Landroid/net/Uri;

    const-string v0, "single_key_use_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SINGLE_KEY_USE_ACTION_URI:Landroid/net/Uri;

    const-string v0, "screen_buttons_turn_on"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_TURN_ON_URI:Landroid/net/Uri;

    const-string v0, "breathing_light_color"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    const-string v0, "call_breathing_light_color"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->CALL_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    const-string v0, "mms_breathing_light_color"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->MMS_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    const-string v0, "battery_light_turn_on"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BATTERY_LIGHT_TURN_ON_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # setter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0, v1}, Lcom/android/server/lights/MiuiLightsService;->access$502(Lcom/android/server/lights/MiuiLightsService;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mSupportButtonLight:Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$500(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_STATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1100(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$500(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SINGLE_KEY_USE_ACTION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$500(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_TURN_ON_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mSupportLedLight:Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$300(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$500(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$500(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->CALL_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$500(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->MMS_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$500(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BATTERY_LIGHT_TURN_ON_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_2
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .local v0, "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_STATE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SINGLE_KEY_USE_ACTION_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_TURN_ON_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, v1, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .end local v0    # "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .restart local v0    # "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->CALL_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->MMS_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, v1, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v2, 0x4

    aget-object v0, v1, v2

    .end local v0    # "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .restart local v0    # "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setFlashing(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BATTERY_LIGHT_TURN_ON_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, v1, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v2, 0x3

    aget-object v0, v1, v2

    .end local v0    # "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .restart local v0    # "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    goto :goto_0
.end method
