.class Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AutoDisableScreenButtonsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/AutoDisableScreenButtonsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableButtonsSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/AutoDisableScreenButtonsManager;


# direct methods
.method public constructor <init>(Lmiui/util/AutoDisableScreenButtonsManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 284
    iput-object p1, p0, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    .line 285
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 286
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 304
    iget-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # getter for: Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/util/AutoDisableScreenButtonsManager;->access$300(Lmiui/util/AutoDisableScreenButtonsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 305
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "screen_buttons_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 307
    return-void
.end method

.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 290
    iget-object v2, p0, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # getter for: Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmiui/util/AutoDisableScreenButtonsManager;->access$300(Lmiui/util/AutoDisableScreenButtonsManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 291
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "screen_buttons_state"

    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # getter for: Lmiui/util/AutoDisableScreenButtonsManager;->mCurUserId:I
    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->access$1000(Lmiui/util/AutoDisableScreenButtonsManager;)I

    move-result v3

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 293
    .local v0, "btnState":I
    packed-switch v0, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 295
    :pswitch_0
    iget-object v2, p0, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # setter for: Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z
    invoke-static {v2, v4}, Lmiui/util/AutoDisableScreenButtonsManager;->access$1102(Lmiui/util/AutoDisableScreenButtonsManager;Z)Z

    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v2, p0, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    const/4 v3, 0x1

    # setter for: Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z
    invoke-static {v2, v3}, Lmiui/util/AutoDisableScreenButtonsManager;->access$1102(Lmiui/util/AutoDisableScreenButtonsManager;Z)Z

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
