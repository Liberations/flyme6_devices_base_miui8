.class public Lmiui/util/LongScreenshotUtils$ContentPort;
.super Ljava/lang/Object;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentPort"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/LongScreenshotUtils$ContentPort$H;
    }
.end annotation


# instance fields
.field private mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

.field private mIsFakeTouchForScroll:Z

.field private mIsFirstMove:Z

.field private mMainScrollView:Landroid/view/View;

.field private mMainScrollViewTop:I

.field private mNeedUseMultiTouch:Z

.field private mPrevScrolledY:I

.field private mPrevScrolledYChildView:Landroid/view/View;

.field private mScreenRect:Landroid/graphics/Rect;

.field private mTempLoc:[I

.field private mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mTotalScrollDistance:I

.field private mTouchY:I

.field private mVerticalEdge:I

.field private mVerticalScrollBarEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    new-instance v1, Lmiui/util/LongScreenshotUtils$ContentPort$H;

    invoke-direct {v1, p0}, Lmiui/util/LongScreenshotUtils$ContentPort$H;-><init>(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    new-array v1, v3, [I

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    new-array v1, v3, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-array v1, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v1, v1, v0

    iput v0, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v0

    iput v4, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v0

    iput v4, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .locals 0
    .param p0, "x0"    # Lmiui/util/LongScreenshotUtils$ContentPort;

    .prologue
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->start()V

    return-void
.end method

.method static synthetic access$100(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lmiui/util/LongScreenshotUtils$ContentPort;

    .prologue
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .locals 0
    .param p0, "x0"    # Lmiui/util/LongScreenshotUtils$ContentPort;

    .prologue
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->scrollView()V

    return-void
.end method

.method static synthetic access$300(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .locals 0
    .param p0, "x0"    # Lmiui/util/LongScreenshotUtils$ContentPort;

    .prologue
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->broadcastCallback()V

    return-void
.end method

.method static synthetic access$400(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .locals 0
    .param p0, "x0"    # Lmiui/util/LongScreenshotUtils$ContentPort;

    .prologue
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->finish()V

    return-void
.end method

.method private broadcastCallback()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    iget-object v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lt v4, v5, :cond_2

    :cond_0
    move v1, v3

    .local v1, "isEnd":Z
    :goto_0
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    if-eqz v4, :cond_3

    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v3, v4

    .local v2, "scrolledY":I
    :goto_1
    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    add-int/2addr v3, v2

    iput v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.miui.util.LongScreenshotUtils.LongScreenshot"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "IsEnd"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "TopLoc"

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "BottomLoc"

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "ViewTop"

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "ViewBottom"

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v1, :cond_1

    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v4, 0x4

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isEnd":Z
    .end local v2    # "scrolledY":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "isEnd":Z
    :cond_3
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-object v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v3, v5, v3

    sub-int v3, v4, v3

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    sub-int v2, v3, v4

    .restart local v2    # "scrolledY":I
    goto :goto_1
.end method

.method private checkIsMainScrollView(Landroid/view/View;)Z
    .locals 11
    .param p1, "currView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p1, v6}, Landroid/view/View;->canScrollVertically(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string v5, "LongScreenshotUtils"

    const-string v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v2, v6, 0x3

    .local v2, "minWidth":I
    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    .local v1, "halfScreenHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lt v6, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lt v6, v1, :cond_0

    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-direct {v3, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v6, v6, v4

    iget-object v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v7, v7, v5

    iget-object v8, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v8, v8, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v9, v9, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lt v6, v2, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lt v6, v1, :cond_0

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v4, v4, v5

    iput v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-static {p1, v4}, Lmiui/util/LongScreenshotUtils$ContentPort;->findVisibleTop(Landroid/view/View;I)I

    move-result v4

    iput v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    move v4, v5

    goto :goto_0
.end method

.method private checkIsMayHasBg()Z
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, "mainClsName":Ljava/lang/String;
    const-string v2, "com.miui.notes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.miui.notes.editor.RichEditView$RichEditScrollView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.tencent.mobileqq.bubble.ChatXListView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "com.tencent.mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkNeedFakeTouchForScroll()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AbsListView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ScrollView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->isRecyclerView(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AbsoluteLayout;

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_0

    const-string v1, "com.ucmobile"

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.eg.android.AlipayGphone"

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dispatchFakeTouchEvent(I)V
    .locals 19
    .param p1, "action"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v6, p1

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .local v18, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private dispatchMoveAndReset(I)V
    .locals 4
    .param p1, "distance"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    invoke-direct {p0, v3}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    iput-boolean v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    invoke-direct {p0, v2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    invoke-direct {p0, v3}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    goto :goto_0
.end method

.method private findMainScrollView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Lmiui/util/LongScreenshotUtils$ContentPort;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .local v1, "decorView":Landroid/view/View;
    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->findScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .end local v1    # "decorView":Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "LongScreenshotUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get top activity in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findScrollView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "currView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v2, v3

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lmiui/util/LongScreenshotUtils$ContentPort;->findScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .local v2, "result":Landroid/view/View;
    if-nez v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    .end local v2    # "result":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p1}, Lmiui/util/LongScreenshotUtils$ContentPort;->checkIsMainScrollView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v2, p1

    goto :goto_0

    :cond_4
    move-object v2, v3

    goto :goto_0
.end method

.method private static findVisibleTop(Landroid/view/View;I)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "absTop"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "offset":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .restart local p0    # "view":Landroid/view/View;
    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    sub-int/2addr p1, v0

    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private finish()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->removeMessages(I)V

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalScrollBarEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    goto :goto_0
.end method

.method private getExpectScrollDistance()I
    .locals 4

    .prologue
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v2

    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .local v0, "h":I
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isTencentApp()Z

    move-result v1

    .local v1, "isTencentApp":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AbsoluteLayout;

    if-eqz v2, :cond_0

    div-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method

.method private getScrollViewVisibleHeight()I
    .locals 3

    .prologue
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .local v0, "height":I
    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gt v1, v2, :cond_0

    .end local v0    # "height":I
    :goto_0
    return v0

    .restart local v0    # "height":I
    :cond_0
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method private static getTopActivity()Landroid/app/Activity;
    .locals 10

    .prologue
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    .local v3, "activityThread":Landroid/app/ActivityThread;
    :try_start_0
    const-class v8, Landroid/app/ActivityThread;

    const-string v9, "mActivities"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .local v7, "map":Landroid/util/ArrayMap;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "activityClientRecord":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, "activityField":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "activityClientRecord":Ljava/lang/Object;
    .end local v2    # "activityField":Ljava/lang/reflect/Field;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "i":I
    .end local v7    # "map":Landroid/util/ArrayMap;
    :goto_1
    return-object v0

    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "activityClientRecord":Ljava/lang/Object;
    .restart local v2    # "activityField":Ljava/lang/reflect/Field;
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v6    # "i":I
    .restart local v7    # "map":Landroid/util/ArrayMap;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "activityClientRecord":Ljava/lang/Object;
    .end local v2    # "activityField":Ljava/lang/reflect/Field;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "i":I
    .end local v7    # "map":Landroid/util/ArrayMap;
    :catch_0
    move-exception v4

    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isNestedScrollView(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    const-string v0, "android.support.v4.widget.NestedScrollView"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method private isRecyclerView(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    const-string v0, "android.support.v7.widget.RecyclerView"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isRecyclerView(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method private isTencentApp()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "com.tencent."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private scrollView()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getExpectScrollDistance()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->scrollY(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private scrollY(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "distance"    # I

    .prologue
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    instance-of v1, p1, Landroid/widget/ScrollView;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/webkit/WebView;

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/widget/AbsoluteLayout;

    if-nez v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :goto_0
    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNeedUseMultiTouch:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchMoveAndReset(I)V

    .end local p1    # "view":Landroid/view/View;
    :goto_1
    return-void

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v1, p2

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    goto :goto_1

    :cond_2
    instance-of v1, p1, Landroid/widget/AbsListView;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/widget/AbsListView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    goto :goto_1

    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1
.end method

.method private start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->checkIsMayHasBg()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    :cond_0
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalScrollBarEnabled:Z

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->checkNeedFakeTouchForScroll()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isTencentApp()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNeedUseMultiTouch:Z

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    invoke-direct {p0, v2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    :cond_1
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public longScreenshot(I)Z
    .locals 4
    .param p1, "cmd"    # I

    .prologue
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->findMainScrollView()Landroid/view/View;

    move-result-object v0

    .local v0, "mainScrollView":Landroid/view/View;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-eq p1, v1, :cond_0

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    invoke-virtual {v2, v1}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v0    # "mainScrollView":Landroid/view/View;
    :pswitch_1
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessage(I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
