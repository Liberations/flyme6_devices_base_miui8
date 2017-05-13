.class public Landroid/hardware/fingerprint/FingerprintFidoIn;
.super Ljava/lang/Object;
.source "FingerprintFidoIn.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/fingerprint/FingerprintFidoIn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public AAID:Ljava/lang/String;

.field private nonce:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Landroid/hardware/fingerprint/FingerprintFidoIn$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintFidoIn$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/FingerprintFidoIn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->AAID:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 19
    .local v0, "ba":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 20
    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->nonce:[B

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getAAID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->AAID:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()[B
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->nonce:[B

    return-object v0
.end method

.method public setAAID(Ljava/lang/String;)V
    .locals 0
    .param p1, "AAID"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->AAID:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setNonce([B)V
    .locals 0
    .param p1, "nonce"    # [B

    .prologue
    .line 28
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->nonce:[B

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FingerprintFidoIn [AAID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->AAID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->nonce:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

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
    .line 46
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->AAID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->nonce:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 48
    return-void
.end method
