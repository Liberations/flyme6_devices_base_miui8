.class public Lmiui/maml/data/SettingsBinder;
.super Lmiui/maml/data/VariableBinder;
.source "SettingsBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/SettingsBinder$1;,
        Lmiui/maml/data/SettingsBinder$Variable;,
        Lmiui/maml/data/SettingsBinder$Category;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SettingsBinder"


# instance fields
.field private mConst:Z

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iget-object v0, p0, Lmiui/maml/data/SettingsBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lmiui/maml/data/SettingsBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    const-string v0, "false"

    const-string v1, "const"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmiui/maml/data/SettingsBinder;->mConst:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/SettingsBinder;

    .prologue
    iget-object v0, p0, Lmiui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/SettingsBinder$Variable;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    new-instance v0, Lmiui/maml/data/SettingsBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/SettingsBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p0, p1, v1}, Lmiui/maml/data/SettingsBinder$Variable;-><init>(Lmiui/maml/data/SettingsBinder;Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 1
    .param p1, "x0"    # Lorg/w3c/dom/Element;

    .prologue
    invoke-virtual {p0, p1}, Lmiui/maml/data/SettingsBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/SettingsBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method public refresh()V
    .locals 0

    .prologue
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    invoke-virtual {p0}, Lmiui/maml/data/SettingsBinder;->startQuery()V

    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    iget-boolean v0, p0, Lmiui/maml/data/SettingsBinder;->mConst:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/data/SettingsBinder;->startQuery()V

    :cond_0
    return-void
.end method

.method public startQuery()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/maml/data/SettingsBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableBinder$Variable;

    .local v1, "v":Lmiui/maml/data/VariableBinder$Variable;
    check-cast v1, Lmiui/maml/data/SettingsBinder$Variable;

    .end local v1    # "v":Lmiui/maml/data/VariableBinder$Variable;
    invoke-virtual {v1}, Lmiui/maml/data/SettingsBinder$Variable;->query()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/data/SettingsBinder;->onUpdateComplete()V

    return-void
.end method
