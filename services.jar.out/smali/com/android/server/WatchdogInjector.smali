.class Lcom/android/server/WatchdogInjector;
.super Ljava/lang/Object;
.source "WatchdogInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WatchdogInjector"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onWatchdog(Lcom/android/server/Watchdog;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 14
    .param p0, "watchdog"    # Lcom/android/server/Watchdog;
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p6, "trace"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/Watchdog;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p5, "handlerCheckers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v5, Lmiui/mqsas/sdk/event/WatchdogEvent;

    invoke-direct {v5}, Lmiui/mqsas/sdk/event/WatchdogEvent;-><init>()V

    .line 18
    .local v5, "event":Lmiui/mqsas/sdk/event/WatchdogEvent;
    const/16 v12, 0x80

    new-array v3, v12, [Ljava/lang/String;

    .line 19
    .local v3, "descriptions":[Ljava/lang/String;
    const/16 v12, 0x80

    new-array v11, v12, [Ljava/lang/String;

    .line 21
    .local v11, "stackTraces":[Ljava/lang/String;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_1

    .line 23
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v12}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v6

    .line 24
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v12}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    .line 26
    .local v10, "st":[Ljava/lang/StackTraceElement;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v9, "line":Ljava/lang/StringBuilder;
    move-object v2, v10

    .local v2, "arr$":[Ljava/lang/StackTraceElement;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v4, v2, v7

    .line 28
    .local v4, "element":Ljava/lang/StackTraceElement;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 30
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    .line 22
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 32
    .end local v2    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "line":Ljava/lang/StringBuilder;
    .end local v10    # "st":[Ljava/lang/StackTraceElement;
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .end local v6    # "i":I
    :goto_2
    invoke-virtual {v5, p1}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setPid(I)V

    .line 39
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setProcessName(Ljava/lang/String;)V

    .line 40
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setPackageName(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setTimeStamp(J)V

    .line 42
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setSystem(Z)V

    .line 43
    invoke-virtual {v5, v3}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setCheckers([Ljava/lang/String;)V

    .line 44
    invoke-virtual {v5, v11}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setStackTraces([Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v12

    invoke-virtual {v12, v5}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V

    .line 46
    return-void

    .line 32
    .restart local v6    # "i":I
    :catchall_0
    move-exception v12

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 34
    .end local v6    # "i":I
    :catch_0
    move-exception v12

    goto :goto_2
.end method
