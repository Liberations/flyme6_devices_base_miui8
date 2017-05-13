.class final Lcom/android/internal/telephony/ServiceStateTrackerInjector$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceStateTrackerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ServiceStateTrackerInjector;->init(Lcom/android/internal/telephony/ServiceStateTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const-string v2, "phone"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 48
    .local v1, "slotId":I
    if-ne v1, v4, :cond_1

    .line 58
    .end local v1    # "slotId":I
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v1    # "slotId":I
    :cond_1
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "simState":Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "NOT_READY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    :cond_2
    # getter for: Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z
    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->access$000()[Z

    move-result-object v2

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 55
    # getter for: Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->access$100()[Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    aput-object v3, v2, v1

    goto :goto_0
.end method
