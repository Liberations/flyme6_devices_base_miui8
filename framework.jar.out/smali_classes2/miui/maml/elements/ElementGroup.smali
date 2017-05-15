.class public Lmiui/maml/elements/ElementGroup;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "ElementGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ElementGroup$1;,
        Lmiui/maml/elements/ElementGroup$LinearDirection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML_ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME1:Ljava/lang/String; = "Group"


# instance fields
.field protected mClip:Z

.field protected mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private mHovered:Z

.field private mIndexVar:Lmiui/maml/data/IndexedVariable;

.field private mLayered:Z

.field private mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

.field private mTouched:Z


# direct methods
.method private constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "indexVar"    # Lmiui/maml/data/IndexedVariable;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    sget-object v0, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object p2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    sget-object v0, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-direct {p0, p1}, Lmiui/maml/elements/ElementGroup;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public static createArrayGroup(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)Lmiui/maml/elements/ElementGroup;
    .locals 1
    .param p0, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p1, "indexVar"    # Lmiui/maml/data/IndexedVariable;

    .prologue
    new-instance v0, Lmiui/maml/elements/ElementGroup;

    invoke-direct {v0, p0, p1}, Lmiui/maml/elements/ElementGroup;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)V

    return-object v0
.end method

.method public static isArrayGroup(Lmiui/maml/elements/ScreenElement;)Z
    .locals 1
    .param p0, "se"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    instance-of v0, p0, Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    check-cast p0, Lmiui/maml/elements/ElementGroup;

    .end local p0    # "se":Lmiui/maml/elements/ScreenElement;
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 7
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v5, "clip"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    const-string v5, "layered"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    const-string v5, "linear"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "linear":Ljava/lang/String;
    const-string v5, "h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lmiui/maml/elements/ElementGroup$LinearDirection;->Horizontal:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v5, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .local v1, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .local v3, "item":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v3}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ElementGroup;->addElement(Lmiui/maml/elements/ScreenElement;)V

    .end local v3    # "item":Lorg/w3c/dom/Element;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "N":I
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    :cond_4
    const-string v5, "v"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lmiui/maml/elements/ElementGroup$LinearDirection;->Vertical:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v5, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    goto :goto_0
.end method


