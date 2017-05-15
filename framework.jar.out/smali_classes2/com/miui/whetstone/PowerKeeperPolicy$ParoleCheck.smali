.class Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParoleCheck"
.end annotation


# static fields
.field private static final MSG_PAROLE_CHECK_RUNNING:I = 0x3ea

.field private static final MSG_START_PAROLE_CHECK:I = 0x3e9

.field private static final STATE_RUNNING:I = 0x4

.field private static final STATE_STARTED:I = 0x3

.field private static final STATE_STARTING:I = 0x1

.field private static final STATE_STOPPED:I = 0x0

.field private static final STATE_STOPPING:I = 0x2


# instance fields
.field private mInParole:Z

.field private mMsgWhat:I

.field private mNotifyHandler:Landroid/os/Handler;

.field private mParoleArray:[J

.field private mParoleCheckHandler:Landroid/os/Handler;

.field private mParoleIndex:I

.field private mParoleLock:Ljava/lang/Object;

.field private state:I

.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Handler;I)V
    .locals 3
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "msgWhat"    # I

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    iput-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .local v0, "paroleCheckCallback":Landroid/os/Handler$Callback;
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 8
        0x6ddd000
        0x7530
    .end array-data
.end method

.method static synthetic access$1300(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->onParoleMessageHandlerLocked(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private enterParoleAndNotifyLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private enterParoleLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    return-void
.end method

.method private exitParoleAndNotifyLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private exitParoleLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    return-void
.end method

.method private onParoleMessageHandlerLocked(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x3ea

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x1

    .local v3, "ret":Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iput v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    iput v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    aget-wide v0, v4, v6

    .local v0, "delayMillis":J
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v0    # "delayMillis":J
    :pswitch_1
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-ne v4, v7, :cond_0

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    if-nez v4, :cond_1

    const-string v4, "PowerKeeperPolicy"

    const-string v5, "Parole check array is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->enterParoleAndNotifyLocked()V

    :goto_1
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    array-length v2, v4

    .local v2, "length":I
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v2, :cond_3

    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    :goto_2
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    iget v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    aget-wide v0, v4, v5

    .restart local v0    # "delayMillis":J
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v0    # "delayMillis":J
    .end local v2    # "length":I
    :cond_2
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleAndNotifyLocked()V

    goto :goto_1

    .restart local v2    # "length":I
    :cond_3
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isInParoleState()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isWorking()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setParoleCheckParam([J)V
    .locals 4
    .param p1, "array"    # [J

    .prologue
    const/4 v3, 0x4

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .local v0, "initState":I
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleAndNotifyLocked()V

    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanAllLocked()V
    invoke-static {v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1200(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_5

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    :cond_3
    :goto_0
    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V

    :cond_4
    monitor-exit v2

    return-void

    :cond_5
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    goto :goto_0

    .end local v0    # "initState":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startParoleCheck()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleLocked()V

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopParoleCheck()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleLocked()V

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
