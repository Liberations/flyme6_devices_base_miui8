.class Lmiui/maml/data/RootExpression$VarVersionVisitor;
.super Lmiui/maml/data/ExpressionVisitor;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VarVersionVisitor"
.end annotation


# instance fields
.field private mRoot:Lmiui/maml/data/RootExpression;


# direct methods
.method public constructor <init>(Lmiui/maml/data/RootExpression;)V
    .locals 0
    .param p1, "root"    # Lmiui/maml/data/RootExpression;

    .prologue
    invoke-direct {p0}, Lmiui/maml/data/ExpressionVisitor;-><init>()V

    iput-object p1, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    return-void
.end method


# virtual methods
.method public visit(Lmiui/maml/data/Expression;)V
    .locals 7
    .param p1, "exp"    # Lmiui/maml/data/Expression;

    .prologue
    instance-of v2, p1, Lmiui/maml/data/Expression$VariableExpression;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lmiui/maml/data/Expression$VariableExpression;

    .local v0, "ep":Lmiui/maml/data/Expression$VariableExpression;
    invoke-virtual {v0}, Lmiui/maml/data/Expression$VariableExpression;->evaluate()D

    iget-object v2, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    new-instance v3, Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v0}, Lmiui/maml/data/Expression$VariableExpression;->getIndex()I

    move-result v4

    invoke-virtual {v0}, Lmiui/maml/data/Expression$VariableExpression;->getVersion()I

    move-result v5

    instance-of v6, p1, Lmiui/maml/data/Expression$NumberVariableExpression;

    invoke-direct {v3, v4, v5, v6}, Lmiui/maml/data/RootExpression$VarVersion;-><init>(IIZ)V

    invoke-virtual {v2, v3}, Lmiui/maml/data/RootExpression;->addVarVersion(Lmiui/maml/data/RootExpression$VarVersion;)V

    .end local v0    # "ep":Lmiui/maml/data/Expression$VariableExpression;
    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v2, p1, Lmiui/maml/data/Expression$FunctionExpression;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lmiui/maml/data/Expression$FunctionExpression;

    .local v0, "ep":Lmiui/maml/data/Expression$FunctionExpression;
    invoke-virtual {v0}, Lmiui/maml/data/Expression$FunctionExpression;->getFunName()Ljava/lang/String;

    move-result-object v1

    .local v1, "func":Ljava/lang/String;
    const-string v2, "rand"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "eval"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "preciseeval"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    const/4 v3, 0x1

    # setter for: Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z
    invoke-static {v2, v3}, Lmiui/maml/data/RootExpression;->access$002(Lmiui/maml/data/RootExpression;Z)Z

    goto :goto_0
.end method
