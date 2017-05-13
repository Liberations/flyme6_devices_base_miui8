.class public Landroid/os/AnrMonitor$TimerThread;
.super Ljava/lang/Thread;
.source "AnrMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AnrMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerThread"
.end annotation


# instance fields
.field private completed:Z

.field private timeout:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 854
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 855
    iput-wide p1, p0, Landroid/os/AnrMonitor$TimerThread;->timeout:J

    .line 856
    return-void
.end method


# virtual methods
.method public declared-synchronized finishRun()V
    .locals 1

    .prologue
    .line 865
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/os/AnrMonitor$TimerThread;->completed:Z

    .line 866
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    monitor-exit p0

    return-void

    .line 865
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 860
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 861
    invoke-virtual {p0}, Landroid/os/AnrMonitor$TimerThread;->finishRun()V

    .line 862
    return-void
.end method

.method public declared-synchronized startAndWait()V
    .locals 4

    .prologue
    .line 871
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/AnrMonitor$TimerThread;->start()V

    .line 872
    iget-wide v2, p0, Landroid/os/AnrMonitor$TimerThread;->timeout:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 874
    iget-boolean v1, p0, Landroid/os/AnrMonitor$TimerThread;->completed:Z

    if-nez v1, :cond_0

    .line 875
    invoke-virtual {p0}, Landroid/os/AnrMonitor$TimerThread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 871
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
