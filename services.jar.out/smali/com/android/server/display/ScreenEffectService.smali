.class public Lcom/android/server/display/ScreenEffectService;
.super Ljava/lang/Object;
.source "ScreenEffectService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startScreenEffectService()V
    .locals 3

    .prologue
    .line 13
    const-string v1, "support_screen_paper_mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    const-class v1, Lcom/android/server/SystemServiceManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    .line 15
    .local v0, "systemServiceManager":Lcom/android/server/SystemServiceManager;
    const-class v1, Lcom/android/server/display/PaperModeService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 17
    :cond_0
    return-void
.end method
