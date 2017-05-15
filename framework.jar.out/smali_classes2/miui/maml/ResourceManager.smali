.class public Lmiui/maml/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;,
        Lmiui/maml/ResourceManager$AsyncLoadListener;,
        Lmiui/maml/ResourceManager$BitmapInfo;
    }
.end annotation


# static fields
.field private static final DEF_CACHE_SIZE:I = 0x10000000

.field private static final DENSITY_HIGH_R:I = 0xf0

.field private static final DENSITY_XHIGH_R:I = 0x168

.field private static final DENSITY_XXHIGH_R:I = 0x21c

.field private static final DENSITY_XXXHIGH:I = 0x280

.field private static final DENSITY_XXXHIGH_R:I = 0x2d0

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceManager"


# instance fields
.field protected final mBitmapsCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/ResourceManager$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultResourceDensity:I

.field private mExtraResourceDensity:I

.field private mExtraResourceFolder:Ljava/lang/String;

.field private final mLoadingBitmaps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceLoader:Lmiui/maml/ResourceLoader;

.field private mTargetDensity:I

.field protected final mWeakRefBitmapsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/ResourceManager$BitmapInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/ResourceLoader;)V
    .locals 2
    .param p1, "resourceLoader"    # Lmiui/maml/ResourceLoader;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    iput-object p1, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    new-instance v0, Lmiui/maml/ResourceManager$1;

    const/high16 v1, 0x10000000

    invoke-direct {v0, p0, v1}, Lmiui/maml/ResourceManager$1;-><init>(Lmiui/maml/ResourceManager;I)V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/ResourceManager;Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ResourceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/ResourceManager;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ResourceManager;

    .prologue
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    return-object v0
.end method

.method private getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 7
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    iget-object v5, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v4, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lmiui/maml/ResourceManager$BitmapInfo;

    move-object v3, v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .local v2, "bi":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/maml/ResourceManager$BitmapInfo;>;"
    iget-object v5, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v2, v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v5, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_2
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    :goto_0
    return-object v3

    .end local v2    # "bi":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/maml/ResourceManager$BitmapInfo;>;"
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .restart local v2    # "bi":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/maml/ResourceManager$BitmapInfo;>;"
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    :cond_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    check-cast v3, Lmiui/maml/ResourceManager$BitmapInfo;

    .restart local v3    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    iget-object v5, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v5

    :try_start_6
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v4, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5

    goto :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v4

    :cond_3
    iget-object v5, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_7
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5

    goto :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v4
.end method

.method private loadBitmap(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 7
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    const/4 v3, 0x1

    .local v3, "useDefaultResource":Z
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget v4, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget-object v4, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "try to load resource from extra resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-object v4, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, p1

    .local v2, "path":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v4, v2, v1}, Lmiui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    iget v4, p0, Lmiui/maml/ResourceManager;->mDefaultResourceDensity:I

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-object v4, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v4, p1, v1}, Lmiui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    if-nez v3, :cond_2

    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load image from extra resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object p1, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    iput-object v4, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mWeakRefCache:Ljava/util/HashMap;

    iget-object v4, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    iget-object v5, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v4, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    return-object v0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :cond_4
    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to load image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static retranslateDensity(I)I
    .locals 5
    .param p0, "density"    # I

    .prologue
    const/16 v4, 0x21c

    const/16 v3, 0x168

    const/16 v2, 0xf0

    if-le p0, v2, :cond_1

    if-gt p0, v3, :cond_1

    const-wide v0, 0x3fe5555555555555L    # 0.6666666666666666

    .local v0, "factor":D
    add-int/lit16 v2, p0, -0xf0

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit16 p0, v2, 0xf0

    .end local v0    # "factor":D
    .end local p0    # "density":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "density":I
    :cond_1
    if-le p0, v3, :cond_2

    if-gt p0, v4, :cond_2

    const-wide v0, 0x3fec71c71c71c71cL    # 0.8888888888888888

    .restart local v0    # "factor":D
    add-int/lit16 v2, p0, -0x168

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit16 p0, v2, 0x140

    goto :goto_0

    .end local v0    # "factor":D
    :cond_2
    if-le p0, v4, :cond_0

    const/16 v2, 0x2d0

    if-gt p0, v2, :cond_0

    const-wide v0, 0x3fec71c71c71c71cL    # 0.8888888888888888

    .restart local v0    # "factor":D
    add-int/lit16 v2, p0, -0x21c

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit16 p0, v2, 0x1e0

    goto :goto_0
