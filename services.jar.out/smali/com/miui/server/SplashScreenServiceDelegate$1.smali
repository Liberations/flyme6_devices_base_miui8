.class Lcom/miui/server/SplashScreenServiceDelegate$1;
.super Landroid/content/BroadcastReceiver;
.source "SplashScreenServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SplashScreenServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SplashScreenServiceDelegate;


# direct methods
.method constructor <init>(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    if-nez p2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "SplashScreenServiceDelegate"

    const-string v1, "boot completed, delay to bind splashscreen service"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->delayToBindServiceAfterBootCompleted()V
    invoke-static {v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$000(Lcom/miui/server/SplashScreenServiceDelegate;)V

    .line 60
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # getter for: Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$200(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # getter for: Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$100(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const/4 v1, 0x0

    # setter for: Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$102(Lcom/miui/server/SplashScreenServiceDelegate;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method
