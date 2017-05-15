.class public Lmiui/telephony/dtmf/DTMFDataConveter;
.super Ljava/lang/Object;
.source "DTMFDataConveter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DTMFDataConveter"


# instance fields
.field private mBitPerSample:I

.field private mSign:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/telephony/dtmf/DTMFDataConveter;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "bitPerSample"    # I
    .param p2, "sign"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/telephony/dtmf/DTMFDataConveter;->setBitPerSample(I)V

    invoke-virtual {p0, p2}, Lmiui/telephony/dtmf/DTMFDataConveter;->setSign(Z)V

    return-void
.end method


# virtual methods
.method public byteToFloat([B)[F
    .locals 6
    .param p1, "byteList"    # [B

    .prologue
    const v5, 0x38000100

    if-nez p1, :cond_1

    const-string v3, "DTMFDataConveter"

    const-string v4, "bit mode can not match"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    array-length v3, p1

    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFDataConveter;->getBitPerSample()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    div-int/2addr v3, v4

    new-array v0, v3, [F

    .local v0, "floatlist":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFDataConveter;->getBitPerSample()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mSign:Z

    if-eqz v3, :cond_3

    aget-byte v3, p1, v1

    int-to-float v3, v3

    const/high16 v4, 0x42fe0000    # 127.0f

    div-float/2addr v3, v4

    aput v3, v0, v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x7f

    int-to-float v3, v3

    const v4, 0x3c010204

    mul-float/2addr v3, v4

    aput v3, v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFDataConveter;->getBitPerSample()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mSign:Z

    if-eqz v3, :cond_5

    mul-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    int-to-short v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    aput v3, v0, v1

    goto :goto_1

    :cond_5
    mul-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int v2, v3, v4

    .local v2, "x":I
    add-int/lit16 v3, v2, -0x7fff

    int-to-float v3, v3

    mul-float/2addr v3, v5

    aput v3, v0, v1

    goto :goto_1
.end method

.method public floatToByte([F)[B
    .locals 10
    .param p1, "floatList"    # [F

    .prologue
    const-wide v8, 0x40dfffc000000000L    # 32767.0

    const/high16 v6, 0x42fe0000    # 127.0f

    if-nez p1, :cond_1

    const-string v3, "DTMFDataConveter"

    const-string v4, "bit mode can not match"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    array-length v3, p1

    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFDataConveter;->getBitPerSample()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    mul-int/2addr v3, v4

    new-array v0, v3, [B

    .local v0, "bytelist":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFDataConveter;->getBitPerSample()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mSign:Z

    if-eqz v3, :cond_3

    aget v3, p1, v1

    mul-float/2addr v3, v6

    float-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    aget v3, p1, v1

    mul-float/2addr v3, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFDataConveter;->getBitPerSample()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mSign:Z

    if-eqz v3, :cond_5

    aget v3, p1, v1

    float-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v2, v4

    .local v2, "x":I
    mul-int/lit8 v3, v1, 0x2

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    goto :goto_1

    .end local v2    # "x":I
    :cond_5
    aget v3, p1, v1

    float-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v3, v4

    add-int/lit16 v2, v3, 0x7fff

    .restart local v2    # "x":I
    mul-int/lit8 v3, v1, 0x2

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    goto :goto_1
.end method

.method public getBitPerSample()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mBitPerSample:I

    return v0
.end method

.method public getSign()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mSign:Z

    return v0
.end method

.method public setBitPerSample(I)V
    .locals 0
    .param p1, "bitPerSample"    # I

    .prologue
    iput p1, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mBitPerSample:I

    return-void
.end method

.method public setSign(Z)V
    .locals 0
    .param p1, "sign"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mSign:Z

    return-void
.end method
