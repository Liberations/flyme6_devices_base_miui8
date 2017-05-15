.class public abstract Lmiui/maml/elements/AnimatedScreenElement;
.super Lmiui/maml/elements/ScreenElement;
.source "AnimatedScreenElement.java"


# static fields
.field private static final sHoverPaintColor:I = -0x7f000100

.field private static final sPaintColor:I = -0x4c06f6


# instance fields
.field private mActualXVar:Lmiui/maml/data/IndexedVariable;

.field private mActualYVar:Lmiui/maml/data/IndexedVariable;

.field protected mAlpha:I

.field private mAlphaExpression:Lmiui/maml/data/Expression;

.field private mAlphas:Lmiui/maml/animation/AlphaAnimation;

.field private mBaseXExpression:Lmiui/maml/data/Expression;

.field private mBaseYExpression:Lmiui/maml/data/Expression;

.field private mCamera:Landroid/graphics/Camera;

.field protected mContentDescription:Ljava/lang/String;

.field protected mContentDescriptionExp:Lmiui/maml/data/Expression;

.field protected mHasContentDescription:Z

.field private mHeightExpression:Lmiui/maml/data/Expression;

.field private mHoverPaint:Landroid/graphics/Paint;

.field protected mInterceptTouch:Z

.field private mIsHaptic:Z

.field private mMarginBottom:F

.field private mMarginLeft:F

.field private mMarginRight:F

.field private mMarginTop:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mPivotXExpression:Lmiui/maml/data/Expression;

.field private mPivotYExpression:Lmiui/maml/data/Expression;

.field private mPivotZ:Lmiui/maml/data/Expression;

.field private mPositions:Lmiui/maml/animation/PositionAnimation;

.field protected mPressed:Z

.field private mRotationExpression:Lmiui/maml/data/Expression;

.field private mRotationX:Lmiui/maml/data/Expression;

.field private mRotationY:Lmiui/maml/data/Expression;

.field private mRotationZ:Lmiui/maml/data/Expression;

.field private mRotations:Lmiui/maml/animation/RotationAnimation;

.field private mScaleExpression:Lmiui/maml/data/Expression;

.field private mScaleXExpression:Lmiui/maml/data/Expression;

.field private mScaleYExpression:Lmiui/maml/data/Expression;

.field private mScales:Lmiui/maml/animation/ScaleAnimation;

.field private mSizes:Lmiui/maml/animation/SizeAnimation;

.field protected mTouchable:Z

