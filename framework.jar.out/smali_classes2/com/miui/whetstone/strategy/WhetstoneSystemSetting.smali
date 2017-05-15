.class public Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;
.super Ljava/util/Observable;
.source "WhetstoneSystemSetting.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mWhetstoneActivityManagerService:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .prologue
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mWhetstoneActivityManagerService:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    return-void
.end method

.method private finishCommonAllowed(ILandroid/content/ComponentName;Ljava/lang/Boolean;)Z
    .locals 3
    .param p1, "callingPid"    # I
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "ret"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x0

    .local v0, "finish":Z
    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mWhetstoneActivityManagerService:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v2, p1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPackageNamebyPid(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v0, 0x1

    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    return v0
.end method


# virtual methods
.method public finishIsStartPorcessAllowedByBroadcast(ILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/Boolean;)Z
    .locals 3
    .param p1, "callingPid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "ret"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x1

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .local v0, "finish":Z
    invoke-direct {p0, p1, p3, p4}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->finishCommonAllowed(ILandroid/content/ComponentName;Ljava/lang/Boolean;)Z

    move-result v0

    goto :goto_0
.end method

.method public finishstartServiceAllowed(ILandroid/content/ComponentName;IZZ)Z
    .locals 2
    .param p1, "callingPid"    # I
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "intentFlags"    # I
    .param p4, "whileRestarting"    # Z
    .param p5, "ret"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "finish":Z
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p5, 0x1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->finishCommonAllowed(ILandroid/content/ComponentName;Ljava/lang/Boolean;)Z

    move-result v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public finishstartServiceAllowed(ILandroid/content/Intent;Ljava/lang/Boolean;)Z
    .locals 1
    .param p1, "callingPid"    # I
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "ret"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    return v0
.end method

.method public getCommonConfigInBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    move v0, p2

    .local v0, "ret":Z
    iget-object v2, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public getCommonConfigInInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    move v0, p2

    .local v0, "ret":I
    iget-object v2, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getCommonConfigInJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCommonConfigInJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCommonConfigInString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    move-object v0, p2

    .local v0, "ret":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public updateFrameworkCommonConfig(Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    sget-object v5, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateFrameworkCommonConfig json:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v2, "jobj":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "value":Ljava/lang/Object;
    iget-object v5, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "jobj":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateFrameworkCommonConfig JSONException e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->setChanged()V

    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->notifyObservers()V

    return-void
.end method
