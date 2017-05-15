.class public Lmiui/maml/ScreenContext;
.super Ljava/lang/Object;
.source "ScreenContext.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mContextVariables:Lmiui/maml/data/ContextVariables;

.field public final mFactory:Lmiui/maml/elements/ScreenElementFactory;

.field private final mHandler:Landroid/os/Handler;

.field private mObjectFactories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/ObjectFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final mResourceManager:Lmiui/maml/ResourceManager;

.field public final mVariables:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lmiui/maml/ResourceLoader;

    .prologue
    new-instance v0, Lmiui/maml/elements/ScreenElementFactory;

    invoke-direct {v0}, Lmiui/maml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/elements/ScreenElementFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/elements/ScreenElementFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lmiui/maml/ResourceLoader;
    .param p3, "factory"    # Lmiui/maml/elements/ScreenElementFactory;

    .prologue
    new-instance v0, Lmiui/maml/ResourceManager;

    invoke-direct {v0, p2}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    invoke-direct {p0, p1, v0, p3}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceMgr"    # Lmiui/maml/ResourceManager;

    .prologue
    new-instance v0, Lmiui/maml/elements/ScreenElementFactory;

    invoke-direct {v0}, Lmiui/maml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceMgr"    # Lmiui/maml/ResourceManager;
    .param p3, "factory"    # Lmiui/maml/elements/ScreenElementFactory;

    .prologue
    new-instance v0, Lmiui/maml/data/Variables;

    invoke-direct {v0}, Lmiui/maml/data/Variables;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Lmiui/maml/data/Variables;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Lmiui/maml/data/Variables;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceMgr"    # Lmiui/maml/ResourceManager;
    .param p3, "factory"    # Lmiui/maml/elements/ScreenElementFactory;
    .param p4, "v"    # Lmiui/maml/data/Variables;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "rawContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    .local v1, "themeResId":I
    if-eqz v1, :cond_1

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    :goto_1
    iput-object p2, p0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iput-object p3, p0, Lmiui/maml/ScreenContext;->mFactory:Lmiui/maml/elements/ScreenElementFactory;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lmiui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    new-instance v2, Lmiui/maml/data/ContextVariables;

    invoke-direct {v2}, Lmiui/maml/data/ContextVariables;-><init>()V

    iput-object v2, p0, Lmiui/maml/ScreenContext;->mContextVariables:Lmiui/maml/data/ContextVariables;

    return-void

    .end local v1    # "themeResId":I
    :cond_0
    move-object v0, p1

    goto :goto_0

    .restart local v1    # "themeResId":I
    :cond_1
    iput-object v0, p0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    goto :goto_1
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final declared-synchronized getObjectFactory(Ljava/lang/String;)Lmiui/maml/ObjectFactory;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lmiui/maml/ObjectFactory;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ObjectFactory;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized registerObjectFactory(Ljava/lang/String;Lmiui/maml/ObjectFactory;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "f"    # Lmiui/maml/ObjectFactory;

    .prologue
    monitor-enter p0

    if-nez p2, :cond_1

    :try_start_0
    iget-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lmiui/maml/ObjectFactory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ObjectFactory name mismatchs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_2
    iget-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    :cond_3
    iget-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ObjectFactory;

    .local v0, "old":Lmiui/maml/ObjectFactory;
    move-object v1, v0

    .local v1, "tmp":Lmiui/maml/ObjectFactory;
    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, p2, :cond_0

    invoke-virtual {v1}, Lmiui/maml/ObjectFactory;->getOld()Lmiui/maml/ObjectFactory;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v0}, Lmiui/maml/ObjectFactory;->setOld(Lmiui/maml/ObjectFactory;)V

    iget-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
