.class public Lmiui/security/TidaSignature;
.super Ljava/security/SignatureSpi;
.source "TidaSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/TidaSignature$SHA1withECDSA;,
        Lmiui/security/TidaSignature$SHA256withECDSA;,
        Lmiui/security/TidaSignature$SHA1withRSA;,
        Lmiui/security/TidaSignature$SHA256withRSA;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MODE_SIGN:I = 0x1

.field private static final MODE_SIGN_TIDA:I = 0x3

.field private static final MODE_UNDEF:I = 0x0

.field private static final MODE_VERIFY:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAlgorithm:Ljava/lang/String;

.field private mHelperSignature:Ljava/security/Signature;

.field private mMode:I

.field private mParameter:Ljava/lang/Object;

.field private mTida:Lmiui/security/Tida;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lmiui/security/TidaSignature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/security/TidaSignature;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    invoke-static {}, Lmiui/security/Tida;->getInstance()Lmiui/security/Tida;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/TidaSignature;->mTida:Lmiui/security/Tida;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lmiui/security/TidaSignature;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private resetAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lmiui/security/TidaSignature;->mMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/security/TidaSignature;->mHelperSignature:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method protected final engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmiui/security/TidaSignature;->mParameter:Ljava/lang/Object;

    return-object v0
.end method

.method protected final engineInitSign(Ljava/security/PrivateKey;)V
    .locals 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    sget-object v2, Lmiui/security/TidaSignature;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "engineInitSign "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/security/TidaSignature;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/security/TidaSignature;->resetAll()V

    instance-of v2, p1, Lmiui/security/TidaPrivateKey;

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    iput v2, p0, Lmiui/security/TidaSignature;->mMode:I

    check-cast p1, Lmiui/security/TidaPrivateKey;

    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    invoke-virtual {p1}, Lmiui/security/TidaPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v0

    .local v0, "alias":Ljava/lang/String;
    iget-object v2, p0, Lmiui/security/TidaSignature;->mTida:Lmiui/security/Tida;

    iget-object v3, p0, Lmiui/security/TidaSignature;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lmiui/security/Tida;->signInit(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "alias":Ljava/lang/String;
    :goto_0
    return-void

    .restart local p1    # "privateKey":Ljava/security/PrivateKey;
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lmiui/security/TidaSignature;->mMode:I

    :try_start_0
    iget-object v2, p0, Lmiui/security/TidaSignature;->mAlgorithm:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    iput-object v2, p0, Lmiui/security/TidaSignature;->mHelperSignature:Ljava/security/Signature;

    iget-object v2, p0, Lmiui/security/TidaSignature;->mHelperSignature:Ljava/security/Signature;

    invoke-virtual {v2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected final engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lmiui/security/TidaSignature;->resetAll()V

    :try_start_0
    iget-object v1, p0, Lmiui/security/TidaSignature;->mAlgorithm:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    iput-object v1, p0, Lmiui/security/TidaSignature;->mHelperSignature:Ljava/security/Signature;

    iget-object v1, p0, Lmiui/security/TidaSignature;->mHelperSignature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const/4 v1, 0x2

    iput v1, p0, Lmiui/security/TidaSignature;->mMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "init exception"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    iput-object p2, p0, Lmiui/security/TidaSignature;->mParameter:Ljava/lang/Object;

    return-void
.end method

.method protected final engineSign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    sget-object v0, Lmiui/security/TidaSignature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engineSign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/security/TidaSignature;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lmiui/security/TidaSignature;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/security/TidaSignature;->mHelperSignature:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/security/TidaSignature;->mTida:Lmiui/security/Tida;

    invoke-virtual {v0}, Lmiui/security/Tida;->sign()[B

    move-result-object v0

    goto :goto_0
.end method

.method protected final engineUpdate(B)V
    .locals 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [B

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0, v1, v2}, Lmiui/security/TidaSignature;->engineUpdate([BII)V

    return-void
.end method

.method protected final engineUpdate([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    sget-object v0, Lmiui/security/TidaSignature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engineUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/security/TidaSignature;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lmiui/security/TidaSignature;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmiui/security/TidaSignature;->mTida:Lmiui/security/Tida;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/security/Tida;->signUpdate([BII)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lmiui/security/TidaSignature;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lmiui/security/TidaSignature;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lmiui/security/TidaSignature;->mHelperSignature:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineVerify([B)Z
    .locals 2
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "null input"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmiui/security/TidaSignature;->engineVerify([BII)Z

    move-result v0

    return v0
.end method

.method protected final engineVerify([BII)Z
    .locals 1
    .param p1, "sigBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmiui/security/TidaSignature;->mHelperSignature:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->verify([BII)Z

    move-result v0

    return v0
.end method
