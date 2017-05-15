.class public Lmiui/maml/MiAdvancedView;
.super Landroid/view/View;
.source "MiAdvancedView.java"

# interfaces
.implements Lmiui/maml/RendererController$IRenderable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MiAdvancedView"


# instance fields
.field private mLoggedHardwareRender:Z

.field protected mNeedDisallowInterceptTouchEvent:Z

.field private mPaused:Z

.field private mPivotX:I

.field private mPivotY:I

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field private mScale:F

.field private mThread:Lmiui/maml/RenderThread;

.field private mUseExternalRenderThread:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->setFocusableInTouchMode(Z)V

    iput-object p2, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    new-instance v1, Lmiui/maml/MiAdvancedView$1;

    invoke-direct {v1, p0}, Lmiui/maml/MiAdvancedView$1;-><init>(Lmiui/maml/MiAdvancedView;)V

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setOnHoverChangeListener(Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p3, "t"    # Lmiui/maml/RenderThread;

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    iput-object p3, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->init()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->cleanUp(Z)V

    return-void
.end method

.method public cleanUp(Z)V
    .locals 2
    .param p1, "keepResource"    # Z

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    invoke-virtual {p0, v1}, Lmiui/maml/MiAdvancedView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->setStop()V

    iput-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->detachFromRenderThread(Lmiui/maml/RenderThread;)V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfFinish()V

    goto :goto_0
.end method

.method public doRender()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->postInvalidate()V

    return-void
.end method

.method public final getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->attachToRenderThread(Lmiui/maml/RenderThread;)V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfInit()V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "__objView"

    invoke-virtual {v0, v1, p0}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/maml/RenderThread;

    invoke-direct {v0}, Lmiui/maml/RenderThread;-><init>()V

    iput-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->init()V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->onCreateRenderThread(Lmiui/maml/RenderThread;)V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    iget-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->setPaused(Z)V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->start()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreateRenderThread(Lmiui/maml/RenderThread;)V
    .locals 0
    .param p1, "t"    # Lmiui/maml/RenderThread;

    .prologue
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v1}, Lmiui/maml/RenderThread;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    if-nez v1, :cond_2

    const-string v1, "MiAdvancedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canvas hardware render: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    :cond_2
    iget v1, p0, Lmiui/maml/MiAdvancedView;->mScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .local v0, "sa":I
    iget v1, p0, Lmiui/maml/MiAdvancedView;->mScale:F

    iget v2, p0, Lmiui/maml/MiAdvancedView;->mScale:F

    iget v3, p0, Lmiui/maml/MiAdvancedView;->mPivotX:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/maml/MiAdvancedView;->mPivotY:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .end local v0    # "sa":I
    :cond_3
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string v2, "accessibilityText"

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    iget-object v5, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v2, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .local v2, "vars":Lmiui/maml/data/Variables;
    const-string v5, "view_width"

    sub-int v6, p4, p2

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string v5, "view_height"

    sub-int v6, p5, p3

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    move v3, p2

    .local v3, "x":I
    move v4, p3

    .local v4, "y":I
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mParent:Landroid/view/ViewParent;

    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v5, v0, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .local v1, "parentView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .end local v1    # "parentView":Landroid/view/View;
    :cond_0
    const-string v5, "view_x"

    int-to-float v6, v3

    iget-object v7, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string v5, "view_y"

    int-to-float v6, v4

    iget-object v7, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget-object v5, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->setPaused(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->setPaused(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfResume()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    .local v0, "b":Z
    iget-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    :cond_0
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    .end local v0    # "b":Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScale(FII)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    iput p1, p0, Lmiui/maml/MiAdvancedView;->mScale:F

    iput p2, p0, Lmiui/maml/MiAdvancedView;->mPivotX:I

    iput p3, p0, Lmiui/maml/MiAdvancedView;->mPivotY:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->onResume()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->onPause()V

    goto :goto_0
.end method
