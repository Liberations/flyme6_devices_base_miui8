.class Landroid/widget/TranslationPresenter;
.super Ljava/lang/Object;
.source "TranslationPresenter.java"


# instance fields
.field private mAboveHandle:Z

.field private mContext:Landroid/content/Context;

.field private mCopyright:Landroid/widget/TextView;

.field private mDefaultPaddingBottom:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mExtraInfo:Landroid/view/View;

.field private mMaxHeight:I

.field private mMinHeight:I

.field private mMore:Landroid/widget/TextView;

.field private mPaddingOffset:I

.field private mProgressBar:Lmiui/widget/ProgressBar;

.field private mScrollContainer:Landroid/view/View;

.field private mScrollView:Landroid/view/View;

.field private mTextContainer:Landroid/view/View;

.field private mTranslationPanel:Landroid/view/View;

.field private mTranslations:Landroid/widget/TextView;

.field private mWord:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translationPanel"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    .line 51
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110b000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    .line 53
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110b003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    .line 54
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110b003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    .line 55
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x1020015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110b003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mExtraInfo:Landroid/view/View;

    .line 58
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110b0040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110b0041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mMore:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mProgressBar:Lmiui/widget/ProgressBar;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TranslationPresenter;->mMinHeight:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TranslationPresenter;->mMaxHeight:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TranslationPresenter;->mDefaultPaddingBottom:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TranslationPresenter;->mPaddingOffset:I

    .line 71
    return-void
.end method

