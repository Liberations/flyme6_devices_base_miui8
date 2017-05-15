.class abstract Landroid/widget/Editor$ActionPinnedPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$Fader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ActionPinnedPopupWindow"
.end annotation


# static fields
.field protected static final LONG_ACTION_MENU_COUNT:I = 0x6


# instance fields
.field protected mAboveHandle:Z

.field protected mAnimationFadeIn:Landroid/animation/AnimatorSet;

.field protected mAnimationFadeOut:Landroid/animation/AnimatorSet;

.field protected mAnimationFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHandleView:Landroid/widget/Editor$HandleView;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field protected mMainPanel:Landroid/widget/TouchPanelLayout;

.field private mShower:Ljava/lang/Runnable;

.field private mSpaceOffScreen:I

.field private final mTouchableRegion:Landroid/graphics/Region;

.field protected mVisibleChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V
    .locals 2
    .param p2, "handleView"    # Landroid/widget/Editor$HandleView;

    .prologue
    iput-object p1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    new-instance v0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$ActionPinnedPopupWindow$1;-><init>(Landroid/widget/Editor$ActionPinnedPopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/widget/Editor$ActionPinnedPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$ActionPinnedPopupWindow$2;-><init>(Landroid/widget/Editor$ActionPinnedPopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    iput-object p2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->createAnimations()V

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/Editor$AnimatePopupWindow;->setFader(Landroid/widget/Editor$Fader;)V

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/Editor$ActionPinnedPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$ActionPinnedPopupWindow;

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isMiddleOffsetInSelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/Editor$ActionPinnedPopupWindow;)Landroid/widget/Editor$HandleView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$ActionPinnedPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/Editor$ActionPinnedPopupWindow;)Landroid/graphics/Region;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$ActionPinnedPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method private isMainPanelContent()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isMiddleOffsetInSelection()Z
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .local v0, "middleOffset":I
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setTouchableSurfaceInsetsComputer()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method


# virtual methods
.method public cancelAnimations()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method protected clipVertically(I)I
    .locals 11
    .param p1, "positionY"    # I

    .prologue
    const/4 v10, 0x0

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .local v2, "layout":Landroid/text/Layout;
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .local v6, "selectionStart":I
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .local v5, "selectionEnd":I
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .local v4, "lineStart":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .local v3, "lineEnd":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    sub-int v7, v8, v9

    .local v7, "spaceBetweenSelection":I
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x110200da

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .local v1, "handleHeight":I
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    if-gez p1, :cond_2

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v8, v6}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    if-le v7, v8, :cond_1

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr p1, v8

    :goto_0
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    add-int/2addr p1, v8

    div-int/lit8 v8, v1, 0x2

    add-int/2addr p1, v8

    iput-boolean v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    :cond_0
    :goto_1
    return p1

    :cond_1
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr p1, v8

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v8

    add-int/2addr p1, v8

    div-int/lit8 v8, v1, 0x2

    add-int/2addr p1, v8

    iput-boolean v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    goto :goto_1

    :cond_3
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, p1

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v8, v9, :cond_0

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v8, v5}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    if-le v7, v8, :cond_4

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr p1, v8

    :goto_2
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr p1, v8

    div-int/lit8 v8, v1, 0x2

    sub-int/2addr p1, v8

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr p1, v8

    goto :goto_2
.end method

.method protected computeLocalPosition()V
    .locals 11

    .prologue
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .local v6, "selectionStart":I
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .local v5, "selectionEnd":I
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .local v3, "layout":Landroid/text/Layout;
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->measureContent()V

    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v9, v6}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    :goto_0
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    .local v8, "width":I
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    iget v2, v9, Landroid/widget/Editor$HandleView;->mHorizontalScale:F

    .local v2, "horizontalScale":F
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    .local v7, "startPositionX":F
    invoke-virtual {v3, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .local v0, "endPositionX":F
    add-float v9, v7, v0

    int-to-float v10, v8

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v9, v2

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionX:I

    return-void

    .end local v0    # "endPositionX":F
    .end local v2    # "horizontalScale":F
    .end local v7    # "startPositionX":F
    .end local v8    # "width":I
    :cond_0
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v9, v5}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-virtual {v9}, Landroid/widget/Editor$HandleView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x110200da

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .local v1, "handleHeight":I
    iget v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    div-int/lit8 v10, v1, 0x2

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    .end local v1    # "handleHeight":I
    :cond_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    goto :goto_0

    :cond_2
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->getTextOffset()I

    move-result v4

    .local v4, "offset":I
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    goto/16 :goto_0

    .end local v4    # "offset":I
    :cond_3
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v9

    if-nez v9, :cond_4

    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    # setter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9, v10}, Landroid/widget/Editor;->access$1902(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_4
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    goto/16 :goto_0
.end method

