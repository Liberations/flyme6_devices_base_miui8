.class public Lmiui/maml/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderThread"

.field private static sGlobalThread:Lmiui/maml/RenderThread;

.field private static sGlobalThreadLock:Ljava/lang/Object;


# instance fields
.field private mPaused:Z

.field private mRendererControllerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeSignal:Ljava/lang/Object;

.field private mSignaled:Z

.field private mSleepSignal:Ljava/lang/Object;

.field private mStarted:Z

.field private mStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const-string v0, "MAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmiui/maml/RendererController;)V
    .locals 1
    .param p1, "c"    # Lmiui/maml/RendererController;

    .prologue
    const-string v0, "MAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmiui/maml/RenderThread;->addRendererController(Lmiui/maml/RendererController;)V

    return-void
.end method

.method private doFinish()V
    .locals 5

    .prologue
    iget-object v4, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .local v1, "c":Lmiui/maml/RendererController;
    invoke-virtual {v1}, Lmiui/maml/RendererController;->finish()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "c":Lmiui/maml/RendererController;
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private doInit()V
    .locals 5

    .prologue
    iget-object v4, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .local v1, "c":Lmiui/maml/RendererController;
    invoke-virtual {v1}, Lmiui/maml/RendererController;->init()V

    invoke-virtual {v1}, Lmiui/maml/RendererController;->requestUpdate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "c":Lmiui/maml/RendererController;
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private doPause()V
    .locals 5

    .prologue
    iget-object v4, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .local v1, "c":Lmiui/maml/RendererController;
    invoke-virtual {v1}, Lmiui/maml/RendererController;->pause()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "c":Lmiui/maml/RendererController;
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private doResume()V
    .locals 5

    .prologue
    iget-object v4, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .local v1, "c":Lmiui/maml/RendererController;
    invoke-virtual {v1}, Lmiui/maml/RendererController;->resume()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "c":Lmiui/maml/RendererController;
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static globalThread()Lmiui/maml/RenderThread;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v0

    return-object v0
.end method

.method public static globalThread(Z)Lmiui/maml/RenderThread;
    .locals 2
    .param p0, "ensureStart"    # Z

    .prologue
    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/maml/RenderThread;

    invoke-direct {v0}, Lmiui/maml/RenderThread;-><init>()V

    sput-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->isStarted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static globalThreadStop()V
    .locals 2

    .prologue
    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->setStop()V

    const/4 v0, 0x0

    sput-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

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

.method private final waitSleep(J)V
    .locals 5
    .param p1, "t"    # J

    .prologue
    iget-boolean v1, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lmiui/maml/RenderThread;->mSignaled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private waiteForResume()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addRendererController(Lmiui/maml/RendererController;)V
    .locals 3
    .param p1, "c"    # Lmiui/maml/RendererController;

    .prologue
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RenderThread"

    const-string v2, "addRendererController: RendererController already exists"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lmiui/maml/RendererController;->setRenderThread(Lmiui/maml/RenderThread;)V

    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/RenderThread;->setPaused(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mStarted:Z

    return v0
.end method

.method public removeRendererController(Lmiui/maml/RendererController;)V
    .locals 2
    .param p1, "c"    # Lmiui/maml/RendererController;

    .prologue
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/maml/RendererController;->setRenderThread(Lmiui/maml/RenderThread;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 14

    .prologue
    const-string v7, "RenderThread"

    const-string v12, "RenderThread started"

    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lmiui/maml/RenderThread;->doInit()V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lmiui/maml/RenderThread;->mStarted:Z

    :goto_0
    iget-boolean v7, p0, Lmiui/maml/RenderThread;->mStop:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v7, :cond_1

    iget-object v12, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean v7, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lmiui/maml/RenderThread;->doPause()V

    const-string v7, "RenderThread"

    const-string v13, "RenderThread paused, waiting for signal"

    invoke-static {v7, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/maml/RenderThread;->waiteForResume()V

    const-string v7, "RenderThread"

    const-string v13, "RenderThread resumed"

    invoke-static {v7, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/maml/RenderThread;->doResume()V

    :cond_0
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iget-boolean v7, p0, Lmiui/maml/RenderThread;->mStop:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v7, :cond_3

    :cond_2
    :goto_1
    invoke-direct {p0}, Lmiui/maml/RenderThread;->doFinish()V

    const-string v7, "RenderThread"

    const-string v12, "RenderThread stopped"

    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v7, "RenderThread"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .local v4, "currentTime":J
    const-wide v10, 0x7fffffffffffffffL

    .local v10, "nextUpdateInterval":J
    iget-object v12, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    iget-object v7, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x1

    .local v1, "allPause":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v0, :cond_4

    iget-boolean v7, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v7, :cond_6

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_a

    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Lmiui/maml/RenderThread;->mPaused:Z

    const-string v7, "RenderThread"

    const-string v13, "All controllers paused."

    invoke-static {v7, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "allPause":Z
    .end local v6    # "i":I
    :catchall_1
    move-exception v7

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1

    .end local v4    # "currentTime":J
    .end local v10    # "nextUpdateInterval":J
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v7, "RenderThread"

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v0    # "N":I
    .restart local v1    # "allPause":Z
    .restart local v4    # "currentTime":J
    .restart local v6    # "i":I
    .restart local v10    # "nextUpdateInterval":J
    :cond_6
    :try_start_8
    iget-object v7, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    .local v2, "c":Lmiui/maml/RendererController;
    invoke-virtual {v2}, Lmiui/maml/RendererController;->isSelfPaused()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v2}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v2}, Lmiui/maml/RendererController;->hasInited()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v2}, Lmiui/maml/RendererController;->init()V

    :cond_9
    invoke-virtual {v2, v4, v5}, Lmiui/maml/RendererController;->update(J)J

    move-result-wide v8

    .local v8, "l":J
    cmp-long v7, v8, v10

    if-gez v7, :cond_7

    move-wide v10, v8

    goto :goto_3

    .end local v2    # "c":Lmiui/maml/RendererController;
    .end local v8    # "l":J
    :cond_a
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-direct {p0, v10, v11}, Lmiui/maml/RenderThread;->waitSleep(J)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lmiui/maml/RenderThread;->mSignaled:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0
.end method

.method public setPaused(Z)V
    .locals 2
    .param p1, "pause"    # Z

    .prologue
    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lmiui/maml/RenderThread;->signal()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setStop()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mStop:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/RenderThread;->setPaused(Z)V

    return-void
.end method

.method public signal()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    iget-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
