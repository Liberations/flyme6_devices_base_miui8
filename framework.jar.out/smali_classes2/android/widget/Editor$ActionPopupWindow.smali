.class Landroid/widget/Editor$ActionPopupWindow;
.super Landroid/widget/Editor$ActionPinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation


# instance fields
.field private final POPUP_TEXT_LAYOUT:I

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mFeatureTel:Z

.field private mMaxPhraseListHeight:I

.field private mPasteTextView:Landroid/widget/TextView;

.field private mPhraseTextView:Landroid/widget/TextView;

.field private mReplaceTextView:Landroid/widget/TextView;

.field private mSearchImageView:Landroid/widget/ImageView;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectTextView:Landroid/widget/TextView;

.field private mShareImageView:Landroid/widget/ImageView;

.field private mTelImageView:Landroid/widget/ImageView;

.field private mTextActionPadding:I

.field private mTranslationHandler:Landroid/os/Handler;

.field private mTranslationImageView:Landroid/widget/ImageView;

.field private mTranslationManager:Landroid/widget/TranslationManager;

.field private mTranslationPanel:Landroid/view/View;

.field private mTranslationPresenter:Landroid/widget/TranslationPresenter;

.field private mWebImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V
    .locals 3
    .param p2, "handleView"    # Landroid/widget/Editor$HandleView;

    .prologue
    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$ActionPinnedPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V

    const v1, 0x11030019

    iput v1, p0, Landroid/widget/Editor$ActionPopupWindow;->POPUP_TEXT_LAYOUT:I

    new-instance v1, Landroid/widget/Editor$ActionPopupWindow$1;

    invoke-direct {v1, p0}, Landroid/widget/Editor$ActionPopupWindow$1;-><init>(Landroid/widget/Editor$ActionPopupWindow;)V

    iput-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationHandler:Landroid/os/Handler;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mFeatureTel:Z

    :cond_0
    return-void
.end method

.method static synthetic access$3100(Landroid/widget/Editor$ActionPopupWindow;)Landroid/widget/TranslationPresenter;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$ActionPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;

    return-object v0
.end method

.method private deviceIsProvisioned()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getMaxPhraseListHeight()I
    .locals 8

    .prologue
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .local v6, "theme":Landroid/content/res/Resources$Theme;
    const v7, 0x1102007c

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .local v2, "header":I
    const v7, 0x1102007d

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .local v1, "first":I
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .local v4, "middle":I
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .local v3, "last":I
    add-int v7, v2, v1

    add-int/2addr v7, v4

    add-int/2addr v7, v3

    return v7
.end method

.method private isPasswordInputType()Z
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v1, 0xfff

    .local v0, "variation":I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private newImageView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .local v1, "wrapContent":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x110200cd

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private newTextView()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v4, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .local v2, "wrapContent":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x11030019

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method


