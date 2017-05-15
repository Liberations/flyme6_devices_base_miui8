.class public final Lmiui/log/LogSwitchesConfigManager;
.super Ljava/lang/Object;
.source "LogSwitchesConfigManager.java"


# static fields
.field public static final ACTION_REVERT_MIUILOG_SWITCHES:Ljava/lang/String; = "miui.intent.action.REVERT_MIUILOG_SWITCHES"

.field public static final ACTION_SWITCH_OFF_MIUILOGS:Ljava/lang/String; = "miui.intent.action.SWITCH_OFF_MIUILOGS"

.field public static final ACTION_SWITCH_ON_MIUILOGS:Ljava/lang/String; = "miui.intent.action.SWITCH_ON_MIUILOGS"

.field public static final EXTRA_KEY_PACKAGES:Ljava/lang/String; = "packages"

.field public static final EXTRA_KEY_PROGRAMS:Ljava/lang/String; = "programs"

.field public static final EXTRA_KEY_TAGGROUPS:Ljava/lang/String; = "groups"

.field public static final EXTRA_KEY_TAGS:Ljava/lang/String; = "tags"

.field public static final EXTRA_KEY_TARGETALL:Ljava/lang/String; = "allapps"

.field public static final TAG:Ljava/lang/String; = "LogSwitchesConfigManager"


# instance fields
.field private final logSwitchesFileName:Ljava/lang/String;

.field private final logSwitchesFilePath:Ljava/lang/String;

.field private final logSwitchesFolder:Ljava/lang/String;

.field private final logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

.field private final logSwitchesWriter:Lmiui/log/LogSwitchesConfigWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "logSwitchesFolder"    # Ljava/lang/String;
    .param p2, "logSwitchesFileName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesFolder:Ljava/lang/String;

    iput-object p2, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesFilePath:Ljava/lang/String;

    new-instance v0, Lmiui/log/LogSwitchesConfigMonitor;

    invoke-direct {v0, p1, p2}, Lmiui/log/LogSwitchesConfigMonitor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    new-instance v0, Lmiui/log/LogSwitchesConfigWriter;

    invoke-direct {v0, p1, p2}, Lmiui/log/LogSwitchesConfigWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesWriter:Lmiui/log/LogSwitchesConfigWriter;

    return-void
.end method

