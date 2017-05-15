.class public Lmiui/maml/data/VariableUpdaterManager;
.super Ljava/lang/Object;
.source "VariableUpdaterManager.java"


# static fields
.field public static final USE_TAG_NONE:Ljava/lang/String; = "none"


# instance fields
.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mUpdaters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/VariableUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "c"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    iput-object p1, p0, Lmiui/maml/data/VariableUpdaterManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-void
.end method


# virtual methods
.method public add(Lmiui/maml/data/VariableUpdater;)V
    .locals 1
    .param p1, "updater"    # Lmiui/maml/data/VariableUpdater;

    .prologue
    iget-object v0, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFromTag(Ljava/lang/String;)V
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "none"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "updaters":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "property":Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "dotPos":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string v8, "DateTime"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Lmiui/maml/data/DateTimeVariableUpdater;

    invoke-direct {v8, p0, v5}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const-string v8, "Battery"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Lmiui/maml/data/BatteryVariableUpdater;

    invoke-direct {v8, p0}, Lmiui/maml/data/BatteryVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p0, v8}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    goto :goto_1
.end method

.method public finish()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableUpdater;

    .local v1, "updater":Lmiui/maml/data/VariableUpdater;
    invoke-virtual {v1}, Lmiui/maml/data/VariableUpdater;->finish()V

    goto :goto_0

    .end local v1    # "updater":Lmiui/maml/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/data/VariableUpdaterManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableUpdater;

    .local v1, "updater":Lmiui/maml/data/VariableUpdater;
    invoke-virtual {v1}, Lmiui/maml/data/VariableUpdater;->init()V

    goto :goto_0

    .end local v1    # "updater":Lmiui/maml/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableUpdater;

    .local v1, "updater":Lmiui/maml/data/VariableUpdater;
    invoke-virtual {v1}, Lmiui/maml/data/VariableUpdater;->pause()V

    goto :goto_0

    .end local v1    # "updater":Lmiui/maml/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public remove(Lmiui/maml/data/VariableUpdater;)V
    .locals 1
    .param p1, "updater"    # Lmiui/maml/data/VariableUpdater;

    .prologue
    iget-object v0, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableUpdater;

    .local v1, "updater":Lmiui/maml/data/VariableUpdater;
    invoke-virtual {v1}, Lmiui/maml/data/VariableUpdater;->resume()V

    goto :goto_0

    .end local v1    # "updater":Lmiui/maml/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    iget-object v2, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableUpdater;

    .local v1, "updater":Lmiui/maml/data/VariableUpdater;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/data/VariableUpdater;->tick(J)V

    goto :goto_0

    .end local v1    # "updater":Lmiui/maml/data/VariableUpdater;
    :cond_0
    return-void
.end method
