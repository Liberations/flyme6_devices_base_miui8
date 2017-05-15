.class public Lcom/miui/whetstone/steganography/BitmapEncoder;
.super Ljava/lang/Object;
.source "BitmapEncoder.java"


# static fields
.field public static final HEADER_SIZE:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToLong([B)J
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public static createHeader(J)[B
    .locals 10
    .param p0, "size"    # J

    .prologue
    const/16 v9, 0x5d

    const/16 v8, 0x5b

    const/16 v7, 0xc

    new-array v2, v7, [B

    .local v2, "header":[B
    const/4 v3, 0x0

    .local v3, "i":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aput-byte v8, v2, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aput-byte v8, v2, v4

    invoke-static {p0, p1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->longToBytes(J)[B

    move-result-object v0

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v1, v0, v5

    .local v1, "b":B
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aput-byte v1, v2, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .end local v1    # "b":B
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aput-byte v9, v2, v4

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aput-byte v9, v2, v3

    return-object v2
.end method

.method public static decode(Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v4, 0xc

    const/4 v2, 0x0

    invoke-static {p0, v2, v4}, Lcom/miui/whetstone/steganography/BitmapEncoder;->decodeBitmapToByteArray(Landroid/graphics/Bitmap;II)[B

    move-result-object v0

    .local v0, "header":[B
    const/4 v2, 0x2

    const/16 v3, 0xa

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/steganography/BitmapEncoder;->bytesToLong([B)J

    move-result-wide v2

    long-to-int v1, v2

    .local v1, "len":I
    invoke-static {p0, v4, v1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->decodeBitmapToByteArray(Landroid/graphics/Bitmap;II)[B

    move-result-object v2

    return-object v2
.end method

.method private static decodeBitmapToByteArray(Landroid/graphics/Bitmap;II)[B
    .locals 13
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    new-array v3, p2, [B

    .local v3, "bytes":[B
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .local v7, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .local v5, "height":I
    const/4 v1, 0x0

    .local v1, "bitNo":I
    const/4 v2, 0x0

    .local v2, "byteNo":I
    const/4 v10, 0x3

    new-array v0, v10, [I

    .local v0, "bitBuffer":[I
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_0
    if-ge v9, v5, :cond_4

    const/4 v8, 0x0

    .local v8, "x":I
    :goto_1
    if-ge v8, v7, :cond_3

    invoke-virtual {p0, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .local v4, "color":I
    const/4 v10, 0x0

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v11

    rem-int/lit8 v11, v11, 0x2

    aput v11, v0, v10

    const/4 v10, 0x1

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v11

    rem-int/lit8 v11, v11, 0x2

    aput v11, v0, v10

    const/4 v10, 0x2

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    rem-int/lit8 v11, v11, 0x2

    aput v11, v0, v10

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    const/4 v10, 0x3

    if-ge v6, v10, :cond_2

    if-lt v2, p1, :cond_0

    sub-int v11, v2, p1

    aget v10, v0, v6

    const/4 v12, 0x1

    if-ne v10, v12, :cond_5

    sub-int v10, v2, p1

    aget-byte v10, v3, v10

    const/4 v12, 0x1

    shl-int/2addr v12, v1

    or-int/2addr v10, v12

    int-to-byte v10, v10

    :goto_3
    aput-byte v10, v3, v11

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/16 v10, 0x8

    if-ne v1, v10, :cond_1

    const/4 v1, 0x0

    add-int/lit8 v2, v2, 0x1

    :cond_1
    sub-int v10, v2, p1

    array-length v11, v3

    if-lt v10, v11, :cond_6

    :cond_2
    sub-int v10, v2, p1

    array-length v11, v3

    if-lt v10, v11, :cond_7

    .end local v4    # "color":I
    .end local v6    # "i":I
    :cond_3
    sub-int v10, v2, p1

    array-length v11, v3

    if-lt v10, v11, :cond_8

    .end local v8    # "x":I
    :cond_4
    return-object v3

    .restart local v4    # "color":I
    .restart local v6    # "i":I
    .restart local v8    # "x":I
    :cond_5
    sub-int v10, v2, p1

    aget-byte v10, v3, v10

    const/4 v12, 0x1

    shl-int/2addr v12, v1

    xor-int/lit8 v12, v12, -0x1

    and-int/2addr v10, v12

    int-to-byte v10, v10

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v4    # "color":I
    .end local v6    # "i":I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public static encode(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "bytes"    # [B

    .prologue
    array-length v1, p1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/miui/whetstone/steganography/BitmapEncoder;->createHeader(J)[B

    move-result-object v0

    .local v0, "header":[B
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x18

    if-eqz v1, :cond_0

    array-length v1, p1

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x18

    rsub-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    :cond_0
    invoke-static {p0, v0, p1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->encodeByteArrayIntoBitmap(Landroid/graphics/Bitmap;[B[B)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static encodeByteArrayIntoBitmap(Landroid/graphics/Bitmap;[B[B)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "header"    # [B
    .param p2, "bytes"    # [B

    .prologue
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .local v9, "outBitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .local v12, "x":I
    const/4 v13, 0x0

    .local v13, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .local v11, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .local v6, "height":I
    const/4 v3, 0x0

    .local v3, "bufferPos":I
    const/4 v14, 0x3

    new-array v2, v14, [I

    fill-array-data v2, :array_0

    .local v2, "buffer":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v14, v0

    move-object/from16 v0, p2

    array-length v15, v0

    add-int/2addr v14, v15

    if-ge v7, v14, :cond_a

    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    const/16 v14, 0x8

    if-ge v8, v14, :cond_9

    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v7, v14, :cond_7

    aget-byte v14, p1, v7

    shr-int/2addr v14, v8

    and-int/lit8 v14, v14, 0x1

    aput v14, v2, v3

    :goto_2
    const/4 v14, 0x2

    if-ne v3, v14, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .local v4, "color":I
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .local v10, "r":I
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .local v5, "g":I
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .local v1, "b":I
    rem-int/lit8 v14, v10, 0x2

    const/4 v15, 0x0

    aget v15, v2, v15

    rsub-int/lit8 v15, v15, 0x1

    if-ne v14, v15, :cond_0

    add-int/lit8 v10, v10, 0x1

    :cond_0
    rem-int/lit8 v14, v5, 0x2

    const/4 v15, 0x1

    aget v15, v2, v15

    rsub-int/lit8 v15, v15, 0x1

    if-ne v14, v15, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    rem-int/lit8 v14, v1, 0x2

    const/4 v15, 0x2

    aget v15, v2, v15

    rsub-int/lit8 v15, v15, 0x1

    if-ne v14, v15, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    const/16 v14, 0x100

    if-ne v10, v14, :cond_3

    const/16 v10, 0xfe

    :cond_3
    const/16 v14, 0x100

    if-ne v5, v14, :cond_4

    const/16 v5, 0xfe

    :cond_4
    const/16 v14, 0x100

    if-ne v1, v14, :cond_5

    const/16 v1, 0xfe

    :cond_5
    const/16 v14, 0xff

    invoke-static {v14, v10, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v9, v12, v13, v14}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v11, :cond_6

    const/4 v12, 0x0

    add-int/lit8 v13, v13, 0x1

    :cond_6
    const/4 v3, 0x0

    .end local v1    # "b":I
    .end local v4    # "color":I
    .end local v5    # "g":I
    .end local v10    # "r":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    move-object/from16 v0, p1

    array-length v14, v0

    sub-int v14, v7, v14

    aget-byte v14, p2, v14

    shr-int/2addr v14, v8

    and-int/lit8 v14, v14, 0x1

    aput v14, v2, v3

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .end local v8    # "j":I
    :cond_a
    return-object v9

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static longToBytes(J)[B
    .locals 2
    .param p0, "x"    # J

    .prologue
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static printBinaryString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    const-string v4, ""

    .local v4, "s":Ljava/lang/String;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .local v1, "b":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "b":B
    :cond_0
    return-object v4
.end method
