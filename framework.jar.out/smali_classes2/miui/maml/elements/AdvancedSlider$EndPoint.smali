.class Lmiui/maml/elements/AdvancedSlider$EndPoint;
.super Lmiui/maml/elements/AdvancedSlider$SliderPoint;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndPoint"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "EndPoint"


# instance fields
.field public mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

.field private mPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/AdvancedSlider$Position;",
            ">;"
        }
    .end annotation
.end field

.field private mPathX:Lmiui/maml/data/Expression;

.field private mPathY:Lmiui/maml/data/Expression;

.field private mRawTolerance:I

.field private mTolerance:F

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p2, "node"    # Lorg/w3c/dom/Element;
    .param p3, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    const-string v0, "EndPoint"

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    const/16 v0, 0x96

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    invoke-direct {p0, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/maml/elements/AdvancedSlider$EndPoint;FF)Lmiui/maml/util/Utils$Point;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/AdvancedSlider$EndPoint;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getNearestPoint(FF)Lmiui/maml/util/Utils$Point;

    move-result-object v0

    return-object v0
.end method

.method private getNearestPoint(FF)Lmiui/maml/util/Utils$Point;
    .locals 22
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    new-instance v12, Lmiui/maml/util/Utils$Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v18, v0

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F
    invoke-static/range {v18 .. v18}, Lmiui/maml/elements/AdvancedSlider;->access$600(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v18

    sub-float v18, p1, v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v20, v0

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F
    invoke-static/range {v20 .. v20}, Lmiui/maml/elements/AdvancedSlider;->access$700(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v20

    sub-float v20, p2, v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v12, v0, v1, v2, v3}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    :cond_0
    return-object v12

    :cond_1
    const/4 v12, 0x0

    .local v12, "pos":Lmiui/maml/util/Utils$Point;
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .local v6, "dist":D
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v18, v0

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F
    invoke-static/range {v18 .. v18}, Lmiui/maml/elements/AdvancedSlider;->access$600(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v18

    sub-float v16, p1, v18

    .local v16, "x0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v18, v0

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F
    invoke-static/range {v18 .. v18}, Lmiui/maml/elements/AdvancedSlider;->access$700(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v18

    sub-float v17, p2, v18

    .local v17, "y0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiui/maml/elements/AdvancedSlider$Position;

    .local v14, "pt1":Lmiui/maml/elements/AdvancedSlider$Position;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmiui/maml/elements/AdvancedSlider$Position;

    .local v15, "pt2":Lmiui/maml/elements/AdvancedSlider$Position;
    new-instance v10, Lmiui/maml/util/Utils$Point;

    invoke-virtual {v14}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual {v14}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .local v10, "p1":Lmiui/maml/util/Utils$Point;
    new-instance v11, Lmiui/maml/util/Utils$Point;

    invoke-virtual {v15}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual {v15}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v11, v0, v1, v2, v3}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .local v11, "p2":Lmiui/maml/util/Utils$Point;
    new-instance v9, Lmiui/maml/util/Utils$Point;

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v9, v0, v1, v2, v3}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .local v9, "p0":Lmiui/maml/util/Utils$Point;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v10, v11, v9, v0}, Lmiui/maml/util/Utils;->pointProjectionOnSegment(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)Lmiui/maml/util/Utils$Point;

    move-result-object v13

    .local v13, "pt":Lmiui/maml/util/Utils$Point;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v13, v9, v0}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v4

    .local v4, "d":D
    cmpg-double v18, v4, v6

    if-gez v18, :cond_2

    move-wide v6, v4

    move-object v12, v13

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->loadTask(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->loadPath(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private loadPath(Lorg/w3c/dom/Element;)V
    .locals 10
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const-string v0, "Path"

    invoke-static {p1, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .local v6, "ele":Lorg/w3c/dom/Element;
    if-nez v6, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    :cond_0
    return-void

    :cond_1
    const-string v0, "tolerance"

    const/16 v1, 0x96

    invoke-virtual {p0, v6, v0, v1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    .local v2, "vars":Lmiui/maml/data/Variables;
    const-string v0, "x"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathX:Lmiui/maml/data/Expression;

    const-string v0, "y"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathY:Lmiui/maml/data/Expression;

    const-string v0, "Position"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .local v8, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v7, v0, :cond_0

    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .local v3, "item":Lorg/w3c/dom/Element;
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    new-instance v0, Lmiui/maml/elements/AdvancedSlider$Position;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathX:Lmiui/maml/data/Expression;

    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathY:Lmiui/maml/data/Expression;

    invoke-direct/range {v0 .. v5}, Lmiui/maml/elements/AdvancedSlider$Position;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private loadTask(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const-string v3, "Intent"

    invoke-static {p1, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .local v1, "intentEle":Lorg/w3c/dom/Element;
    const-string v3, "Command"

    invoke-static {p1, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .local v0, "commandEle":Lorg/w3c/dom/Element;
    const-string v3, "Trigger"

    invoke-static {p1, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .local v2, "triggerEle":Lorg/w3c/dom/Element;
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V

    iput-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    new-instance v4, Lmiui/maml/util/IntentInfo;

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lmiui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    iput-object v4, v3, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {v0, v4}, Lmiui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/ActionCommand;

    move-result-object v4

    iput-object v4, v3, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object v3, v3, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-nez v3, :cond_0

    const-string v3, "LockScreen_AdvancedSlider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid Command element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_0

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    new-instance v4, Lmiui/maml/CommandTrigger;

    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v4, v2, v5}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v4, v3, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->finish()V

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->finish()V

    :cond_0
    return-void
.end method

.method public getTransformedDist(Lmiui/maml/util/Utils$Point;FF)F
    .locals 10
    .param p1, "pt"    # Lmiui/maml/util/Utils$Point;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    const v0, 0x7effffff

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F
    invoke-static {v4}, Lmiui/maml/elements/AdvancedSlider;->access$600(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v4

    sub-float v1, p2, v4

    .local v1, "x0":F
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F
    invoke-static {v4}, Lmiui/maml/elements/AdvancedSlider;->access$700(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v4

    sub-float v2, p3, v4

    .local v2, "y0":F
    new-instance v4, Lmiui/maml/util/Utils$Point;

    float-to-double v6, v1

    float-to-double v8, v2

    invoke-direct {v4, v6, v7, v8, v9}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v4

    double-to-float v0, v4

    .local v0, "dist":F
    iget v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_0

    move v0, v3

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->init()V

    :cond_0
    iget v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    return-void
.end method

.method protected onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V
    .locals 2
    .param p1, "pre"    # Lmiui/maml/elements/AdvancedSlider$State;
    .param p2, "s"    # Lmiui/maml/elements/AdvancedSlider$State;

    .prologue
    sget-object v0, Lmiui/maml/elements/AdvancedSlider$State;->Invalid:Lmiui/maml/elements/AdvancedSlider$State;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lmiui/maml/elements/AdvancedSlider$1;->$SwitchMap$miui$maml$elements$AdvancedSlider$State:[I

    invoke-virtual {p2}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mReachedSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->pause()V

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->resume()V

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->resume()V

    :cond_0
    return-void
.end method
