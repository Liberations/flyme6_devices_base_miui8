.class public Lmiui/maml/util/IndexedNumberVariable;
.super Lmiui/maml/data/IndexedVariable;
.source "IndexedNumberVariable.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    return-void
.end method
