.class public Lcom/qti/internal/telephony/UiccCardProvisioner;
.super Landroid/os/Handler;
.source "UiccCardProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;
    }
.end annotation


# static fields
.field private static final ACTION_SIMLOCK_TEMP_UNLOCK_EXPIRED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_SIMLOCK_TEMP_UNLOCK_EXPIRED"

.field private static final ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

.field private static final DBG:Z = true

.field private static final EVENT_ICC_CHANGED:I = 0x1

.field private static final EVENT_MANUAL_PROVISION_DONE:I = 0x3

.field private static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x4

.field private static final EVENT_UNSOL_OEM_HOOK_RAW:I = 0x2

.field private static final EXTRA_NEW_PROVISION_STATE:Ljava/lang/String; = "newProvisionState"

.field private static final GENERIC_FAILURE:I = -0x1

.field private static final INVALID_INPUT:I = -0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UiccCardProvisioner"

.field private static final REQUEST_IN_PROGRESS:I = -0x3

.field private static final SUCCESS:I

.field private static final VDBG:Z

.field private static final mNumPhones:I

.field private static mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sManualProvLock:Ljava/lang/Object;


# instance fields
.field private mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mContext:Landroid/content/Context;

.field private mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

.field private mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

.field private mSimIccId:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 79
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qti/internal/telephony/UiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Invoking constructor, no of phones = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 137
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    new-array v1, v1, [Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    iput-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    .line 138
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    .line 139
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 140
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v3, v1, v0

    .line 142
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    new-instance v2, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    invoke-direct {v2}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;-><init>()V

    aput-object v2, v1, v0

    .line 143
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v2, v1, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    sput-object v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 146
    sget-object v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 148
    invoke-static {p1}, Lcom/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qti/internal/telephony/QtiRilInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    .line 149
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, v3}, Lcom/qti/internal/telephony/QtiRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 150
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2, v3}, Lcom/qti/internal/telephony/QtiRilInterface;->registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    return-void
.end method