.field private mWidthExpression:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHoverPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->load(Lorg/w3c/dom/Element;)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    const v1, -0x4c06f6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHoverPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHoverPaint:Landroid/graphics/Paint;

    const v1, -0x7f000100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 2
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "node"    # Lorg/w3c/dom/Element;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "compatibleName"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p2, p3}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .local v0, "exp":Lmiui/maml/data/Expression;
    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2, p4}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private handleCancel()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    const-string v0, "cancel"

    invoke-virtual {p0, v0}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    .local v0, "vars":Lmiui/maml/data/Variables;
    const-string v2, "x"

    const-string v3, "left"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    const-string v2, "y"

    const-string v3, "top"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    const-string v2, "w"

    const-string v3, "width"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    const-string v2, "h"

    const-string v3, "height"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    const-string v2, "angle"

    const-string v3, "rotation"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationExpression:Lmiui/maml/data/Expression;

    const-string v2, "centerX"

    const-string v3, "pivotX"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotXExpression:Lmiui/maml/data/Expression;

    const-string v2, "centerY"

    const-string v3, "pivotY"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotYExpression:Lmiui/maml/data/Expression;

    const-string v2, "alpha"

    invoke-direct {p0, v0, p1, v2, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphaExpression:Lmiui/maml/data/Expression;

    const-string v2, "scale"

    invoke-direct {p0, v0, p1, v2, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    const-string v2, "scaleX"

    invoke-direct {p0, v0, p1, v2, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    const-string v2, "scaleY"

    invoke-direct {p0, v0, p1, v2, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    const-string v2, "angleX"

    const-string v3, "rotationX"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    const-string v2, "angleY"

    const-string v3, "rotationY"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    const-string v2, "angleZ"

    const-string v3, "rotationZ"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    const-string v2, "centerZ"

    const-string v3, "pivotZ"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZ:Lmiui/maml/data/Expression;

    iget-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v2, :cond_1

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "actual_x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualXVar:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "actual_y"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualYVar:Lmiui/maml/data/IndexedVariable;

    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    if-nez v2, :cond_2

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    if-nez v2, :cond_2

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    :cond_3
    const-string v2, "touchable"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    const-string v2, "interceptTouch"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    const-string v2, "haptic"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    const-string v2, "contentDescription"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    const-string v2, "contentDescriptionExp"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_5

    :cond_4
    :goto_1
    iput-boolean v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    const-string v1, "marginLeft"

    invoke-static {p1, v1, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    const-string v1, "marginRight"

    invoke-static {p1, v1, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    const-string v1, "marginTop"

    invoke-static {p1, v1, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    const-string v1, "marginBottom"

    invoke-static {p1, v1, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected doRenderWithTranslation(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .local v15, "sc":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotationX()F

    move-result v12

    .local v12, "rx":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotationY()F

    move-result v13

    .local v13, "ry":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotationZ()F

    move-result v14

    .local v14, "rz":F
    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, v12, v13, v14}, Landroid/graphics/Camera;->rotate(FFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZ:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    const/4 v7, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZ:Lmiui/maml/data/Expression;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v7, v0, v1}, Landroid/graphics/Camera;->translate(FFF)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v7}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .end local v12    # "rx":F
    .end local v13    # "ry":F
    .end local v14    # "rz":F
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotation()F

    move-result v11

    .local v11, "rotation":F
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getScaleX()F

    move-result v16

    .local v16, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getScaleY()F

    move-result v17

    .local v17, "scaleY":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v16, v2

    if-nez v2, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v17, v2

    if-eqz v2, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v19

    .local v19, "x":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v20

    .local v20, "y":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotX()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v7

    sub-float v7, v19, v7

    sub-float v9, v2, v7

    .local v9, "pivotXToX":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotY()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v7

    sub-float v7, v20, v7

    sub-float v10, v2, v7

    .local v10, "pivotYToY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    neg-float v7, v9

    neg-float v0, v10

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v2, v7, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    add-float v7, v9, v19

    add-float v21, v10, v20

    move/from16 v0, v21

    invoke-virtual {v2, v7, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p1}, Lmiui/maml/elements/AnimatedScreenElement;->doRender(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-boolean v2, v2, Lmiui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v18

    .local v18, "width":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v8

    .local v8, "height":F
    const/4 v2, 0x0

    cmpl-float v2, v18, v2

    if-lez v2, :cond_6

    const/4 v2, 0x0

    cmpl-float v2, v8, v2

    if-lez v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v3

    .local v3, "left":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v4

    .local v4, "top":F
    add-float v5, v3, v18

    .local v5, "right":F
    add-float v6, v4, v8

    .local v6, "bottom":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .end local v3    # "left":F
    .end local v4    # "top":F
    .end local v5    # "right":F
    .end local v6    # "bottom":F
    .end local v8    # "height":F
    .end local v18    # "width":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getHoverElement()Lmiui/maml/elements/AnimatedScreenElement;

    move-result-object v2

    move-object/from16 v0, p0

    if-ne v2, v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v18

    .restart local v18    # "width":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v8

    .restart local v8    # "height":F
    const/4 v2, 0x0

    cmpl-float v2, v18, v2

    if-lez v2, :cond_7

    const/4 v2, 0x0

    cmpl-float v2, v8, v2

    if-lez v2, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v3

    .restart local v3    # "left":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v4

    .restart local v4    # "top":F
    add-float v5, v3, v18

    .restart local v5    # "right":F
    add-float v6, v4, v8

    .restart local v6    # "bottom":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/AnimatedScreenElement;->mHoverPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .end local v3    # "left":F
    .end local v4    # "top":F
    .end local v5    # "right":F
    .end local v6    # "bottom":F
    .end local v8    # "height":F
    .end local v18    # "width":F
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected doTick(J)V
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualXVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualYVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->evaluateAlpha()I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    return-void

    :cond_1
    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    goto :goto_0
.end method

.method protected evaluateAlpha()I
    .locals 6

    .prologue
    const/16 v2, 0xff

    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphaExpression:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphaExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v0, v4

    .local v0, "alpha":I
    :goto_0
    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/AlphaAnimation;->getAlpha()I

    move-result v1

    .local v1, "alpha1":I
    :goto_1
    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v0

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    instance-of v2, v2, Lmiui/maml/elements/LayerScreenElement;

    if-nez v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    instance-of v2, v2, Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->isLayered()Z

    move-result v2

    if-eqz v2, :cond_3

    .end local v0    # "alpha":I
    :cond_0
    :goto_2
    return v0

    .end local v1    # "alpha1":I
    :cond_1
    move v0, v2

    goto :goto_0

    .restart local v0    # "alpha":I
    :cond_2
    move v1, v2

    goto :goto_1

    .restart local v1    # "alpha1":I
    :cond_3
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->getAlpha()I

    move-result v2

    invoke-static {v0, v2}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v0

    goto :goto_2
.end method

.method public getAbsoluteLeft()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v0

    goto :goto_0
.end method

.method public getAbsoluteTop()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v0

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    return v0
.end method

.method protected getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getHeightRaw()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getHeight()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_1
    double-to-float v0, v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method

.method protected getLeft()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v0

    return v0
.end method

.method public final getMarginBottom()F
    .locals 2

    .prologue
    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public final getMarginLeft()F
    .locals 2

    .prologue
    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public final getMarginRight()F
    .locals 2

    .prologue
    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public final getMarginTop()F
    .locals 2

    .prologue
    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getMaxHeight()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getMaxHeight()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method

.method protected getMaxWidth()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getMaxWidth()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method

.method protected getPivotX()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotXRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getPivotXRaw()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotXExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotXExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_0
    double-to-float v0, v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getPivotY()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotYRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getPivotYRaw()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotYExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotYExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_0
    double-to-float v0, v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getRotation()F
    .locals 4

    .prologue
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    .local v0, "angle":D
    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    if-eqz v2, :cond_1

    double-to-float v2, v0

    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    invoke-virtual {v3}, Lmiui/maml/animation/RotationAnimation;->getAngle()F

    move-result v3

    add-float/2addr v2, v3

    :goto_1
    return v2

    .end local v0    # "angle":D
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .restart local v0    # "angle":D
    :cond_1
    double-to-float v2, v0

    goto :goto_1
.end method

.method protected getRotationX()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_0
    double-to-float v0, v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getRotationY()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_0
    double-to-float v0, v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getRotationZ()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_0
    double-to-float v0, v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getScaleX()F
    .locals 4

    .prologue
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    .local v0, "scale":D
    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/ScaleAnimation;->getScaleX()D

    move-result-wide v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    :goto_1
    return v2

    .end local v0    # "scale":D
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .restart local v0    # "scale":D
    :cond_2
    double-to-float v2, v0

    goto :goto_1
.end method

.method protected getScaleY()F
    .locals 4

    .prologue
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    .local v0, "scale":D
    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/ScaleAnimation;->getScaleY()D

    move-result-wide v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    :goto_1
    return v2

    .end local v0    # "scale":D
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .restart local v0    # "scale":D
    :cond_2
    double-to-float v2, v0

    goto :goto_1
.end method

.method protected getTop()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getWidthRaw()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getWidth()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_1
    double-to-float v0, v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method

.method protected getX()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getXRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getXRaw()F
    .locals 4

    .prologue
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    .local v0, "x":D
    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/PositionAnimation;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_0
    double-to-float v2, v0

    return v2

    .end local v0    # "x":D
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getY()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getYRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getYRaw()F
    .locals 4

    .prologue
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    .local v0, "y":D
    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/PositionAnimation;->getY()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_0
    double-to-float v2, v0

    return v2

    .end local v0    # "y":D
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    return-void
.end method

.method protected onActionCancel()V
    .locals 0

    .prologue
    return-void
.end method

.method protected onActionDown(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string v1, "down"

    invoke-virtual {v0, p0, v1}, Lmiui/maml/ScreenElementRoot;->onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-void
.end method

.method protected onActionMove(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string v1, "move"

    invoke-virtual {v0, p0, v1}, Lmiui/maml/ScreenElementRoot;->onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-void
.end method

.method protected onActionUp()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string v1, "up"

    invoke-virtual {v0, p0, v1}, Lmiui/maml/ScreenElementRoot;->onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    const-string v0, "AlphaAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmiui/maml/animation/AlphaAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PositionAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lmiui/maml/animation/PositionAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    goto :goto_0

    :cond_1
    const-string v0, "RotationAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lmiui/maml/animation/RotationAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/RotationAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    goto :goto_0

    :cond_2
    const-string v0, "SizeAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lmiui/maml/animation/SizeAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/SizeAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    goto :goto_0

    :cond_3
    const-string v0, "ScaleAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lmiui/maml/animation/ScaleAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/ScaleAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;

    move-result-object v0

    goto :goto_0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    .local v0, "contentDescription":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .local v3, "y":F
    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v1

    .local v1, "ret":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->requestUpdate()V

    :cond_3
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5, p0, v0}, Lmiui/maml/ScreenElementRoot;->onHoverChange(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getHoverElement()Lmiui/maml/elements/AnimatedScreenElement;

    move-result-object v5

    if-eq v5, p0, :cond_4

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5, p0, v0}, Lmiui/maml/ScreenElementRoot;->onHoverChange(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSetAnimBefore()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    return-void
.end method

.method protected onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V
    .locals 1
    .param p1, "ani"    # Lmiui/maml/animation/BaseAnimation;

    .prologue
    instance-of v0, p1, Lmiui/maml/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    check-cast p1, Lmiui/maml/animation/AlphaAnimation;

    .end local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    iput-object p1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    :cond_0
    :goto_0
    return-void

    .restart local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    :cond_1
    instance-of v0, p1, Lmiui/maml/animation/PositionAnimation;

    if-eqz v0, :cond_2

    check-cast p1, Lmiui/maml/animation/PositionAnimation;

    .end local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    iput-object p1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    goto :goto_0

    .restart local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    :cond_2
    instance-of v0, p1, Lmiui/maml/animation/RotationAnimation;

    if-eqz v0, :cond_3

    check-cast p1, Lmiui/maml/animation/RotationAnimation;

    .end local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    iput-object p1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    goto :goto_0

    .restart local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    :cond_3
    instance-of v0, p1, Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_4

    check-cast p1, Lmiui/maml/animation/SizeAnimation;

    .end local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    iput-object p1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    goto :goto_0

    .restart local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    :cond_4
    instance-of v0, p1, Lmiui/maml/animation/ScaleAnimation;

    if-eqz v0, :cond_0

    check-cast p1, Lmiui/maml/animation/ScaleAnimation;

    .end local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    iput-object p1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .local v2, "y":F
    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->requestUpdate()V

    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    if-nez v5, :cond_1

    :cond_5
    move v3, v4

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-boolean v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5, v3}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    :cond_6
    const-string v5, "down"

    invoke-virtual {p0, v5}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v0

    const-string v5, "move"

    invoke-virtual {p0, v5}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->onActionMove(FF)V

    goto :goto_1

    :pswitch_2
    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v5, :cond_3

    iput-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5, v3}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    :cond_7
    const-string v5, "up"

    invoke-virtual {p0, v5}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionUp()V

    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    const-string v5, "cancel"

    invoke-virtual {p0, v5}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    goto :goto_2

    :pswitch_3
    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->handleCancel()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onVisibilityChange(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->handleCancel()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->handleCancel()V

    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->updateVisibility()V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setH(D)V
    .locals 5
    .param p1, "h"    # D

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    instance-of v0, v0, Lmiui/maml/data/Expression$NumberExpression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    check-cast v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;->setValue(D)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;-><init>(D)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    goto :goto_0
.end method

.method public setW(D)V
    .locals 5
    .param p1, "w"    # D

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    instance-of v0, v0, Lmiui/maml/data/Expression$NumberExpression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    check-cast v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;->setValue(D)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;-><init>(D)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    goto :goto_0
.end method

.method public setX(D)V
    .locals 5
    .param p1, "x"    # D

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    instance-of v0, v0, Lmiui/maml/data/Expression$NumberExpression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    check-cast v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;->setValue(D)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;-><init>(D)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    goto :goto_0
.end method

.method public setY(D)V
    .locals 5
    .param p1, "y"    # D

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    instance-of v0, v0, Lmiui/maml/data/Expression$NumberExpression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    check-cast v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;->setValue(D)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;-><init>(D)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    goto :goto_0
.end method

.method public touched(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FFZ)Z

    move-result v0

    return v0
.end method

.method public touched(FFZ)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isAbsolute"    # Z

    .prologue
    const/4 v6, 0x0

    if-eqz p3, :cond_0

    iget-object v7, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v7, :cond_1

    move v2, v6

    .local v2, "parentLeft":F
    :goto_0
    iget-object v7, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v7, :cond_2

    move v3, v6

    .local v3, "parentTop":F
    :goto_1
    sub-float/2addr p1, v2

    sub-float/2addr p2, v3

    .end local v2    # "parentLeft":F
    .end local v3    # "parentTop":F
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v1

    .local v1, "left":F
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v4

    .local v4, "top":F
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v5

    .local v5, "w":F
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    .local v0, "h":F
    cmpl-float v6, p1, v1

    if-ltz v6, :cond_3

    add-float v6, v1, v5

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_3

    cmpl-float v6, p2, v4

    if-ltz v6, :cond_3

    add-float v6, v4, v0

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    return v6

    .end local v0    # "h":F
    .end local v1    # "left":F
    .end local v4    # "top":F
    .end local v5    # "w":F
    :cond_1
    iget-object v7, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v7}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v2

    goto :goto_0

    .restart local v2    # "parentLeft":F
    :cond_2
    iget-object v6, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v6}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v3

    goto :goto_1

    .end local v2    # "parentLeft":F
    .restart local v0    # "h":F
    .restart local v1    # "left":F
    .restart local v4    # "top":F
    .restart local v5    # "w":F
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method
