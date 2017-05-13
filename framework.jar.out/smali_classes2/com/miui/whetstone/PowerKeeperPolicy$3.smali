.class Lcom/miui/whetstone/PowerKeeperPolicy$3;
.super Landroid/location/ILocationPolicyListener$Stub;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .locals 0

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Landroid/location/ILocationPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestrictBackgroundChanged(Z)V
    .locals 0
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1133
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .prologue
    const/4 v2, 0x1

    .line 1113
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$200(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1115
    if-eqz p2, :cond_0

    if-ne p2, v2, :cond_1

    .line 1117
    :cond_0
    const/4 v1, 0x1

    .line 1121
    .local v1, "uidAllow":Z
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;
    invoke-static {v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$500(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 1122
    .local v0, "oldUidAllow":Z
    if-ne v0, v1, :cond_2

    monitor-exit v3

    .line 1130
    :goto_1
    return-void

    .line 1119
    .end local v0    # "oldUidAllow":Z
    .end local v1    # "uidAllow":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "uidAllow":Z
    goto :goto_0

    .line 1123
    .restart local v0    # "oldUidAllow":Z
    :cond_2
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;
    invoke-static {v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$500(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1125
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z
    invoke-static {v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$600(Lcom/miui/whetstone/PowerKeeperPolicy;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1126
    monitor-exit v3

    goto :goto_1

    .line 1129
    .end local v0    # "oldUidAllow":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1128
    .restart local v0    # "oldUidAllow":Z
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$700(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x3e8

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {v4, v5, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1129
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1128
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method
