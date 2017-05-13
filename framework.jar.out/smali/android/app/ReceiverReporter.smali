.class public Landroid/app/ReceiverReporter;
.super Ljava/lang/Object;
.source "ReceiverReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ReceiverReporter$ReceiverHandler;,
        Landroid/app/ReceiverReporter$ReceiverObj;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final IS_STABLE_VERSION:Z

.field private static final MAX_QUANTITY:I = 0x1e

.field private static RE_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/mqsas/sdk/event/BroadcastEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MIUI-ReceiverReporter"

.field public static mDispatchThreshold:J

.field private static mHandleThreshold:J

.field private static mIndex:I

.field private static final mObject:Ljava/lang/Object;

.field private static mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

.field private static mReThread:Landroid/os/HandlerThread;

.field private static mReceiverMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ReceiverReporter$ReceiverObj;",
            ">;"
        }
    .end annotation
.end field

.field private static sPackageName:Ljava/lang/String;

.field private static sProcessName:Ljava/lang/String;

.field private static sSystemBootCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    .line 25
    sput-object v0, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    .line 26
    sput-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    .line 27
    sput-object v0, Landroid/app/ReceiverReporter;->mReThread:Landroid/os/HandlerThread;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ReceiverReporter;->mObject:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    .line 33
    const/4 v0, 0x0

    sput v0, Landroid/app/ReceiverReporter;->mIndex:I

    .line 34
    const-string/jumbo v0, "persist.receiver.dispatch"

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/app/ReceiverReporter;->mDispatchThreshold:J

    .line 35
    const-string/jumbo v0, "persist.receiver.handle"

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/app/ReceiverReporter;->mHandleThreshold:J

    .line 38
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Landroid/app/ReceiverReporter;->IS_STABLE_VERSION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Landroid/app/ReceiverReporter;->isSystemBootCompleted()Z

    move-result v0

    return v0
.end method

.method private static currentPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    sget-object v1, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string v1, "android"

    sput-object v1, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    .line 117
    :cond_0
    :goto_0
    sget-object v1, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    return-object v1

    .line 114
    :cond_1
    sput-object v0, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static currentProcessName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    sget-object v1, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "processName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string/jumbo v1, "system_server"

    sput-object v1, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    .line 105
    :cond_0
    :goto_0
    sget-object v1, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    return-object v1

    .line 102
    :cond_1
    sput-object v0, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    goto :goto_0
.end method

.method static getReceiverHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 121
    sget-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    if-nez v0, :cond_1

    .line 122
    sget-object v1, Landroid/app/ReceiverReporter;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "receiver-thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/app/ReceiverReporter;->mReThread:Landroid/os/HandlerThread;

    .line 125
    sget-object v0, Landroid/app/ReceiverReporter;->mReThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v0, Landroid/app/ReceiverReporter$ReceiverHandler;

    sget-object v2, Landroid/app/ReceiverReporter;->mReThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ReceiverReporter$ReceiverHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    .line 128
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_1
    sget-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static isSystemBootCompleted()Z
    .locals 2

    .prologue
    .line 134
    sget-boolean v0, Landroid/app/ReceiverReporter;->sSystemBootCompleted:Z

    if-nez v0, :cond_0

    .line 135
    const-string v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/app/ReceiverReporter;->sSystemBootCompleted:Z

    .line 137
    :cond_0
    sget-boolean v0, Landroid/app/ReceiverReporter;->sSystemBootCompleted:Z

    return v0
.end method