.method protected abstract createAnimations()V
.end method

.method public dismiss()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->dismiss()V

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setZeroTouchableSurface()V

    return-void
.end method

.method public fadeOut()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    return-void
.end method

.method protected measureContent()V
    .locals 7

    .prologue
    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    mul-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .local v0, "contentWidth":I
    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    :goto_0
    if-ge v4, v3, :cond_2

    :cond_0
    const/high16 v2, -0x80000000

    .local v2, "widthMode":I
    :goto_1
    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->measure(II)V

    return-void

    .end local v2    # "widthMode":I
    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    .restart local v2    # "widthMode":I
    goto :goto_1
.end method

.method protected setContentAreaAsTouchableSurface(Z)V
    .locals 15
    .param p1, "needMeasure"    # Z

    .prologue
    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v11, 0x110b000e

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .local v7, "panel":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .local v4, "paddingLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .local v6, "paddingTop":I
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .local v5, "paddingRight":I
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .local v3, "paddingBottom":I
    if-nez p1, :cond_0

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    mul-int/lit8 v11, v11, 0x2

    add-int v2, v10, v11

    .local v2, "maxWidth":I
    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v10, :cond_2

    const/4 v10, 0x5

    :goto_0
    if-ge v11, v10, :cond_3

    const/high16 v9, -0x80000000

    .local v9, "widthMode":I
    :goto_1
    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/view/View;->measure(II)V

    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "maxWidth":I
    .end local v9    # "widthMode":I
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .local v8, "width":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .local v1, "height":I
    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v13

    add-int/2addr v13, v8

    sub-int/2addr v13, v5

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v14

    add-int/2addr v14, v1

    sub-int/2addr v14, v3

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Region;->set(IIII)Z

    return-void

    .end local v1    # "height":I
    .end local v8    # "width":I
    .restart local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "maxWidth":I
    :cond_2
    const/4 v10, 0x6

    goto :goto_0

    :cond_3
    const/high16 v9, 0x40000000    # 2.0f

    .restart local v9    # "widthMode":I
    goto :goto_1
.end method

.method protected setMainPanelAsContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    invoke-virtual {v0}, Landroid/widget/TouchPanelLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    goto :goto_0
.end method

.method protected setSubPanelAsContent(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "subView"    # Landroid/view/View;
    .param p2, "panelBackground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->dismiss()V

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    instance-of v2, v2, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    check-cast v2, Landroid/widget/Editor$InsertionHandleView;

    # invokes: Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V
    invoke-static {v2}, Landroid/widget/Editor$InsertionHandleView;->access$2000(Landroid/widget/Editor$InsertionHandleView;)V

    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v1, "subPanel":Landroid/widget/LinearLayout;
    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x110b000e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->computeLocalPosition()V

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v2}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .local v0, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/Editor$ActionPinnedPopupWindow;->updatePosition(II)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    return-void
.end method

.method protected setZeroTouchableSurface()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setMainPanelAsContent()V

    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    return-void
.end method

.method show(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected updatePosition(II)V
    .locals 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionX:I

    add-int v1, p1, v4

    .local v1, "positionX":I
    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    add-int v2, p2, v4

    .local v2, "positionY":I
    invoke-virtual {p0, v2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->clipVertically(I)I

    move-result v2

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .local v3, "width":I
    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    neg-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setTouchableSurfaceInsetsComputer()V

    goto :goto_0
.end method

.method public updatePosition(IIZZ)V
    .locals 3
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    if-nez p4, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    const/4 v1, 0x0

    .local v1, "insertionMode":Z
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-virtual {v2}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    instance-of v2, v2, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    check-cast v0, Landroid/widget/Editor$InsertionHandleView;

    .local v0, "insertionHandle":Landroid/widget/Editor$InsertionHandleView;
    # invokes: Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V
    invoke-static {v0}, Landroid/widget/Editor$InsertionHandleView;->access$2000(Landroid/widget/Editor$InsertionHandleView;)V

    const/4 v1, 0x1

    # setter for: Landroid/widget/Editor$InsertionHandleView;->mReShowPopup:Z
    invoke-static {v0, v1}, Landroid/widget/Editor$InsertionHandleView;->access$2102(Landroid/widget/Editor$InsertionHandleView;Z)Z

    .end local v0    # "insertionHandle":Landroid/widget/Editor$InsertionHandleView;
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isMainPanelContent()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->hide()V

    const/16 v2, 0x1f4

    invoke-virtual {p0, v2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->show(I)V

    .end local v1    # "insertionMode":Z
    :cond_2
    :goto_0
    return-void

    .restart local v1    # "insertionMode":Z
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->hide()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->stopSelectionActionMode()V

    goto :goto_0
.end method
