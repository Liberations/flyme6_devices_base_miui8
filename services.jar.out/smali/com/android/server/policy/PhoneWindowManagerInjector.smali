.class Lcom/android/server/policy/PhoneWindowManagerInjector;
.super Ljava/lang/Object;
.source "PhoneWindowManagerInjector.java"


# static fields
.field private static sOldmanLastTopFullscreenOpaqueWmLp:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addStartingWindow(Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/PhoneWindow;Ljava/lang/CharSequence;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "win"    # Lcom/android/internal/policy/PhoneWindow;
    .param p3, "label"    # Ljava/lang/CharSequence;

    .prologue
    invoke-static/range {p0 .. p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2

    sget v12, Lmiui/R$attr;->windowActionBar:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v12

    if-eqz v12, :cond_2

    const v12, 0x11030017

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/PhoneWindow;->setContentView(I)V

    const v12, 0x110b0036

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .local v5, "statusBar":Landroid/view/View;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "status_bar_height"

    const-string v15, "dimen"

    const-string v16, "android"

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v12, 0x0

    sget-object v13, Lmiui/R$styleable;->ActionBar:[I

    const v14, 0x10102ce

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "a":Landroid/content/res/TypedArray;
    sget v12, Lmiui/R$styleable;->ActionBar_android_titleTextStyle:I

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .local v9, "titleStyleRes":I
    sget v12, Lcom/miui/internal/R$styleable;->ActionBar_titleCenter:I

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .local v6, "titleCenter":Z
    sget v12, Lmiui/R$styleable;->ActionBar_android_displayOptions:I

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .local v3, "displayOptions":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const v12, 0x110b0035

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, "actionBar":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-static {v12}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    sget v13, Lmiui/R$attr;->colorPrimary:I

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v12, 0x110b0037

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .local v8, "titleLayout":Landroid/view/View;
    const v12, 0x110b0010

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .local v10, "titleView":Landroid/widget/TextView;
    const v12, 0x110b000f

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .local v11, "upView":Landroid/widget/ImageView;
    and-int/lit8 v12, v3, 0x8

    if-nez v12, :cond_3

    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "actionBar":Landroid/view/View;
    .end local v3    # "displayOptions":I
    .end local v5    # "statusBar":Landroid/view/View;
    .end local v6    # "titleCenter":Z
    .end local v8    # "titleLayout":Landroid/view/View;
    .end local v9    # "titleStyleRes":I
    .end local v10    # "titleView":Landroid/widget/TextView;
    .end local v11    # "upView":Landroid/widget/ImageView;
    :cond_2
    :goto_0
    return-void

    .restart local v1    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "actionBar":Landroid/view/View;
    .restart local v3    # "displayOptions":I
    .restart local v5    # "statusBar":Landroid/view/View;
    .restart local v6    # "titleCenter":Z
    .restart local v8    # "titleLayout":Landroid/view/View;
    .restart local v9    # "titleStyleRes":I
    .restart local v10    # "titleView":Landroid/widget/TextView;
    .restart local v11    # "upView":Landroid/widget/ImageView;
    :cond_3
    if-eqz v6, :cond_5

    and-int/lit8 v12, v3, 0x2

    if-nez v12, :cond_5

    and-int/lit8 v12, v3, 0x4

    if-nez v12, :cond_5

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .local v7, "titleLP":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, 0x1

    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v7    # "titleLP":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_4
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method static getDockTopForUserMode(II)I
    .locals 1
    .param p0, "unrestrictedScreenTop"    # I
    .param p1, "statusBarHeight"    # I

    .prologue
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerInjector;->oldmanNeedFixSoftInputResizeLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "unrestrictedScreenTop":I
    :goto_0
    return p0

    .restart local p0    # "unrestrictedScreenTop":I
    :cond_0
    add-int/2addr p0, p1

    goto :goto_0
.end method

.method static initOldmanLastTopLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    sput-object p0, Lcom/android/server/policy/PhoneWindowManagerInjector;->sOldmanLastTopFullscreenOpaqueWmLp:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method static isNeedResetFrameRect(I)Z
    .locals 1
    .param p0, "adjust"    # I

    .prologue
    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerInjector;->oldmanNeedFixSoftInputResizeLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static oldmanNeedFixSoftInputResizeLayout()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/policy/PhoneWindowManagerInjector;->sOldmanLastTopFullscreenOpaqueWmLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v2

    if-ne v2, v1, :cond_0

    sget-object v2, Lcom/android/server/policy/PhoneWindowManagerInjector;->sOldmanLastTopFullscreenOpaqueWmLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/android/server/policy/PhoneWindowManagerInjector;->sOldmanLastTopFullscreenOpaqueWmLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x10100

    and-int/2addr v2, v3

    const/16 v3, 0x100

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static performReleaseHapticFeedback(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)V
    .locals 2
    .param p0, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .local v0, "down":Z
    :goto_0
    return-void

    .end local v0    # "down":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
