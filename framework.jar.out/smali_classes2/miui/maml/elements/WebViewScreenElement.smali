.class public Lmiui/maml/elements/WebViewScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "WebViewScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/WebViewScreenElement$MamlInterface;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML WebViewScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "WebView"

.field private static final USE_NETWORK_ALL:I = 0x2

.field private static final USE_NETWORK_WIFI:I = 0x1


# instance fields
.field private mCachePage:Z

.field private mCurUrl:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mUriFormatter:Lmiui/maml/util/TextFormatter;

.field private mUseNetwork:I

.field private mUseNetworkExp:Lmiui/maml/data/Expression;

.field private mViewAdded:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWindowContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 10
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput v9, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWindowContext:Landroid/content/Context;

    new-instance v4, Landroid/webkit/WebView;

    iget-object v5, p0, Lmiui/maml/elements/WebViewScreenElement;->mWindowContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lmiui/maml/elements/WebViewScreenElement$1;

    invoke-direct {v5, p0}, Lmiui/maml/elements/WebViewScreenElement$1;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lmiui/maml/elements/WebViewScreenElement$2;

    invoke-direct {v5, p0}, Lmiui/maml/elements/WebViewScreenElement$2;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setInitialScale(I)V

    const-string v4, "userAgent"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "ua":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;-><init>(Lmiui/maml/elements/WebViewScreenElement;Lmiui/maml/elements/WebViewScreenElement$1;)V

    const-string v6, "maml"

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lmiui/maml/elements/WebViewScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    .local v3, "vars":Lmiui/maml/data/Variables;
    const-string v4, "uriExp"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    .local v1, "uriExp":Lmiui/maml/data/Expression;
    new-instance v4, Lmiui/maml/util/TextFormatter;

    const-string v5, "uri"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v1}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    iput-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    const-string v4, "cachePage"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mCachePage:Z

    const-string v4, "useNetwork"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "useNetwork":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "all"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iput v9, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    :goto_0
    return-void

    :cond_2
    const-string v4, "wifi"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput v8, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    goto :goto_0

    :cond_3
    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetworkExp:Lmiui/maml/data/Expression;

    goto :goto_0
.end method

.method static synthetic access$100(Lmiui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/WebViewScreenElement;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/elements/WebViewScreenElement;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/WebViewScreenElement;

    .prologue
    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    return v0
.end method

.method static synthetic access$202(Lmiui/maml/elements/WebViewScreenElement;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/WebViewScreenElement;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    return p1
.end method

.method static synthetic access$300(Lmiui/maml/elements/WebViewScreenElement;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/WebViewScreenElement;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/maml/elements/WebViewScreenElement;Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/WebViewScreenElement;
    .param p1, "x1"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/WebViewScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lmiui/maml/elements/WebViewScreenElement;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/WebViewScreenElement;

    .prologue
    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mCachePage:Z

    return v0
.end method

.method private canUseNetwork()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    if-ne v1, v0, :cond_2

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/net/ConnectivityHelper;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final finishWebView()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$10;

    invoke-direct {v1, p0}, Lmiui/maml/elements/WebViewScreenElement$10;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final initWebView()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mCachePage:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$9;

    invoke-direct {v1, p0}, Lmiui/maml/elements/WebViewScreenElement$9;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private pauseWebView(Z)V
    .locals 2
    .param p1, "pause"    # Z

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$8;

    invoke-direct {v1, p0, p1}, Lmiui/maml/elements/WebViewScreenElement$8;-><init>(Lmiui/maml/elements/WebViewScreenElement;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v0, 0x0

    .local v0, "changed":Z
    invoke-virtual {p0}, Lmiui/maml/elements/WebViewScreenElement;->getWidth()F

    move-result v3

    float-to-int v2, v3

    .local v2, "width":I
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v2, :cond_0

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/WebViewScreenElement;->getHeight()F

    move-result v3

    float-to-int v1, v3

    .local v1, "height":I
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v1, :cond_1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private final updateView()V
    .locals 4

    .prologue
    iget-boolean v2, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmiui/maml/elements/WebViewScreenElement;->getAbsoluteLeft()F

    move-result v0

    .local v0, "x":F
    iget-object v2, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setX(F)V

    invoke-virtual {p0}, Lmiui/maml/elements/WebViewScreenElement;->getAbsoluteTop()F

    move-result v1

    .local v1, "y":F
    iget-object v2, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setY(F)V

    iget-object v2, p0, Lmiui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v2}, Lmiui/maml/elements/WebViewScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lmiui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    return-void
.end method

.method protected doTick(J)V
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v1}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mCurUrl:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MAML WebViewScreenElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lmiui/maml/elements/WebViewScreenElement;->loadUrl(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lmiui/maml/elements/WebViewScreenElement;->updateView()V

    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    invoke-direct {p0}, Lmiui/maml/elements/WebViewScreenElement;->finishWebView()V

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mCachePage:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mCurUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public goBack()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$6;

    invoke-direct {v1, p0}, Lmiui/maml/elements/WebViewScreenElement$6;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetworkExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetworkExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getViewManager()Landroid/view/ViewManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiui/maml/elements/WebViewScreenElement;->initWebView()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "MAML WebViewScreenElement"

    const-string v1, "ViewManager must be set before init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lmiui/maml/elements/WebViewScreenElement;->canUseNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MAML WebViewScreenElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl canceled due to useNetwork setting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lmiui/maml/elements/WebViewScreenElement;->mCurUrl:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$3;

    invoke-direct {v1, p0, p1}, Lmiui/maml/elements/WebViewScreenElement$3;-><init>(Lmiui/maml/elements/WebViewScreenElement;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onVisibilityChange(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    move v0, p1

    .local v0, "_v":Z
    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v2, Lmiui/maml/elements/WebViewScreenElement$7;

    invoke-direct {v2, p0, v0}, Lmiui/maml/elements/WebViewScreenElement$7;-><init>(Lmiui/maml/elements/WebViewScreenElement;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->pause()V

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/elements/WebViewScreenElement;->pauseWebView(Z)V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$5;

    invoke-direct {v1, p0}, Lmiui/maml/elements/WebViewScreenElement$5;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->resume()V

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/maml/elements/WebViewScreenElement;->pauseWebView(Z)V

    :cond_0
    return-void
.end method

.method public runjs(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsfun"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$4;

    invoke-direct {v1, p0, p1}, Lmiui/maml/elements/WebViewScreenElement$4;-><init>(Lmiui/maml/elements/WebViewScreenElement;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
