.class public Lcom/android/server/am/MiuiUsageStats;
.super Ljava/lang/Object;
.source "MiuiUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    }
.end annotation


# static fields
.field public static final ACTION_CHARGING:Ljava/lang/String; = "charging"

.field public static final ACTION_FG_APP:Ljava/lang/String; = "fg_app"

.field public static final ACTION_LOCK_SCREEN:Ljava/lang/String; = "lock_screen"

.field private static final BATTERY_PLUGGED_AC:Ljava/lang/String; = "AC"

.field private static final BATTERY_PLUGGED_USB:Ljava/lang/String; = "USB"

.field private static final BATTERY_PLUGGED_WIRELESS:Ljava/lang/String; = "WIRELESS"

.field private static final DAY_TO_MILL:J = 0x5265c00L

.field private static final FILE_LIMIT_NUM:I = 0x4

.field private static final FILE_PREFIX:Ljava/lang/String; = "miuiusage-"

.field private static final FILE_WRITE_INTERVAL:I = 0x36ee80

.field private static final SAVE_PATH:Ljava/lang/String; = "/data/system/usagestats"

.field private static final TAG:Ljava/lang/String; = "MiuiUsageStats"

.field private static final mFileLock:Ljava/lang/Object;

.field private static mFormat:Ljava/text/SimpleDateFormat;

.field private static mHistory:Ljava/io/File;

.field private static mLastPlugType:Ljava/lang/String;

.field private static mLastWriteDay:Ljava/lang/String;

