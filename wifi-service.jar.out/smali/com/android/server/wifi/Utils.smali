.class final Lcom/android/server/wifi/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final EID_VENDOR_SPECIFIC:I = 0xdd

.field private static final VENDOR_SPECIFIC_INFO_IOS:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/Utils;->VENDOR_SPECIFIC_INFO_IOS:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x17t
        -0xet
        0x6t
        0x1t
        0x1t
        0x3t
        0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromHex(CZ)I
    .locals 3
    .param p0, "ch"    # C
    .param p1, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 33
    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    .line 34
    add-int/lit8 v0, p0, -0x30

    .line 40
    :goto_0
    return v0

    .line 35
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 36
    add-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, -0x61

    goto :goto_0

    .line 37
    :cond_1
    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    .line 38
    add-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, -0x41

    goto :goto_0

    .line 39
    :cond_2
    if-eqz p1, :cond_3

    .line 40
    const/4 v0, -0x1

    goto :goto_0

    .line 42
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad hex-character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static hexToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 19
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Odd length hex string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 22
    .local v0, "data":[B
    const/4 v2, 0x0

    .line 23
    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Lcom/android/server/wifi/Utils;->fromHex(CZ)I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Lcom/android/server/wifi/Utils;->fromHex(CZ)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 23
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 29
    :cond_1
    return-object v0
.end method

.method static isMeteredHint([Landroid/net/wifi/ScanResult$InformationElement;)Z
    .locals 4
    .param p0, "infoElements"    # [Landroid/net/wifi/ScanResult$InformationElement;

    .prologue
    .line 69
    if-eqz p0, :cond_1

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 71
    aget-object v2, p0, v0

    iget v2, v2, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v3, 0xdd

    if-ne v2, v3, :cond_0

    .line 72
    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    sget-object v3, Lcom/android/server/wifi/Utils;->VENDOR_SPECIFIC_INFO_IOS:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 73
    .local v1, "value":[B
    sget-object v2, Lcom/android/server/wifi/Utils;->VENDOR_SPECIFIC_INFO_IOS:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const/4 v2, 0x1

    .line 79
    .end local v0    # "i":I
    .end local v1    # "value":[B
    :goto_1
    return v2

    .line 70
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/net/wifi/ScanResult$InformationElement;

    .line 65
    :goto_0
    return-object v5

    .line 50
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    .local v0, "data":Ljava/nio/ByteBuffer;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v4, "infoElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult$InformationElement;>;"
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v1, v5, 0xff

    .line 55
    .local v1, "eid":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v2, v5, 0xff

    .line 56
    .local v2, "elementLength":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v2, v5, :cond_2

    .line 65
    .end local v1    # "eid":I
    .end local v2    # "elementLength":I
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/net/wifi/ScanResult$InformationElement;

    goto :goto_0

    .line 59
    .restart local v1    # "eid":I
    .restart local v2    # "elementLength":I
    :cond_2
    new-instance v3, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v3}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    .line 60
    .local v3, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iput v1, v3, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 61
    new-array v5, v2, [B

    iput-object v5, v3, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 62
    iget-object v5, v3, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
