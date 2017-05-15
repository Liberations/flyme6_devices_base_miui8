.class public Lmiui/maml/elements/ListScreenElement;
.super Lmiui/maml/elements/ElementGroup;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ListScreenElement$1;,
        Lmiui/maml/elements/ListScreenElement$ListData;,
        Lmiui/maml/elements/ListScreenElement$Column;,
        Lmiui/maml/elements/ListScreenElement$ColumnInfo;,
        Lmiui/maml/elements/ListScreenElement$DataIndexMap;,
        Lmiui/maml/elements/ListScreenElement$ListItemElement;
    }
.end annotation


# static fields
.field private static ACC:D = 0.0

.field private static DATA_TYPE_BITMAP:Ljava/lang/String; = null

.field private static DATA_TYPE_DOUBLE:Ljava/lang/String; = null

.field private static DATA_TYPE_FLOAT:Ljava/lang/String; = null

.field private static DATA_TYPE_INTEGER:Ljava/lang/String; = null

.field private static DATA_TYPE_INTEGER1:Ljava/lang/String; = null

.field private static DATA_TYPE_LONG:Ljava/lang/String; = null

.field private static DATA_TYPE_STRING:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "ListScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "List"


# instance fields
.field protected mAttrDataBinders:Lmiui/maml/elements/AttrDataBinders;

.field private mBottomIndex:I

.field private mCachedItemCount:I

.field private mClearOnFinish:Z

.field private mColumnsInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ListScreenElement$ColumnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mCurrentTime:J

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ListScreenElement$DataIndexMap;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexedVariables:[Lmiui/maml/data/IndexedVariable;

.field private mInnerGroup:Lmiui/maml/elements/ElementGroup;

.field private mIsChildScroll:Z

.field private mIsScroll:Z

.field private mIsUpDirection:Z

.field private mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

.field private mItemCount:I

.field private mLastTime:J

.field protected mListData:Lmiui/maml/elements/ListScreenElement$ListData;

.field private mMaxHeight:Lmiui/maml/data/Expression;

.field private mMoving:Z

.field private mOffsetX:D

.field private mOffsetY:D

.field private mPressed:Z

.field private mReuseIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

.field private mSelectedId:I

.field private mSelectedIdVar:Lmiui/maml/data/IndexedVariable;

.field private mSpeed:D

.field private mStartAnimTime:J

.field private mStartAnimY:F

.field private mTopIndex:I

.field private mTouchStartX:D

.field private mTouchStartY:D

.field private mVisibleItemCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "string"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_STRING:Ljava/lang/String;

    const-string v0, "bitmap"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_BITMAP:Ljava/lang/String;

    const-string v0, "int"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER:Ljava/lang/String;

    const-string v0, "integer"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER1:Ljava/lang/String;

    const-string v0, "double"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_DOUBLE:Ljava/lang/String;

    const-string v0, "long"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_LONG:Ljava/lang/String;

    const-string v0, "float"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_FLOAT:Ljava/lang/String;

    const-wide/high16 v0, -0x3f77000000000000L    # -800.0

    sput-wide v0, Lmiui/maml/elements/ListScreenElement;->ACC:D

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 7
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v6, 0x1

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    const/4 v3, -0x1

    iput v3, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    if-nez v3, :cond_0

    const-string v3, "ListScreenElement"

    const-string v4, "no item"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "List: no item"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p0, v6}, Lmiui/maml/elements/ListScreenElement;->setClip(Z)V

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const-string v4, "maxHeight"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mMaxHeight:Lmiui/maml/data/Expression;

    const-string v3, "clearOnFinish"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/maml/elements/ListScreenElement;->mClearOnFinish:Z

    const-string v3, "data"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ListScreenElement"

    const-string v4, "no data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "List: no data"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->createColumnsInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    const-string v3, "ListScreenElement"

    const-string v4, "invalid item data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "List: invalid item data"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lmiui/maml/data/IndexedVariable;

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexedVariables:[Lmiui/maml/data/IndexedVariable;

    const-string v3, "AttrDataBinders"

    invoke-static {p1, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .local v0, "child":Lorg/w3c/dom/Element;
    if-nez v0, :cond_3

    const-string v3, "ListScreenElement"

    const-string v4, "no attr data binder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "List: no attr data binder"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v3, Lmiui/maml/elements/AttrDataBinders;

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContextVariables:Lmiui/maml/data/ContextVariables;

    invoke-direct {v3, v0, v4}, Lmiui/maml/elements/AttrDataBinders;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/ContextVariables;)V

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mAttrDataBinders:Lmiui/maml/elements/AttrDataBinders;

    const-string v3, "Data"

    invoke-static {p1, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v3, Lmiui/maml/elements/ListScreenElement$ListData;

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v3, v0, v4, p0}, Lmiui/maml/elements/ListScreenElement$ListData;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/elements/ListScreenElement;)V

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mListData:Lmiui/maml/elements/ListScreenElement$ListData;

    :cond_4
    const-string v3, "scrollbar"

    invoke-virtual {p0, v3}, Lmiui/maml/elements/ListScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v2

    .local v2, "se":Lmiui/maml/elements/ScreenElement;
    instance-of v3, v2, Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Lmiui/maml/elements/AnimatedScreenElement;

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    sget-object v4, Lmiui/maml/elements/ScreenElement$AlignV;->TOP:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v4, v3, Lmiui/maml/elements/AnimatedScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {p0, v2}, Lmiui/maml/elements/ListScreenElement;->removeElement(Lmiui/maml/elements/ScreenElement;)V

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, v3}, Lmiui/maml/elements/ListScreenElement;->addElement(Lmiui/maml/elements/ScreenElement;)V

    :cond_5
    new-instance v3, Lmiui/maml/data/IndexedVariable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/maml/elements/ListScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".selectedId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v3, v4, v5, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedIdVar:Lmiui/maml/data/IndexedVariable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_BITMAP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_DOUBLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_LONG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_FLOAT:Ljava/lang/String;

    return-object v0