.field private static final mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private static mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mUsageStatsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mWriteThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mFileLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mLastWriteDay:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/android/server/am/MiuiUsageStats$1;

    const-string v1, "miui-usage"

    invoke-direct {v0, v1}, Lcom/android/server/am/MiuiUsageStats$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mWriteThread:Ljava/lang/Thread;

    sget-object v0, Lcom/android/server/am/MiuiUsageStats;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/MiuiUsageStats;->getFormatDate(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mLastWriteDay:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/usagestats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miuiusage-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/MiuiUsageStats;->mLastWriteDay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mHistory:Ljava/io/File;

    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->deleteOldFiles()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->writeStatsToFile()V

    return-void
.end method

.method private static addAllStatsToUsageMapLocked()V
    .locals 6

    .prologue
    sget-object v4, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "name":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;

    .local v3, "usage":Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->endTime:J

    sget-object v4, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    :cond_1
    sget-object v4, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "usage":Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    :cond_2
    return-void
.end method

.method private static addStatsToUsageMapLocked(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;

    .local v1, "usage":Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->endTime:J

    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    :cond_1
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static deleteOldFile()V
    .locals 6

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x14997000

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/android/server/am/MiuiUsageStats;->getFormatDate(J)Ljava/lang/String;

    move-result-object v0

    .local v0, "oldDay":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/usagestats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "miuiusage-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private static deleteOldFiles()V
    .locals 9

    .prologue
    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->getRecentFileNames()Ljava/util/List;

    move-result-object v6

    .local v6, "recentFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/usagestats"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, "root":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_2

    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "fileName":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v8, "miuiusage-"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    return-void
.end method

.method private static getFormatDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "currentTime"    # J

    .prologue
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p0, p1}, Ljava/sql/Date;-><init>(J)V

    .local v0, "date":Ljava/sql/Date;
    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getRecentFileNames()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "recentFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miuiusage-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v0

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/android/server/am/MiuiUsageStats;->getFormatDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static startUsageStats(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;

    invoke-direct {v0}, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;-><init>()V

    .local v0, "usage":Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    iput-object p0, v0, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->action:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->name:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->startTime:J

    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "usage":Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static startWriteThreadIfNeed(Z)V
    .locals 6
    .param p0, "force"    # Z

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, "elapsedTime":J
    if-eqz p0, :cond_0

    sget-object v3, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->addAllStatsToUsageMapLocked()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mWriteThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->run()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static stopUsageStats(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/MiuiUsageStats;->addStatsToUsageMapLocked(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/MiuiUsageStats;->startWriteThreadIfNeed(Z)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static updateChargingStats(Landroid/os/BatteryProperties;)V
    .locals 2
    .param p0, "batteryProperties"    # Landroid/os/BatteryProperties;

    .prologue
    iget-boolean v1, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v1, :cond_1

    const-string v0, "AC"

    .local v0, "plugType":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mLastPlugType:Ljava/lang/String;

    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_4

    const-string v1, "charging"

    invoke-static {v1, v0}, Lcom/android/server/am/MiuiUsageStats;->startUsageStats(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mLastPlugType:Ljava/lang/String;

    :cond_0
    return-void

    .end local v0    # "plugType":Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v1, :cond_2

    const-string v0, "USB"

    .restart local v0    # "plugType":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "plugType":Ljava/lang/String;
    :cond_2
    iget-boolean v1, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v1, :cond_3

    const-string v0, "WIRELESS"

    .restart local v0    # "plugType":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "plugType":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "plugType":Ljava/lang/String;
    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mLastPlugType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/MiuiUsageStats;->stopUsageStats(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static writeFile(Ljava/io/File;)V
    .locals 22
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v14, 0x0

    .local v14, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v15, Ljava/io/FileWriter;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .end local v14    # "writer":Ljava/io/FileWriter;
    .local v15, "writer":Ljava/io/FileWriter;
    :try_start_1
    new-instance v13, Landroid/util/ArrayMap;

    sget-object v16, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .local v13, "usageStatsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;>;"
    sget-object v17, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    monitor-enter v17
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    sget-object v16, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v17, Lcom/android/server/am/MiuiUsageStats;->mFileLock:Ljava/lang/Object;

    monitor-enter v17
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v13}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .local v9, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    if-nez v7, :cond_2

    const-string v16, "MiuiUsageStats"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "writeFile "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is empty!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v16
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v13    # "usageStatsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;>;"
    :catch_0
    move-exception v4

    move-object v14, v15

    .end local v15    # "writer":Ljava/io/FileWriter;
    .local v4, "e":Ljava/io/IOException;
    .restart local v14    # "writer":Ljava/io/FileWriter;
    :goto_1
    :try_start_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v14, :cond_0

    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .end local v14    # "writer":Ljava/io/FileWriter;
    .restart local v13    # "usageStatsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;>;"
    .restart local v15    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v16

    :try_start_8
    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v16
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v13    # "usageStatsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;>;"
    :catchall_2
    move-exception v16

    move-object v14, v15

    .end local v15    # "writer":Ljava/io/FileWriter;
    .restart local v14    # "writer":Ljava/io/FileWriter;
    :goto_3
    if-eqz v14, :cond_1

    :try_start_a
    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_1
    :goto_4
    throw v16

    .end local v14    # "writer":Ljava/io/FileWriter;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    .restart local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v13    # "usageStatsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;>;"
    .restart local v15    # "writer":Ljava/io/FileWriter;
    :cond_2
    :try_start_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, "size":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_5
    if-ge v8, v12, :cond_3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;

    .local v6, "item":Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .local v11, "sb":Ljava/lang/StringBuffer;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "action="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v6, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->action:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " name="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v6, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " startTime="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v6, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->startTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " endTime="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v6, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->endTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/16 v16, 0xa

    invoke-virtual/range {v15 .. v16}, Ljava/io/FileWriter;->write(I)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .end local v6    # "item":Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    .end local v11    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    .end local v8    # "j":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "size":I
    :cond_4
    monitor-exit v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v15, :cond_5

    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    move-object v14, v15

    .end local v15    # "writer":Ljava/io/FileWriter;
    .restart local v14    # "writer":Ljava/io/FileWriter;
    goto/16 :goto_2

    .end local v14    # "writer":Ljava/io/FileWriter;
    .restart local v15    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v14, v15

    .end local v15    # "writer":Ljava/io/FileWriter;
    .restart local v14    # "writer":Ljava/io/FileWriter;
    goto/16 :goto_2

    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "usageStatsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;>;"
    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v16

    goto/16 :goto_3

    :catch_4
    move-exception v4

    goto/16 :goto_1

    .end local v14    # "writer":Ljava/io/FileWriter;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "usageStatsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;>;"
    .restart local v15    # "writer":Ljava/io/FileWriter;
    :cond_5
    move-object v14, v15

    .end local v15    # "writer":Ljava/io/FileWriter;
    .restart local v14    # "writer":Ljava/io/FileWriter;
    goto/16 :goto_2
.end method

.method private static writeStatsToFile()V
    .locals 6

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/am/MiuiUsageStats;->getFormatDate(J)Ljava/lang/String;

    move-result-object v0

    .local v0, "curDay":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mLastWriteDay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .local v1, "dayChanged":Z
    :goto_0
    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/usagestats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "miuiusage-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/MiuiUsageStats;->mHistory:Ljava/io/File;

    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->deleteOldFile()V

    :cond_0
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mHistory:Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/am/MiuiUsageStats;->writeFile(Ljava/io/File;)V

    return-void

    .end local v1    # "dayChanged":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
