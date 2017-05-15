.class public Lmiui/graphics/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuffer(Landroid/graphics/Bitmap;)[B
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    return-object v0
.end method
