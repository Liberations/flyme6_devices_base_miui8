.class Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/bluetooth/BleScanWrapper;)V
    .locals 0
    .param p2, "bleScanWrapper"    # Landroid/bluetooth/BleScanWrapper;

    .prologue
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$800()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binder is dead - unregistering client ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$200(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked()Z
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$900(Lcom/miui/whetstone/PowerKeeperPolicy;)Z

    move-result v2

    .local v2, "leScanAllowedBefore":Z
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1000(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .local v0, "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->unlinkToDeath()V

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->clearResource()V

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1000(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked()Z
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$900(Lcom/miui/whetstone/PowerKeeperPolicy;)Z

    move-result v1

    .local v1, "leScanAllowedAfter":Z
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1100(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanAllLocked()V
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1200(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    :cond_2
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1100(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1100(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V

    :cond_3
    monitor-exit v4

    return-void

    .end local v0    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    .end local v1    # "leScanAllowedAfter":Z
    .end local v2    # "leScanAllowedBefore":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
