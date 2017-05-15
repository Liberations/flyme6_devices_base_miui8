.class public Lmiui/telephony/SubscriptionManagerEx;
.super Lmiui/telephony/SubscriptionManager;
.source "SubscriptionManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;,
        Lmiui/telephony/SubscriptionManagerEx$Holder;,
        Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;
    }
.end annotation


# static fields
.field public static final ACTION_DEFAULT_DATA_SLOT_CHANGED:Ljava/lang/String; = "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

.field public static final ACTION_DEFAULT_DATA_SLOT_READY:Ljava/lang/String; = "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_READY"

.field private static final ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

.field static final DEFAULT_DATA_SLOT_PROPERTY:Ljava/lang/String; = "persist.radio.default.data"

.field static final DEFAULT_VOICE_SLOT_PROPERTY:Ljava/lang/String; = "persist.radio.default.voice"

.field public static final KEY_OLD_DATA_SLOT:Ljava/lang/String; = "old_data_slot"

.field public static final KEY_SIM_INSERT_STATE_ARRAY:Ljava/lang/String; = "sim_insert_state_array"

.field public static final SIM_CHANGED:I = 0x4

.field public static final SIM_NEW_CARD:I = 0x2

.field public static final SIM_NO_CARD:I = 0x1

.field public static final SIM_NO_CHANGE:I = 0x0

.field public static final SIM_REMOVED:I = 0x3


# instance fields
.field private mReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManager;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lmiui/telephony/SubscriptionManagerEx$1;

    invoke-direct {v0, p0}, Lmiui/telephony/SubscriptionManagerEx$1;-><init>(Lmiui/telephony/SubscriptionManagerEx;)V

    iput-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/SubscriptionManagerEx$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/telephony/SubscriptionManagerEx$1;

    .prologue
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lmiui/telephony/SubscriptionManagerEx;Z)V
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/SubscriptionManagerEx;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lmiui/telephony/SubscriptionManagerEx;->initSubscriptionListener(Z)V

    return-void
.end method

.method public static getDefault()Lmiui/telephony/SubscriptionManagerEx;
    .locals 1

    .prologue
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->INSTANCE:Lmiui/telephony/SubscriptionManagerEx;

    return-object v0
.end method

.method private getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;
    .locals 1

    .prologue
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    return-object v0
.end method

.method private initSubscriptionListener(Z)V
    .locals 3
    .param p1, "checkLooper"    # Z

    .prologue
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const-string v0, "SubMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSubscriptionListener failed for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " threadName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Lmiui/telephony/SubscriptionManagerEx$2;

    invoke-direct {v0, p0}, Lmiui/telephony/SubscriptionManagerEx$2;-><init>(Lmiui/telephony/SubscriptionManagerEx;)V

    iput-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    goto :goto_0
.end method

.method private declared-synchronized registerBroadcastReceiver()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmiui/telephony/SubscriptionManagerEx;->mReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/telephony/SubscriptionManagerEx;->initSubscriptionListener(Z)V

    iget-object v1, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lmiui/telephony/SubscriptionManagerEx$3;

    invoke-direct {v2, p0}, Lmiui/telephony/SubscriptionManagerEx$3;-><init>(Lmiui/telephony/SubscriptionManagerEx;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-string v1, "qcom"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method protected getAllSubscriptionInfoListInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;->registerBroadcastReceiver()V

    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDataSlotId()I
    .locals 3

    .prologue
    const-string v1, "persist.radio.default.data"

    sget v2, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "ret":I
    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotIdInternal()I

    move-result v0

    .end local v0    # "ret":I
    :cond_0
    return v0
.end method

.method public getDefaultDataSubscriptionId()I
    .locals 2

    .prologue
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .local v0, "subId":I
    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotIdInternal()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getDefaultDataSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultSlotIdInternal()I
    .locals 1

    .prologue
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    invoke-interface {v0}, Lmiui/telephony/IMiuiTelephony;->getSystemDefaultSlotId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultSmsSubscriptionId()I
    .locals 2

    .prologue
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    .local v0, "subId":I
    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    .end local v0    # "subId":I
    :cond_0
    return v0
.end method

.method public getDefaultSmsSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVoiceSlotId()I
    .locals 2

    .prologue
    const-string v0, "persist.radio.default.voice"

    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultVoiceSubscriptionId()I
    .locals 2

    .prologue
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    .local v0, "subId":I
    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    .end local v0    # "subId":I
    :cond_0
    return v0
.end method

.method public getDefaultVoiceSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getSlotId(I)I
    .locals 3
    .param p1, "subId"    # I

    .prologue
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .local v1, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    .end local v1    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :goto_0
    return v2

    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    goto :goto_0
.end method

.method public getSubscriptionIdForSlot(I)I
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    invoke-static {p1}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    :goto_0
    return v3

    :cond_0
    sget v3, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p1, v3, :cond_1

    sget v3, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SUBSCRIPTION_ID:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .local v2, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    if-ne v3, p1, :cond_2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    goto :goto_0

    .end local v2    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_3
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .local v1, "subIds":[I
    if-eqz v1, :cond_4

    array-length v3, v1

    if-lez v3, :cond_4

    const/4 v3, 0x0

    aget v3, v1, v3

    goto :goto_0

    :cond_4
    sget v3, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    goto :goto_0
.end method

.method protected getSubscriptionInfoListInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;->registerBroadcastReceiver()V

    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultDataSlotId(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    invoke-static {p1}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    sget-object v2, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lmiui/telephony/IMiuiTelephony;->setDefaultDataSlotId(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SubMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set default data slot id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDefaultSmsSubscriptionId(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    invoke-static {p1}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, p1

    .local v0, "settingSubId":I
    :goto_0
    sget v1, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSmsSubscriptionId()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_0
    :goto_1
    return-void

    .end local v0    # "settingSubId":I
    :cond_1
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    goto :goto_0

    .restart local v0    # "settingSubId":I
    :cond_2
    sget-object v1, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    goto :goto_1
.end method

.method public setDefaultVoiceSlotId(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    sget v1, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v2

    invoke-static {p1}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p1

    :goto_1
    sget-object v3, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lmiui/telephony/IMiuiTelephony;->setDefaultVoiceSlotId(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SubMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set default voice slot id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setDisplayNameForSlot(Ljava/lang/String;I)I
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public setDisplayNameForSubscription(Ljava/lang/String;I)I
    .locals 4
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSlot(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    move-result v0

    goto :goto_0
.end method

.method public setDisplayNumberForSlot(Ljava/lang/String;I)I
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public setDisplayNumberForSubscription(Ljava/lang/String;I)I
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNumberForSlot(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method
