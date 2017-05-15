.class public Lmiui/maml/component/MamlView;
.super Landroid/widget/FrameLayout;
.source "MamlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/component/MamlView$InnerView;
    }
.end annotation


# instance fields
.field private mHasDelay:Z

.field protected mNeedDisallowInterceptTouchEvent:Z

.field private mPivotX:I

.field private mPivotY:I

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field private mScale:F

.field private mUpdater:Lmiui/maml/RenderUpdater;

.field private mView:Lmiui/maml/component/MamlView$InnerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p3, "startDelay"    # J

    .prologue
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p3, "h"    # Landroid/os/Handler;
    .param p4, "startDelay"    # J

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lmiui/maml/component/MamlView;->setClickable(Z)V

    invoke-virtual {p0, v6}, Lmiui/maml/component/MamlView;->setFocusable(Z)V

    invoke-virtual {p0, v6}, Lmiui/maml/component/MamlView;->setFocusableInTouchMode(Z)V

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    new-instance v3, Lmiui/maml/component/MamlView$InnerView;

    invoke-direct {v3, p0, p1}, Lmiui/maml/component/MamlView$InnerView;-><init>(Lmiui/maml/component/MamlView;Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/maml/component/MamlView;->mView:Lmiui/maml/component/MamlView$InnerView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lmiui/maml/component/MamlView;->mView:Lmiui/maml/component/MamlView$InnerView;

    invoke-virtual {p0, v3, v2}, Lmiui/maml/component/MamlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p2, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v3, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3, p0}, Lmiui/maml/ScreenElementRoot;->setViewManager(Landroid/view/ViewManager;)V

    iget-object v3, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    new-instance v4, Lmiui/maml/component/MamlView$1;

    invoke-direct {v4, p0}, Lmiui/maml/component/MamlView$1;-><init>(Lmiui/maml/component/MamlView;)V

    invoke-virtual {v3, v4}, Lmiui/maml/ScreenElementRoot;->setOnHoverChangeListener(Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;)V

    new-instance v3, Lmiui/maml/component/MamlView$2;

    iget-object v4, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v3, p0, v4, p3}, Lmiui/maml/component/MamlView$2;-><init>(Lmiui/maml/component/MamlView;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_1

    iput-boolean v6, p0, Lmiui/maml/component/MamlView;->mHasDelay:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, "createTime":J
    iget-object v3, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v3, v0, v1, p4, p5}, Lmiui/maml/RenderUpdater;->setStartDelay(JJ)V

    .end local v0    # "createTime":J
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->init()V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/component/MamlView;)Lmiui/maml/component/MamlView$InnerView;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/component/MamlView;

    .prologue
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mView:Lmiui/maml/component/MamlView$InnerView;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/component/MamlView;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/component/MamlView;

    .prologue
    iget-boolean v0, p0, Lmiui/maml/component/MamlView;->mHasDelay:Z

    return v0
.end method

.method static synthetic access$200(Lmiui/maml/component/MamlView;)Lmiui/maml/RenderUpdater;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/component/MamlView;

    .prologue
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/maml/component/MamlView;)F
    .locals 1
    .param p0, "x0"    # Lmiui/maml/component/MamlView;

    .prologue
    iget v0, p0, Lmiui/maml/component/MamlView;->mScale:F

    return v0
.end method

.method static synthetic access$400(Lmiui/maml/component/MamlView;)I
    .locals 1
    .param p0, "x0"    # Lmiui/maml/component/MamlView;

    .prologue
    iget v0, p0, Lmiui/maml/component/MamlView;->mPivotX:I

    return v0
.end method

.method static synthetic access$500(Lmiui/maml/component/MamlView;)I
    .locals 1
    .param p0, "x0"    # Lmiui/maml/component/MamlView;

    .prologue
    iget v0, p0, Lmiui/maml/component/MamlView;->mPivotY:I

    return v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->cleanUp(Z)V

    return-void
.end method

.method public cleanUp(Z)V
    .locals 1
    .param p1, "keepResource"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->cleanUp()V

    return-void
.end method

.method public final getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "__objView"

    invoke-virtual {v0, v1, p0}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->init()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onResume()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onPause()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string v2, "accessibilityText"

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

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
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v5, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v2, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .local v2, "vars":Lmiui/maml/data/Variables;
    const-string v5, "view_width"

    sub-int v6, p4, p2

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string v5, "view_height"

    sub-int v6, p5, p3

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    move v3, p2

    .local v3, "x":I
    move v4, p3

    .local v4, "y":I
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mParent:Landroid/view/ViewParent;

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

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string v5, "view_y"

    int-to-float v6, v4

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget-object v5, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v5}, Lmiui/maml/RenderUpdater;->triggerUpdate()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->onResume()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    .local v0, "b":Z
    iget-boolean v1, p0, Lmiui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v0, p0, Lmiui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    :cond_0
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    return v1
.end method

.method public setAutoCleanup(Z)Lmiui/maml/component/MamlView;
    .locals 1
    .param p1, "autoCleanup"    # Z

    .prologue
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0, p1}, Lmiui/maml/RenderUpdater;->setAutoCleanup(Z)V

    return-object p0
.end method

.method public setScale(FII)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    iput p1, p0, Lmiui/maml/component/MamlView;->mScale:F

    iput p2, p0, Lmiui/maml/component/MamlView;->mPivotX:I

    iput p3, p0, Lmiui/maml/component/MamlView;->mPivotY:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onResume()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onPause()V

    goto :goto_0
.end method
