.class public Lmiui/maml/data/BroadcastBinder;
.super Lmiui/maml/data/VariableBinder;
.source "BroadcastBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/BroadcastBinder$Variable;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "BroadcastBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "BroadcastBinder"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Lmiui/maml/data/BroadcastBinder$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/BroadcastBinder$1;-><init>(Lmiui/maml/data/BroadcastBinder;)V

    iput-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1}, Lmiui/maml/data/BroadcastBinder;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    if-nez p1, :cond_0

    const-string v0, "BroadcastBinder"

    const-string v1, "ContentProviderBinder node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "action"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BroadcastBinder"

    const-string v1, "no action in broadcast binder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no action in broadcast binder element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lmiui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Lmiui/maml/data/BroadcastBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private updateVariables(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v7, "BroadcastBinder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateVariables: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lmiui/maml/data/BroadcastBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/data/VariableBinder$Variable;

    .local v6, "var":Lmiui/maml/data/VariableBinder$Variable;
    move-object v2, v6

    check-cast v2, Lmiui/maml/data/BroadcastBinder$Variable;

    .local v2, "v":Lmiui/maml/data/BroadcastBinder$Variable;
    const/4 v3, 0x0

    .local v3, "valueStr":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .local v4, "value":D
    iget v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mType:I

    packed-switch v7, :pswitch_data_0

    iget v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mType:I

    packed-switch v7, :pswitch_data_1

    const-string v7, "BroadcastBinder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalide type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/BroadcastBinder$Variable;->set(D)V

    const-string v7, "%f"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string v7, "name:%s type:%s value:%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mName:Ljava/lang/String;

    aput-object v9, v8, v10

    iget-object v9, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mTypeStr:Ljava/lang/String;

    aput-object v9, v8, v11

    const/4 v9, 0x2

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "info":Ljava/lang/String;
    const-string v7, "BroadcastBinder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateVariables: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "info":Ljava/lang/String;
    :pswitch_0
    iget-object v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mDefStringValue:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, v7}, Lmiui/maml/data/BroadcastBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object v7, v3

    goto :goto_3

    :pswitch_1
    iget-object v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v8, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    goto :goto_1

    :pswitch_2
    iget-object v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v8, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v7

    float-to-double v4, v7

    goto :goto_1

    :pswitch_3
    iget-object v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v8, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-int v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    int-to-double v4, v7

    goto :goto_1

    :pswitch_4
    iget-object v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v8, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-long v8, v8

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    long-to-double v4, v8

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected addVariable(Lmiui/maml/data/BroadcastBinder$Variable;)V
    .locals 1
    .param p1, "v"    # Lmiui/maml/data/BroadcastBinder$Variable;

    .prologue
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->unregister()V

    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->register()V

    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/BroadcastBinder$Variable;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    new-instance v0, Lmiui/maml/data/BroadcastBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/BroadcastBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 1
    .param p1, "x0"    # Lorg/w3c/dom/Element;

    .prologue
    invoke-virtual {p0, p1}, Lmiui/maml/data/BroadcastBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/BroadcastBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method protected onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p2}, Lmiui/maml/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->onUpdateComplete()V

    return-void
.end method

.method protected onRegister()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lmiui/maml/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lmiui/maml/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->onUpdateComplete()V

    return-void
.end method

.method protected onUnregister()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/maml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected register()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/maml/data/BroadcastBinder;->mRegistered:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->onRegister()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/BroadcastBinder;->mRegistered:Z

    goto :goto_0
.end method

.method protected unregister()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/maml/data/BroadcastBinder;->mRegistered:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->onUnregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/BroadcastBinder;->mRegistered:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