.end method

.method public static translateDensity(I)I
    .locals 5
    .param p0, "density"    # I

    .prologue
    const/16 v4, 0x1e0

    const/16 v3, 0x140

    const/16 v2, 0xf0

    if-le p0, v2, :cond_1

    if-gt p0, v3, :cond_1

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .local v0, "factor":D
    add-int/lit16 v2, p0, -0xf0

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit16 p0, v2, 0xf0

    .end local v0    # "factor":D
    .end local p0    # "density":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "density":I
    :cond_1
    if-le p0, v3, :cond_2

    if-gt p0, v4, :cond_2

    const-wide/high16 v0, 0x3ff2000000000000L    # 1.125

    .restart local v0    # "factor":D
    add-int/lit16 v2, p0, -0x140

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit16 p0, v2, 0x168

    goto :goto_0

    .end local v0    # "factor":D
    :cond_2
    if-le p0, v4, :cond_0

    const/16 v2, 0x280

    if-gt p0, v2, :cond_0

    const-wide/high16 v0, 0x3ff2000000000000L    # 1.125

    .restart local v0    # "factor":D
    add-int/lit16 v2, p0, -0x1e0

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit16 p0, v2, 0x21c

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear(Ljava/lang/String;)V
    .locals 2
    .param p1, "bitmapName"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finish(Z)V
    .locals 2
    .param p1, "keepResource"    # Z

    .prologue
    if-nez p1, :cond_0

    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->finish()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 4
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-nez v0, :cond_0

    const-string v1, "ResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getBitmapInfoAsync(Ljava/lang/String;Lmiui/maml/ResourceManager$AsyncLoadListener;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 6
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "l"    # Lmiui/maml/ResourceManager$AsyncLoadListener;

    .prologue
    const/4 v5, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-nez v0, :cond_0

    iget-object v2, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ResourceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load image async: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;

    invoke-direct {v1, p0, p2}, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;-><init>(Lmiui/maml/ResourceManager;Lmiui/maml/ResourceManager$AsyncLoadListener;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Lmiui/maml/ResourceManager$BitmapInfo;

    .end local v0    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    invoke-direct {v0}, Lmiui/maml/ResourceManager$BitmapInfo;-><init>()V

    .restart local v0    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    iput-boolean v5, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mLoading:Z

    goto :goto_0
.end method

.method public getConfigRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->getConfigRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p2}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v7

    .local v7, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v7, :cond_0

    iget-object v1, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .local v2, "bm":Landroid/graphics/Bitmap;
    iget-object v1, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    if-eqz v1, :cond_2

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    iget-object v4, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .local v0, "ninePatchDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    iget v1, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    goto :goto_0

    .end local v0    # "ninePatchDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    :cond_2
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v6, "d":Landroid/graphics/drawable/BitmapDrawable;
    iget v1, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    move-object v0, v6

    goto :goto_0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # [J

    .prologue
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->init()V

    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    return-void
.end method

.method public final resourceExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 0

    .prologue
    return-void
.end method

.method public setCacheSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->resize(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultResourceDensity(I)V
    .locals 0
    .param p1, "density"    # I

    .prologue
    iput p1, p0, Lmiui/maml/ResourceManager;->mDefaultResourceDensity:I

    return-void
.end method

.method public setExtraResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "resDir"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    return-void
.end method

.method public setExtraResource(Ljava/lang/String;I)V
    .locals 0
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "den"    # I

    .prologue
    iput-object p1, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    iput p2, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    return-void
.end method

.method public setExtraResourceDensity(I)V
    .locals 0
    .param p1, "den"    # I

    .prologue
    iput p1, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    return-void
.end method

.method public setLocal(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v1}, Lmiui/maml/ResourceLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .local v0, "oldLocale":Ljava/util/Locale;
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v1, p1}, Lmiui/maml/ResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/maml/ResourceManager;->finish(Z)V

    goto :goto_0
.end method

.method public setTargetDensity(I)V
    .locals 0
    .param p1, "density"    # I

    .prologue
    iput p1, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    return-void
.end method
