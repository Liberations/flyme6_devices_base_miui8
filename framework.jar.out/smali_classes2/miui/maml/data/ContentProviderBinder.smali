.class public Lmiui/maml/data/ContentProviderBinder;
.super Lmiui/maml/data/VariableBinder;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/ContentProviderBinder$2;,
        Lmiui/maml/data/ContentProviderBinder$ChangeObserver;,
        Lmiui/maml/data/ContentProviderBinder$QueryHandler;,
        Lmiui/maml/data/ContentProviderBinder$List;,
        Lmiui/maml/data/ContentProviderBinder$Variable;,
        Lmiui/maml/data/ContentProviderBinder$Builder;,
        Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ContentProviderBinder"

.field private static final QUERY_TOKEN:I = 0x64

.field public static final TAG_NAME:Ljava/lang/String; = "ContentProviderBinder"


# instance fields
.field protected mArgs:[Ljava/lang/String;

.field private mAwareChangeWhilePause:Z

.field public mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

.field protected mColumns:[Ljava/lang/String;

.field protected mCountName:Ljava/lang/String;

.field private mCountVar:Lmiui/maml/data/IndexedVariable;

.field private mHandler:Landroid/os/Handler;

.field private mLastQueryTime:J

.field private mLastUri:Landroid/net/Uri;

.field private mList:Lmiui/maml/data/ContentProviderBinder$List;

.field private mNeedsRequery:Z

.field protected mOrder:Ljava/lang/String;

.field private mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

.field private mSystemBootCompleted:Z

.field private mUpdateInterval:I

.field private mUpdater:Ljava/lang/Runnable;

.field protected mUriFormatter:Lmiui/maml/util/TextFormatter;

.field protected mWhereFormatter:Lmiui/maml/util/TextFormatter;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-direct {v0, p0}, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    new-instance v0, Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;-><init>(Lmiui/maml/data/ContentProviderBinder;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/data/ContentProviderBinder;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/ContentProviderBinder;

    .prologue
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    return-void
.end method

.method static synthetic access$100(Lmiui/maml/data/ContentProviderBinder;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/ContentProviderBinder;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/data/ContentProviderBinder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/ContentProviderBinder;

    .prologue
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkUpdate()V
    .locals 6

    .prologue
    iget v2, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-gtz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    sub-long v0, v2, v4

    .local v0, "elapsedTime":J
    iget v2, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    const-wide/16 v0, 0x0

    :cond_1
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    iget v4, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 19
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/data/ContentProviderBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    .local v3, "vars":Lmiui/maml/data/Variables;
    const-string v2, "uriExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    .local v7, "uriExp":Lmiui/maml/data/Expression;
    const-string v2, "uriFormatExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v8

    .local v8, "uriFormatExp":Lmiui/maml/data/Expression;
    new-instance v2, Lmiui/maml/util/TextFormatter;

    const-string v4, "uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "uriFormat"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "uriParas"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v8}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    const-string v2, "columns"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, "tmp":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    const-string v2, "whereExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v14

    .local v14, "whereExp":Lmiui/maml/data/Expression;
    const-string v2, "whereFormatExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v15

    .local v15, "whereFormatExp":Lmiui/maml/data/Expression;
    new-instance v9, Lmiui/maml/util/TextFormatter;

    const-string v2, "where"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "whereFormat"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "whereParas"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v3

    invoke-direct/range {v9 .. v15}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    const-string v2, "args"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    const-string v2, "order"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v18, 0x0

    .end local v18    # "tmp":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    const-string v2, "countName"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "tmp":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v18, 0x0

    .end local v18    # "tmp":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    :cond_2
    const-string v2, "updateInterval"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-lez v2, :cond_3

    new-instance v2, Lmiui/maml/data/ContentProviderBinder$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lmiui/maml/data/ContentProviderBinder$1;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lmiui/maml/data/ContentProviderBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    const-string v2, "List"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .local v17, "list":Lorg/w3c/dom/Element;
    if-eqz v17, :cond_4

    :try_start_0
    new-instance v2, Lmiui/maml/data/ContentProviderBinder$List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v4}, Lmiui/maml/data/ContentProviderBinder$List;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mList:Lmiui/maml/data/ContentProviderBinder$List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    const-string v2, "vigilant"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmiui/maml/data/ContentProviderBinder;->mAwareChangeWhilePause:Z

    return-void

    .end local v14    # "whereExp":Lmiui/maml/data/Expression;
    .end local v15    # "whereFormatExp":Lmiui/maml/data/Expression;
    .end local v17    # "list":Lorg/w3c/dom/Element;
    .restart local v18    # "tmp":Ljava/lang/String;
    :cond_5
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .restart local v14    # "whereExp":Lmiui/maml/data/Expression;
    .restart local v15    # "whereFormatExp":Lmiui/maml/data/Expression;
    :cond_6
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .end local v18    # "tmp":Ljava/lang/String;
    .restart local v17    # "list":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v16

    .local v16, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "ContentProviderBinder"

    const-string v4, "invalid List"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private onQueryComplete(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->updateVariables(Landroid/database/Cursor;)V

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->onUpdateComplete()V

    return-void
.end method

.method private registerObserver(Landroid/net/Uri;Z)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "reg"    # Z

    .prologue
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "ContentProviderBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateVariables(Landroid/database/Cursor;)V
    .locals 18
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    if-nez p1, :cond_3

    const/4 v5, 0x0

    .local v5, "count":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mList:Lmiui/maml/data/ContentProviderBinder$List;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mList:Lmiui/maml/data/ContentProviderBinder$List;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lmiui/maml/data/ContentProviderBinder$List;->fill(Landroid/database/Cursor;)V

    :cond_1
    if-eqz p1, :cond_2

    if-nez v5, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/maml/data/VariableBinder$Variable;

    .local v9, "v":Lmiui/maml/data/VariableBinder$Variable;
    check-cast v9, Lmiui/maml/data/ContentProviderBinder$Variable;

    .end local v9    # "v":Lmiui/maml/data/VariableBinder$Variable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v9, v15}, Lmiui/maml/data/ContentProviderBinder$Variable;->setNull(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_1

    .end local v5    # "count":I
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    goto :goto_0

    .restart local v5    # "count":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/maml/data/VariableBinder$Variable;

    .restart local v9    # "v":Lmiui/maml/data/VariableBinder$Variable;
    move-object v14, v9

    check-cast v14, Lmiui/maml/data/ContentProviderBinder$Variable;

    .local v14, "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    iget-boolean v15, v14, Lmiui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    if-nez v15, :cond_5

    const/4 v13, 0x0

    .local v13, "valueStr":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .local v10, "value":D
    const/4 v12, 0x0

    .local v12, "valueBytes":[B
    iget v15, v14, Lmiui/maml/data/ContentProviderBinder$Variable;->mRow:I

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v15

    if-eqz v15, :cond_5

    :try_start_0
    iget-object v4, v14, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .local v4, "column":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .local v3, "col":I
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_8

    iget v15, v9, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    sparse-switch v15, :sswitch_data_0

    iget v15, v9, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    packed-switch v15, :pswitch_data_0

    const-string v15, "ContentProviderBinder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "invalide type"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v9, Lmiui/maml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v9, v10, v11}, Lmiui/maml/data/VariableBinder$Variable;->set(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .end local v3    # "col":I
    .end local v4    # "column":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v15, "ContentProviderBinder"

    const-string v16, "failed to get value from cursor"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "col":I
    .restart local v4    # "column":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .end local v3    # "col":I
    .end local v4    # "column":Ljava/lang/String;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v15, "ContentProviderBinder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "column does not exist: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v14, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "col":I
    .restart local v4    # "column":Ljava/lang/String;
    :sswitch_1
    const/4 v2, 0x0

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    if-eqz v12, :cond_6

    const/4 v15, 0x0

    array-length v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v12, v15, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_6
    iget v15, v9, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    invoke-virtual {v9, v2}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "col":I
    .end local v4    # "column":Ljava/lang/String;
    :catch_2
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const-string v15, "ContentProviderBinder"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "col":I
    .restart local v4    # "column":Ljava/lang/String;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v14, v15}, Lmiui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v8

    .local v8, "image":Lmiui/maml/elements/ImageScreenElement;
    if-eqz v8, :cond_5

    invoke-virtual {v8, v2}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "image":Lmiui/maml/elements/ImageScreenElement;
    :pswitch_0
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    goto/16 :goto_3

    :pswitch_1
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v15

    float-to-double v10, v15

    goto/16 :goto_3

    :pswitch_2
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    int-to-double v10, v15

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v10, v0

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v14, v15}, Lmiui/maml/data/ContentProviderBinder$Variable;->setNull(Lmiui/maml/ScreenElementRoot;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .end local v3    # "col":I
    .end local v4    # "column":Ljava/lang/String;
    .end local v9    # "v":Lmiui/maml/data/VariableBinder$Variable;
    .end local v10    # "value":D
    .end local v12    # "valueBytes":[B
    .end local v13    # "valueStr":Ljava/lang/String;
    .end local v14    # "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    :cond_9
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
        0x3e9 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createCountVar()V
    .locals 4

    .prologue
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lmiui/maml/data/ContentProviderBinder;->registerObserver(Landroid/net/Uri;Z)V

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lmiui/maml/data/ContentProviderBinder;->setBlockedColumns([Ljava/lang/String;)V

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    return-void
.end method

.method public final getUriText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    const-string v0, "ContentProviderBinder"

    const-string v1, "ChangeObserver: content changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mPaused:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mAwareChangeWhilePause:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    goto :goto_0
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/ContentProviderBinder$Variable;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/ContentProviderBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 1
    .param p1, "x0"    # Lorg/w3c/dom/Element;

    .prologue
    invoke-virtual {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/ContentProviderBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 2

    .prologue
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    goto :goto_0
.end method

.method public final setBlockedColumns([Ljava/lang/String;)V
    .locals 8
    .param p1, "cols"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .restart local v1    # "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/data/VariableBinder$Variable;

    .local v5, "v":Lmiui/maml/data/VariableBinder$Variable;
    move-object v6, v5

    check-cast v6, Lmiui/maml/data/ContentProviderBinder$Variable;

    .local v6, "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    if-eqz v1, :cond_1

    iget-object v7, v6, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    :goto_2
    iput-boolean v7, v6, Lmiui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    .end local v5    # "v":Lmiui/maml/data/VariableBinder$Variable;
    .end local v6    # "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    :cond_2
    return-void
.end method

.method public startQuery()V
    .locals 9

    .prologue
    const/16 v1, 0x64

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getUriText()Ljava/lang/String;

    move-result-object v8

    .local v8, "uriText":Ljava/lang/String;
    if-nez v8, :cond_1

    const-string v0, "ContentProviderBinder"

    const-string v1, "start query: uri null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    if-nez v0, :cond_2

    const-string v0, "content://sms/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    const-string v2, "sys.boot_completed"

    invoke-static {v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {v0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;->cancelOperation(I)V

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    iget v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lmiui/maml/data/ContentProviderBinder;->registerObserver(Landroid/net/Uri;Z)V

    iput-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    :cond_3
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v5

    .local v5, "where":Ljava/lang/String;
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    const/4 v2, 0x0

    iget-object v4, p0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    iget-object v6, p0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    iget-object v7, p0, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    goto :goto_0
.end method