.method private broadcastManualProvisionStatusChanged(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "newProvisionState"    # I

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    const-string v1, "newProvisionState"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    return-void
.end method

.method private broadcastSimLockTempUnlockExpired(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.ACTION_SIMLOCK_TEMP_UNLOCK_EXPIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    return-void
.end method

.method private canProcessRequest(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 437
    .local v0, "retVal":Z
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    const/4 v0, 0x1

    .line 442
    :goto_0
    return v0

    .line 440
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request can\'t be processed, slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " numPhones "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceModifyPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method private getCurrentProvisioningStatus(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 327
    sget-object v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v1

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v0

    monitor-exit v1

    return v0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleUnsolOemHookRaw(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 205
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 206
    :cond_0
    const-string v3, "Null data received in handleUnsolOemHookRaw"

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 223
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 210
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 212
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 213
    .local v1, "rspId":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 215
    .local v2, "slotId":I
    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isValidSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x80404

    if-ne v1, v3, :cond_3

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unsol: rspId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->queryUiccProvisionInfo(I)V

    goto :goto_0

    .line 219
    :cond_3
    const v3, 0x80405

    if-ne v1, v3, :cond_1

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unsol: rspId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sim lock temp unlock expired."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->broadcastSimLockTempUnlockExpired(I)V

    goto :goto_0
.end method

.method private isFlexMapInProgress()Z
    .locals 4

    .prologue
    .line 455
    const/4 v1, 0x0

    .line 456
    .local v1, "retVal":Z
    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    .line 458
    .local v0, "rcController":Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v1

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFlexMapInProgress: = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 463
    :cond_0
    return v1
.end method

.method private isValidSlotId(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 448
    .local v0, "retVal":Z
    if-ltz p1, :cond_0

    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    if-ge p1, v1, :cond_0

    .line 449
    const/4 v0, 0x1

    .line 451
    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 488
    const-string v0, "UiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 496
    const-string v0, "UiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 492
    const-string v0, "UiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void
.end method

.method private queryAllUiccProvisionInfo()V
    .locals 3

    .prologue
    .line 226
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " query  provision info, card state["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    .line 229
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/UiccCardProvisioner;->queryUiccProvisionInfo(I)V

    .line 226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_1
    return-void
.end method

.method private queryUiccProvisionInfo(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const/4 v6, -0x1

    .line 235
    iget-object v5, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v5}, Lcom/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v5

    if-nez v5, :cond_1

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Oem hook service is not ready yet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v5, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v5, p1

    .line 240
    .local v2, "oldStatus":Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;
    iget-object v5, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v1, v5, p1

    .line 242
    .local v1, "oldIccId":Ljava/lang/String;
    iget-object v5, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v5, p1}, Lcom/qti/internal/telephony/QtiRilInterface;->getUiccProvisionPreference(I)Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    move-result-object v4

    .line 243
    .local v4, "subStatus":Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;
    invoke-virtual {v4}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v5

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v5

    if-eq v5, v6, :cond_2

    .line 245
    sget-object v6, Lcom/qti/internal/telephony/UiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v6

    .line 246
    :try_start_0
    iget-object v5, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aput-object v4, v5, p1

    .line 247
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_2
    iget-object v5, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v5, p1}, Lcom/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "iccId":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 253
    iget-object v5, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v5, v5, p1

    if-nez v5, :cond_3

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add subInfo record, iccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v5

    invoke-virtual {v5, p1, v0}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->addSubInfoRecord(ILjava/lang/String;)V

    .line 257
    :cond_3
    iget-object v5, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v0, v5, p1

    .line 259
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " queryUiccProvisionInfo, iccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 262
    iget-object v5, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, p1

    invoke-virtual {v2, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->equals(Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 263
    iget-object v5, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v5, v5, p1

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 264
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v3

    .line 270
    .local v3, "subIds":[I
    if-eqz v3, :cond_5

    array-length v5, v3

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 272
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 276
    .end local v3    # "subIds":[I
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " broadcasting ProvisionInfo, phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    goto/16 :goto_0

    .line 247
    .end local v0    # "iccId":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private updateIccAvailability(I)V
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, -0x2

    .line 282
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isValidSlotId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid slot Index!!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 287
    .local v2, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v3, Lcom/qti/internal/telephony/UiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 288
    .local v1, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_3

    .line 289
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIccAvailability, card state["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v2, v3, p1

    .line 297
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v0

    .line 298
    .local v0, "currentState":I
    iget-object v3, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    if-ne v0, v5, :cond_4

    .line 302
    :cond_2
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->queryUiccProvisionInfo(I)V

    goto :goto_0

    .line 291
    .end local v0    # "currentState":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIccAvailability, uicc card null, ignore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    .restart local v0    # "currentState":I
    :cond_4
    iget-object v3, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v4, :cond_0

    .line 304
    sget-object v4, Lcom/qti/internal/telephony/UiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v4

    .line 305
    :try_start_0
    iget-object v3, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v3, v3, p1

    const/4 v5, -0x2

    invoke-virtual {v3, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 306
    iget-object v3, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v3, v3, p1

    const/4 v5, -0x2

    invoke-virtual {v3, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 307
    iget-object v3, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v3, p1

    .line 308
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public activateUiccCard(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " activateUiccCard: phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 364
    const-string v2, "activateUiccCard"

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x0

    .line 368
    .local v0, "activateStatus":I
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->canProcessRequest(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    const/4 v0, -0x2

    .line 392
    :goto_0
    return v0

    .line 370
    :cond_0
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Uicc card in slot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] already activated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_1
    invoke-direct {p0}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/qti/internal/telephony/UiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 373
    const/4 v1, 0x0

    .line 375
    .local v1, "retVal":Z
    iget-object v2, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v5, p1}, Lcom/qti/internal/telephony/QtiRilInterface;->setUiccProvisionPreference(II)Z

    move-result v1

    .line 377
    if-nez v1, :cond_2

    .line 378
    const/4 v0, -0x1

    .line 386
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " activation result["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 387
    sget-object v2, Lcom/qti/internal/telephony/UiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 380
    :cond_2
    sget-object v3, Lcom/qti/internal/telephony/UiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v3

    .line 381
    :try_start_0
    iget-object v2, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v2, p1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 382
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    const/4 v2, 0x3

    invoke-virtual {p0, v2, p1, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 382
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 389
    .end local v1    # "retVal":Z
    :cond_3
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public deactivateUiccCard(I)I
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " deactivateUiccCard: phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 398
    const-string v2, "deactivateUiccCard"

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "deactivateState":I
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->canProcessRequest(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    const/4 v0, -0x2

    .line 425
    :goto_0
    return v0

    .line 403
    :cond_0
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Uicc card in slot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] already in deactive state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_1
    invoke-direct {p0}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/qti/internal/telephony/UiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 406
    const/4 v1, 0x0

    .line 408
    .local v1, "retVal":Z
    iget-object v2, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v5, p1}, Lcom/qti/internal/telephony/QtiRilInterface;->setUiccProvisionPreference(II)Z

    move-result v1

    .line 410
    if-nez v1, :cond_2

    .line 411
    const/4 v0, -0x1

    .line 419
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " deactivation result["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 420
    sget-object v2, Lcom/qti/internal/telephony/UiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 413
    :cond_2
    sget-object v3, Lcom/qti/internal/telephony/UiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v3

    .line 414
    :try_start_0
    iget-object v2, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v2, p1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 415
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    const/4 v2, 0x3

    invoke-virtual {p0, v2, p1, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 415
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 422
    .end local v1    # "retVal":Z
    :cond_3
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 333
    const/4 v0, -0x1

    .line 336
    .local v0, "currentStatus":I
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    const/4 v0, 0x1

    .line 343
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v0

    goto :goto_0
.end method

.method public getUiccCardProvisioningUserPreference(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 347
    const/4 v0, -0x1

    .line 350
    .local v0, "userPref":I
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    const/4 v0, 0x1

    .line 358
    :cond_0
    :goto_0
    return v0

    .line 352
    :cond_1
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    sget-object v2, Lcom/qti/internal/telephony/UiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v2

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v0

    .line 355
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 158
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: hit default case "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 161
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 162
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->updateIccAvailability(I)V

    goto :goto_0

    .line 164
    :cond_1
    const-string v4, "Error: Invalid card index EVENT_ICC_CHANGED "

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 169
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 170
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 171
    .local v1, "isServiceReady":Z
    if-eqz v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/qti/internal/telephony/UiccCardProvisioner;->queryAllUiccProvisionInfo()V

    goto :goto_0

    .line 175
    .end local v1    # "isServiceReady":Z
    :cond_2
    const-string v4, "Error: empty result, EVENT_OEM_HOOK_SERVICE_READY"

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 181
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 182
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->handleUnsolOemHookRaw(Landroid/os/Message;)V

    goto :goto_0

    .line 184
    :cond_3
    const-string v4, "Error: empty result, EVENT_UNSOL_OEM_HOOK_RAW"

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " MANUAL_PROVISION_STATUS_CHANGED, pref["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 190
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 191
    .local v3, "slotId":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 192
    .local v2, "newProvisionState":I
    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 193
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 194
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    goto/16 :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public isAllCardProvisionInfoReceived()Z
    .locals 5

    .prologue
    .line 473
    const/4 v2, 0x1

    .line 474
    .local v2, "received":Z
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v3, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    if-ge v0, v3, :cond_1

    .line 475
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v1

    .line 476
    .local v1, "provPref":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    const/4 v3, -0x2

    if-ne v1, v3, :cond_2

    .line 479
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllCardProvisionInfoReceived, prov pref["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 480
    const/4 v2, 0x0

    .line 484
    .end local v1    # "provPref":I
    :cond_1
    return v2

    .line 474
    .restart local v1    # "provPref":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isAnyProvisionRequestInProgress()Z
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
