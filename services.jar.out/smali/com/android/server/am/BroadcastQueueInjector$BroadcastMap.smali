.class Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;
.super Ljava/lang/Object;
.source "BroadcastQueueInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueueInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BroadcastMap"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->action:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    instance-of v1, p1, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;

    .local v0, "broadcastMapObj":Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->action:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .end local v0    # "broadcastMapObj":Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;
    :goto_0
    return v1

    .restart local v0    # "broadcastMapObj":Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "broadcastMapObj":Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
