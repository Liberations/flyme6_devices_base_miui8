.class public final Lcom/miui/whetstone/LocationProxy;
.super Ljava/lang/Object;
.source "LocationProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/LocationProxy$CallbackTransport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationProxy"

.field private static sInstance:Lcom/miui/whetstone/LocationProxy;


# instance fields
.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/miui/whetstone/LocationCallback;",
            "Lcom/miui/whetstone/LocationProxy$CallbackTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/LocationProxy;->sInstance:Lcom/miui/whetstone/LocationProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/LocationProxy;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/LocationProxy;->mCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/miui/whetstone/LocationProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/miui/whetstone/LocationProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/whetstone/LocationProxy;->sInstance:Lcom/miui/whetstone/LocationProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/whetstone/LocationProxy;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/LocationProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/whetstone/LocationProxy;->sInstance:Lcom/miui/whetstone/LocationProxy;

    :cond_0
    sget-object v0, Lcom/miui/whetstone/LocationProxy;->sInstance:Lcom/miui/whetstone/LocationProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private wrapCallback(Lcom/miui/whetstone/LocationCallback;Landroid/os/Looper;)Lcom/miui/whetstone/LocationProxy$CallbackTransport;
    .locals 3
    .param p1, "callback"    # Lcom/miui/whetstone/LocationCallback;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/miui/whetstone/LocationProxy;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/LocationProxy;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/LocationProxy$CallbackTransport;

    .local v0, "transport":Lcom/miui/whetstone/LocationProxy$CallbackTransport;
    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/whetstone/LocationProxy$CallbackTransport;

    .end local v0    # "transport":Lcom/miui/whetstone/LocationProxy$CallbackTransport;
    invoke-direct {v0, p1, p2}, Lcom/miui/whetstone/LocationProxy$CallbackTransport;-><init>(Lcom/miui/whetstone/LocationCallback;Landroid/os/Looper;)V

    .restart local v0    # "transport":Lcom/miui/whetstone/LocationProxy$CallbackTransport;
    :cond_1
    iget-object v1, p0, Lcom/miui/whetstone/LocationProxy;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    .end local v0    # "transport":Lcom/miui/whetstone/LocationProxy$CallbackTransport;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public cancelLocationRequest(Lcom/miui/whetstone/LocationCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/miui/whetstone/LocationCallback;

    .prologue
    iget-object v2, p0, Lcom/miui/whetstone/LocationProxy;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/LocationProxy;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/LocationProxy$CallbackTransport;

    .local v0, "transport":Lcom/miui/whetstone/LocationProxy$CallbackTransport;
    if-nez v0, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/whetstone/WhetstoneManager;->cancelLocationRequest(Lcom/miui/whetstone/ILocationCallback;)V

    monitor-exit v2

    goto :goto_0

    .end local v0    # "transport":Lcom/miui/whetstone/LocationProxy$CallbackTransport;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestCurrentLocation(Ljava/lang/String;Lcom/miui/whetstone/LocationCallback;Landroid/os/Looper;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/miui/whetstone/LocationCallback;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p2, p3}, Lcom/miui/whetstone/LocationProxy;->wrapCallback(Lcom/miui/whetstone/LocationCallback;Landroid/os/Looper;)Lcom/miui/whetstone/LocationProxy$CallbackTransport;

    move-result-object v0

    .local v0, "transport":Lcom/miui/whetstone/LocationProxy$CallbackTransport;
    invoke-static {p1, v0}, Lcom/miui/whetstone/WhetstoneManager;->requestCurrentLocation(Ljava/lang/String;Lcom/miui/whetstone/ILocationCallback;)V

    return-void
.end method
