.class Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;
.super Landroid/telephony/PhoneStateListener;
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
    .line 810
    iput-object p1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 814
    packed-switch p1, :pswitch_data_0

    .line 843
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 816
    :pswitch_1
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    const-string v2, " yanghuan CALL_STATE_IDLE set dsi 5"

    # invokes: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$000(Lcom/qti/internal/telephony/QtiRadioCapabilityController;Ljava/lang/String;)V

    .line 817
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    # getter for: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->flag:Z
    invoke-static {v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$100(Lcom/qti/internal/telephony/QtiRadioCapabilityController;)Z

    move-result v1

    if-ne v1, v5, :cond_1

    .line 819
    :try_start_0
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    # getter for: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$300(Lcom/qti/internal/telephony/QtiRadioCapabilityController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    # getter for: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->headsetPlugReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$200(Lcom/qti/internal/telephony/QtiRadioCapabilityController;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    :goto_1
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    # setter for: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->flag:Z
    invoke-static {v1, v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$102(Lcom/qti/internal/telephony/QtiRadioCapabilityController;Z)Z

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    # invokes: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setSARDsiValue(I)V
    invoke-static {v1, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$400(Lcom/qti/internal/telephony/QtiRadioCapabilityController;I)V

    goto :goto_0

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    const-string v2, " yanghuan unregisterReceiver fail "

    # invokes: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$000(Lcom/qti/internal/telephony/QtiRadioCapabilityController;Ljava/lang/String;)V

    .line 822
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    # setter for: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->flag:Z
    invoke-static {v1, v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$102(Lcom/qti/internal/telephony/QtiRadioCapabilityController;Z)Z

    .line 823
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    # invokes: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setSARDsiValue(I)V
    invoke-static {v1, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$400(Lcom/qti/internal/telephony/QtiRadioCapabilityController;I)V

    goto :goto_1

    .line 830
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :pswitch_2
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    const-string v2, " yanghuan CALL_STATE_OFFHOOK"

    # invokes: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$000(Lcom/qti/internal/telephony/QtiRadioCapabilityController;Ljava/lang/String;)V

    .line 831
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    # getter for: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->audioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$500(Lcom/qti/internal/telephony/QtiRadioCapabilityController;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    # getter for: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->audioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$500(Lcom/qti/internal/telephony/QtiRadioCapabilityController;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 832
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    const-string v2, " yanghuan no headset set dsi 5"

    # invokes: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$000(Lcom/qti/internal/telephony/QtiRadioCapabilityController;Ljava/lang/String;)V

    .line 833
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    # invokes: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setSARDsiValue(I)V
    invoke-static {v1, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$400(Lcom/qti/internal/telephony/QtiRadioCapabilityController;I)V

    .line 835
    :cond_2
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    # getter for: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->flag:Z
    invoke-static {v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$100(Lcom/qti/internal/telephony/QtiRadioCapabilityController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 836
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    # getter for: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$300(Lcom/qti/internal/telephony/QtiRadioCapabilityController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    # getter for: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->headsetPlugReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$200(Lcom/qti/internal/telephony/QtiRadioCapabilityController;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    # getter for: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->intentFilter:Landroid/content/IntentFilter;
    invoke-static {v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$600(Lcom/qti/internal/telephony/QtiRadioCapabilityController;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 837
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$2;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    # setter for: Lcom/qti/internal/telephony/QtiRadioCapabilityController;->flag:Z
    invoke-static {v1, v5}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->access$102(Lcom/qti/internal/telephony/QtiRadioCapabilityController;Z)Z

    goto/16 :goto_0

    .line 814
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
