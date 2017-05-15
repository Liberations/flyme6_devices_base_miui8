.class public Lmiui/maml/data/WebServiceBinder;
.super Lmiui/maml/data/VariableBinder;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/WebServiceBinder$1;,
        Lmiui/maml/data/WebServiceBinder$QueryThread;,
        Lmiui/maml/data/WebServiceBinder$AuthToken;,
        Lmiui/maml/data/WebServiceBinder$List;,
        Lmiui/maml/data/WebServiceBinder$Variable;,
        Lmiui/maml/data/WebServiceBinder$ResponseProtocol;,
        Lmiui/maml/data/WebServiceBinder$RequestMethod;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WebServiceBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "WebServiceBinder"


# instance fields
.field private mAuthentication:Z

.field mContentStringVar:Lmiui/maml/data/IndexedVariable;

.field public mEncryptedUser:Ljava/lang/String;

.field mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

.field mErrorStringVar:Lmiui/maml/data/IndexedVariable;

.field private mLastQueryTime:J

.field private mList:Lmiui/maml/data/WebServiceBinder$List;

.field private mParamsFormatter:Lmiui/maml/util/TextFormatter;

.field private mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

.field private mQueryInProgress:Z

.field private mQueryThread:Ljava/lang/Thread;

.field mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

.field private mSecure:Z

.field public mSecurity:Ljava/lang/String;

.field private mServiceId:Ljava/lang/String;

.field public mServiceToken:Ljava/lang/String;

.field mStatusCodeVar:Lmiui/maml/data/IndexedVariable;

.field private mUpdateInterval:I

.field protected mUriFormatter:Lmiui/maml/util/TextFormatter;

.field private mUseNetwork:I

