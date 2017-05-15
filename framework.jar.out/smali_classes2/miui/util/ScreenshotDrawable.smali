.class public Lmiui/util/ScreenshotDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScreenshotDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenshotDrawable"

.field private static isdDisplayOled:Z

.field private static sHasRealBlur:Z

.field private static sTempLoc:[I


# instance fields
.field private mBgColor:I

.field private mBluredBitmap:Landroid/graphics/Bitmap;

.field private mOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private mOwnerView:Landroid/view/View;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    const-string v0, "ro.miui.has_real_blur"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/ScreenshotDrawable;->sHasRealBlur:Z

    const-string v0, "oled"

    const-string v1, "ro.display.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/util/ScreenshotDrawable;->isdDisplayOled:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "ownerView"    # Landroid/view/View;

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-boolean v0, Lmiui/util/ScreenshotDrawable;->isdDisplayOled:Z

    if-eqz v0, :cond_0

    const v0, 0x110d000f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lmiui/util/ScreenshotDrawable;->mBgColor:I

    return-void

    :cond_0
    const v0, 0x110d000e

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/util/ScreenshotDrawable;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lmiui/util/ScreenshotDrawable;

    .prologue
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/util/ScreenshotDrawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lmiui/util/ScreenshotDrawable;

    .prologue
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lmiui/util/ScreenshotDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lmiui/util/ScreenshotDrawable;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    iput-object p1, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private mixColor(II)I
    .locals 2
    .param p1, "color"    # I
    .param p2, "alpha"    # I

    .prologue
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/2addr v0, p2

    div-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xffffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method public static processBlurBehindFlag(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p2, "isUpdate"    # Z

    .prologue
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    .end local p1    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lmiui/util/ScreenshotDrawable;

    if-nez v1, :cond_0

    new-instance v0, Lmiui/util/ScreenshotDrawable;

    invoke-direct {v0, p0}, Lmiui/util/ScreenshotDrawable;-><init>(Landroid/view/View;)V

    .local v0, "screenshotDrawable":Lmiui/util/ScreenshotDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/util/ScreenshotDrawable;->setOriginalDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .end local v0    # "screenshotDrawable":Lmiui/util/ScreenshotDrawable;
    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lmiui/util/ScreenshotDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lmiui/util/ScreenshotDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiui/util/ScreenshotDrawable;->startVisibilityAnimator(Z)V

    goto :goto_0
.end method

.method private rebuildBluredBitmap()V
    .locals 7

    .prologue
    sget-boolean v2, Lmiui/util/ScreenshotDrawable;->sHasRealBlur:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    sget v4, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "screenshot":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    sget v3, Lmiui/util/ScreenshotUtils;->REAL_BLUR_RADIUS:I

    int-to-float v3, v3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "screenshot":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "ScreenshotDrawable"

    const-string v3, "Screenshot and fastblur failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startVisibilityAnimator(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    if-eqz p1, :cond_1

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v2}, Lmiui/util/ScreenshotDrawable;->setAlpha(I)V

    :goto_0
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    new-array v0, v1, [I

    iget-object v1, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/util/ScreenshotDrawable$2;

    invoke-direct {v1, p0}, Lmiui/util/ScreenshotDrawable$2;-><init>(Lmiui/util/ScreenshotDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    sget-object v5, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v4, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    div-int v1, v4, v5

    .local v1, "left":I
    sget-object v4, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    div-int v2, v4, v5

    .local v2, "top":I
    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sget v5, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    div-int v3, v4, v5

    .local v3, "width":I
    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget v5, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    div-int v0, v4, v5

    .local v0, "height":I
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    add-int v5, v1, v3

    add-int v6, v2, v0

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .end local v0    # "height":I
    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v3    # "width":I
    :cond_0
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    iget v4, p0, Lmiui/util/ScreenshotDrawable;->mBgColor:I

    iget-object v5, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lmiui/util/ScreenshotDrawable;->mixColor(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getOriginalDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/util/ScreenshotDrawable;->setAlpha(I)V

    return-void
.end method

.method processShow()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .local v2, "hasWinEnterAnimator":Z
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    sget-object v6, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "attrs":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .local v0, "anim":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .end local v0    # "anim":I
    .end local v1    # "attrs":Landroid/content/res/TypedArray;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    if-eqz v2, :cond_2

    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    const/16 v4, 0xff

    invoke-virtual {p0, v4}, Lmiui/util/ScreenshotDrawable;->setAlpha(I)V

    :goto_0
    return-void

    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lmiui/util/ScreenshotDrawable;->startVisibilityAnimator(Z)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->invalidateSelf()V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    return-void
.end method

.method public setOriginalDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "originalDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmiui/util/ScreenshotDrawable$1;

    invoke-direct {v1, p0}, Lmiui/util/ScreenshotDrawable$1;-><init>(Lmiui/util/ScreenshotDrawable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lmiui/util/ScreenshotDrawable;->rebuildBluredBitmap()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->processShow()V

    goto :goto_0
.end method
