.class public abstract Lmiui/maml/NotifierManager$BaseNotifier;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseNotifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    }
.end annotation


# instance fields
.field private mActiveCount:I

.field protected mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/NotifierManager$BaseNotifier$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mRefCount:I

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    return-void
.end method

.method private final checkListeners()V
    .locals 2

    .prologue
    iget-object v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final checkListenersLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    .local v1, "li":Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    iget-object v2, v1, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    # getter for: Lmiui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z
    invoke-static {v1}, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->access$000(Lmiui/maml/NotifierManager$BaseNotifier$Listener;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    goto :goto_1

    .end local v1    # "li":Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    :cond_2
    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    return-void
.end method

.method private final findListenerLocked(Lmiui/maml/NotifierManager$OnNotifyListener;)Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    .locals 3
    .param p1, "l"    # Lmiui/maml/NotifierManager$OnNotifyListener;

    .prologue
    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    .local v1, "li":Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    iget-object v2, v1, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .end local v1    # "li":Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final addListener(Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .locals 3
    .param p1, "l"    # Lmiui/maml/NotifierManager$OnNotifyListener;

    .prologue
    iget-object v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lmiui/maml/NotifierManager$OnNotifyListener;)Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    invoke-direct {v2, p1}, Lmiui/maml/NotifierManager$BaseNotifier$Listener;-><init>(Lmiui/maml/NotifierManager$OnNotifyListener;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()V

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

.method public finish()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->unregister()V

    return-void
.end method

.method public final getActiveCount()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    iget v0, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    return v0
.end method

.method public final getRef()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    iget v0, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    return v0
.end method

.method public init()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->register()V

    return-void
.end method

.method protected onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    iget-object v3, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    .local v1, "l":Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    invoke-virtual {v1, p1, p2, p3}, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method protected abstract onRegister()V
.end method

.method protected abstract onUnregister()V
.end method

.method public pause()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->unregister()V

    return-void
.end method

.method public final pauseListener(Lmiui/maml/NotifierManager$OnNotifyListener;)I
    .locals 4
    .param p1, "l"    # Lmiui/maml/NotifierManager$OnNotifyListener;

    .prologue
    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lmiui/maml/NotifierManager$OnNotifyListener;)Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object v0

    .local v0, "li":Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    if-nez v0, :cond_0

    const-string v1, "NotifierManager"

    const-string v3, "pauseListener, listener not exist"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->pause()V

    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()V

    iget v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    monitor-exit v2

    goto :goto_0

    .end local v0    # "li":Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected register()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->onRegister()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    # getter for: Lmiui/maml/NotifierManager;->DBG:Z
    invoke-static {}, Lmiui/maml/NotifierManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NotifierManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final removeListener(Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .locals 3
    .param p1, "l"    # Lmiui/maml/NotifierManager$OnNotifyListener;

    .prologue
    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lmiui/maml/NotifierManager$OnNotifyListener;)Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object v0

    .local v0, "li":Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()V

    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "li":Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->register()V

    return-void
.end method

.method public final resumeListener(Lmiui/maml/NotifierManager$OnNotifyListener;)I
    .locals 4
    .param p1, "l"    # Lmiui/maml/NotifierManager$OnNotifyListener;

    .prologue
    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lmiui/maml/NotifierManager$OnNotifyListener;)Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object v0

    .local v0, "li":Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    if-nez v0, :cond_0

    const-string v1, "NotifierManager"

    const-string v3, "resumeListener, listener not exist"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->resume()V

    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()V

    iget v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    monitor-exit v2

    goto :goto_0

    .end local v0    # "li":Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected unregister()V
    .locals 4

    .prologue
    iget-boolean v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->onUnregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    # getter for: Lmiui/maml/NotifierManager;->DBG:Z
    invoke-static {}, Lmiui/maml/NotifierManager;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NotifierManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnregister: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "NotifierManager"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
