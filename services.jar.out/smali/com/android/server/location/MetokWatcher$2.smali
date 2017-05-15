.class Lcom/android/server/location/MetokWatcher$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "MetokWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/MetokWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/MetokWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/location/MetokWatcher;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$000(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "com.xiaomi.metok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # invokes: Lcom/android/server/location/MetokWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$100(Lcom/android/server/location/MetokWatcher;)V

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    const-string v2, "com.xiaomi.metok"

    # invokes: Lcom/android/server/location/MetokWatcher;->bindPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/server/location/MetokWatcher;->access$200(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;)Z

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

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$000(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "com.xiaomi.metok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # invokes: Lcom/android/server/location/MetokWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$100(Lcom/android/server/location/MetokWatcher;)V

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    const-string v2, "com.xiaomi.metok"

    # invokes: Lcom/android/server/location/MetokWatcher;->bindPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/server/location/MetokWatcher;->access$200(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$000(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "com.xiaomi.metok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # invokes: Lcom/android/server/location/MetokWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$100(Lcom/android/server/location/MetokWatcher;)V

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    const-string v2, "com.xiaomi.metok"

    # invokes: Lcom/android/server/location/MetokWatcher;->bindPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/server/location/MetokWatcher;->access$200(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;)Z

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

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$000(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "com.xiaomi.metok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # invokes: Lcom/android/server/location/MetokWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$100(Lcom/android/server/location/MetokWatcher;)V

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    const-string v2, "com.xiaomi.metok"

    # invokes: Lcom/android/server/location/MetokWatcher;->bindPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/server/location/MetokWatcher;->access$200(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;)Z

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
