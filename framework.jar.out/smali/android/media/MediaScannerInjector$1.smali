.class final Landroid/media/MediaScannerInjector$1;
.super Landroid/os/HandlerThread;
.source "MediaScannerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaScannerInjector;->initMediaFileCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 2

    .prologue
    new-instance v0, Landroid/media/MediaScannerInjector$1$1;

    invoke-virtual {p0}, Landroid/media/MediaScannerInjector$1;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/MediaScannerInjector$1$1;-><init>(Landroid/media/MediaScannerInjector$1;Landroid/os/Looper;)V

    # setter for: Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/media/MediaScannerInjector;->access$002(Landroid/os/Handler;)Landroid/os/Handler;

    return-void
.end method
