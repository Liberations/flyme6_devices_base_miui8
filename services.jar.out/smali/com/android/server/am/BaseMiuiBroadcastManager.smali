.class public abstract Lcom/android/server/am/BaseMiuiBroadcastManager;
.super Ljava/lang/Object;
.source "BaseMiuiBroadcastManager.java"


# static fields
.field public static final DEBUG_BROADCAST:Z

.field private static final DEBUG_BROADCAST_BACKGROUND:Z

.field static final ENABLE_EXTRA_QUEUES:Z

.field static final EXTRA_QUEUE_SIZE:I

.field private static final FLAG_RECEIVER_LONGTIME:I = 0x2

.field private static final FLAG_RECEIVER_SYSTEM_APP:I = 0x1

.field private static final QUEUE_CONTROL_FLAGS:I = 0x3

.field private static final TAG_BROADCAST:Ljava/lang/String; = "BaseMiuiBroadcastManager"

.field private static final sLongTimeAction:[Ljava/lang/String;


# instance fields
.field private mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field private mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field private mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "debug.broadcast.log"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST_BACKGROUND:Z

    const-string v0, "persist.sys.m_b_enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    sput v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->EXTRA_QUEUE_SIZE:I

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v4, v0, v1

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v0, v1

    const-string v1, "android.net.wifi.STATE_CHANGE"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.xiaomi.push.channel_closed"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.miui.core.intent.ACTION_DUMP_CACHED_LOG"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->sLongTimeAction:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addReceiverToListByFlag(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "nonSystemReceivers"    # Ljava/util/List;
    .param p2, "systemReceivers"    # Ljava/util/List;
    .param p3, "receiver"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to nonSystemReceivers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_2

    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to systemReceivers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private broadcastQueueByFlag(IZ)Lcom/android/server/am/BroadcastQueue;
    .locals 4
    .param p1, "flags"    # I
    .param p2, "noDelay"    # Z

    .prologue
    const/high16 v1, 0x10000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .local v0, "isFg":Z
    :goto_0
    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST_BACKGROUND:Z

    if-eqz v1, :cond_0

    const-string v2, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast  on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v1, "foreground"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " queue,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " flags : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v1, :cond_7

    if-nez p2, :cond_3

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    :goto_2
    return-object v1

    .end local v0    # "isFg":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "isFg":Z
    :cond_2
    const-string v1, "background"

    goto :goto_1

    :cond_3
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_2
.end method

.method private broadcastQueueForIntent(Landroid/content/Intent;Z)Lcom/android/server/am/BroadcastQueue;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "noDelay"    # Z

    .prologue
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ready to broadcastQueueForIntentt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/BaseMiuiBroadcastManager;->broadcastQueueByFlag(IZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    return-object v0
.end method

.method private isLongTimeAction(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v6, 0x1

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .local v5, "pr":Lcom/android/server/am/ProcessRecord;
    if-eqz v5, :cond_1

    iget v7, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v8, 0x2

    if-le v7, v8, :cond_1

    sget-boolean v7, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v7, :cond_0

    const-string v7, "BaseMiuiBroadcastManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the caller "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is background with"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v6

    :cond_1
    sget-object v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->sLongTimeAction:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v0, v1, v2

    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-boolean v7, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v7, :cond_0

    const-string v7, "BaseMiuiBroadcastManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "is long time action"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "action":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isTopApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x1

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private realSendBroadcastLocked(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V
    .locals 7
    .param p1, "parallel"    # Z
    .param p2, "replacePending"    # Z
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "receivers"    # Ljava/util/List;
    .param p5, "record"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p3, v2}, Lcom/android/server/am/BaseMiuiBroadcastManager;->broadcastQueueForIntent(Landroid/content/Intent;Z)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    .local v0, "queue":Lcom/android/server/am/BroadcastQueue;
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .local v1, "r":Lcom/android/server/am/BroadcastRecord;
    if-nez p1, :cond_4

    sget-boolean v4, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_0

    const-string v4, "BaseMiuiBroadcastManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enqueueing ordered broadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": prev had "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v4, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_1

    const-string v4, "BaseMiuiBroadcastManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enqueueing broadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v4

    if-eqz v4, :cond_3

    .local v2, "replaced":Z
    :goto_0
    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    :cond_2
    :goto_1
    return-void

    .end local v2    # "replaced":Z
    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    sget-boolean v4, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_5

    const-string v4, "BaseMiuiBroadcastManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enqueueing parallel broadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v4

    if-eqz v4, :cond_6

    .restart local v2    # "replaced":Z
    :goto_2
    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_1

    .end local v2    # "replaced":Z
    :cond_6
    move v2, v3

    goto :goto_2
.end method

.method private sendBroadcastDirect(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V
    .locals 19
    .param p1, "parallel"    # Z
    .param p2, "replacePending"    # Z
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "receivers"    # Ljava/util/List;
    .param p5, "record"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "nonSystemReceivers":Ljava/util/List;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .local v11, "systemReceivers":Ljava/util/List;
    const/4 v15, 0x0

    .local v15, "i":I
    :try_start_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v18

    .local v18, "size":I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_3

    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .local v16, "receiver":Ljava/lang/Object;
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v2, :cond_1

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    move-object v13, v0

    .local v13, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v2, :cond_0

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11, v13, v2}, Lcom/android/server/am/BaseMiuiBroadcastManager;->addReceiverToListByFlag(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;I)V

    .end local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object/from16 v17, v0

    .local v17, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v11, v1, v2}, Lcom/android/server/am/BaseMiuiBroadcastManager;->addReceiverToListByFlag(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v16    # "receiver":Ljava/lang/Object;
    .end local v17    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v18    # "size":I
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    const/4 v11, 0x0

    .end local v14    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .restart local v18    # "size":I
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v5, "newIntent":Landroid/content/Intent;
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BaseMiuiBroadcastManager;->realSendBroadcastLocked(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V

    .end local v5    # "newIntent":Landroid/content/Intent;
    :cond_4
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .restart local v5    # "newIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object v10, v5

    move-object/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/BaseMiuiBroadcastManager;->realSendBroadcastLocked(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_2
.end method


# virtual methods
.method broadcastIntentLocked(ZZLcom/android/server/am/BroadcastRecord;)Z
    .locals 8
    .param p1, "parallel"    # Z
    .param p2, "replacePending"    # Z
    .param p3, "record"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v0, 0x0

    iget-object v3, p3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .local v3, "intent":Landroid/content/Intent;
    iget-boolean v7, p3, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .local v7, "ordered":Z
    iget-object v4, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .local v4, "receivers":Ljava/util/List;
    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v1, :cond_2

    if-nez v7, :cond_2

    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_0

    const-string v1, "BaseMiuiBroadcastManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ready to send broadcast : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .local v6, "flags":I
    and-int/lit8 v1, v6, 0x3

    if-eqz v1, :cond_1

    and-int/lit8 v1, v6, -0x4

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/am/BaseMiuiBroadcastManager;->isLongTimeAction(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .end local v6    # "flags":I
    :cond_2
    :goto_0
    return v0

    .restart local v6    # "flags":I
    :cond_3
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseMiuiBroadcastManager;->sendBroadcastDirect(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method broadcastQueueByFlag(I)Lcom/android/server/am/BroadcastQueue;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/BaseMiuiBroadcastManager;->broadcastQueueByFlag(IZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    return-object v0
.end method

.method abstract createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;
.end method

.method abstract createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
.end method

.method init(Lcom/android/server/am/ActivityManagerService;)V
    .locals 10
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v7, 0x1

    iput-object p1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .local v8, "startTime":J
    const-string v3, "fg_sys"

    const-wide/16 v4, 0x2710

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    const-string v3, "bg_sys"

    const-wide/32 v4, 0xea60

    move-object v1, p0

    move-object v2, p1

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    new-instance v0, Lcom/android/server/am/MiuiBroadcastQueue;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-string v3, "longtime"

    const-wide/32 v4, 0x927c0

    move-object v1, p1

    move v6, v7

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MiuiBroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZLcom/android/server/am/BaseMiuiBroadcastManager;)V

    iput-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init extra BroadcastQueues in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "startTime":J
    :cond_0
    return-void
.end method

.method initExtraQuqueIfNeed(I)Z
    .locals 3
    .param p1, "startIndex"    # I

    .prologue
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    add-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    aput-object v2, v0, v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFgBroadcastQueue(Lcom/android/server/am/BroadcastQueue;)Z
    .locals 1
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateLongTimeBroadcastRecord(Lcom/android/server/am/BroadcastRecord;Z)Ljava/util/List;
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "order"    # Z

    .prologue
    const/4 v2, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "bgReceivers":Ljava/util/List;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "fgReceivers":Ljava/util/List;
    iget-object v10, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .local v10, "receivers":Ljava/util/List;
    if-nez v10, :cond_0

    const/4 v7, 0x0

    .end local v7    # "bgReceivers":Ljava/util/List;
    :goto_0
    return-object v7

    .restart local v7    # "bgReceivers":Ljava/util/List;
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    .local v12, "size":I
    :goto_1
    if-ge v8, v12, :cond_b

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .local v9, "receiver":Ljava/lang/Object;
    if-eqz v9, :cond_7

    instance-of v0, v9, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_7

    move-object v6, v9

    check-cast v6, Lcom/android/server/am/BroadcastFilter;

    .local v6, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v0, v6, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0}, Lcom/android/server/am/BaseMiuiBroadcastManager;->isTopApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_1

    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to foreground queue"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v6    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .restart local v6    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_3
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_4

    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to longtime queue"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v0, v6, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_6

    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to longtime queue"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v6    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_7
    if-eqz v9, :cond_2

    move-object v11, v9

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .local v11, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0}, Lcom/android/server/am/BaseMiuiBroadcastManager;->isTopApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_8

    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolve "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to fregournd queue"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_a

    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolve "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to longtime queue"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .end local v9    # "receiver":Ljava/lang/Object;
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez p2, :cond_d

    const/4 v1, 0x1

    :goto_3
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseMiuiBroadcastManager;->sendBroadcastDirect(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V

    :cond_c
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_d
    move v1, v2

    goto :goto_3
.end method