.end method

.method private bindData(Lmiui/maml/elements/ListScreenElement$ListItemElement;II)V
    .locals 8
    .param p1, "item"    # Lmiui/maml/elements/ListScreenElement$ListItemElement;
    .param p2, "elementIndex"    # I
    .param p3, "dataIndex"    # I

    .prologue
    if-ltz p3, :cond_0

    iget v6, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    if-lt p3, v6, :cond_2

    :cond_0
    const-string v6, "ListScreenElement"

    const-string v7, "invalid item data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget-object v2, v6, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .local v2, "objects":[Ljava/lang/Object;
    invoke-virtual {p1, p3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iput p2, v6, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    int-to-float v6, p3

    iget-object v7, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v7}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-double v4, v6

    .local v4, "y":D
    double-to-float v6, v4

    float-to-double v6, v6

    invoke-virtual {p1, v6, v7}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setY(D)V

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    iget-object v3, v6, Lmiui/maml/ScreenContext;->mContextVariables:Lmiui/maml/data/ContextVariables;

    .local v3, "vars":Lmiui/maml/data/ContextVariables;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v6, v6, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    aget-object v7, v2, v1

    invoke-virtual {v3, v6, v7}, Lmiui/maml/data/ContextVariables;->setVar(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mAttrDataBinders:Lmiui/maml/elements/AttrDataBinders;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mAttrDataBinders:Lmiui/maml/elements/AttrDataBinders;

    invoke-virtual {v6, p1}, Lmiui/maml/elements/AttrDataBinders;->bind(Lmiui/maml/elements/ElementGroup;)V

    goto :goto_0
.end method

.method private checkVisibility()V
    .locals 5

    .prologue
    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v4}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/elements/ScreenElement;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    .local v3, "lie":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v0

    .local v0, "dataIndex":I
    if-ltz v0, :cond_1

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mTopIndex:I

    if-lt v0, v4, :cond_1

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mBottomIndex:I

    if-gt v0, v4, :cond_1

    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->show(Z)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->show(Z)V

    goto :goto_1

    .end local v0    # "dataIndex":I
    .end local v3    # "lie":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    :cond_2
    return-void
