.class Lcom/qti/internal/telephony/QtiRadioCapabilityController$3;
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
.field final synthetic this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;


# direct methods
.method constructor <init>(Lcom/qti/internal/telephony/QtiRadioCapabilityController;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$3;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 852
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 855
    const-string v1, "state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 856
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$3;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " yanghuan HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set dsi 5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$000(Lcom/qti/internal/telephony/QtiRadioCapabilityController;Ljava/lang/String;)V

    .line 857
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$3;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    const/4 v2, 0x5

    # invokes: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setSARDsiValue(I)V
    invoke-static {v1, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$400(Lcom/qti/internal/telephony/QtiRadioCapabilityController;I)V

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$3;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " yanghuan HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set dsi 4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$000(Lcom/qti/internal/telephony/QtiRadioCapabilityController;Ljava/lang/String;)V

    .line 861
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$3;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    const/4 v2, 0x4

    # invokes: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setSARDsiValue(I)V
    invoke-static {v1, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$400(Lcom/qti/internal/telephony/QtiRadioCapabilityController;I)V

    goto :goto_0
.end method
