.class public final Lmiui/log/LogSwitchesConfigMonitor;
.super Ljava/lang/Object;
.source "LogSwitchesConfigMonitor.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "LogSwitchesConfigMonitor"


# instance fields
.field private final applier:Lmiui/log/LogSwitchesConfigApplier;

.field private currentLogSwitchesConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation
.end field

.field private isWatchingSwitches:Z

.field private final logSwitchesFileName:Ljava/lang/String;

.field private final logSwitchesFilePath:Ljava/lang/String;

.field private final logSwitchesFolder:Ljava/lang/String;

.field private logSwitchsObserver:Landroid/os/FileObserver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "logSwitchesFolder"    # Ljava/lang/String;
    .param p2, "logSwitchesFileName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->currentLogSwitchesConfig:Ljava/util/HashMap;

    iput-object p1, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFolder:Ljava/lang/String;

    iput-object p2, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFilePath:Ljava/lang/String;

    new-instance v0, Lmiui/log/LogSwitchesConfigApplier;

    invoke-direct {v0}, Lmiui/log/LogSwitchesConfigApplier;-><init>()V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;

    return-void
.end method

.method static synthetic access$000(Lmiui/log/LogSwitchesConfigMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/log/LogSwitchesConfigMonitor;

    .prologue
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lmiui/log/LogSwitchesConfigMonitor;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lmiui/log/LogSwitchesConfigMonitor;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    iput-object p1, p0, Lmiui/log/LogSwitchesConfigMonitor;->currentLogSwitchesConfig:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$200(Lmiui/log/LogSwitchesConfigMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/log/LogSwitchesConfigMonitor;

    .prologue
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/log/LogSwitchesConfigMonitor;)Lmiui/log/LogSwitchesConfigApplier;
    .locals 1
    .param p0, "x0"    # Lmiui/log/LogSwitchesConfigMonitor;

    .prologue
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;

    return-object v0
.end method

.method private getCurrentProgramName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/self/cmdline"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "cmdline":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v2, v3

    .end local v0    # "cmdline":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v4

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "cmdline":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    const-string v4, "\\u0000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_3
    :goto_2
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v0    # "cmdline":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v4, "LogSwitchesConfigMonitor"

    const-string v5, "cannot found /proc/self/cmdline"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v4, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v4, "LogSwitchesConfigMonitor"

    const-string v5, "failed to read /proc/self/cmdline"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v4, ""
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_1

    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_6
    throw v4

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "cmdline":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v5

    goto :goto_0

    :catch_5
    move-exception v5

    goto :goto_2

    .end local v0    # "cmdline":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v5

    goto :goto_6

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized isWatching()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized retrieveCurrentLogSwitches()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .local v2, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    iget-object v4, p0, Lmiui/log/LogSwitchesConfigMonitor;->currentLogSwitchesConfig:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/log/AppLogSwitches;

    .local v3, "value":Lmiui/log/AppLogSwitches;
    invoke-virtual {v3}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    .local v0, "clonedValue":Lmiui/log/AppLogSwitches;
    iget-object v4, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "clonedValue":Lmiui/log/AppLogSwitches;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .end local v3    # "value":Lmiui/log/AppLogSwitches;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    :cond_0
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized startMonitoring(ZZ)V
    .locals 3
    .param p1, "createLogSwitchesFileIfNotExisted"    # Z
    .param p2, "synchronizedReadInitialLogSwitches"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFolder:Ljava/lang/String;

    iget-object v1, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/log/Utils;->createLogSwitchesFileIfNotExisted(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchsObserver:Landroid/os/FileObserver;

    if-nez v0, :cond_2

    new-instance v0, Lmiui/log/LogSwitchesConfigMonitor$1;

    iget-object v1, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFolder:Ljava/lang/String;

    const/16 v2, 0x208

    invoke-direct {v0, p0, v1, v2}, Lmiui/log/LogSwitchesConfigMonitor$1;-><init>(Lmiui/log/LogSwitchesConfigMonitor;Ljava/lang/String;I)V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchsObserver:Landroid/os/FileObserver;

    :cond_2
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchsObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z

    if-eqz p2, :cond_3

    const-string v0, "LogSwitchesConfigMonitor"

    const-string v1, "Read log switches for config file synchronously"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;

    iget-object v1, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/log/LogSwitchesConfigApplier;->apply(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/log/LogSwitchesConfigMonitor$2;

    invoke-direct {v1, p0}, Lmiui/log/LogSwitchesConfigMonitor$2;-><init>(Lmiui/log/LogSwitchesConfigMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stopMonitoring()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchsObserver:Landroid/os/FileObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchsObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updatePackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;

    invoke-virtual {v0, p1}, Lmiui/log/LogSwitchesConfigApplier;->updatePackageName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProgramName()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lmiui/log/LogSwitchesConfigMonitor;->getCurrentProgramName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/log/LogSwitchesConfigMonitor;->updateProgramName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProgramName(Ljava/lang/String;)V
    .locals 1
    .param p1, "programName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;

    invoke-virtual {v0, p1}, Lmiui/log/LogSwitchesConfigApplier;->updateProgramName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
