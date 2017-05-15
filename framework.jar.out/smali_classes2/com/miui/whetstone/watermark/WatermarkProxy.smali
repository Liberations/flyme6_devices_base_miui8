.class public final Lcom/miui/whetstone/watermark/WatermarkProxy;
.super Ljava/lang/Object;
.source "WatermarkProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WatermarkProxy"

.field private static sInstance:Lcom/miui/whetstone/watermark/WatermarkProxy;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/watermark/WatermarkProxy;->sInstance:Lcom/miui/whetstone/watermark/WatermarkProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/miui/whetstone/watermark/WatermarkProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/miui/whetstone/watermark/WatermarkProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/whetstone/watermark/WatermarkProxy;->sInstance:Lcom/miui/whetstone/watermark/WatermarkProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/whetstone/watermark/WatermarkProxy;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/watermark/WatermarkProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/whetstone/watermark/WatermarkProxy;->sInstance:Lcom/miui/whetstone/watermark/WatermarkProxy;

    :cond_0
    sget-object v0, Lcom/miui/whetstone/watermark/WatermarkProxy;->sInstance:Lcom/miui/whetstone/watermark/WatermarkProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public decodeWatermark(Landroid/graphics/Bitmap;Lcom/miui/whetstone/watermark/WatermarkCallback;Landroid/os/Looper;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "callback"    # Lcom/miui/whetstone/watermark/WatermarkCallback;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const-string v0, "WatermarkProxy"

    const-string v1, "decodeWatermark"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;

    invoke-direct {v0, p2, p3}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;-><init>(Lcom/miui/whetstone/watermark/WatermarkCallback;Landroid/os/Looper;)V

    invoke-static {p1, v0}, Lcom/miui/whetstone/WhetstoneManager;->decodeWatermark(Landroid/graphics/Bitmap;Lcom/miui/whetstone/watermark/IWatermarkCallback;)V

    return-void
.end method

.method public encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/miui/whetstone/watermark/WatermarkCallback;Landroid/os/Looper;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "watermark"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/miui/whetstone/watermark/WatermarkCallback;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    const-string v0, "WatermarkProxy"

    const-string v1, "encodeWatermark"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;

    invoke-direct {v0, p3, p4}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;-><init>(Lcom/miui/whetstone/watermark/WatermarkCallback;Landroid/os/Looper;)V

    invoke-static {p1, p2, v0}, Lcom/miui/whetstone/WhetstoneManager;->encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/miui/whetstone/watermark/IWatermarkCallback;)V

    return-void
.end method
