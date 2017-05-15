.class public Lmiui/provider/ExtraGuardVirusInfoEntity;
.super Ljava/lang/Object;
.source "ExtraGuardVirusInfoEntity.java"


# instance fields
.field private mAdvice:I

.field private mDescription:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mType:I

.field private mVirusName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    iput-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    iput v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    iput-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdvice()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    return v0
.end method

.method public getVirusName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    return-object v0
.end method

.method public setAdvice(I)V
    .locals 0
    .param p1, "_advice"    # I

    .prologue
    iput p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "_description"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "_packageName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "_type"    # I

    .prologue
    iput p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    return-void
.end method

.method public setVirusName(Ljava/lang/String;)V
    .locals 0
    .param p1, "_virusName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    return-void
.end method
