.class public Lcom/miui/hybrid/hook/IntentHook;
.super Ljava/lang/Object;
.source "IntentHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/hybrid/hook/IntentHook$1;,
        Lcom/miui/hybrid/hook/IntentHook$RedirectRule;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IntentHook"

.field private static sInstance:Lcom/miui/hybrid/hook/IntentHook;


# instance fields
.field private ruleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/hybrid/hook/IntentHook$RedirectRule;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/hook/IntentHook;->ruleMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/miui/hybrid/hook/IntentHook;
    .locals 2

    .prologue
    sget-object v0, Lcom/miui/hybrid/hook/IntentHook;->sInstance:Lcom/miui/hybrid/hook/IntentHook;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/hybrid/hook/IntentHook;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/hybrid/hook/IntentHook;->sInstance:Lcom/miui/hybrid/hook/IntentHook;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/hybrid/hook/IntentHook;

    invoke-direct {v0}, Lcom/miui/hybrid/hook/IntentHook;-><init>()V

    sput-object v0, Lcom/miui/hybrid/hook/IntentHook;->sInstance:Lcom/miui/hybrid/hook/IntentHook;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/hybrid/hook/IntentHook;->sInstance:Lcom/miui/hybrid/hook/IntentHook;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getRedirectRule(Landroid/content/Intent;Ljava/lang/String;)Lcom/miui/hybrid/hook/IntentHook$RedirectRule;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/hybrid/hook/IntentHook;->ruleMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/hybrid/hook/IntentHook$RedirectRule;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;

    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "IntentHook"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IntentHook.delete("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object v3, p0, Lcom/miui/hybrid/hook/IntentHook;->ruleMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/hybrid/hook/IntentHook$RedirectRule;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;

    .local v0, "redirectRule":Lcom/miui/hybrid/hook/IntentHook$RedirectRule;
    const-string v3, "IntentHook"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " redirectRule:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->redirectPkg:Ljava/lang/String;

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;
    .param p3, "redirectPkg"    # Ljava/lang/String;
    .param p4, "clsNameMap"    # Landroid/os/Bundle;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "IntentHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IntentHook.insert("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    new-instance v0, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;-><init>(Lcom/miui/hybrid/hook/IntentHook$1;)V

    .local v0, "rule":Lcom/miui/hybrid/hook/IntentHook$RedirectRule;
    iput-object p1, v0, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->callingPkg:Ljava/lang/String;

    iput-object p2, v0, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->originDestPkg:Ljava/lang/String;

    iput-object p3, v0, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->redirectPkg:Ljava/lang/String;

    iput-object p4, v0, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->clsNameMap:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/miui/hybrid/hook/IntentHook;->ruleMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/hybrid/hook/IntentHook$RedirectRule;>;"
    if-nez v1, :cond_2

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v1    # "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/hybrid/hook/IntentHook$RedirectRule;>;"
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .restart local v1    # "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/hybrid/hook/IntentHook$RedirectRule;>;"
    iget-object v2, p0, Lcom/miui/hybrid/hook/IntentHook;->ruleMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "IntentHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert rule "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public redirect(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingPkg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/miui/hybrid/hook/IntentHook;->getRedirectRule(Landroid/content/Intent;Ljava/lang/String;)Lcom/miui/hybrid/hook/IntentHook$RedirectRule;

    move-result-object v7

    .local v7, "rule":Lcom/miui/hybrid/hook/IntentHook$RedirectRule;
    if-nez v7, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .local v0, "clsName":Ljava/lang/String;
    iget-object v6, v7, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->redirectPkg:Ljava/lang/String;

    .local v6, "redirectPkg":Ljava/lang/String;
    const-string v8, "IntentHook"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "redirect intent: package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    .local v4, "redirectCls":Ljava/lang/String;
    iget-object v8, v7, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->clsNameMap:Landroid/os/Bundle;

    if-eqz v8, :cond_2

    iget-object v8, v7, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->clsNameMap:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "mapClass":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object v4, v2

    const-string v8, "IntentHook"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "redirect intent: class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "mapClass":Ljava/lang/String;
    :goto_1
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v5, "redirectComponent":Landroid/content/ComponentName;
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .end local v5    # "redirectComponent":Landroid/content/ComponentName;
    .restart local v2    # "mapClass":Ljava/lang/String;
    :cond_1
    const-string v8, "IntentHook"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ignore class part, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not a valid className."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "mapClass":Ljava/lang/String;
    :cond_2
    const-string v8, "IntentHook"

    const-string v9, "ignore class part, rule.clsMapper is null."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
