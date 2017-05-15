.class public Lmiui/maml/ActionCommand$ObjVar;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ObjVar"
.end annotation


# instance fields
.field private mIndex:I

.field private mIndexArr:Lmiui/maml/data/Expression;

.field private mVars:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/maml/ActionCommand$ObjVar;->mVars:Lmiui/maml/data/Variables;

    move-object v2, p1

    .local v2, "rname":Ljava/lang/String;
    const/16 v3, 0x5b

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "pos":I
    if-lez v1, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "ide":Ljava/lang/String;
    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndexArr:Lmiui/maml/data/Expression;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ide":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p2, v2}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndex:I

    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4

    .prologue
    iget-object v2, p0, Lmiui/maml/ActionCommand$ObjVar;->mVars:Lmiui/maml/data/Variables;

    iget v3, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndex:I

    invoke-virtual {v2, v3}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndexArr:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    :try_start_0
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "obj":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    iget-object v2, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndexArr:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_0
.end method
