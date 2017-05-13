.class Lmiui/telephony/DefaultSimManager$1;
.super Landroid/os/Handler;
.source "DefaultSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/DefaultSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/DefaultSimManager;


# direct methods
.method constructor <init>(Lmiui/telephony/DefaultSimManager;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 100
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 101
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-virtual {v5}, Lmiui/telephony/DefaultSimManager;->onInitDefaultSlot()V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v6

    # invokes: Lmiui/telephony/DefaultSimManager;->syncDataSubscription(Ljava/util/List;)V
    invoke-static {v5, v6}, Lmiui/telephony/DefaultSimManager;->access$000(Lmiui/telephony/DefaultSimManager;Ljava/util/List;)V

    goto :goto_0

    .line 109
    :pswitch_2
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v6

    # invokes: Lmiui/telephony/DefaultSimManager;->syncVoiceSubscription(Ljava/util/List;)V
    invoke-static {v5, v6}, Lmiui/telephony/DefaultSimManager;->access$100(Lmiui/telephony/DefaultSimManager;Ljava/util/List;)V

    goto :goto_0

    .line 113
    :pswitch_3
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 114
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 119
    .local v2, "cardIndex":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 120
    .local v1, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I
    invoke-static {v5}, Lmiui/telephony/DefaultSimManager;->access$300(Lmiui/telephony/DefaultSimManager;)[I

    move-result-object v5

    aget v3, v5, v2

    .line 121
    .local v3, "lastAppNum":I
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # invokes: Lmiui/telephony/DefaultSimManager;->updateCard(Lcom/android/internal/telephony/uicc/UiccCard;I)V
    invoke-static {v5, v1, v2}, Lmiui/telephony/DefaultSimManager;->access$400(Lmiui/telephony/DefaultSimManager;Lcom/android/internal/telephony/uicc/UiccCard;I)V

    .line 122
    if-eqz v3, :cond_3

    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I
    invoke-static {v5}, Lmiui/telephony/DefaultSimManager;->access$300(Lmiui/telephony/DefaultSimManager;)[I

    move-result-object v5

    aget v5, v5, v2

    if-nez v5, :cond_3

    .line 124
    sget-boolean v5, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v5, :cond_1

    # getter for: Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_ICC_CHANGED sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " application is not OK"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lmiui/telephony/DefaultSimManager;->access$500(Lmiui/telephony/DefaultSimManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 116
    .end local v1    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v2    # "cardIndex":I
    .end local v3    # "lastAppNum":I
    :cond_2
    sget-boolean v5, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v5, :cond_0

    # getter for: Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error: Invalid card index EVENT_ICC_CHANGED "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 126
    .restart local v1    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .restart local v2    # "cardIndex":I
    .restart local v3    # "lastAppNum":I
    :cond_3
    if-nez v3, :cond_0

    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I
    invoke-static {v5}, Lmiui/telephony/DefaultSimManager;->access$300(Lmiui/telephony/DefaultSimManager;)[I

    move-result-object v5

    aget v5, v5, v2

    if-eqz v5, :cond_0

    .line 128
    sget-boolean v5, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v5, :cond_4

    # getter for: Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_ICC_CHANGED sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " application is OK"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_4
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lmiui/telephony/DefaultSimManager;->access$500(Lmiui/telephony/DefaultSimManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # setter for: Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;
    invoke-static {v5, v9}, Lmiui/telephony/DefaultSimManager;->access$602(Lmiui/telephony/DefaultSimManager;Ljava/util/List;)Ljava/util/List;

    .line 131
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-virtual {v5}, Lmiui/telephony/DefaultSimManager;->onSubscriptionsChanged()V

    goto/16 :goto_0

    .line 135
    .end local v1    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v2    # "cardIndex":I
    .end local v3    # "lastAppNum":I
    :pswitch_4
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_7

    .line 136
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 137
    .local v4, "slotId":I
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->m3gppIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {v5}, Lmiui/telephony/DefaultSimManager;->access$700(Lmiui/telephony/DefaultSimManager;)[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    aget-object v5, v5, v4

    if-eqz v5, :cond_5

    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->m3gppIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {v5}, Lmiui/telephony/DefaultSimManager;->access$700(Lmiui/telephony/DefaultSimManager;)[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    :cond_5
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->m3gpp2IccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {v5}, Lmiui/telephony/DefaultSimManager;->access$800(Lmiui/telephony/DefaultSimManager;)[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    aget-object v5, v5, v4

    if-eqz v5, :cond_6

    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->m3gpp2IccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {v5}, Lmiui/telephony/DefaultSimManager;->access$800(Lmiui/telephony/DefaultSimManager;)[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 139
    :cond_6
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-virtual {v5, v4}, Lmiui/telephony/DefaultSimManager;->notifyImsiReady(I)V

    .line 142
    .end local v4    # "slotId":I
    :cond_7
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # invokes: Lmiui/telephony/DefaultSimManager;->needListenImsiReady()Z
    invoke-static {v5}, Lmiui/telephony/DefaultSimManager;->access$900(Lmiui/telephony/DefaultSimManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # getter for: Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lmiui/telephony/DefaultSimManager;->access$500(Lmiui/telephony/DefaultSimManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    # setter for: Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;
    invoke-static {v5, v9}, Lmiui/telephony/DefaultSimManager;->access$602(Lmiui/telephony/DefaultSimManager;Ljava/util/List;)Ljava/util/List;

    .line 145
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager$1;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-virtual {v5}, Lmiui/telephony/DefaultSimManager;->onSubscriptionsChanged()V

    goto/16 :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
