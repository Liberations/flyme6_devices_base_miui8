.class public Lmiui/maml/data/VariableUpdater;
.super Ljava/lang/Object;
.source "VariableUpdater.java"


# instance fields
.field private mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;


# direct methods
.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 0
    .param p1, "m"    # Lmiui/maml/data/VariableUpdaterManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/data/VariableUpdater;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    return-void
.end method

.method protected final getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lmiui/maml/data/VariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method protected final getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/data/VariableUpdater;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    return-void
.end method

.method public tick(J)V
    .locals 0
    .param p1, "currentTime"    # J

    .prologue
    return-void
.end method
