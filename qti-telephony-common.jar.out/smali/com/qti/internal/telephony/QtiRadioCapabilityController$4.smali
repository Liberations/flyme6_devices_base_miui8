.class Lcom/qti/internal/telephony/QtiRadioCapabilityController$4;
.super Landroid/content/BroadcastReceiver;
.source "QtiRadioCapabilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/internal/telephony/QtiRadioCapabilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field headsetplug:Z

.field final synthetic this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;


# direct methods
.method constructor <init>(Lcom/qti/internal/telephony/QtiRadioCapabilityController;)V
    .locals 1

    .prologue
    .line 869
    iput-object p1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$4;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$4;->headsetplug:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 874
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$4;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    const-string v2, " yanghuan ACTION_BOOT_COMPLETED  set dsi 5"

    # invokes: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$000(Lcom/qti/internal/telephony/QtiRadioCapabilityController;Ljava/lang/String;)V

    .line 877
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$4;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    const/4 v2, 0x5

    # invokes: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setSARDsiValue(I)V
    invoke-static {v1, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$400(Lcom/qti/internal/telephony/QtiRadioCapabilityController;I)V

    .line 879
    :cond_0
    return-void
.end method
