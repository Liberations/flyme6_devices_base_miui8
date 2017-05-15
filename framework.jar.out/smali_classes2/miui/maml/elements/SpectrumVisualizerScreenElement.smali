.class public Lmiui/maml/elements/SpectrumVisualizerScreenElement;
.super Lmiui/maml/elements/ImageScreenElement;
.source "SpectrumVisualizerScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SpectrumVisualizer"


# instance fields
.field private mAlphaWidthNum:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDotbar:Ljava/lang/String;

.field private mPanel:Landroid/graphics/Bitmap;

.field private mPanelSrc:Ljava/lang/String;

.field private mResDensity:I

.field private mShadow:Ljava/lang/String;

.field private mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-direct {p0, p1}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "panelSrc"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    const-string v0, "dotbarSrc"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    const-string v0, "shadowSrc"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    new-instance v0, Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {p0}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/widget/SpectrumVisualizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    iget-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v0, v2}, Lmiui/widget/SpectrumVisualizer;->setSoftDrawEnabled(Z)V

    iget-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v0, v2}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    const-string v0, "alphaWidthNum"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mAlphaWidthNum:I

    goto :goto_0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->getTop()F

    move-result v2

    iget-object v3, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->doRender(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public enableUpdate(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v0, p1}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    return-void
.end method

.method protected getBitmap(Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 3
    .param p1, "sync"    # Z

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDensity(I)V

    iget-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    iget-object v1, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lmiui/widget/SpectrumVisualizer;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    iget-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    iget-object v0, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    goto :goto_0
.end method

.method public init()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-super {p0}, Lmiui/maml/elements/ImageScreenElement;->init()V

    iget-object v5, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v6

    :goto_0
    iput-object v5, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v6

    .local v1, "dotbar":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v5, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v3, v6

    .local v3, "shadow":Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {p0}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->getWidth()F

    move-result v5

    float-to-int v4, v5

    .local v4, "width":I
    invoke-virtual {p0}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->getHeight()F

    move-result v5

    float-to-int v2, v5

    .local v2, "height":I
    if-lez v4, :cond_0

    if-gtz v2, :cond_1

    :cond_0
    iget-object v5, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :cond_1
    if-nez v1, :cond_6

    const-string v5, "SpectrumVisualizerScreenElement"

    const-string v6, "no dotbar"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    .end local v1    # "dotbar":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "shadow":Landroid/graphics/Bitmap;
    .end local v4    # "width":I
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v7, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v7, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .restart local v1    # "dotbar":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {p0}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v6, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    .restart local v2    # "height":I
    .restart local v3    # "shadow":Landroid/graphics/Bitmap;
    .restart local v4    # "width":I
    :cond_5
    const-string v5, "SpectrumVisualizerScreenElement"

    const-string v6, "no panel or size"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v5, v4, v2, v1, v3}, Lmiui/widget/SpectrumVisualizer;->setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget v5, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mAlphaWidthNum:I

    if-ltz v5, :cond_7

    iget-object v5, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    iget v6, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mAlphaWidthNum:I

    invoke-virtual {v5, v6}, Lmiui/widget/SpectrumVisualizer;->setAlphaNum(I)V

    :cond_7
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    iput v5, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    iget-object v5, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v5, v8, v8, v4, v2}, Lmiui/widget/SpectrumVisualizer;->layout(IIII)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget v5, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v5, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    goto :goto_3
.end method
