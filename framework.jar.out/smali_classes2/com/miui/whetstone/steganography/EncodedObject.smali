.class public Lcom/miui/whetstone/steganography/EncodedObject;
.super Ljava/lang/Object;
.source "EncodedObject.java"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/steganography/EncodedObject;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public intoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/steganography/EncodedObject;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public intoFile(Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/miui/whetstone/steganography/EncodedObject;->bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v1, "fo":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    return-object p1
.end method

.method public intoFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/whetstone/steganography/EncodedObject;->intoFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