.method private buildAppLogSwitches(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 9
    .param p1, "isPackage"    # Z
    .param p2, "appNames"    # [Ljava/lang/String;
    .param p3, "tags"    # [Ljava/lang/String;
    .param p4, "groups"    # [Ljava/lang/String;
    .param p5, "isOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .local v5, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    move-object v2, p2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v2, v3

    .local v1, "appName":Ljava/lang/String;
    new-instance v0, Lmiui/log/AppLogSwitches;

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    move-object v6, v1

    :goto_1
    if-eqz p1, :cond_0

    const-string v1, ""

    .end local v1    # "appName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p3, p4, p5}, Lmiui/log/LogSwitchesConfigManager;->buildLogSwitches([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v8

    invoke-direct {v0, v7, v6, v1, v8}, Lmiui/log/AppLogSwitches;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .local v0, "appConfig":Lmiui/log/AppLogSwitches;
    iget-object v6, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "appConfig":Lmiui/log/AppLogSwitches;
    .restart local v1    # "appName":Ljava/lang/String;
    :cond_1
    const-string v6, ""

    goto :goto_1

    .end local v1    # "appName":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method private buildLogSwitches([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 8
    .param p1, "tags"    # [Ljava/lang/String;
    .param p2, "groups"    # [Ljava/lang/String;
    .param p3, "isOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/LogSwitch;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .local v5, "logSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/LogSwitch;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .local v6, "tag":Ljava/lang/String;
    new-instance v4, Lmiui/log/LogSwitch;

    const-string v7, ""

    invoke-direct {v4, v6, v7, p3}, Lmiui/log/LogSwitch;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .local v4, "logSwitch":Lmiui/log/LogSwitch;
    iget-object v7, v4, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "logSwitch":Lmiui/log/LogSwitch;
    .end local v6    # "tag":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .local v1, "group":Ljava/lang/String;
    new-instance v4, Lmiui/log/LogSwitch;

    const-string v7, ""

    invoke-direct {v4, v7, v1, p3}, Lmiui/log/LogSwitch;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .restart local v4    # "logSwitch":Lmiui/log/LogSwitch;
    iget-object v7, v4, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "group":Ljava/lang/String;
    .end local v4    # "logSwitch":Lmiui/log/LogSwitch;
    :cond_1
    return-object v5
.end method

.method private merge(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "current":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .local p2, "appLevelUpdates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .local v4, "newConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/log/AppLogSwitches;

    .local v1, "currentAppLogSwitches":Lmiui/log/AppLogSwitches;
    iget-object v5, v1, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    .local v0, "appUpdates":Lmiui/log/AppLogSwitches;
    invoke-virtual {v1}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/log/AppLogSwitches;

    .local v3, "newAppLogSwitches":Lmiui/log/AppLogSwitches;
    if-nez v0, :cond_1

    iget-object v5, v3, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v0}, Lmiui/log/LogSwitchesConfigManager;->update(Lmiui/log/AppLogSwitches;Lmiui/log/AppLogSwitches;)V

    iget-object v5, v3, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, v3, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "appUpdates":Lmiui/log/AppLogSwitches;
    .end local v1    # "currentAppLogSwitches":Lmiui/log/AppLogSwitches;
    .end local v3    # "newAppLogSwitches":Lmiui/log/AppLogSwitches;
    :cond_2
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    .restart local v0    # "appUpdates":Lmiui/log/AppLogSwitches;
    iget-object v5, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v6, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/log/AppLogSwitches;

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "appUpdates":Lmiui/log/AppLogSwitches;
    :cond_4
    return-object v4
.end method

.method private merge(Ljava/util/HashMap;Lmiui/log/AppLogSwitches;)Ljava/util/HashMap;
    .locals 5
    .param p2, "globalUpdates"    # Lmiui/log/AppLogSwitches;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;",
            "Lmiui/log/AppLogSwitches;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "current":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .local v3, "newConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    .local v0, "currentAppConfig":Lmiui/log/AppLogSwitches;
    invoke-virtual {v0}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/AppLogSwitches;

    .local v2, "newAppConfig":Lmiui/log/AppLogSwitches;
    invoke-direct {p0, v2, p2}, Lmiui/log/LogSwitchesConfigManager;->update(Lmiui/log/AppLogSwitches;Lmiui/log/AppLogSwitches;)V

    iget-object v4, v2, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, v2, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "currentAppConfig":Lmiui/log/AppLogSwitches;
    .end local v2    # "newAppConfig":Lmiui/log/AppLogSwitches;
    :cond_1
    iget-object v4, p2, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p2, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v3
.end method

.method private revertLogSwitches(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const-string v9, "allapps"

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .local v8, "targetAll":Z
    const-string v9, "packages"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "packagesStr":Ljava/lang/String;
    const-string v9, "programs"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "programsStr":Ljava/lang/String;
    if-nez v5, :cond_1

    new-array v4, v10, [Ljava/lang/String;

    .local v4, "packages":[Ljava/lang/String;
    :goto_0
    if-nez v7, :cond_2

    new-array v6, v10, [Ljava/lang/String;

    .local v6, "programs":[Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_3

    iget-object v9, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesWriter:Lmiui/log/LogSwitchesConfigWriter;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9, v10}, Lmiui/log/LogSwitchesConfigWriter;->write(Ljava/util/HashMap;)V

    :cond_0
    :goto_2
    return-void

    .end local v4    # "packages":[Ljava/lang/String;
    .end local v6    # "programs":[Ljava/lang/String;
    :cond_1
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .restart local v4    # "packages":[Ljava/lang/String;
    :cond_2
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .restart local v6    # "programs":[Ljava/lang/String;
    :cond_3
    array-length v9, v4

    if-gtz v9, :cond_4

    array-length v9, v6

    if-lez v9, :cond_0

    :cond_4
    iget-object v9, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v9}, Lmiui/log/LogSwitchesConfigMonitor;->retrieveCurrentLogSwitches()Ljava/util/HashMap;

    move-result-object v1

    .local v1, "currentConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .local v3, "newConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    .local v0, "appConfig":Lmiui/log/AppLogSwitches;
    iget-object v9, v0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, v0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v10, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/log/AppLogSwitches;

    invoke-virtual {v3, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iget-object v9, v0, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v0, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v10, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/log/AppLogSwitches;

    invoke-virtual {v3, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v0    # "appConfig":Lmiui/log/AppLogSwitches;
    :cond_7
    iget-object v9, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesWriter:Lmiui/log/LogSwitchesConfigWriter;

    invoke-virtual {v9, v3}, Lmiui/log/LogSwitchesConfigWriter;->write(Ljava/util/HashMap;)V

    goto :goto_2
.end method

.method private switchStatusOfLogSwitches(Landroid/content/Intent;Z)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isOn"    # Z

    .prologue
    const-string v2, "allapps"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .local v21, "targetAll":Z
    const-string v2, "packages"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, "packagesStr":Ljava/lang/String;
    const-string v2, "programs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "programsStr":Ljava/lang/String;
    const-string v2, "tags"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "tagsStr":Ljava/lang/String;
    const-string v2, "groups"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "groupsStr":Ljava/lang/String;
    if-nez v18, :cond_0

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/String;

    .local v4, "packages":[Ljava/lang/String;
    :goto_0
    if-nez v19, :cond_1

    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/String;

    .local v9, "programs":[Ljava/lang/String;
    :goto_1
    if-nez v20, :cond_2

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    .local v5, "tags":[Ljava/lang/String;
    :goto_2
    if-nez v16, :cond_3

    const/4 v2, 0x0

    new-array v6, v2, [Ljava/lang/String;

    .local v6, "groups":[Ljava/lang/String;
    :goto_3
    array-length v2, v5

    if-nez v2, :cond_4

    array-length v2, v6

    if-nez v2, :cond_4

    :goto_4
    return-void

    .end local v4    # "packages":[Ljava/lang/String;
    .end local v5    # "tags":[Ljava/lang/String;
    .end local v6    # "groups":[Ljava/lang/String;
    .end local v9    # "programs":[Ljava/lang/String;
    :cond_0
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .restart local v4    # "packages":[Ljava/lang/String;
    :cond_1
    const-string v2, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .restart local v9    # "programs":[Ljava/lang/String;
    :cond_2
    const-string v2, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .restart local v5    # "tags":[Ljava/lang/String;
    :cond_3
    const-string v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .restart local v6    # "groups":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v2}, Lmiui/log/LogSwitchesConfigMonitor;->retrieveCurrentLogSwitches()Ljava/util/HashMap;

    move-result-object v14

    .local v14, "currentAppLogSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    if-eqz v21, :cond_5

    new-instance v15, Lmiui/log/AppLogSwitches;

    const/4 v2, 0x1

    const-string v3, ""

    const-string v7, ""

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v6, v1}, Lmiui/log/LogSwitchesConfigManager;->buildLogSwitches([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v8

    invoke-direct {v15, v2, v3, v7, v8}, Lmiui/log/AppLogSwitches;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .local v15, "globalUpdates":Lmiui/log/AppLogSwitches;
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lmiui/log/LogSwitchesConfigManager;->merge(Ljava/util/HashMap;Lmiui/log/AppLogSwitches;)Ljava/util/HashMap;

    move-result-object v17

    .end local v15    # "globalUpdates":Lmiui/log/AppLogSwitches;
    .local v17, "newAppLogSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesWriter:Lmiui/log/LogSwitchesConfigWriter;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lmiui/log/LogSwitchesConfigWriter;->write(Ljava/util/HashMap;)V

    goto :goto_4

    .end local v17    # "newAppLogSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    :cond_5
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .local v13, "appLevelUpdates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    const/4 v3, 0x1

    move-object/from16 v2, p0

    move/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lmiui/log/LogSwitchesConfigManager;->buildAppLogSwitches(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 v8, 0x0

    move-object/from16 v7, p0

    move-object v10, v5

    move-object v11, v6

    move/from16 v12, p2

    invoke-direct/range {v7 .. v12}, Lmiui/log/LogSwitchesConfigManager;->buildAppLogSwitches(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lmiui/log/LogSwitchesConfigManager;->merge(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v17

    .restart local v17    # "newAppLogSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    goto :goto_5
.end method

.method private update(Lmiui/log/AppLogSwitches;Lmiui/log/AppLogSwitches;)V
    .locals 5
    .param p1, "current"    # Lmiui/log/AppLogSwitches;
    .param p2, "updates"    # Lmiui/log/AppLogSwitches;

    .prologue
    iget-object v3, p2, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/LogSwitch;

    .local v2, "updateSwitch":Lmiui/log/LogSwitch;
    iget-object v3, p1, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    iget-object v4, v2, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/LogSwitch;

    .local v0, "currentSwitch":Lmiui/log/LogSwitch;
    if-nez v0, :cond_1

    iget-object v3, p1, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    iget-object v4, v2, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-boolean v3, v2, Lmiui/log/LogSwitch;->isOn:Z

    iget-boolean v4, v0, Lmiui/log/LogSwitch;->isOn:Z

    if-eq v3, v4, :cond_0

    iget-object v3, p1, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    iget-object v4, v2, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "currentSwitch":Lmiui/log/LogSwitch;
    .end local v2    # "updateSwitch":Lmiui/log/LogSwitch;
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized startMonitoring(ZZ)V
    .locals 1
    .param p1, "createLogSwitchesFileIfNotExisted"    # Z
    .param p2, "synchronizedReadInitialLogSwitches"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0}, Lmiui/log/LogSwitchesConfigMonitor;->isWatching()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0, p1, p2}, Lmiui/log/LogSwitchesConfigMonitor;->startMonitoring(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateLogSwitches(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "miui.intent.action.REVERT_MIUILOG_SWITCHES"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lmiui/log/LogSwitchesConfigManager;->revertLogSwitches(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "miui.intent.action.SWITCH_ON_MIUILOGS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/log/LogSwitchesConfigManager;->switchStatusOfLogSwitches(Landroid/content/Intent;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "miui.intent.action.SWITCH_OFF_MIUILOGS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/log/LogSwitchesConfigManager;->switchStatusOfLogSwitches(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public declared-synchronized updatePackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0, p1}, Lmiui/log/LogSwitchesConfigMonitor;->updatePackageName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProgramName()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0}, Lmiui/log/LogSwitchesConfigMonitor;->updateProgramName()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProgramName(Ljava/lang/String;)V
    .locals 1
    .param p1, "programName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0, p1}, Lmiui/log/LogSwitchesConfigMonitor;->updateProgramName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