.end method

.method private clearEmptyRow()V
    .locals 10

    .prologue
    iget-object v9, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, "size":I
    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    iget-object v9, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    .local v7, "map":Lmiui/maml/elements/ListScreenElement$DataIndexMap;
    iget-object v2, v7, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .local v2, "datas":[Ljava/lang/Object;
    const/4 v5, 0x1

    .local v5, "isEmpty":Z
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v1, v0, v4

    .local v1, "data":Ljava/lang/Object;
    if-eqz v1, :cond_2

    const/4 v5, 0x0

    .end local v1    # "data":Ljava/lang/Object;
    :cond_0
    if-nez v5, :cond_3

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "datas":[Ljava/lang/Object;
    .end local v4    # "i$":I
    .end local v5    # "isEmpty":Z
    .end local v6    # "len$":I
    .end local v7    # "map":Lmiui/maml/elements/ListScreenElement$DataIndexMap;
    :cond_1
    return-void

    .restart local v0    # "arr$":[Ljava/lang/Object;
    .restart local v1    # "data":Ljava/lang/Object;
    .restart local v2    # "datas":[Ljava/lang/Object;
    .restart local v4    # "i$":I
    .restart local v5    # "isEmpty":Z
    .restart local v6    # "len$":I
    .restart local v7    # "map":Lmiui/maml/elements/ListScreenElement$DataIndexMap;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "data":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0, v3}, Lmiui/maml/elements/ListScreenElement;->removeItem(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method private getItem(I)Lmiui/maml/elements/ListScreenElement$ListItemElement;
    .locals 3
    .param p1, "index"    # I

    .prologue
    if-ltz p1, :cond_0

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    if-lt p1, v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget v0, v2, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .local v0, "elementIndex":I
    const/4 v1, 0x0

    .local v1, "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    if-ltz v0, :cond_3

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    check-cast v1, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    .restart local v1    # "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    :cond_3
    if-ltz v0, :cond_4

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v2

    if-eq v2, p1, :cond_5

    :cond_4
    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->getUseableElementIndex()I

    move-result v0

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    check-cast v1, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    .restart local v1    # "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v2

    if-gez v2, :cond_5

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->reset()V

    :cond_5
    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v2

    if-ne v2, p1, :cond_6

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget-boolean v2, v2, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    if-eqz v2, :cond_1

    :cond_6
    invoke-direct {p0, v1, v0, p1}, Lmiui/maml/elements/ListScreenElement;->bindData(Lmiui/maml/elements/ListScreenElement$ListItemElement;II)V

    goto :goto_0
.end method

.method private getUseableElementIndex()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    if-lez v1, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "elementIndex":I
    :goto_0
    iget-boolean v2, p0, Lmiui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return v0

    .end local v0    # "elementIndex":I
    :cond_0
    iget-boolean v2, p0, Lmiui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "elementIndex":I
    goto :goto_0

    .end local v0    # "elementIndex":I
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "elementIndex":I
    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private moveTo(D)V
    .locals 7
    .param p1, "y"    # D

    .prologue
    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v1

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float v2, v2

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v2, v1

    cmpg-double v1, p1, v2

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v1

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float v2, v2

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double p1, v1

    iput-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v1, p1, v2

    if-lez v1, :cond_1

    const-wide/16 p1, 0x0

    iput-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    double-to-float v2, p1

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lmiui/maml/elements/ElementGroup;->setY(D)V

    neg-double v2, p1

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v1

    float-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v3

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v4}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmiui/maml/elements/ListScreenElement;->mTopIndex:I

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v1

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mTopIndex:I

    add-int/2addr v1, v2

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmiui/maml/elements/ListScreenElement;->mBottomIndex:I

    iget v0, p0, Lmiui/maml/elements/ListScreenElement;->mTopIndex:I

    .local v0, "index":I
    :goto_0
    iget v1, p0, Lmiui/maml/elements/ListScreenElement;->mBottomIndex:I

    if-gt v0, v1, :cond_2

    invoke-direct {p0, v0}, Lmiui/maml/elements/ListScreenElement;->getItem(I)Lmiui/maml/elements/ListScreenElement$ListItemElement;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->checkVisibility()V

    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->updateScorllBar()V

    return-void
.end method

.method private resetInner()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->show(Z)V

    :cond_0
    iput-boolean v1, p0, Lmiui/maml/elements/ListScreenElement;->mMoving:Z

    iput-boolean v1, p0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    iput-boolean v1, p0, Lmiui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    return-void
.end method

.method private setVariables()V
    .locals 8

    .prologue
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    .local v1, "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    iget-object v3, v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    sget-object v4, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexedVariables:[Lmiui/maml/data/IndexedVariable;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexedVariables:[Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v6}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v7, v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v7}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->isNumber()Z

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    aput-object v4, v3, v2

    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexedVariables:[Lmiui/maml/data/IndexedVariable;

    aget-object v4, v3, v2

    iget v3, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    if-gez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    iget v5, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget-object v3, v3, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    aget-object v3, v3, v2

    goto :goto_1

    .end local v1    # "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    :cond_3
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getY()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimY:F

    return-void
.end method

.method private updateScorllBar()V
    .locals 14

    .prologue
    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float v1, v1

    iget-object v10, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v10}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v10

    mul-float/2addr v1, v10

    float-to-double v2, v1

    .local v2, "itemsHeight":D
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v1

    float-to-double v8, v1

    .local v8, "zoneHeight":D
    div-double v4, v8, v2

    .local v4, "rate":D
    const/4 v0, 0x1

    .local v0, "isShow":Z
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v4, v10

    if-ltz v1, :cond_0

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getY()F

    move-result v1

    float-to-double v10, v1

    sub-double v12, v8, v2

    div-double v6, v10, v12

    .local v6, "yRate":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v6, v10

    if-lez v1, :cond_1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v4

    mul-double/2addr v10, v8

    mul-double/2addr v10, v6

    double-to-float v10, v10

    float-to-double v10, v10

    invoke-virtual {v1, v10, v11}, Lmiui/maml/elements/AnimatedScreenElement;->setY(D)V

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    mul-double v10, v8, v4

    double-to-float v10, v10

    float-to-double v10, v10

    invoke-virtual {v1, v10, v11}, Lmiui/maml/elements/AnimatedScreenElement;->setH(D)V

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/AnimatedScreenElement;->show(Z)V

    .end local v0    # "isShow":Z
    .end local v2    # "itemsHeight":D
    .end local v4    # "rate":D
    .end local v6    # "yRate":D
    .end local v8    # "zoneHeight":D
    :cond_2
    return-void
.end method


# virtual methods
.method public addColumn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    .local v1, "columnIndex":I
    iget-object v8, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "columnSize":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    if-ge v6, v2, :cond_2

    iget-object v8, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v8, v8, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v1, v6

    :cond_2
    if-ltz v1, :cond_0

    array-length v0, p2

    .local v0, "N":I
    iget-object v8, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "dataSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_6

    const/4 v3, 0x0

    .local v3, "data":Ljava/lang/Object;
    if-ge v5, v0, :cond_3

    aget-object v3, p2, v5

    .end local v3    # "data":Ljava/lang/Object;
    :cond_3
    iget-object v8, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    .local v7, "map":Lmiui/maml/elements/ListScreenElement$DataIndexMap;
    invoke-virtual {v7, v1, v3}, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->setData(ILjava/lang/Object;)V

    iget-object v8, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget v8, v8, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    if-ltz v8, :cond_4

    invoke-direct {p0, v5}, Lmiui/maml/elements/ListScreenElement;->getItem(I)Lmiui/maml/elements/ListScreenElement$ListItemElement;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v4    # "dataSize":I
    .end local v5    # "i":I
    .end local v7    # "map":Lmiui/maml/elements/ListScreenElement$DataIndexMap;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .restart local v0    # "N":I
    .restart local v4    # "dataSize":I
    .restart local v5    # "i":I
    :cond_6
    move v5, v4

    :goto_3
    if-ge v5, v0, :cond_7

    iget-object v8, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v3, v8, [Ljava/lang/Object;

    .local v3, "data":[Ljava/lang/Object;
    aget-object v8, p2, v5

    aput-object v8, v3, v1

    invoke-virtual {p0, v3}, Lmiui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v3    # "data":[Ljava/lang/Object;
    :cond_7
    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->clearEmptyRow()V

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->requestUpdate()V

    goto :goto_0
.end method

.method public varargs addItem([Ljava/lang/Object;)V
    .locals 8
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v4, p1

    iget-object v5, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    const-string v4, "ListScreenElement"

    const-string v5, "invalid item data count"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    array-length v0, p1

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->validate(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ListScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid item data type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-direct {v6, v4}, Lmiui/maml/elements/ListScreenElement$DataIndexMap;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/ListScreenElement;->descale(D)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/ListScreenElement;->setActualHeight(D)V

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getHeight()F

    move-result v4

    iget-object v5, p0, Lmiui/maml/elements/ListScreenElement;->mMaxHeight:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ListScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/ListScreenElement;->scale(D)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v5}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmiui/maml/elements/ListScreenElement;->mVisibleItemCount:I

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mVisibleItemCount:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Lmiui/maml/elements/ListScreenElement;->mCachedItemCount:I

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v4}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mCachedItemCount:I

    if-ge v3, v4, :cond_4

    new-instance v2, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v4, v4, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mNode:Lorg/w3c/dom/Element;

    iget-object v5, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v5, v5, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v2, v4, v5}, Lmiui/maml/elements/ListScreenElement$ListItemElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .local v2, "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v4, v2}, Lmiui/maml/elements/ElementGroup;->addElement(Lmiui/maml/elements/ScreenElement;)V

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    iget v5, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iput v3, v4, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    iput v4, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    invoke-virtual {v2}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->init()V

    const/4 v4, -0x1

    iput v4, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/elements/ListScreenElement;->bindData(Lmiui/maml/elements/ListScreenElement$ListItemElement;II)V

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    iget v5, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2    # "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    :cond_4
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->requestUpdate()V

    goto/16 :goto_0
.end method

.method protected doTick(J)V
    .locals 13
    .param p1, "currentTime"    # J

    .prologue
    const-wide/16 v6, 0x0

    const-wide v10, 0x408f400000000000L    # 1000.0

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->doTick(J)V

    iget-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    iget-boolean v4, p0, Lmiui/maml/elements/ListScreenElement;->mPressed:Z

    if-nez v4, :cond_1

    iget-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    sub-long v0, p1, v4

    .local v0, "time":J
    iget-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    sget-wide v6, Lmiui/maml/elements/ListScreenElement;->ACC:D

    long-to-double v8, v0

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    add-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    :cond_0
    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->resetInner()V

    :goto_0
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->requestUpdate()V

    .end local v0    # "time":J
    :cond_1
    return-void

    .restart local v0    # "time":J
    :cond_2
    iget-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    long-to-double v6, v0

    mul-double/2addr v4, v6

    div-double/2addr v4, v10

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sget-wide v8, Lmiui/maml/elements/ListScreenElement;->ACC:D

    mul-double/2addr v6, v8

    long-to-double v8, v0

    mul-double/2addr v6, v8

    long-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimY:F

    float-to-double v6, v4

    iget-boolean v4, p0, Lmiui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    neg-double v4, v4

    :goto_1
    add-double v2, v6, v4

    .local v2, "yOfInnerGroup":D
    invoke-direct {p0, v2, v3}, Lmiui/maml/elements/ListScreenElement;->moveTo(D)V

    goto :goto_0

    .end local v2    # "yOfInnerGroup":D
    :cond_3
    iget-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    goto :goto_1
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget v3, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    if-ltz v3, :cond_0

    iget v3, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget v1, v3, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .local v1, "elementIndex":I
    if-ltz v1, :cond_0

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v3}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    .local v2, "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    invoke-virtual {v2, p1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .local v0, "ele":Lmiui/maml/elements/ScreenElement;
    if-eqz v0, :cond_0

    .end local v0    # "ele":Lmiui/maml/elements/ScreenElement;
    .end local v1    # "elementIndex":I
    .end local v2    # "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->finish()V

    iget-boolean v0, p0, Lmiui/maml/elements/ListScreenElement;->mClearOnFinish:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->removeAllItems()V

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mListData:Lmiui/maml/elements/ListScreenElement$ListData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mListData:Lmiui/maml/elements/ListScreenElement$ListData;

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement$ListData;->finish()V

    :cond_1
    return-void
.end method

.method public getColumnsInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ListScreenElement$ColumnInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeight()F
    .locals 4

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mMaxHeight:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getHeight()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float v0, v0

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mMaxHeight:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v1}, Lmiui/maml/elements/ListScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ListScreenElement;->scale(D)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->resetInner()V

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lmiui/maml/elements/ElementGroup;->setY(D)V

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ListScreenElement;->descale(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ListScreenElement;->setActualHeight(D)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedIdVar:Lmiui/maml/data/IndexedVariable;

    iget v1, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->setVariables()V

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mListData:Lmiui/maml/elements/ListScreenElement$ListData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mListData:Lmiui/maml/elements/ListScreenElement$ListData;

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement$ListData;->init()V

    :cond_0
    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .locals 4
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .local v0, "tag":Ljava/lang/String;
    const-string v1, "Item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    if-nez v1, :cond_0

    new-instance v1, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, p1, v2}, Lmiui/maml/elements/ListScreenElement$ListItemElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    new-instance v1, Lmiui/maml/elements/ElementGroup;

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, v2, v3}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->isVisible()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .local v7, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .local v8, "y":F
    const/4 v6, 0x0

    .local v6, "ret":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-super/range {p0 .. p1}, Lmiui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mInterceptTouch:Z

    if-eqz v9, :cond_9

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lmiui/maml/elements/ListScreenElement;->touched(FF)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mMoving:Z

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mPressed:Z

    const-string v9, "down"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmiui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lmiui/maml/elements/ListScreenElement;->onActionDown(FF)V

    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mLastTime:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v9}, Lmiui/maml/elements/ElementGroup;->getAbsoluteTop()F

    move-result v9

    sub-float v9, v8, v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v12}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v12

    div-float/2addr v9, v12

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v9, v12

    move-object/from16 v0, p0

    iput v9, v0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ListScreenElement;->mSelectedIdVar:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    int-to-double v12, v12

    invoke-virtual {v9, v12, v13}, Lmiui/maml/data/IndexedVariable;->set(D)V

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->setVariables()V

    float-to-double v12, v7

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mTouchStartX:D

    float-to-double v12, v8

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mTouchStartY:D

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->updateScorllBar()V

    const/4 v6, 0x1

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mMoving:Z

    if-eqz v9, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mCurrentTime:J

    float-to-double v12, v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lmiui/maml/elements/ListScreenElement;->mTouchStartY:D

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    float-to-double v12, v7

    move-object/from16 v0, p0

    iget-wide v14, v0, Lmiui/maml/elements/ListScreenElement;->mTouchStartX:D

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetX:D

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-nez v9, :cond_3

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    if-nez v9, :cond_3

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .local v4, "absOffsetY":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetX:D

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .local v2, "absOffsetX":D
    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    cmpl-double v9, v4, v12

    if-lez v9, :cond_6

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    if-nez v9, :cond_6

    cmpl-double v9, v4, v2

    if-ltz v9, :cond_6

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    .end local v2    # "absOffsetX":D
    .end local v4    # "absOffsetY":D
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    const-wide/16 v14, 0x0

    cmpg-double v9, v12, v14

    if-ltz v9, :cond_4

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    if-eqz v9, :cond_7

    :cond_4
    const/4 v9, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-eqz v9, :cond_5

    const/4 v9, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->setAction(I)V

    const-string v9, "move"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmiui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lmiui/maml/elements/ListScreenElement;->onActionMove(FF)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lmiui/maml/elements/ListScreenElement;->mCurrentTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/elements/ListScreenElement;->mLastTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-double v14, v14

    div-double/2addr v12, v14

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v9}, Lmiui/maml/elements/ElementGroup;->getY()F

    move-result v9

    float-to-double v12, v9

    move-object/from16 v0, p0

    iget-wide v14, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    add-double v10, v12, v14

    .local v10, "yOfInnerGroup":D
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lmiui/maml/elements/ListScreenElement;->moveTo(D)V

    float-to-double v12, v8

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mTouchStartY:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mCurrentTime:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mLastTime:J

    .end local v10    # "yOfInnerGroup":D
    :cond_5
    const/4 v6, 0x1

    goto/16 :goto_1

    .restart local v2    # "absOffsetX":D
    .restart local v4    # "absOffsetY":D
    :cond_6
    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    cmpl-double v9, v2, v12

    if-lez v9, :cond_3

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-nez v9, :cond_3

    cmpg-double v9, v4, v2

    if-gez v9, :cond_3

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    goto/16 :goto_2

    .end local v2    # "absOffsetX":D
    .end local v4    # "absOffsetY":D
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    :pswitch_2
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mPressed:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mMoving:Z

    if-eqz v9, :cond_1

    const-string v9, "ListScreenElement"

    const-string v12, "unlock touch up"

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "up"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmiui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->onActionUp()V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    const-wide/high16 v14, 0x4079000000000000L    # 400.0

    cmpg-double v9, v12, v14

    if-gez v9, :cond_8

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->resetInner()V

    :goto_4
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->startAnimation()V

    goto :goto_4

    :pswitch_3
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mPressed:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lmiui/maml/elements/ListScreenElement;->mMoving:Z

    if-eqz v9, :cond_1

    const-string v9, "cancel"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmiui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->resetInner()V

    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllItems()V
    .locals 4

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->removeAllElements()V

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lmiui/maml/elements/ElementGroup;->setY(D)V

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ListScreenElement;->descale(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ListScreenElement;->setActualHeight(D)V

    return-void
.end method

.method public removeItem(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    if-ltz p1, :cond_0

    iget v6, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    if-lt p1, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v6, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/ListScreenElement;->descale(D)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/ListScreenElement;->setActualHeight(D)V

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "removeIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v6}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    .local v2, "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    invoke-virtual {v2}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v0

    .local v0, "dataIndex":I
    if-ne v0, p1, :cond_3

    move v4, v1

    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    const-wide v6, -0x10000000000001L

    invoke-virtual {v2, v6, v7}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setY(D)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->show(Z)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-le v0, p1, :cond_2

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v2, v6}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v7}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v6, v7}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setY(D)V

    goto :goto_2

    .end local v0    # "dataIndex":I
    .end local v2    # "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    :cond_4
    if-lez v3, :cond_5

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "reuseId":I
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v6}, Lmiui/maml/elements/ElementGroup;->getY()F

    move-result v6

    float-to-double v6, v6

    invoke-direct {p0, v6, v7}, Lmiui/maml/elements/ListScreenElement;->moveTo(D)V

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5    # "reuseId":I
    :cond_5
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->requestUpdate()V

    goto/16 :goto_0
.end method
