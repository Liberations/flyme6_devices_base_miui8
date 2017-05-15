.class public Lmiui/maml/CommandTriggers;
.super Ljava/lang/Object;
.source "CommandTriggers.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CommandTriggers"

.field public static final TAG_NAME:Ljava/lang/String; = "Triggers"


# instance fields
.field private mTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/CommandTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "ele"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lmiui/maml/CommandTriggers;->load(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    :cond_0
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "ele"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .local v2, "item":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Trigger"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .end local v2    # "item":Lorg/w3c/dom/Element;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v2    # "item":Lorg/w3c/dom/Element;
    :cond_1
    iget-object v3, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    new-instance v4, Lmiui/maml/CommandTrigger;

    invoke-direct {v4, v2, p2}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "item":Lorg/w3c/dom/Element;
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lmiui/maml/CommandTrigger;)V
    .locals 1
    .param p1, "t"    # Lmiui/maml/CommandTrigger;

    .prologue
    iget-object v0, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public find(Ljava/lang/String;)Lmiui/maml/CommandTrigger;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/CommandTrigger;

    .local v1, "t":Lmiui/maml/CommandTrigger;
    invoke-virtual {v1, p1}, Lmiui/maml/CommandTrigger;->isAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1    # "t":Lmiui/maml/CommandTrigger;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/CommandTrigger;

    .local v1, "t":Lmiui/maml/CommandTrigger;
    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->finish()V

    goto :goto_0

    .end local v1    # "t":Lmiui/maml/CommandTrigger;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/CommandTrigger;

    .local v1, "t":Lmiui/maml/CommandTrigger;
    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->init()V

    goto :goto_0

    .end local v1    # "t":Lmiui/maml/CommandTrigger;
    :cond_0
    return-void
.end method

.method public onAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/CommandTrigger;

    .local v1, "t":Lmiui/maml/CommandTrigger;
    invoke-virtual {v1, p1}, Lmiui/maml/CommandTrigger;->onAction(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "t":Lmiui/maml/CommandTrigger;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/CommandTrigger;

    .local v1, "t":Lmiui/maml/CommandTrigger;
    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->pause()V

    goto :goto_0

    .end local v1    # "t":Lmiui/maml/CommandTrigger;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/CommandTrigger;

    .local v1, "t":Lmiui/maml/CommandTrigger;
    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->resume()V

    goto :goto_0

    .end local v1    # "t":Lmiui/maml/CommandTrigger;
    :cond_0
    return-void
.end method