.field private mUseNetworkExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    sget-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->POST:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    const/4 v0, 0x2

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$1000(Lmiui/maml/data/WebServiceBinder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;

    .prologue
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mServiceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1200(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/util/TextFormatter;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;

    .prologue
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mParamsFormatter:Lmiui/maml/util/TextFormatter;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/data/WebServiceBinder;I)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V

    return-void
.end method

.method static synthetic access$300(Lmiui/maml/data/WebServiceBinder;I)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->setStatusCode(I)V

    return-void
.end method

.method static synthetic access$400(Lmiui/maml/data/WebServiceBinder;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;

    .prologue
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mAuthentication:Z

    return v0
.end method

.method static synthetic access$500(Lmiui/maml/data/WebServiceBinder;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;

    .prologue
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mSecure:Z

    return v0
.end method

.method static synthetic access$600(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;

    .prologue
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->processResponseXml(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->processResponseJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Lmiui/maml/data/WebServiceBinder;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z

    return p1
.end method

.method private canUseNetwork()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    if-ne v2, v0, :cond_3

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/net/ConnectivityHelper;->isWifiConnected()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private handleException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const-string v0, "WebServiceBinder"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/data/WebServiceBinder;->setErrorString(Ljava/lang/String;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 14
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    if-nez p1, :cond_0

    const-string v0, "WebServiceBinder"

    const-string v2, "WebServiceBinder node is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "node is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "requestMethod"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "requestMethod":Ljava/lang/String;
    const-string v0, "get"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->GET:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    :cond_1
    const-string v0, "queryAtStart"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryAtStart:Z

    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    .local v1, "vars":Lmiui/maml/data/Variables;
    const-string v0, "uriExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    .local v5, "uriExp":Lmiui/maml/data/Expression;
    const-string v0, "uriFormatExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    .local v6, "uriFormatExp":Lmiui/maml/data/Expression;
    new-instance v0, Lmiui/maml/util/TextFormatter;

    const-string v2, "uri"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uriFormat"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "uriParas"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    new-instance v0, Lmiui/maml/util/TextFormatter;

    const-string v2, "params"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "paramsFormat"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "paramsParas"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mParamsFormatter:Lmiui/maml/util/TextFormatter;

    const-string v0, "updateInterval"

    const/4 v2, -0x1

    invoke-static {p1, v0, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    const-string v0, "protocol"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/data/WebServiceBinder;->parseProtocol(Ljava/lang/String;)V

    const-string v0, "authentication"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mAuthentication:Z

    const-string v0, "secure"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mSecure:Z

    const-string v0, "serviceID"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mServiceId:Ljava/lang/String;

    const-string v0, "useNetwork"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "useNetwork":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "all"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    :goto_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/WebServiceBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "statusCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, v13}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mStatusCodeVar:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, v13}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "errorString"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, v12}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    const-string v0, "dbgContentString"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .local v7, "dbgContent":Z
    if-eqz v7, :cond_3

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "contentString"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, v12}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    .end local v7    # "dbgContent":Z
    :cond_3
    const-string v0, "List"

    invoke-static {p1, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .local v9, "list":Lorg/w3c/dom/Element;
    if-eqz v9, :cond_4

    :try_start_0
    new-instance v0, Lmiui/maml/data/WebServiceBinder$List;

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, v9, v2}, Lmiui/maml/data/WebServiceBinder$List;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    .end local v9    # "list":Lorg/w3c/dom/Element;
    :cond_5
    const-string v0, "wifi"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v13, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    goto/16 :goto_0

    :cond_6
    const-string v0, "none"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput v12, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    goto/16 :goto_0

    :cond_7
    invoke-static {v1, v11}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetworkExp:Lmiui/maml/data/Expression;

    goto/16 :goto_0

    .restart local v9    # "list":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "WebServiceBinder"

    const-string v2, "invalid List"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private parseProtocol(Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "json/obj"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    goto :goto_0

    :cond_2
    const-string v0, "json/array"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONarray:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    goto :goto_0

    :cond_3
    const-string v0, "bitmap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    goto :goto_0
.end method

.method private processResponseJson(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "jpath":Lmiui/maml/util/JSONPath;
    :try_start_0
    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    sget-object v9, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    if-ne v8, v9, :cond_1

    new-instance v4, Lmiui/maml/util/JSONPath;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Lmiui/maml/util/JSONPath;-><init>(Lorg/json/JSONObject;)V

    .end local v3    # "jpath":Lmiui/maml/util/JSONPath;
    .local v4, "jpath":Lmiui/maml/util/JSONPath;
    move-object v3, v4

    .end local v4    # "jpath":Lmiui/maml/util/JSONPath;
    .restart local v3    # "jpath":Lmiui/maml/util/JSONPath;
    :goto_0
    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/data/VariableBinder$Variable;

    .local v7, "var":Lmiui/maml/data/VariableBinder$Variable;
    move-object v0, v7

    check-cast v0, Lmiui/maml/data/WebServiceBinder$Variable;

    move-object v6, v0

    .local v6, "v":Lmiui/maml/data/WebServiceBinder$Variable;
    iget-object v8, v6, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lmiui/maml/util/JSONPath;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "v":Lmiui/maml/data/WebServiceBinder$Variable;
    .end local v7    # "var":Lmiui/maml/data/VariableBinder$Variable;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/json/JSONException;
    invoke-direct {p0, v1}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V

    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_1
    new-instance v4, Lmiui/maml/util/JSONPath;

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Lmiui/maml/util/JSONPath;-><init>(Lorg/json/JSONArray;)V

    .end local v3    # "jpath":Lmiui/maml/util/JSONPath;
    .restart local v4    # "jpath":Lmiui/maml/util/JSONPath;
    move-object v3, v4

    .end local v4    # "jpath":Lmiui/maml/util/JSONPath;
    .restart local v3    # "jpath":Lmiui/maml/util/JSONPath;
    goto :goto_0

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    iget-object v8, v8, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lmiui/maml/util/JSONPath;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .local v5, "obj":Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v8, v5, Lorg/json/JSONArray;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    check-cast v5, Lorg/json/JSONArray;

    .end local v5    # "obj":Ljava/lang/Object;
    invoke-virtual {v8, v5}, Lmiui/maml/data/WebServiceBinder$List;->fill(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private processResponseXml(Ljava/lang/String;)V
    .locals 15
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v11

    .local v11, "xpath":Ljavax/xml/xpath/XPath;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .local v2, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v6, 0x0

    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    const-string v12, "utf-8"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .local v3, "doc":Lorg/w3c/dom/Document;
    iget-object v12, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/maml/data/VariableBinder$Variable;

    .local v10, "var":Lmiui/maml/data/VariableBinder$Variable;
    move-object v0, v10

    check-cast v0, Lmiui/maml/data/WebServiceBinder$Variable;

    move-object v8, v0
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v8, "v":Lmiui/maml/data/WebServiceBinder$Variable;
    :try_start_2
    iget-object v12, v8, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    sget-object v13, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {v11, v12, v3, v13}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v9

    .local v9, "value":Ljava/lang/Object;
    invoke-virtual {v8, v9}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .end local v9    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .local v4, "e":Ljavax/xml/xpath/XPathExpressionException;
    const/4 v12, 0x0

    :try_start_3
    invoke-virtual {v8, v12}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V

    const-string v12, "WebServiceBinder"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fail to get variable: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v8, Lmiui/maml/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljavax/xml/xpath/XPathExpressionException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "e":Ljavax/xml/xpath/XPathExpressionException;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "v":Lmiui/maml/data/WebServiceBinder$Variable;
    .end local v10    # "var":Lmiui/maml/data/VariableBinder$Variable;
    :catch_1
    move-exception v4

    move-object v6, v7

    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "is":Ljava/io/InputStream;
    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v6    # "is":Ljava/io/InputStream;
    :goto_1
    :try_start_4
    invoke-direct {p0, v4}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_0

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c

    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_0
    :goto_2
    return-void

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "is":Ljava/io/InputStream;
    :cond_1
    :try_start_6
    iget-object v12, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;
    :try_end_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v12, :cond_2

    :try_start_7
    iget-object v12, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    iget-object v12, v12, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    sget-object v13, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v11, v12, v3, v13}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/NodeList;

    .local v9, "value":Lorg/w3c/dom/NodeList;
    iget-object v12, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    invoke-virtual {v12, v9}, Lmiui/maml/data/WebServiceBinder$List;->fill(Lorg/w3c/dom/NodeList;)V
    :try_end_7
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v9    # "value":Lorg/w3c/dom/NodeList;
    :cond_2
    :goto_3
    if-eqz v7, :cond_3

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_3
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_2

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    .local v4, "e":Ljavax/xml/xpath/XPathExpressionException;
    :try_start_9
    const-string v12, "WebServiceBinder"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fail to get list: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    # getter for: Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;
    invoke-static {v14}, Lmiui/maml/data/WebServiceBinder$List;->access$000(Lmiui/maml/data/WebServiceBinder$List;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljavax/xml/xpath/XPathExpressionException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "e":Ljavax/xml/xpath/XPathExpressionException;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_3
    move-exception v4

    move-object v6, v7

    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "is":Ljava/io/InputStream;
    .local v4, "e":Lorg/xml/sax/SAXException;
    .restart local v6    # "is":Ljava/io/InputStream;
    :goto_4
    :try_start_a
    invoke-direct {p0, v4}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v6, :cond_0

    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_2

    :catch_4
    move-exception v12

    goto :goto_2

    .end local v4    # "e":Lorg/xml/sax/SAXException;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v12

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_2

    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_6
    move-exception v4

    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :goto_5
    :try_start_c
    invoke-direct {p0, v4}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v6, :cond_0

    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_2

    :catch_7
    move-exception v12

    goto :goto_2

    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_8
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    :goto_6
    :try_start_e
    invoke-direct {p0, v4}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v6, :cond_0

    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_2

    :catch_9
    move-exception v12

    goto :goto_2

    .end local v4    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_10
    invoke-direct {p0, v4}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v6, :cond_0

    :try_start_11
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_2

    :catch_b
    move-exception v12

    goto :goto_2

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_8
    if-eqz v6, :cond_4

    :try_start_12
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    :cond_4
    :goto_9
    throw v12

    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_c
    move-exception v12

    goto/16 :goto_2

    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_d
    move-exception v13

    goto :goto_9

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_8

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_e
    move-exception v4

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_7

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_f
    move-exception v4

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_10
    move-exception v4

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_5

    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    :catch_11
    move-exception v4

    goto :goto_4

    :catch_12
    move-exception v4

    goto/16 :goto_1
.end method

.method private setErrorCode(I)V
    .locals 4
    .param p1, "code"    # I

    .prologue
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    const-string v0, "WebServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueryThread error: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setErrorString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private setStatusCode(I)V
    .locals 4
    .param p1, "code"    # I

    .prologue
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mStatusCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mStatusCodeVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    const-string v0, "WebServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueryThread status code: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private tryStartQuery()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    sub-long v0, v2, v4

    .local v0, "time":J
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    iput-wide v6, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    :cond_0
    iget-wide v2, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    if-lez v2, :cond_2

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->startQuery()V

    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetworkExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetworkExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    :cond_0
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/WebServiceBinder$Variable;

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->loadCache(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryAtStart:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder;->tryStartQuery()V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 1
    .param p1, "x0"    # Lorg/w3c/dom/Element;

    .prologue
    invoke-virtual {p0, p1}, Lmiui/maml/data/WebServiceBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/WebServiceBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/WebServiceBinder$Variable;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    new-instance v0, Lmiui/maml/data/WebServiceBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/WebServiceBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method public pause()V
    .locals 0

    .prologue
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    return-void
.end method

.method public processResponseBitmap(Lmiui/maml/util/net/SimpleRequest$StreamContent;)V
    .locals 6
    .param p1, "response"    # Lmiui/maml/util/net/SimpleRequest$StreamContent;

    .prologue
    iget-object v4, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    const-string v4, "WebServiceBinder"

    const-string v5, "no image element var"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lmiui/maml/util/net/SimpleRequest$StreamContent;->getStream()Ljava/io/InputStream;

    move-result-object v2

    .local v2, "is":Ljava/io/InputStream;
    iget-object v4, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/WebServiceBinder$Variable;

    .local v3, "v":Lmiui/maml/data/WebServiceBinder$Variable;
    iget-object v4, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    .local v1, "cacheDir":Ljava/lang/String;
    # invokes: Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->access$100(Lmiui/maml/data/WebServiceBinder$Variable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->saveCache(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->loadCache(Ljava/lang/String;)V

    :goto_1
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v4, "WebServiceBinder"

    const-string v5, "decoded bitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    invoke-virtual {v3, v0}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v4, "WebServiceBinder"

    const-string v5, "response stream is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public refresh()V
    .locals 0

    .prologue
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->startQuery()V

    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryAtStart:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder;->tryStartQuery()V

    :cond_0
    return-void
.end method

.method public startQuery()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, v2}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WebServiceBinder"

    const-string v1, "capability disabled: webservice"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder;->canUseNetwork()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_2
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel query because current network is forbidden by useNetwork config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_3
    const-string v0, "WebServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel query because current network is forbidden by useNetwork config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z

    new-instance v0, Lmiui/maml/data/WebServiceBinder$QueryThread;

    invoke-direct {v0, p0}, Lmiui/maml/data/WebServiceBinder$QueryThread;-><init>(Lmiui/maml/data/WebServiceBinder;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryThread:Ljava/lang/Thread;

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