.method static onReceiverFinished(Landroid/content/Intent;JJJLjava/lang/String;Z)V
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "enTime"    # J
    .param p3, "disTime"    # J
    .param p5, "finTime"    # J
    .param p7, "broadcastReceiver"    # Ljava/lang/String;
    .param p8, "isQuWorked"    # Z

    .prologue
    .line 143
    sget-boolean v8, Landroid/app/ReceiverReporter;->IS_STABLE_VERSION:Z

    if-eqz v8, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "action":Ljava/lang/String;
    if-nez v2, :cond_2

    const-string/jumbo v2, "null"

    .line 146
    :cond_2
    invoke-static {}, Landroid/app/ReceiverReporter;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "mPackageName":Ljava/lang/String;
    sub-long v8, p3, p1

    sget-wide v10, Landroid/app/ReceiverReporter;->mDispatchThreshold:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    sub-long v8, p5, p3

    sget-wide v10, Landroid/app/ReceiverReporter;->mHandleThreshold:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 148
    :cond_3
    new-instance v6, Lmiui/mqsas/sdk/event/BroadcastEvent;

    invoke-direct {v6}, Lmiui/mqsas/sdk/event/BroadcastEvent;-><init>()V

    .line 149
    .local v6, "receiver":Lmiui/mqsas/sdk/event/BroadcastEvent;
    const/16 v8, 0x41

    invoke-virtual {v6, v8}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setType(I)V

    .line 150
    invoke-virtual {v6, v2}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setAction(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v6, p1, p2}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setEnTime(J)V

    .line 152
    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setDisTime(J)V

    .line 153
    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setFinTime(J)V

    .line 154
    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setBrReceiver(Ljava/lang/String;)V

    .line 155
    move/from16 v0, p8

    invoke-virtual {v6, v0}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setQuWorked(Z)V

    .line 156
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v6, v8}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPid(I)V

    .line 157
    invoke-static {}, Landroid/app/ReceiverReporter;->currentProcessName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setProcessName(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v6, v4}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPackageName(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setTimeStamp(J)V

    .line 160
    const-string v8, "android"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v6, v8}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setSystem(Z)V

    .line 161
    sget v8, Landroid/app/ReceiverReporter;->mIndex:I

    if-ltz v8, :cond_4

    sget v8, Landroid/app/ReceiverReporter;->mIndex:I

    const/16 v9, 0x1e

    if-le v8, v9, :cond_5

    :cond_4
    const/4 v8, 0x0

    :goto_1
    sput v8, Landroid/app/ReceiverReporter;->mIndex:I

    .line 162
    new-instance v7, Landroid/app/ReceiverReporter$ReceiverObj;

    move-object/from16 v0, p7

    invoke-direct {v7, v2, v4, v0}, Landroid/app/ReceiverReporter$ReceiverObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .local v7, "receiverObj":Landroid/app/ReceiverReporter$ReceiverObj;
    sget v8, Landroid/app/ReceiverReporter;->mIndex:I

    if-eqz v8, :cond_6

    sget v8, Landroid/app/ReceiverReporter;->mIndex:I

    const/16 v9, 0x1e

    if-gt v8, v9, :cond_6

    sget-object v8, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 164
    sget-object v8, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 165
    .local v3, "index":I
    sget-object v8, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 161
    .end local v3    # "index":I
    .end local v7    # "receiverObj":Landroid/app/ReceiverReporter$ReceiverObj;
    :cond_5
    sget v8, Landroid/app/ReceiverReporter;->mIndex:I

    goto :goto_1

    .line 167
    .restart local v7    # "receiverObj":Landroid/app/ReceiverReporter$ReceiverObj;
    :cond_6
    sget v8, Landroid/app/ReceiverReporter;->mIndex:I

    const/16 v9, 0x1e

    if-lt v8, v9, :cond_7

    .line 168
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 169
    .local v5, "message":Landroid/os/Message;
    sget-object v8, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    const/4 v8, 0x0

    iput v8, v5, Landroid/os/Message;->what:I

    .line 170
    new-instance v9, Landroid/content/pm/ParceledListSlice;

    sget-object v8, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    iput-object v9, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    invoke-static {}, Landroid/app/ReceiverReporter;->getReceiverHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    sget-object v8, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 173
    sget-object v8, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 174
    const/4 v8, 0x0

    sput v8, Landroid/app/ReceiverReporter;->mIndex:I

    .line 176
    .end local v5    # "message":Landroid/os/Message;
    :cond_7
    sget v8, Landroid/app/ReceiverReporter;->mIndex:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Landroid/app/ReceiverReporter;->mIndex:I

    .line 177
    sget-object v8, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v8, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
