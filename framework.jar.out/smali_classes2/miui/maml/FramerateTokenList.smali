.class public Lmiui/maml/FramerateTokenList;
.super Ljava/lang/Object;
.source "FramerateTokenList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/FramerateTokenList$FramerateToken;,
        Lmiui/maml/FramerateTokenList$FramerateChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FramerateTokenList"


# instance fields
.field private mCurFramerate:F

.field private mFramerateChangeListener:Lmiui/maml/FramerateTokenList$FramerateChangeListener;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/FramerateTokenList$FramerateToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lmiui/maml/FramerateTokenList$FramerateChangeListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/maml/FramerateTokenList$FramerateChangeListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    iput-object p1, p0, Lmiui/maml/FramerateTokenList;->mFramerateChangeListener:Lmiui/maml/FramerateTokenList$FramerateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/FramerateTokenList;)Lmiui/maml/FramerateTokenList$FramerateChangeListener;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/FramerateTokenList;

    .prologue
    iget-object v0, p0, Lmiui/maml/FramerateTokenList;->mFramerateChangeListener:Lmiui/maml/FramerateTokenList$FramerateChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/FramerateTokenList;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/FramerateTokenList;

    .prologue
    invoke-direct {p0}, Lmiui/maml/FramerateTokenList;->onChange()V

    return-void
.end method

.method private onChange()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "r":F
    iget-object v4, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/FramerateTokenList$FramerateToken;

    .local v2, "t":Lmiui/maml/FramerateTokenList$FramerateToken;
    iget v3, v2, Lmiui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    iget v1, v2, Lmiui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    goto :goto_0

    .end local v2    # "t":Lmiui/maml/FramerateTokenList$FramerateToken;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v1, p0, Lmiui/maml/FramerateTokenList;->mCurFramerate:F

    return-void

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    iget-object v1, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-string v1, "FramerateTokenList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lmiui/maml/FramerateTokenList$FramerateToken;

    invoke-direct {v0, p0, p1}, Lmiui/maml/FramerateTokenList$FramerateToken;-><init>(Lmiui/maml/FramerateTokenList;Ljava/lang/String;)V

    .local v0, "token":Lmiui/maml/FramerateTokenList$FramerateToken;
    iget-object v2, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFramerate()F
    .locals 1

    .prologue
    iget v0, p0, Lmiui/maml/FramerateTokenList;->mCurFramerate:F

    return v0
.end method
