.class public Landroid/os/BaseLooper;
.super Ljava/lang/Object;
.source "BaseLooper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BaseLooper$MessageMonitorInfo;
    }
.end annotation


# static fields
.field private static final MAX_MESSAGE_SUMMARY_HISTORY:I = 0x32

.field protected static final STATE_DISPATCH:I = 0x1

.field protected static final STATE_ENQUEUE:I = 0x0

.field protected static final STATE_FINISH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BaseLooper"

.field private static final sCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/BaseLooper;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sCallbacksLock:Ljava/lang/Object;


# instance fields
.field private mEnableMonitor:Z

.field private final mMessageHistory:[Ljava/lang/String;

.field private final mMsgLock:Ljava/lang/Object;

.field private mRunningMessage:Landroid/os/Message;

.field private final mSummaryHistoryDispatchTime:[J

.field private final mSummaryHistoryEnqueueTime:[J

.field private final mSummaryHistoryFinishTime:[J

.field private mSummaryHistoryNext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/BaseLooper;->sCallbacksLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BaseLooper;->mMessageHistory:[Ljava/lang/String;

    .line 31
    new-array v0, v1, [J

    iput-object v0, p0, Landroid/os/BaseLooper;->mSummaryHistoryEnqueueTime:[J

    .line 32
    new-array v0, v1, [J

    iput-object v0, p0, Landroid/os/BaseLooper;->mSummaryHistoryDispatchTime:[J

    .line 33
    new-array v0, v1, [J

    iput-object v0, p0, Landroid/os/BaseLooper;->mSummaryHistoryFinishTime:[J

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/BaseLooper;->mMsgLock:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BaseLooper;->mSummaryHistoryNext:I

    .line 208
    return-void
.end method

.method private addMessageToHistoryIfNeed(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "monitorInfo"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .prologue
    .line 76
    invoke-static {p2}, Landroid/os/AnrMonitor;->isLongTimeMsg(Landroid/os/BaseLooper$MessageMonitorInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v2, p0, Landroid/os/BaseLooper;->mMsgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 80
    :try_start_0
    invoke-virtual {p2}, Landroid/os/BaseLooper$MessageMonitorInfo;->getMonitorMessage()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "info":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 88
    .end local v0    # "info":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 82
    .restart local v0    # "info":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/os/BaseLooper;->mMessageHistory:[Ljava/lang/String;

    iget v3, p0, Landroid/os/BaseLooper;->mSummaryHistoryNext:I

    aput-object v0, v1, v3

    .line 83
    iget-object v1, p0, Landroid/os/BaseLooper;->mSummaryHistoryEnqueueTime:[J

    iget v3, p0, Landroid/os/BaseLooper;->mSummaryHistoryNext:I

    iget-wide v4, p2, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    aput-wide v4, v1, v3

    .line 84
    iget-object v1, p0, Landroid/os/BaseLooper;->mSummaryHistoryDispatchTime:[J

    iget v3, p0, Landroid/os/BaseLooper;->mSummaryHistoryNext:I

    iget-wide v4, p2, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    aput-wide v4, v1, v3

    .line 85
    iget-object v1, p0, Landroid/os/BaseLooper;->mSummaryHistoryFinishTime:[J

    iget v3, p0, Landroid/os/BaseLooper;->mSummaryHistoryNext:I

    iget-wide v4, p2, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    aput-wide v4, v1, v3

    .line 86
    iget v1, p0, Landroid/os/BaseLooper;->mSummaryHistoryNext:I

    const/4 v3, 0x1

    const/16 v4, 0x32

    invoke-direct {p0, v1, v3, v4}, Landroid/os/BaseLooper;->ringAdvance(III)I

    move-result v1

    iput v1, p0, Landroid/os/BaseLooper;->mSummaryHistoryNext:I

    .line 88
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 7
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "dumpAll"    # Z

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/os/BaseLooper;->isMonitorLooper()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v3

    if-nez v3, :cond_2

    .line 170
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p0}, Landroid/os/BaseLooper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v3, v4, p2}, Landroid/os/BaseLooper;->dumpMessageQueue(Landroid/os/MessageQueue;Landroid/util/Printer;Ljava/lang/String;)V

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    sget-object v4, Landroid/os/BaseLooper;->sCallbacksLock:Ljava/lang/Object;

    monitor-enter v4

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    sget-object v3, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 174
    sget-object v3, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BaseLooper;

    .line 175
    .local v1, "looper":Landroid/os/BaseLooper;
    if-eqz v1, :cond_3

    .line 176
    invoke-virtual {v1, p1, p3, p4}, Landroid/os/BaseLooper;->dumpLtMessageHistory(Ljava/io/PrintWriter;J)V

    .line 177
    if-eqz p5, :cond_3

    .line 178
    invoke-virtual {p0}, Landroid/os/BaseLooper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v3, v5, p2}, Landroid/os/BaseLooper;->dumpMessageQueue(Landroid/os/MessageQueue;Landroid/util/Printer;Ljava/lang/String;)V

    .line 173
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    .end local v1    # "looper":Landroid/os/BaseLooper;
    :cond_4
    monitor-exit v4

    goto :goto_0

    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getMessageString(Landroid/os/Message;)Ljava/lang/String;
    .locals 5
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 340
    const-string v1, ""

    .line 342
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Message;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 346
    :goto_0
    return-object v1

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BaseLooper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMessageString failed ! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ringAdvance(III)I
    .locals 0
    .param p1, "x"    # I
    .param p2, "increment"    # I
    .param p3, "ringSize"    # I

    .prologue
    .line 92
    add-int/2addr p1, p2

    .line 93
    if-gez p1, :cond_1

    add-int/lit8 p1, p3, -0x1

    .line 95
    .end local p1    # "x":I
    :cond_0
    :goto_0
    return p1

    .line 94
    .restart local p1    # "x":I
    :cond_1
    if-lt p1, p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method private updateCallbackIfNeed(Z)V
    .locals 6
    .param p1, "enableMonitor"    # Z

    .prologue
    const/4 v5, -0x1

    .line 188
    sget-object v4, Landroid/os/BaseLooper;->sCallbacksLock:Ljava/lang/Object;

    monitor-enter v4

    .line 189
    const/4 v0, -0x1

    .line 190
    .local v0, "findIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    sget-object v3, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 191
    sget-object v3, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_2

    .line 192
    move v0, v1

    .line 196
    :cond_0
    if-eqz p1, :cond_3

    if-ne v0, v5, :cond_3

    .line 197
    sget-object v3, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_1
    :goto_1
    monitor-exit v4

    .line 202
    return-void

    .line 190
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_3
    if-nez p1, :cond_1

    if-eq v0, v5, :cond_1

    .line 199
    sget-object v3, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 201
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public dumpAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 150
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseLooper;->dumpAll(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpAll(Ljava/lang/String;J)Ljava/lang/String;
    .locals 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    .line 154
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 155
    .local v8, "start":J
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 156
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 157
    .local v2, "writer":Ljava/io/PrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " version Code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/AnrMonitor;->currentVersionCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " version Name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/AnrMonitor;->currentVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cur loop is : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Landroid/os/BaseLooper;->dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    .line 163
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 164
    const-string v1, "BaseLooper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump anr message took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dumpHistoryMessage(Landroid/util/Printer;J)V
    .locals 8
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "duration"    # J

    .prologue
    .line 142
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 143
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 144
    .local v2, "writer":Ljava/io/PrintWriter;
    const-string/jumbo v3, "history message"

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Landroid/os/BaseLooper;->dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    .line 145
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 146
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final dumpLtMessageHistory(Ljava/io/PrintWriter;J)V
    .locals 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "duration"    # J

    .prologue
    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/BaseLooper;->mMsgLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 100
    :try_start_0
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string/jumbo v15, "yyyy-MM-dd HH:mm:ss.SSSZ"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    .local v14, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 102
    .local v2, "currentTime":J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Dump time : "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v17, Ljava/util/Date;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "---------- History of long time messages on "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "----------"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    move-object/from16 v0, p0

    iget v11, v0, Landroid/os/BaseLooper;->mSummaryHistoryNext:I

    .line 105
    .local v11, "lastIndex":I
    move v13, v11

    .line 106
    .local v13, "ringIndex":I
    const-string v12, ""

    .line 107
    .local v12, "msg":Ljava/lang/String;
    const/4 v10, -0x1

    .line 109
    .local v10, "i":I
    :cond_0
    const/4 v15, -0x1

    const/16 v17, 0x32

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v15, v1}, Landroid/os/BaseLooper;->ringAdvance(III)I

    move-result v13

    .line 110
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/BaseLooper;->mMessageHistory:[Ljava/lang/String;

    aget-object v12, v15, v13

    .line 111
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/BaseLooper;->mSummaryHistoryFinishTime:[J

    aget-wide v18, v15, v13

    sub-long v18, v2, v18

    cmp-long v15, v18, p2

    if-lez v15, :cond_2

    .line 113
    :cond_1
    const-string v15, "-------------------------- END --------------------------"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    monitor-exit v16

    .line 132
    :goto_0
    return-void

    .line 116
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 117
    const-string v15, "#"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/BaseLooper;->mSummaryHistoryEnqueueTime:[J

    aget-wide v6, v15, v13

    .line 120
    .local v6, "enqueueTime":J
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/BaseLooper;->mSummaryHistoryDispatchTime:[J

    aget-wide v4, v15, v13

    .line 121
    .local v4, "dispatchTime":J
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/BaseLooper;->mSummaryHistoryFinishTime:[J

    aget-wide v8, v15, v13

    .line 122
    .local v8, "finishTime":J
    const-string v15, "    Total: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v8, v9, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 123
    const-string v15, " Waiting: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v4, v5, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 124
    const-string v15, " Processing: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v8, v9, v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 125
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 126
    const-string v15, "    enq="

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    const-string v15, " disp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    const-string v15, " fin="

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    if-ne v13, v11, :cond_0

    .line 130
    const-string v15, "-------------------------- END --------------------------"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    monitor-exit v16

    goto/16 :goto_0

    .end local v2    # "currentTime":J
    .end local v4    # "dispatchTime":J
    .end local v6    # "enqueueTime":J
    .end local v8    # "finishTime":J
    .end local v10    # "i":I
    .end local v11    # "lastIndex":I
    .end local v12    # "msg":Ljava/lang/String;
    .end local v13    # "ringIndex":I
    .end local v14    # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15
.end method

.method public dumpMessageQueue(Landroid/os/MessageQueue;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "queue"    # Landroid/os/MessageQueue;
    .param p2, "pw"    # Landroid/util/Printer;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------- Dump MessageQueue on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Landroid/os/BaseLooper;->mRunningMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Running message is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/BaseLooper;->mRunningMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 137
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 138
    :cond_1
    const-string v0, "-------------------------- END --------------------------"

    invoke-interface {p2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public enableMonitor(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Landroid/os/BaseLooper;->mEnableMonitor:Z

    .line 45
    invoke-direct {p0, p1}, Landroid/os/BaseLooper;->updateCallbackIfNeed(Z)V

    .line 46
    return-void
.end method

.method public getQueue()Landroid/os/MessageQueue;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMonitorLooper()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Landroid/os/BaseLooper;->mEnableMonitor:Z

    return v0
.end method

.method protected final updateMessageByState(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;I)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "monitorInfo"    # Landroid/os/BaseLooper$MessageMonitorInfo;
    .param p3, "state"    # I

    .prologue
    .line 49
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    invoke-virtual {p2, p3}, Landroid/os/BaseLooper$MessageMonitorInfo;->updateMessageTimeByState(I)V

    .line 55
    invoke-virtual {p2, p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->setMonitorMessage(Landroid/os/Message;)V

    .line 56
    iput-object p1, p0, Landroid/os/BaseLooper;->mRunningMessage:Landroid/os/Message;

    .line 57
    iget-boolean v0, p0, Landroid/os/BaseLooper;->mEnableMonitor:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p1, p2}, Landroid/os/AnrMonitor;->startMonitor(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V

    goto :goto_0

    .line 62
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseLooper;->mRunningMessage:Landroid/os/Message;

    .line 63
    invoke-virtual {p2, p3}, Landroid/os/BaseLooper$MessageMonitorInfo;->updateMessageTimeByState(I)V

    .line 64
    iget-boolean v0, p0, Landroid/os/BaseLooper;->mEnableMonitor:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p1, p2}, Landroid/os/AnrMonitor;->finishMonitor(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V

    .line 66
    invoke-static {p1, p2}, Landroid/os/AnrMonitor;->checkMsgTime(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/os/BaseLooper;->addMessageToHistoryIfNeed(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
