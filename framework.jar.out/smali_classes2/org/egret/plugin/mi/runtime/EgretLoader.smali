.class public Lorg/egret/plugin/mi/runtime/EgretLoader;
.super Ljava/lang/Object;
.source "EgretLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/runtime/EgretLoader$GameOptionName;,
        Lorg/egret/plugin/mi/runtime/EgretLoader$GameEngineMethod;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "EgretLoader"

.field private static final MI_APPID:Ljava/lang/String; = "2000"

.field private static final MI_APPKEY:Ljava/lang/String; = "3321031F35156D389B0B272910695E3F"


# instance fields
.field private activity:Landroid/app/Activity;

.field private gameEngine:Ljava/lang/Object;

.field private launcher:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

.field private options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EgretLoader"

    const-string v1, "EgretLoader(Context context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/egret/plugin/mi/runtime/EgretLoader;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lorg/egret/plugin/mi/runtime/EgretLoader;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    invoke-direct {p0, p1}, Lorg/egret/plugin/mi/runtime/EgretLoader;->startGame(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lorg/egret/plugin/mi/runtime/EgretLoader;)V
    .locals 0
    .param p0, "x0"    # Lorg/egret/plugin/mi/runtime/EgretLoader;

    .prologue
    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->startGameEngine()V

    return-void
.end method

.method private callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    invoke-virtual {v1, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private callInitRuntime()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    .local v1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    aput-object v2, v0, v3

    .local v0, "args":[Ljava/lang/Object;
    const-string v2, "game_engine_init"

    invoke-direct {p0, v2, v1, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private callSetGameOptions()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .local v3, "optionSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "EgretLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Ljava/util/HashMap;

    aput-object v5, v4, v8

    .local v4, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, v9, [Ljava/lang/Object;

    aput-object v3, v0, v8

    .local v0, "args":[Ljava/lang/Object;
    const-string v5, "game_engine_set_options"

    invoke-direct {p0, v5, v4, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private callSetRuntimeView()V
    .locals 2

    .prologue
    const-string v1, "game_engine_get_view"

    invoke-direct {p0, v1}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->setScreenOrientation()V

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private checkContext(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v4, Landroid/app/Activity;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setEgretRuntimeListener"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Object;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private checkEgretGameEngine()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "EgretLoader"

    const-string v1, "Egret game engine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScreenOrientation()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string v1, "egret.runtime.screenOrientation"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string v1, "egret.runtime.screenOrientation"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private startGame(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "gameEngineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    new-instance v2, Lorg/egret/plugin/mi/runtime/EgretLoader$2;

    invoke-direct {v2, p0}, Lorg/egret/plugin/mi/runtime/EgretLoader$2;-><init>(Lorg/egret/plugin/mi/runtime/EgretLoader;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startGameEngine()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callSetGameOptions()V

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callInitRuntime()V

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callSetRuntimeView()V

    return-void
.end method


# virtual methods
.method public checkEgretContext()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "EgretLoader"

    const-string v1, "The context is not activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v0, "EgretLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const-string v0, "EgretLoader"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretGameEngine()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "game_engine_onPause"

    invoke-direct {p0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const-string v0, "EgretLoader"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretGameEngine()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "game_engine_onResume"

    invoke-direct {p0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    const-string v0, "EgretLoader"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretGameEngine()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "game_engine_onStop"

    invoke-direct {p0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v0, "EgretLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "gameId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "egret.runtime.gameId"

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v0, "gameUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "egret.runtime.loaderUrl"

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string v1, "egret.runtime.updateUrl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string v1, "egret.runtime.updateUrl"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setScreenOrientation(Ljava/lang/String;)V
    .locals 3
    .param p1, "orientation"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string v1, "egret.runtime.screenOrientation"

    const-string v2, "landscape"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string v1, "egret.runtime.screenOrientation"

    const-string v2, "portrait"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public start(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v0, "EgretLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "egret"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .local v2, "egretRoot":Ljava/lang/String;
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string v1, "egret.runtime.egretRoot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string v1, "egret.runtime.libraryLoaderType"

    const-string v3, "2"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    const-string v3, "2000"

    const-string v4, "3321031F35156D389B0B272910695E3F"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->launcher:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->launcher:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    new-instance v1, Lorg/egret/plugin/mi/runtime/EgretLoader$1;

    invoke-direct {v1, p0}, Lorg/egret/plugin/mi/runtime/EgretLoader$1;-><init>(Lorg/egret/plugin/mi/runtime/EgretLoader;)V

    invoke-virtual {v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->run(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;)V

    goto :goto_0
.end method

.method public stopEgretRuntime()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->onStop()V

    return-void
.end method