.method static synthetic access$000(Landroid/widget/TranslationPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationPresenter;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public setAboveHandle(Z)V
    .locals 0
    .param p1, "aboveHandle"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    .line 230
    return-void
.end method

.method public setInProgress()V
    .locals 8

    .prologue
    const/16 v4, 0x8

    .line 74
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mExtraInfo:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mProgressBar:Lmiui/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 79
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    iget v7, p0, Landroid/widget/TranslationPresenter;->mDefaultPaddingBottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 83
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 84
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/TranslationPresenter;->mMinHeight:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 88
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 89
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int v1, v3, v4

    .line 91
    .local v1, "paddings":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    iget v4, p0, Landroid/widget/TranslationPresenter;->mMinHeight:I

    add-int/2addr v4, v1

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v0

    .line 92
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v4, p0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    if-eqz v4, :cond_0

    const/16 v4, 0xc

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    return-void

    .line 92
    :cond_0
    const/16 v4, 0xa

    goto :goto_0
.end method

.method public updatePanel(Lcom/miui/translationservice/provider/TranslationResult;)V
    .locals 32
    .param p1, "result"    # Lcom/miui/translationservice/provider/TranslationResult;

    .prologue
    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mProgressBar:Lmiui/widget/ProgressBar;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 102
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getStatus()I

    move-result v28

    if-eqz v28, :cond_3

    .line 103
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    if-nez p1, :cond_1

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x11070072

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_0
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 198
    .local v22, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 199
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    add-int v8, v28, v29

    .line 200
    .local v8, "hPaddings":I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v26, v28, v29

    .line 201
    .local v26, "vPaddings":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 202
    .local v19, "panelWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    .line 204
    .local v18, "panelHeight":I
    sub-int v28, v19, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getPaddingLeft()I

    move-result v29

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getPaddingRight()I

    move-result v29

    sub-int v27, v28, v29

    .line 206
    .local v27, "widthSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    move-object/from16 v28, v0

    const/high16 v29, -0x80000000

    move/from16 v0, v27

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    invoke-virtual/range {v28 .. v30}, Landroid/view/View;->measure(II)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    .line 212
    .local v25, "textHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 213
    .local v15, "lp":Landroid/view/ViewGroup$LayoutParams;
    sub-int v28, v19, v8

    move/from16 v0, v28

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationPresenter;->mMaxHeight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getPaddingTop()I

    move-result v29

    add-int v29, v29, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getPaddingBottom()I

    move-result v30

    add-int v29, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v28

    move/from16 v0, v28

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 219
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationPresenter;->mMaxHeight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v29, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v28

    add-int v28, v28, v26

    move/from16 v0, v28

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v28, v15

    .line 220
    check-cast v28, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    move/from16 v29, v0

    if-eqz v29, :cond_11

    const/16 v29, 0xc

    :goto_1
    invoke-virtual/range {v28 .. v29}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setLeft(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    move/from16 v28, v0

    if-eqz v28, :cond_12

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    sub-int v28, v18, v28

    :goto_2
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    .line 226
    return-void

    .line 108
    .end local v8    # "hPaddings":I
    .end local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v18    # "panelHeight":I
    .end local v19    # "panelWidth":I
    .end local v22    # "rect":Landroid/graphics/Rect;
    .end local v25    # "textHeight":I
    .end local v26    # "vPaddings":I
    .end local v27    # "widthSize":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getStatus()I

    move-result v28

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getWordName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x11070072

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 113
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getWordName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x11070071

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 118
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getWordName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v5, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getSymbols()Ljava/util/List;

    move-result-object v24

    .line 124
    .local v24, "symbolList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Symbol;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_b

    .line 125
    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/miui/translationservice/provider/TranslationResult$Symbol;

    .line 126
    .local v23, "symbol":Lcom/miui/translationservice/provider/TranslationResult$Symbol;
    const/4 v11, 0x0

    .line 128
    .local v11, "hasPronun":Z
    invoke-virtual/range {v23 .. v23}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getWordSymbol()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 129
    const-string v28, "["

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v23 .. v23}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getWordSymbol()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "]\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const/4 v11, 0x1

    .line 132
    :cond_4
    if-nez v11, :cond_5

    invoke-virtual/range {v23 .. v23}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhEn()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 133
    const-string v28, "["

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v23 .. v23}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhEn()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "]\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const/4 v11, 0x1

    .line 136
    :cond_5
    if-nez v11, :cond_6

    invoke-virtual/range {v23 .. v23}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhAm()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_6

    .line 137
    const-string v28, "["

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v23 .. v23}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhAm()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "]\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_6
    invoke-virtual/range {v23 .. v23}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getParts()Ljava/util/List;

    move-result-object v21

    .line 141
    .local v21, "partList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Part;>;"
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v13, v0, :cond_a

    .line 142
    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/miui/translationservice/provider/TranslationResult$Part;

    .line 144
    .local v20, "part":Lcom/miui/translationservice/provider/TranslationResult$Part;
    invoke-virtual/range {v20 .. v20}, Lcom/miui/translationservice/provider/TranslationResult$Part;->getPart()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_7

    .line 145
    const-string v28, "("

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v20 .. v20}, Lcom/miui/translationservice/provider/TranslationResult$Part;->getPart()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_7
    invoke-virtual/range {v20 .. v20}, Lcom/miui/translationservice/provider/TranslationResult$Part;->getMeans()Ljava/util/List;

    move-result-object v16

    .line 149
    .local v16, "means":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v14, v0, :cond_9

    .line 150
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-eq v13, v0, :cond_8

    .line 152
    const-string v28, "\r\n"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 154
    :cond_8
    const-string v28, "/"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 141
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 124
    .end local v14    # "k":I
    .end local v16    # "means":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "part":Lcom/miui/translationservice/provider/TranslationResult$Part;
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 159
    .end local v11    # "hasPronun":Z
    .end local v13    # "j":I
    .end local v21    # "partList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Part;>;"
    .end local v23    # "symbol":Lcom/miui/translationservice/provider/TranslationResult$Symbol;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getCopyright()Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "copyright":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_e

    const/4 v9, 0x1

    .line 163
    .local v9, "hasCopyright":Z
    :goto_7
    if-eqz v9, :cond_c

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mExtraInfo:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getDetailLink()Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "detailLink":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_f

    const/4 v10, 0x1

    .line 171
    .local v10, "hasLink":Z
    :goto_8
    if-eqz v10, :cond_d

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mExtraInfo:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mMore:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mMore:Landroid/widget/TextView;

    move-object/from16 v28, v0

    new-instance v29, Landroid/widget/TranslationPresenter$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v7, v2}, Landroid/widget/TranslationPresenter$1;-><init>(Landroid/widget/TranslationPresenter;Ljava/lang/String;Lcom/miui/translationservice/provider/TranslationResult;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mExtraInfo:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 186
    .restart local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v9, :cond_10

    .line 187
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationPresenter;->mPaddingOffset:I

    move/from16 v29, v0

    sub-int v17, v28, v29

    .line 191
    .local v17, "paddingBottom":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getPaddingLeft()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getPaddingTop()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getPaddingRight()I

    move-result v31

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 162
    .end local v7    # "detailLink":Ljava/lang/String;
    .end local v9    # "hasCopyright":Z
    .end local v10    # "hasLink":Z
    .end local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "paddingBottom":I
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 170
    .restart local v7    # "detailLink":Ljava/lang/String;
    .restart local v9    # "hasCopyright":Z
    :cond_f
    const/4 v10, 0x0

    goto :goto_8

    .line 189
    .restart local v10    # "hasLink":Z
    .restart local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationPresenter;->mDefaultPaddingBottom:I

    move/from16 v17, v0

    .restart local v17    # "paddingBottom":I
    goto :goto_9

    .line 220
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "copyright":Ljava/lang/String;
    .end local v7    # "detailLink":Ljava/lang/String;
    .end local v9    # "hasCopyright":Z
    .end local v10    # "hasLink":Z
    .end local v12    # "i":I
    .end local v17    # "paddingBottom":I
    .end local v24    # "symbolList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Symbol;>;"
    .restart local v8    # "hPaddings":I
    .restart local v18    # "panelHeight":I
    .restart local v19    # "panelWidth":I
    .restart local v22    # "rect":Landroid/graphics/Rect;
    .restart local v25    # "textHeight":I
    .restart local v26    # "vPaddings":I
    .restart local v27    # "widthSize":I
    :cond_11
    const/16 v29, 0xa

    goto/16 :goto_1

    .line 225
    :cond_12
    const/16 v28, 0x0

    goto/16 :goto_2
.end method
