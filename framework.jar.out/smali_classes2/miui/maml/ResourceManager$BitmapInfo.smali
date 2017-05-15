.class public Lmiui/maml/ResourceManager$BitmapInfo;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapInfo"
.end annotation


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public mKey:Ljava/lang/String;

.field public mLastVisitTime:J

.field public mLoading:Z

.field public final mNinePatch:Landroid/graphics/NinePatch;

.field public final mPadding:Landroid/graphics/Rect;

.field public mWeakRefCache:Ljava/util/HashMap;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/maml/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Lmiui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lmiui/maml/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/NinePatch;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    return-void

    :cond_0
    iput-object v2, p0, Lmiui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lmiui/maml/ResourceManager$BitmapInfo;->mWeakRefCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmiui/maml/ResourceManager$BitmapInfo;->mWeakRefCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ResourceManager$BitmapInfo;->mWeakRefCache:Ljava/util/HashMap;

    iget-object v2, p0, Lmiui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/ResourceManager$BitmapInfo;->mWeakRefCache:Ljava/util/HashMap;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
