.class public Lcom/miui/hybrid/hook/PkgInfoHook;
.super Ljava/lang/Object;
.source "PkgInfoHook.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PkgInfoHook"

.field private static sInstance:Lcom/miui/hybrid/hook/PkgInfoHook;


# instance fields
.field private fakeData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/hook/PkgInfoHook;->fakeData:Ljava/util/Map;

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/miui/hybrid/hook/PkgInfoHook;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/miui/hybrid/hook/PkgInfoHook;->sInstance:Lcom/miui/hybrid/hook/PkgInfoHook;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcom/miui/hybrid/hook/PkgInfoHook;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/miui/hybrid/hook/PkgInfoHook;->sInstance:Lcom/miui/hybrid/hook/PkgInfoHook;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/miui/hybrid/hook/PkgInfoHook;

    invoke-direct {v0}, Lcom/miui/hybrid/hook/PkgInfoHook;-><init>()V

    sput-object v0, Lcom/miui/hybrid/hook/PkgInfoHook;->sInstance:Lcom/miui/hybrid/hook/PkgInfoHook;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/miui/hybrid/hook/PkgInfoHook;->sInstance:Lcom/miui/hybrid/hook/PkgInfoHook;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "PkgInfoHook"

    const-string v2, "Expect non-null pkgName."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/miui/hybrid/hook/PkgInfoHook;->fakeData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 66
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    const-string v1, "PkgInfoHook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hook(Landroid/content/pm/PackageInfo;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/miui/hybrid/hook/PkgInfoHook;->fakeData:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 52
    .local v0, "newPkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 53
    const-string v1, "PkgInfoHook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hook "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v0    # "newPkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public insert(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    const-string v0, "PkgInfoHook"

    const-string v1, "PkgInfoHook.insert(PackageInfo) failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/miui/hybrid/hook/PkgInfoHook;->fakeData:Ljava/util/Map;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "PkgInfoHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x1

    goto :goto_0
.end method
