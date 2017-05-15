.class Lcom/android/server/am/MiuiBroadcastQueue;
.super Lcom/android/server/am/BroadcastQueue;
.source "MiuiBroadcastQueue.java"


# static fields
.field public static final DELADY_QUEUE_NAME:Ljava/lang/String; = "longtime"

.field public static final DELAY_TIME:J = 0xc8L

.field private static final MAX_COUNT_ONCE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MiuiBroadcastQueue"


# instance fields
.field private fEnqueueClockTime:Ljava/lang/reflect/Field;

.field private mLastProcessBroadcastTime:J

.field private mSlowQueue:Z

.field private mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZLcom/android/server/am/BaseMiuiBroadcastManager;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "timeoutPeriod"    # J
    .param p6, "allowDelayBehindServices"    # Z
    .param p7, "bm"    # Lcom/android/server/am/BaseMiuiBroadcastManager;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZ)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mLastProcessBroadcastTime:J

    iput-object p7, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mQueueName:Ljava/lang/String;

    const-string v2, "longtime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mSlowQueue:Z

    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_0

    const-string v1, "MiuiBroadcastQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-class v1, Lcom/android/server/am/BroadcastRecord;

    const-string v2, "enqueueClockTime"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MiuiBroadcastQueue;->fEnqueueClockTime:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isDelay()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mSlowQueue:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->isAllLimit()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEnqueueClockTime(Lcom/android/server/am/BroadcastRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastQueue;->fEnqueueClockTime:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastQueue;->fEnqueueClockTime:Ljava/lang/reflect/Field;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    iget-boolean v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mSlowQueue:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/BaseMiuiBroadcastManager;->updateLongTimeBroadcastRecord(Lcom/android/server/am/BroadcastRecord;Z)Ljava/util/List;

    move-result-object v1

    .local v1, "receivers":Ljava/util/List;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p0, v3, v1, p1}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .local v0, "newR":Lcom/android/server/am/BroadcastRecord;
    const-string v2, "MiuiBroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enqueueing order broadcast on slow queue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/server/am/MiuiBroadcastQueue;->setEnqueueClockTime(Lcom/android/server/am/BroadcastRecord;)V

    .end local v0    # "newR":Lcom/android/server/am/BroadcastRecord;
    .end local v1    # "receivers":Ljava/util/List;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_0
.end method

.method public enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    iget-boolean v4, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mSlowQueue:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/BaseMiuiBroadcastManager;->updateLongTimeBroadcastRecord(Lcom/android/server/am/BroadcastRecord;Z)Ljava/util/List;

    move-result-object v3

    .local v3, "receiveList":Ljava/util/List;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x5

    if-ge v0, v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_0

    mul-int/lit8 v4, v0, 0x5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .local v1, "newList":Ljava/util/List;
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, p0, v5, v1, p1}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    .local v2, "newR":Lcom/android/server/am/BroadcastRecord;
    const-string v4, "MiuiBroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enqueueing parallel broadcast on slow queue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/server/am/MiuiBroadcastQueue;->setEnqueueClockTime(Lcom/android/server/am/BroadcastRecord;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "newList":Ljava/util/List;
    .end local v2    # "newR":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    mul-int/lit8 v4, v0, 0x5

    mul-int/lit8 v5, v0, 0x5

    add-int/lit8 v5, v5, 0x5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .restart local v1    # "newList":Ljava/util/List;
    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "newList":Ljava/util/List;
    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, p0, v5, v3, p1}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    .restart local v2    # "newR":Lcom/android/server/am/BroadcastRecord;
    const-string v4, "MiuiBroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enqueueing parallel broadcast on slow queue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/server/am/MiuiBroadcastQueue;->setEnqueueClockTime(Lcom/android/server/am/BroadcastRecord;)V

    .end local v2    # "newR":Lcom/android/server/am/BroadcastRecord;
    .end local v3    # "receiveList":Ljava/util/List;
    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-super {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_2
.end method

.method processNextBroadcast(Z)V
    .locals 6
    .param p1, "fromMsg"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/MiuiBroadcastQueue;->isDelay()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mLastProcessBroadcastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    sget-boolean v2, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_1

    const-string v2, "MiuiBroadcastQueue"

    const-string v3, "process delay broadcast"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-wide v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mLastProcessBroadcastTime:J

    const/4 v2, 0x1

    invoke-super {p0, p1, v2}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(ZZ)V

    .end local v0    # "now":J
    :goto_0
    return-void

    .restart local v0    # "now":J
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mBroadcastsScheduled:Z

    invoke-virtual {p0}, Lcom/android/server/am/MiuiBroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_0

    .end local v0    # "now":J
    :cond_3
    invoke-super {p0, p1}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    goto :goto_0
.end method

.method public scheduleBroadcastsLocked()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mBroadcastsScheduled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_1

    const-string v0, "MiuiBroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schedule broadcasts ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mBroadcastsScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/am/MiuiBroadcastQueue;->isDelay()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0xc8

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mBroadcastsScheduled:Z

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method