# virtual methods
.method protected createAnimations()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "scaleAnimatorX":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "scaleAnimatorY":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Landroid/widget/Editor$ActionPopupWindow$2;

    invoke-direct {v3, p0}, Landroid/widget/Editor$ActionPopupWindow$2;-><init>(Landroid/widget/Editor$ActionPopupWindow;)V

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    new-instance v0, Landroid/widget/Editor$AnimatePopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$AnimatePopupWindow;-><init>(Landroid/widget/Editor;Landroid/content/Context;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss(Z)V

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->setZeroTouchableSurface()V

    return-void
.end method

.method public fadeIn(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mAboveHandle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initContentView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    new-instance v0, Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TouchPanelLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->setOrientation(I)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    const v1, 0x110200cc

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    const v1, 0x110b000e

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->setId(I)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    const v1, 0x110200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    const v1, 0x110200c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    const v1, 0x110200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    const v1, 0x11070068

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const v1, 0x11070069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const v1, 0x1107006a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const v1, 0x1107006b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v1, 0x1107006c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v1, 0x1107006d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationImageView:Landroid/widget/ImageView;

    const v1, 0x110200bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    const v1, 0x110200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    const v1, 0x1107006e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 31
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v16, 0x0

    .local v16, "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->length()I

    move-result v14

    .local v14, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->isFocused()Z

    move-result v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v25

    .local v25, "selStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v24

    .local v24, "selEnd":I
    const/16 v27, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v28

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v16

    const/16 v27, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v14

    .end local v24    # "selEnd":I
    .end local v25    # "selStart":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v27

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionModifierCursorController;->setMinTouchOffset(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/widget/Editor$SelectionModifierCursorController;->setMaxTouchOffset(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x102001f

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->canPaste()Z

    move-result v27

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x1020022

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Editor;->replace()V

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x1020021

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x1020020

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_9

    new-instance v12, Landroid/content/Intent;

    const-string v27, "android.intent.action.SEND"

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v12, "intent":Landroid/content/Intent;
    const-string v27, "text/plain"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v27, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-interface {v0, v1, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    .local v7, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    const v28, 0x104045f

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v12, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    # invokes: Landroid/widget/Editor;->startActivityFromContext(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v7, v1}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;Landroid/content/Context;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v27

    check-cast v27, Landroid/text/Spannable;

    add-int v28, v16, v14

    div-int/lit8 v28, v28, 0x2

    invoke-static/range {v27 .. v28}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .end local v7    # "context":Landroid/content/Context;
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_a

    new-instance v12, Landroid/content/Intent;

    const-string v27, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v27, "query"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-interface {v0, v1, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    # invokes: Landroid/widget/Editor;->startActivityFromContext(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v12}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;Landroid/content/Context;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v27

    check-cast v27, Landroid/text/Spannable;

    add-int v28, v16, v14

    div-int/lit8 v28, v28, 0x2

    invoke-static/range {v27 .. v28}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .end local v12    # "intent":Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/LinkSpec;

    .local v13, "link":Landroid/widget/LinkSpec;
    if-eqz v13, :cond_2

    new-instance v12, Landroid/content/Intent;

    const-string v27, "android.intent.action.DIAL"

    iget-object v0, v13, Landroid/widget/LinkSpec;->url:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    # invokes: Landroid/widget/Editor;->startActivityFromContext(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v12}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;Landroid/content/Context;Landroid/content/Intent;)V

    move/from16 v0, v16

    if-eq v0, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v27

    check-cast v27, Landroid/text/Spannable;

    add-int v28, v16, v14

    div-int/lit8 v28, v28, 0x2

    invoke-static/range {v27 .. v28}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "link":Landroid/widget/LinkSpec;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/LinkSpec;

    .restart local v13    # "link":Landroid/widget/LinkSpec;
    if-eqz v13, :cond_2

    new-instance v12, Landroid/content/Intent;

    const-string v27, "android.intent.action.VIEW"

    iget-object v0, v13, Landroid/widget/LinkSpec;->url:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    # invokes: Landroid/widget/Editor;->startActivityFromContext(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v12}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;Landroid/content/Context;Landroid/content/Intent;)V

    move/from16 v0, v16

    if-eq v0, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v27

    check-cast v27, Landroid/text/Spannable;

    add-int v28, v16, v14

    div-int/lit8 v28, v28, 0x2

    invoke-static/range {v27 .. v28}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "link":Landroid/widget/LinkSpec;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/provider/MiuiSettings$FrequentPhrases;->getFrequentPhrases(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v21

    .local v21, "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v21, :cond_d

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-nez v27, :cond_e

    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v4

    .local v4, "addPhraseTextView":Landroid/widget/TextView;
    const v27, 0x1107006f

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .local v6, "bg":Landroid/graphics/drawable/Drawable;
    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    move/from16 v27, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    move/from16 v29, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v30

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v27, Landroid/widget/Editor$ActionPopupWindow$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Editor$ActionPopupWindow$3;-><init>(Landroid/widget/Editor$ActionPopupWindow;)V

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x110200cc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/widget/Editor$ActionPopupWindow;->setSubPanelAsContent(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .end local v4    # "addPhraseTextView":Landroid/widget/TextView;
    .end local v6    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v27

    const-string v28, "layout_inflater"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v27, 0x1103000e

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .local v22, "phraseListLayout":Landroid/view/View;
    const v27, 0x110b0028

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .local v9, "editBtn":Landroid/widget/ImageButton;
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->isPasswordInputType()Z

    move-result v27

    if-eqz v27, :cond_11

    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    const v27, 0x102000a

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ListView;

    .local v23, "phraseListView":Landroid/widget/ListView;
    const/16 v27, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    new-instance v20, Landroid/widget/Editor$PhraseAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$PhraseAdapter;-><init>(Landroid/widget/Editor;Ljava/util/ArrayList;)V

    .local v20, "phraseAdapter":Landroid/widget/Editor$PhraseAdapter;
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move/from16 v17, v16

    .local v17, "minimum":I
    move v15, v14

    .local v15, "maximum":I
    new-instance v27, Landroid/widget/Editor$ActionPopupWindow$5;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Landroid/widget/Editor$ActionPopupWindow$5;-><init>(Landroid/widget/Editor$ActionPopupWindow;II)V

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x110a002e

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .local v26, "width":I
    const/4 v10, -0x2

    .local v10, "height":I
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mMaxPhraseListHeight:I

    move/from16 v27, v0

    if-nez v27, :cond_f

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->getMaxPhraseListHeight()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$ActionPopupWindow;->mMaxPhraseListHeight:I

    :cond_f
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/Editor$ActionPopupWindow;->mMaxPhraseListHeight:I

    :cond_10
    new-instance v27, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-direct {v0, v1, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x110200cc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$ActionPopupWindow;->setSubPanelAsContent(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .end local v10    # "height":I
    .end local v15    # "maximum":I
    .end local v17    # "minimum":I
    .end local v20    # "phraseAdapter":Landroid/widget/Editor$PhraseAdapter;
    .end local v23    # "phraseListView":Landroid/widget/ListView;
    .end local v26    # "width":I
    :cond_11
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v27, Landroid/widget/Editor$ActionPopupWindow$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Editor$ActionPopupWindow$4;-><init>(Landroid/widget/Editor$ActionPopupWindow;)V

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .end local v9    # "editBtn":Landroid/widget/ImageButton;
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v21    # "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "phraseListLayout":Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v27

    const-string v28, "layout_inflater"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .restart local v11    # "inflater":Landroid/view/LayoutInflater;
    const v27, 0x1103001a

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    :cond_13
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;

    move-object/from16 v27, v0

    if-nez v27, :cond_14

    new-instance v27, Landroid/widget/TranslationPresenter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-direct/range {v27 .. v29}, Landroid/widget/TranslationPresenter;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .local v8, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x110200cc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "background":Landroid/graphics/drawable/Drawable;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .local v18, "paddings":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v26, v27, v28

    .restart local v26    # "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x110a0031

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    add-int v10, v27, v28

    .restart local v10    # "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v27, v0

    new-instance v28, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-direct {v0, v1, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$ActionPopupWindow;->setSubPanelAsContent(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mAboveHandle:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TranslationPresenter;->setAboveHandle(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TranslationPresenter;->setInProgress()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationManager:Landroid/widget/TranslationManager;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v27 .. v30}, Landroid/widget/TranslationManager;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    .end local v8    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v10    # "height":I
    .end local v18    # "paddings":Landroid/graphics/Rect;
    .end local v26    # "width":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    if-eqz v27, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    .local v19, "parent":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method public show()V
    .locals 31

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v26

    .local v26, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v25

    .local v25, "selStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v24

    .local v24, "selEnd":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->isPasswordInputType()Z

    move-result v21

    .local v21, "isPasswordInputType":Z
    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    if-lez v28, :cond_7

    sub-int v28, v24, v25

    if-lez v28, :cond_7

    if-nez v21, :cond_7

    const/4 v11, 0x1

    .local v11, "canSearch":Z
    :goto_0
    const/4 v15, 0x0

    .local v15, "canTel":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mFeatureTel:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    if-lez v28, :cond_0

    const/16 v28, 0x4

    move-object/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/widget/Linkify;->getLinks(Ljava/lang/CharSequence;III)Ljava/util/ArrayList;

    move-result-object v22

    .local v22, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinkSpec;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v15, 0x1

    .end local v22    # "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinkSpec;>;"
    :cond_0
    const/16 v17, 0x0

    .local v17, "canWeb":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-nez v15, :cond_1

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    if-lez v28, :cond_1

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/widget/Linkify;->getLinks(Ljava/lang/CharSequence;III)Ljava/util/ArrayList;

    move-result-object v22

    .restart local v22    # "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinkSpec;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v17, 0x1

    .end local v22    # "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinkSpec;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->canCopy()Z

    move-result v6

    .local v6, "canCopy":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->canCut()Z

    move-result v7

    .local v7, "canCut":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->canPaste()Z

    move-result v8

    .local v8, "canPaste":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v28

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # invokes: Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Z

    move-result v28

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v28

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->hasSelection()Z

    move-result v28

    if-nez v28, :cond_8

    :cond_2
    const/4 v10, 0x1

    .local v10, "canReplace":Z
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    if-lez v28, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->hasSelection()Z

    move-result v28

    if-nez v28, :cond_9

    const/4 v12, 0x1

    .local v12, "canSelect":Z
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    if-lez v28, :cond_a

    if-nez v25, :cond_3

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_a

    :cond_3
    const/4 v13, 0x1

    .local v13, "canSelectAll":Z
    :goto_3
    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    if-lez v28, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->hasSelection()Z

    move-result v28

    if-eqz v28, :cond_b

    if-nez v21, :cond_b

    const/4 v14, 0x1

    .local v14, "canShare":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->hasSelection()Z

    move-result v28

    if-nez v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    instance-of v0, v0, Lmiui/phrase/AddPhraseActivity;

    move/from16 v28, v0

    if-nez v28, :cond_c

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/provider/MiuiSettings$FrequentPhrases;->getFrequentPhrases(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v28

    if-eqz v28, :cond_c

    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->deviceIsProvisioned()Z

    move-result v28

    if-eqz v28, :cond_c

    const/4 v9, 0x1

    .local v9, "canPhrase":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationManager:Landroid/widget/TranslationManager;

    move-object/from16 v28, v0

    if-nez v28, :cond_5

    new-instance v28, Landroid/widget/TranslationManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    invoke-direct/range {v28 .. v30}, Landroid/widget/TranslationManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$ActionPopupWindow;->mTranslationManager:Landroid/widget/TranslationManager;

    :cond_5
    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    if-lez v28, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->hasSelection()Z

    move-result v28

    if-eqz v28, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationManager:Landroid/widget/TranslationManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TranslationManager;->isAvailable()Z

    move-result v28

    if-eqz v28, :cond_d

    if-nez v21, :cond_d

    const/16 v16, 0x1

    .local v16, "canTranslate":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    if-eqz v11, :cond_e

    const/16 v28, 0x0

    :goto_7
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    if-eqz v15, :cond_f

    const/16 v28, 0x0

    :goto_8
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    if-eqz v17, :cond_10

    const/16 v28, 0x0

    :goto_9
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    if-eqz v6, :cond_11

    const/16 v28, 0x0

    :goto_a
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    if-eqz v7, :cond_12

    const/16 v28, 0x0

    :goto_b
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    if-eqz v8, :cond_13

    const/16 v28, 0x0

    :goto_c
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    if-eqz v10, :cond_14

    const/16 v28, 0x0

    :goto_d
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    if-eqz v12, :cond_15

    const/16 v28, 0x0

    :goto_e
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    if-eqz v13, :cond_16

    const/16 v28, 0x0

    :goto_f
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    if-eqz v16, :cond_17

    const/16 v28, 0x0

    :goto_10
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    if-eqz v14, :cond_18

    const/16 v28, 0x0

    :goto_11
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    if-eqz v9, :cond_19

    const/16 v28, 0x0

    :goto_12
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TouchPanelLayout;->getChildCount()I

    move-result v19

    .local v19, "childCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->clear()V

    const/16 v20, 0x0

    .local v20, "i":I
    :goto_13
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .local v18, "child":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v28

    if-nez v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_13

    .end local v6    # "canCopy":Z
    .end local v7    # "canCut":Z
    .end local v8    # "canPaste":Z
    .end local v9    # "canPhrase":Z
    .end local v10    # "canReplace":Z
    .end local v11    # "canSearch":Z
    .end local v12    # "canSelect":Z
    .end local v13    # "canSelectAll":Z
    .end local v14    # "canShare":Z
    .end local v15    # "canTel":Z
    .end local v16    # "canTranslate":Z
    .end local v17    # "canWeb":Z
    .end local v18    # "child":Landroid/view/View;
    .end local v19    # "childCount":I
    .end local v20    # "i":I
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0

    .restart local v6    # "canCopy":Z
    .restart local v7    # "canCut":Z
    .restart local v8    # "canPaste":Z
    .restart local v11    # "canSearch":Z
    .restart local v15    # "canTel":Z
    .restart local v17    # "canWeb":Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_1

    .restart local v10    # "canReplace":Z
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_2

    .restart local v12    # "canSelect":Z
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_3

    .restart local v13    # "canSelectAll":Z
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_4

    .restart local v14    # "canShare":Z
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_5

    .restart local v9    # "canPhrase":Z
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_6

    .restart local v16    # "canTranslate":Z
    :cond_e
    const/16 v28, 0x8

    goto/16 :goto_7

    :cond_f
    const/16 v28, 0x8

    goto/16 :goto_8

    :cond_10
    const/16 v28, 0x8

    goto/16 :goto_9

    :cond_11
    const/16 v28, 0x8

    goto/16 :goto_a

    :cond_12
    const/16 v28, 0x8

    goto/16 :goto_b

    :cond_13
    const/16 v28, 0x8

    goto/16 :goto_c

    :cond_14
    const/16 v28, 0x8

    goto/16 :goto_d

    :cond_15
    const/16 v28, 0x8

    goto/16 :goto_e

    :cond_16
    const/16 v28, 0x8

    goto/16 :goto_f

    :cond_17
    const/16 v28, 0x8

    goto/16 :goto_10

    :cond_18
    const/16 v28, 0x8

    goto/16 :goto_11

    :cond_19
    const/16 v28, 0x8

    goto/16 :goto_12

    .restart local v19    # "childCount":I
    .restart local v20    # "i":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v27

    .local v27, "visibleChildCount":I
    sget-boolean v28, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v28, :cond_1d

    sget-boolean v28, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v28, :cond_1c

    const/16 v28, 0x5

    :goto_14
    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_1d

    const/16 v23, 0x0

    .local v23, "paddingHorizontal":I
    :goto_15
    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .restart local v18    # "child":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingTop()I

    move-result v28

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingBottom()I

    move-result v29

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v23

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v18    # "child":Landroid/view/View;
    :cond_1b
    if-nez v6, :cond_21

    if-nez v7, :cond_21

    if-nez v8, :cond_21

    if-nez v10, :cond_21

    if-nez v12, :cond_21

    if-nez v13, :cond_21

    if-nez v9, :cond_21

    :goto_16
    return-void

    .end local v23    # "paddingHorizontal":I
    :cond_1c
    const/16 v28, 0x6

    goto :goto_14

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    move/from16 v23, v0

    .restart local v23    # "paddingHorizontal":I
    goto :goto_15

    :cond_1e
    const/16 v20, 0x0

    :goto_17
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .restart local v18    # "child":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5    # "bg":Landroid/graphics/drawable/Drawable;
    if-nez v20, :cond_1f

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :goto_18
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingTop()I

    move-result v28

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingBottom()I

    move-result v29

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v23

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_17

    :cond_1f
    add-int/lit8 v28, v27, -0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_20

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_18

    :cond_20
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_18

    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v18    # "child":Landroid/view/View;
    :cond_21
    invoke-super/range {p0 .. p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->show()V

    goto :goto_16
.end method

.method protected updatePosition(II)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    .local v0, "popupWindow":Landroid/widget/Editor$AnimatePopupWindow;
    invoke-virtual {v0}, Landroid/widget/Editor$AnimatePopupWindow;->isDismissing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss(Z)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->updatePosition(II)V

    return-void
.end method
