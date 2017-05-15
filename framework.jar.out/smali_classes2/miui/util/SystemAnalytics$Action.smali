.class public Lmiui/util/SystemAnalytics$Action;
.super Ljava/lang/Object;
.source "SystemAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SystemAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field protected static final ACTION:Ljava/lang/String; = "_action_"

.field protected static final CATEGORY:Ljava/lang/String; = "_category_"

.field protected static final EVENT_ID:Ljava/lang/String; = "_event_id_"

.field protected static final LABEL:Ljava/lang/String; = "_label_"

.field protected static final VALUE:Ljava/lang/String; = "_value_"


# instance fields
.field private mContent:Lorg/json/JSONObject;

.field private mExtra:Lorg/json/JSONObject;

.field private sKeywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmiui/util/SystemAnalytics$Action;->mContent:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmiui/util/SystemAnalytics$Action;->mExtra:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/util/SystemAnalytics$Action;->sKeywords:Ljava/util/Set;

    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_event_id_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_category_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_action_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_label_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_value_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private ensureKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->sKeywords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is built-in, please pick another key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method addContent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lmiui/util/SystemAnalytics$Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method addContent(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lmiui/util/SystemAnalytics$Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method addContent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lmiui/util/SystemAnalytics$Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method addContent(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, v2}, Lmiui/util/SystemAnalytics$Action;->ensureKey(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lmiui/util/SystemAnalytics$Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected addEventId(Ljava/lang/String;)Lmiui/util/SystemAnalytics$Action;
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    const-string v0, "_event_id_"

    invoke-virtual {p0, v0, p1}, Lmiui/util/SystemAnalytics$Action;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method addExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/util/SystemAnalytics$Action;->mExtra:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addParam(Ljava/lang/String;I)Lmiui/util/SystemAnalytics$Action;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/util/SystemAnalytics$Action;->ensureKey(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lmiui/util/SystemAnalytics$Action;->addContent(Ljava/lang/String;I)V

    return-object p0
.end method

.method public addParam(Ljava/lang/String;J)Lmiui/util/SystemAnalytics$Action;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    invoke-direct {p0, p1}, Lmiui/util/SystemAnalytics$Action;->ensureKey(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lmiui/util/SystemAnalytics$Action;->addContent(Ljava/lang/String;J)V

    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lmiui/util/SystemAnalytics$Action;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lmiui/util/SystemAnalytics$Action;->ensureKey(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lmiui/util/SystemAnalytics$Action;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addParam(Ljava/lang/String;Lorg/json/JSONObject;)Lmiui/util/SystemAnalytics$Action;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .prologue
    invoke-direct {p0, p1}, Lmiui/util/SystemAnalytics$Action;->ensureKey(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lmiui/util/SystemAnalytics$Action;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method final getContent()Lorg/json/JSONObject;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->mContent:Lorg/json/JSONObject;

    return-object v0
.end method

.method final getExtra()Lorg/json/JSONObject;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->mExtra:Lorg/json/JSONObject;

    return-object v0
.end method
