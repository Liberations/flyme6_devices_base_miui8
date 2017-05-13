.class public Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
.super Ljava/lang/Object;
.source "MiuiAdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;
    }
.end annotation


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "MiuiAdnRecord"

.field static final MAX_BCD_NUMBER_LENGTH:I = 0x14

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field mAlphaTag:Ljava/lang/String;

.field mAnr:Ljava/lang/String;

.field mEfid:I

.field mEmails:[Ljava/lang/String;

.field mExtRecord:I

.field mNumber:Ljava/lang/String;

.field mRecordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    .line 49
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mExtRecord:I

    .line 136
    iput p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEfid:I

    .line 137
    iput p2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mRecordNumber:I

    .line 138
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 139
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEmails:[Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAnr:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;
    .param p6, "anr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    .line 49
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mExtRecord:I

    .line 127
    iput p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEfid:I

    .line 128
    iput p2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mRecordNumber:I

    .line 129
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    .line 131
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEmails:[Ljava/lang/String;

    .line 132
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAnr:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "record"    # [B

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    .line 49
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mExtRecord:I

    .line 113
    iput p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEfid:I

    .line 114
    iput p2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mRecordNumber:I

    .line 115
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->parseRecord([B)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # [Ljava/lang/String;
    .param p4, "anr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 123
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "record"    # [B

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(II[B)V

    .line 110
    return-void
.end method

.method public static encodeAlphaTag([BLjava/lang/String;I)I
    .locals 9
    .param p0, "adnString"    # [B
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "footerOffset"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 321
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    .line 322
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 339
    .local v0, "byteTag":[B
    :goto_0
    array-length v6, v0

    if-le v6, p2, :cond_0

    .line 340
    const-string v5, "MiuiAdnRecord"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[buildAdnString] alpha tag is too long, should <="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/16 v5, -0x3ec

    .line 345
    .end local v0    # "byteTag":[B
    .end local p2    # "footerOffset":I
    :goto_1
    return v5

    .line 323
    .restart local p2    # "footerOffset":I
    :catch_0
    move-exception v2

    .line 324
    .local v2, "ex":Lcom/android/internal/telephony/EncodeException;
    const-string v6, "MiuiAdnRecord"

    const-string v7, "[buildAdnString]  can\'t encode with GSM alphabet, try utf-16be"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-array v3, v8, [B

    .line 327
    .local v3, "header":[B
    const/16 v6, -0x80

    aput-byte v6, v3, v5

    .line 330
    :try_start_1
    const-string v6, "utf-16be"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 335
    .local v1, "data":[B
    array-length v6, v1

    add-int/lit8 v6, v6, 0x1

    new-array v0, v6, [B

    .line 336
    .restart local v0    # "byteTag":[B
    invoke-static {v3, v5, v0, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 337
    array-length v6, v1

    invoke-static {v1, v5, v0, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    .line 331
    .end local v0    # "byteTag":[B
    .end local v1    # "data":[B
    :catch_1
    move-exception v4

    .line 332
    .local v4, "uex":Ljava/io/UnsupportedEncodingException;
    const-string v5, "MiuiAdnRecord"

    const-string v6, "Implausible UnsupportedEncodingException "

    invoke-static {v5, v6, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    const/16 v5, -0x3ea

    goto :goto_1

    .line 343
    .end local v2    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v3    # "header":[B
    .end local v4    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "byteTag":[B
    :cond_0
    array-length v6, v0

    if-le v6, p2, :cond_1

    .end local p2    # "footerOffset":I
    :goto_2
    invoke-static {v0, v5, p0, v5, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_1

    .restart local p2    # "footerOffset":I
    :cond_1
    array-length p2, v0

    goto :goto_2
.end method

.method public static isAdnAlphaTagTooLong(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "alphaTag"    # Ljava/lang/String;
    .param p1, "recordSize"    # I

    .prologue
    .line 253
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p1, -0xe

    if-le v0, v1, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAdnNumberTooLong(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 246
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 247
    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseRecord([B)V
    .locals 6
    .param p1, "record"    # [B

    .prologue
    const/4 v5, 0x0

    .line 386
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 389
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 391
    .local v1, "footerOffset":I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 393
    .local v2, "numberLength":I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 395
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    .line 420
    .end local v1    # "footerOffset":I
    .end local v2    # "numberLength":I
    :goto_0
    return-void

    .line 406
    .restart local v1    # "footerOffset":I
    .restart local v2    # "numberLength":I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    .line 410
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mExtRecord:I

    .line 412
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEmails:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    .end local v1    # "footerOffset":I
    .end local v2    # "numberLength":I
    :catch_0
    move-exception v0

    .line 415
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v3, "MiuiAdnRecord"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    .line 417
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 418
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEmails:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 194
    if-ne p0, p1, :cond_0

    .line 195
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    .line 197
    :cond_0
    if-nez p0, :cond_1

    .line 198
    const-string p0, ""

    .line 200
    :cond_1
    if-nez p1, :cond_2

    .line 201
    const-string p1, ""

    .line 203
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .param p1, "extRecord"    # [B

    .prologue
    const/4 v3, 0x2

    .line 354
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 363
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "MiuiAdnRecord"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;
    .locals 10
    .param p1, "recordSize"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 262
    add-int/lit8 v2, p1, -0xe

    .line 265
    .local v2, "footerOffset":I
    new-array v0, p1, [B

    .line 266
    .local v0, "adnString":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 267
    aput-byte v9, v0, v3

    .line 266
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 271
    const-string v5, "MiuiAdnRecord"

    const-string v6, "[buildAdnString] Empty dialing number"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v5, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;

    invoke-direct {v5, p0, v0, v8}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;-><init>(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;[BI)V

    .line 304
    :goto_1
    return-object v5

    .line 273
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isAdnNumberTooLong(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 274
    const-string v5, "MiuiAdnRecord"

    const-string v7, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v5, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;

    const/16 v7, -0x3eb

    invoke-direct {v5, p0, v6, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;-><init>(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;[BI)V

    goto :goto_1

    .line 277
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v5, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isAdnAlphaTagTooLong(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 278
    const-string v5, "MiuiAdnRecord"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] Max length of tag is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v5, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;

    const/16 v7, -0x3ec

    invoke-direct {v5, p0, v6, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;-><init>(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;[BI)V

    goto :goto_1

    .line 282
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v1, v6

    .line 283
    .local v1, "bcdNumber":[B
    :goto_2
    if-eqz v1, :cond_5

    .line 285
    add-int/lit8 v5, v2, 0x1

    array-length v7, v1

    invoke-static {v1, v8, v0, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 288
    add-int/lit8 v5, v2, 0x0

    array-length v7, v1

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 289
    add-int/lit8 v5, v2, 0xc

    aput-byte v9, v0, v5

    .line 290
    add-int/lit8 v5, v2, 0xd

    aput-byte v9, v0, v5

    .line 295
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 298
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v5, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->encodeAlphaTag([BLjava/lang/String;I)I

    move-result v4

    .line 299
    .local v4, "result":I
    if-eqz v4, :cond_6

    .line 300
    new-instance v5, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;

    invoke-direct {v5, p0, v6, v4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;-><init>(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;[BI)V

    goto :goto_1

    .line 282
    .end local v1    # "bcdNumber":[B
    .end local v4    # "result":I
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_2

    .line 292
    .restart local v1    # "bcdNumber":[B
    :cond_5
    add-int/lit8 v5, v2, 0x0

    aput-byte v8, v0, v5

    goto :goto_3

    .line 304
    :cond_6
    new-instance v5, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;

    invoke-direct {v5, p0, v0, v8}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;-><init>(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;[BI)V

    goto/16 :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAnr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAnr:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEmails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mExtRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mExtRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAnr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;)Z
    .locals 2
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEmails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlphaTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "alphaTag"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setAnr(Ljava/lang/String;)V
    .locals 0
    .param p1, "anr"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAnr:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .param p1, "emails"    # [Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEmails:[Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAnr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 220
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAnr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    return-void
.end method
