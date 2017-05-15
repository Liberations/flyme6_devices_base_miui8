.class Lmiui/maml/ActionCommand$SoundCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SoundCommand"


# instance fields
.field private mCommand:Lmiui/maml/SoundManager$Command;

.field private mKeepCur:Z

.field private mLoop:Z

.field private mSound:Ljava/lang/String;

.field private mStreamIdExp:Lmiui/maml/data/Expression;

.field private mStreamIdVar:Lmiui/maml/data/IndexedVariable;

.field private mVolumeExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    const-string v1, "sound"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    const-string v1, "keepCur"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mKeepCur:Z

    const-string v1, "loop"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mLoop:Z

    const-string v1, "command"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/SoundManager$Command;->parse(Ljava/lang/String;)Lmiui/maml/SoundManager$Command;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mCommand:Lmiui/maml/SoundManager$Command;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$SoundCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "volume"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    if-nez v1, :cond_0

    const-string v1, "ActionCommand"

    const-string v2, "invalid expression in SoundCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$SoundCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "streamId"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mStreamIdExp:Lmiui/maml/data/Expression;

    const-string v1, "streamIdVar"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "streamIdVarName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$SoundCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mStreamIdVar:Lmiui/maml/data/IndexedVariable;

    :cond_1
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 7

    .prologue
    sget-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$SoundManager$Command:[I

    iget-object v3, p0, Lmiui/maml/ActionCommand$SoundCommand;->mCommand:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v3}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    .local v1, "volume":F
    iget-object v2, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v1, v2

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$SoundCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    new-instance v4, Lmiui/maml/SoundManager$SoundOptions;

    iget-boolean v5, p0, Lmiui/maml/ActionCommand$SoundCommand;->mKeepCur:Z

    iget-boolean v6, p0, Lmiui/maml/ActionCommand$SoundCommand;->mLoop:Z

    invoke-direct {v4, v5, v6, v1}, Lmiui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {v2, v3, v4}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)I

    move-result v0

    .local v0, "streamId":I
    iget-object v2, p0, Lmiui/maml/ActionCommand$SoundCommand;->mStreamIdVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/ActionCommand$SoundCommand;->mStreamIdVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v0

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    goto :goto_0

    .end local v0    # "streamId":I
    .end local v1    # "volume":F
    :pswitch_1
    iget-object v2, p0, Lmiui/maml/ActionCommand$SoundCommand;->mStreamIdExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/ActionCommand$SoundCommand;->mStreamIdExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v0, v2

    .restart local v0    # "streamId":I
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$SoundCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$SoundCommand;->mCommand:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v2, v0, v3}, Lmiui/maml/ScreenElementRoot;->playSound(ILmiui/maml/SoundManager$Command;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
