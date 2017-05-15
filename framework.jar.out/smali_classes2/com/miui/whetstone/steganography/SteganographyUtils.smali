.class public Lcom/miui/whetstone/steganography/SteganographyUtils;
.super Ljava/lang/Object;
.source "SteganographyUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "Whet_SteganographyUtils"

    sput-object v0, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeWatermark(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v2, v1

    .end local v1    # "ret":Ljava/lang/String;
    .local v2, "ret":Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Landroid/graphics/Bitmap;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/steganography/Steg;->decode()Lcom/miui/whetstone/steganography/DecodedObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/steganography/DecodedObject;->intoString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .end local v1    # "ret":Ljava/lang/String;
    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeWatermark Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static decodeWatermark(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "bmpFile"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v2, v1

    .end local v1    # "ret":Ljava/lang/String;
    .local v2, "ret":Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/io/File;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/steganography/Steg;->decode()Lcom/miui/whetstone/steganography/DecodedObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/steganography/DecodedObject;->intoString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .end local v1    # "ret":Ljava/lang/String;
    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeWatermark Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static decodeWatermark(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "bmpPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .end local v1    # "ret":Ljava/lang/String;
    .local v2, "ret":Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/lang/String;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/steganography/Steg;->decode()Lcom/miui/whetstone/steganography/DecodedObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/steganography/DecodedObject;->intoString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .end local v1    # "ret":Ljava/lang/String;
    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeWatermark Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "watermark"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    .end local v1    # "ret":Landroid/graphics/Bitmap;
    .local v2, "ret":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .end local v2    # "ret":Landroid/graphics/Bitmap;
    .restart local v1    # "ret":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Landroid/graphics/Bitmap;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/steganography/EncodedObject;->intoBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .end local v1    # "ret":Landroid/graphics/Bitmap;
    .restart local v2    # "ret":Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v2    # "ret":Landroid/graphics/Bitmap;
    .restart local v1    # "ret":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encodeWatermark Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static encodeWatermark(Ljava/io/File;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bmpFile"    # Ljava/io/File;
    .param p1, "watermark"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    .end local v1    # "ret":Landroid/graphics/Bitmap;
    .local v2, "ret":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .end local v2    # "ret":Landroid/graphics/Bitmap;
    .restart local v1    # "ret":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/io/File;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/steganography/EncodedObject;->intoBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .end local v1    # "ret":Landroid/graphics/Bitmap;
    .restart local v2    # "ret":Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v2    # "ret":Landroid/graphics/Bitmap;
    .restart local v1    # "ret":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encodeWatermark Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static encodeWatermark(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bmpPath"    # Ljava/lang/String;
    .param p1, "watermark"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    .end local v1    # "ret":Landroid/graphics/Bitmap;
    .local v2, "ret":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .end local v2    # "ret":Landroid/graphics/Bitmap;
    .restart local v1    # "ret":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/lang/String;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/steganography/EncodedObject;->intoBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .end local v1    # "ret":Landroid/graphics/Bitmap;
    .restart local v2    # "ret":Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v2    # "ret":Landroid/graphics/Bitmap;
    .restart local v1    # "ret":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encodeWatermark Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static encodeWatermark(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "desBmpFile"    # Ljava/io/File;
    .param p2, "watermark"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Ljava/io/File;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    .end local v1    # "ret":Ljava/io/File;
    .local v2, "ret":Ljava/io/File;
    :goto_0
    return-object v2

    .end local v2    # "ret":Ljava/io/File;
    .restart local v1    # "ret":Ljava/io/File;
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Landroid/graphics/Bitmap;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/whetstone/steganography/EncodedObject;->intoFile(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .end local v1    # "ret":Ljava/io/File;
    .restart local v2    # "ret":Ljava/io/File;
    goto :goto_0

    .end local v2    # "ret":Ljava/io/File;
    .restart local v1    # "ret":Ljava/io/File;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encodeWatermark Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "desBmpPath"    # Ljava/lang/String;
    .param p2, "watermark"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Ljava/io/File;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    .end local v1    # "ret":Ljava/io/File;
    .local v2, "ret":Ljava/io/File;
    :goto_0
    return-object v2

    .end local v2    # "ret":Ljava/io/File;
    .restart local v1    # "ret":Ljava/io/File;
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Landroid/graphics/Bitmap;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/whetstone/steganography/EncodedObject;->intoFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .end local v1    # "ret":Ljava/io/File;
    .restart local v2    # "ret":Ljava/io/File;
    goto :goto_0

    .end local v2    # "ret":Ljava/io/File;
    .restart local v1    # "ret":Ljava/io/File;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encodeWatermark Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static encodeWatermark(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "srcBmpFile"    # Ljava/io/File;
    .param p1, "desBmpFile"    # Ljava/io/File;
    .param p2, "watermark"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Ljava/io/File;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    .end local v1    # "ret":Ljava/io/File;
    .local v2, "ret":Ljava/io/File;
    :goto_0
    return-object v2

    .end local v2    # "ret":Ljava/io/File;
    .restart local v1    # "ret":Ljava/io/File;
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/io/File;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/whetstone/steganography/EncodedObject;->intoFile(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .end local v1    # "ret":Ljava/io/File;
    .restart local v2    # "ret":Ljava/io/File;
    goto :goto_0

    .end local v2    # "ret":Ljava/io/File;
    .restart local v1    # "ret":Ljava/io/File;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encodeWatermark Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static encodeWatermark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "srcBmpPath"    # Ljava/lang/String;
    .param p1, "desBmpPath"    # Ljava/lang/String;
    .param p2, "watermark"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Ljava/io/File;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    .end local v1    # "ret":Ljava/io/File;
    .local v2, "ret":Ljava/io/File;
    :goto_0
    return-object v2

    .end local v2    # "ret":Ljava/io/File;
    .restart local v1    # "ret":Ljava/io/File;
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/lang/String;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/whetstone/steganography/EncodedObject;->intoFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .end local v1    # "ret":Ljava/io/File;
    .restart local v2    # "ret":Ljava/io/File;
    goto :goto_0

    .end local v2    # "ret":Ljava/io/File;
    .restart local v1    # "ret":Ljava/io/File;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encodeWatermark Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