# virtual methods
.method public acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V
    .locals 3
    .param p1, "v"    # Lmiui/maml/elements/ScreenElementVisitor;

    .prologue
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addElement(Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "newElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lmiui/maml/elements/ScreenElement;->setParent(Lmiui/maml/elements/ElementGroup;)V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getWidth()F

    move-result v9

    .local v9, "w":F
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getHeight()F

    move-result v7

    .local v7, "h":F
    invoke-virtual {p0, v10, v9}, Lmiui/maml/elements/ElementGroup;->getLeft(FF)F

    move-result v1

    .local v1, "x":F
    invoke-virtual {p0, v10, v7}, Lmiui/maml/elements/ElementGroup;->getTop(FF)F

    move-result v2

    .local v2, "y":F
    const/4 v8, 0x0

    .local v8, "rs":I
    iget-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    if-eqz v0, :cond_1

    cmpl-float v0, v9, v10

    if-lez v0, :cond_1

    cmpl-float v0, v7, v10

    if-lez v0, :cond_1

    add-float v3, v1, v9

    add-float v4, v2, v7

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getAlpha()I

    move-result v5

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v8

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    cmpl-float v0, v9, v10

    if-lez v0, :cond_0

    cmpl-float v0, v7, v10

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v10, v10, v9, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ElementGroup;->doRenderChildren(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    goto :goto_0
.end method

.method protected doRenderChildren(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    .local v1, "element":Lmiui/maml/elements/ScreenElement;
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    invoke-virtual {v1, p1}, Lmiui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_1
    return-void
.end method

.method protected doTick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->doTickChildren(J)V

    return-void
.end method

.method protected doTickChildren(J)V
    .locals 13
    .param p1, "currentTime"    # J

    .prologue
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "currentPos":F
    const/4 v6, 0x0

    .local v6, "maxSize":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    .local v3, "element":Lmiui/maml/elements/ScreenElement;
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v10, v5

    invoke-virtual {v8, v10, v11}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    invoke-virtual {v3, p1, p2}, Lmiui/maml/elements/ScreenElement;->tick(J)V

    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    sget-object v9, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    if-eq v8, v9, :cond_1

    instance-of v8, v3, Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v1, v3

    check-cast v1, Lmiui/maml/elements/AnimatedScreenElement;

    .local v1, "ae":Lmiui/maml/elements/AnimatedScreenElement;
    sget-object v8, Lmiui/maml/elements/ElementGroup$1;->$SwitchMap$miui$maml$elements$ElementGroup$LinearDirection:[I

    iget-object v9, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v9}, Lmiui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .end local v1    # "ae":Lmiui/maml/elements/AnimatedScreenElement;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .restart local v1    # "ae":Lmiui/maml/elements/AnimatedScreenElement;
    :pswitch_0
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginLeft()F

    move-result v8

    add-float/2addr v2, v8

    float-to-double v8, v2

    invoke-virtual {v1, v8, v9}, Lmiui/maml/elements/AnimatedScreenElement;->setX(D)V

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v8

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginRight()F

    move-result v9

    add-float/2addr v8, v9

    add-float/2addr v2, v8

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v4

    .local v4, "h":F
    cmpg-float v8, v6, v4

    if-gez v8, :cond_1

    move v6, v4

    goto :goto_1

    .end local v4    # "h":F
    :pswitch_1
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginTop()F

    move-result v8

    add-float/2addr v2, v8

    float-to-double v8, v2

    invoke-virtual {v1, v8, v9}, Lmiui/maml/elements/AnimatedScreenElement;->setY(D)V

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v8

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginBottom()F

    move-result v9

    add-float/2addr v8, v9

    add-float/2addr v2, v8

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v7

    .local v7, "w":F
    cmpg-float v8, v6, v7

    if-gez v8, :cond_1

    move v6, v7

    goto :goto_1

    .end local v1    # "ae":Lmiui/maml/elements/AnimatedScreenElement;
    .end local v3    # "element":Lmiui/maml/elements/ScreenElement;
    .end local v7    # "w":F
    :cond_2
    sget-object v8, Lmiui/maml/elements/ElementGroup$1;->$SwitchMap$miui$maml$elements$ElementGroup$LinearDirection:[I

    iget-object v9, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v9}, Lmiui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    :goto_2
    return-void

    :pswitch_2
    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setW(D)V

    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setH(D)V

    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualWidth(D)V

    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualHeight(D)V

    goto :goto_2

    :pswitch_3
    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setH(D)V

    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setW(D)V

    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualHeight(D)V

    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualWidth(D)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    .local v1, "ele":Lmiui/maml/elements/ScreenElement;
    if-eqz v1, :cond_0

    move-object v3, v1

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3, p1}, Lmiui/maml/elements/ScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 5

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ScreenElement;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MAML_ElementGroup"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public getChild(I)Lmiui/maml/elements/ScreenElement;
    .locals 1
    .param p1, "index"    # I

    .prologue
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement;

    goto :goto_0
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getParentLeft()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getLeft()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v0

    goto :goto_0
.end method

.method protected getParentTop()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getTop()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 6

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isArray()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayered()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    return v0
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .locals 2
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mFactory:Lmiui/maml/elements/ScreenElementFactory;

    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1, v1}, Lmiui/maml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    return-object v0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/ElementGroup;->touched(FF)Z

    move-result v4

    .local v4, "touched":Z
    iget-boolean v6, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v6, :cond_2

    if-nez v4, :cond_2

    iget-boolean v6, p0, Lmiui/maml/elements/ElementGroup;->mHovered:Z

    if-eqz v6, :cond_0

    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_2
    const/4 v3, 0x0

    .local v3, "ret":Z
    iget-object v5, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    iget-object v5, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    .local v1, "element":Lmiui/maml/elements/ScreenElement;
    iget-object v5, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v6, v2

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_3
    invoke-virtual {v1, p1}, Lmiui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v3, 0x1

    .end local v1    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_4
    if-eqz v3, :cond_6

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mHovered:Z

    iget-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mHovered:Z

    goto :goto_0

    .restart local v1    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v1    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_6
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_2
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v9

    if-nez v9, :cond_0

    move v7, v8

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .local v1, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0, v9, v10}, Lmiui/maml/elements/ElementGroup;->touched(FF)Z

    move-result v6

    .local v6, "touched":Z
    iget-boolean v9, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v9, :cond_2

    if-nez v6, :cond_2

    iget-boolean v9, p0, Lmiui/maml/elements/ElementGroup;->mTouched:Z

    if-nez v9, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_2
    const/4 v4, 0x0

    .local v4, "ret":Z
    iget-object v9, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    iget-object v9, p0, Lmiui/maml/elements/ElementGroup;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v9}, Lmiui/maml/ScreenElementRoot;->version()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_5

    move v5, v7

    .local v5, "reverse":Z
    :goto_1
    if-eqz v5, :cond_7

    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_4

    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    .local v2, "element":Lmiui/maml/elements/ScreenElement;
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v10, v3

    invoke-virtual {v8, v10, v11}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_3
    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v4, 0x1

    .end local v2    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_4
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    if-eqz v4, :cond_a

    :goto_4
    iput-boolean v7, p0, Lmiui/maml/elements/ElementGroup;->mTouched:Z

    iget-boolean v7, p0, Lmiui/maml/elements/ElementGroup;->mTouched:Z

    goto :goto_0

    .end local v3    # "i":I
    .end local v5    # "reverse":Z
    :cond_5
    move v5, v8

    goto :goto_1

    .restart local v2    # "element":Lmiui/maml/elements/ScreenElement;
    .restart local v3    # "i":I
    .restart local v5    # "reverse":Z
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .end local v2    # "element":Lmiui/maml/elements/ScreenElement;
    .end local v3    # "i":I
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_4

    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    .restart local v2    # "element":Lmiui/maml/elements/ScreenElement;
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v10, v3

    invoke-virtual {v8, v10, v11}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_8
    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v4, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .end local v2    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_a
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_4
.end method

.method protected onVisibilityChange(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->pause()V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->pause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pauseAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->pauseAnim(J)V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public playAnim(JJJZZ)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/AnimatedScreenElement;->playAnim(JJJZZ)V

    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v0, :cond_1

    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v2, v10

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeAllElements()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->requestUpdate()V

    return-void
.end method

.method public removeElement(Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "element"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->requestUpdate()V

    return-void
.end method

.method public reset(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->reset(J)V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->resume()V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->resume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resumeAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->resumeAnim(J)V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .locals 6
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->setAnim([Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setClip(Z)V
    .locals 0
    .param p1, "clip"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "show"    # Z

    .prologue
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->showCategory(Ljava/lang/String;Z)V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
