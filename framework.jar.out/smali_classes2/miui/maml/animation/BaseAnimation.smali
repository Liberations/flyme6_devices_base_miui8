.class public abstract Lmiui/maml/animation/BaseAnimation;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/animation/BaseAnimation$AnimationItem;
    }
.end annotation


# static fields
.field private static final INFINITE_TIME:J = 0xe8d4a51000L

.field private static final LOG_TAG:Ljava/lang/String; = "BaseAnimation"

.field public static final PLAY_TO_END:I = -0x1

.field private static final VAR_CURRENT_FRAME:Ljava/lang/String; = "current_frame"


# instance fields
.field private mAnimEndTime:J

.field private mAnimStartTime:J

.field protected mAttrs:[Ljava/lang/String;

.field private mCurValues:[D

.field private mCurrentFrame:Lmiui/maml/data/IndexedVariable;

.field private mDelay:Lmiui/maml/data/Expression;

.field private mDisable:Z

.field private mEndTime:J

.field private mHasName:Z

.field private mInitPaused:Z

.field private mIsDelay:Z

.field private mIsFirstFrame:Z

.field private mIsFirstReset:Z

.field private mIsLastFrame:Z

.field private mIsLoop:Z

.field private mIsPaused:Z

.field private mIsReverse:Z

.field private mIsTimeInfinite:Z

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/animation/BaseAnimation$AnimationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLoop:Z

.field private mName:Ljava/lang/String;

.field private mPauseTime:J

.field private mPlayTimeRange:J

.field private mRealTimeRange:J

.field private mResetTime:J

.field protected mScreenElement:Lmiui/maml/elements/ScreenElement;

.field private mStartTime:J

.field private mTag:Ljava/lang/String;

.field private mTriggers:Lmiui/maml/CommandTriggers;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "attr"    # Ljava/lang/String;
    .param p4, "ele"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0, p4}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "ele"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    const-string v0, "value"

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "attrs"    # [Ljava/lang/String;
    .param p4, "ele"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mLoop:Z

    iput-object p4, p0, Lmiui/maml/animation/BaseAnimation;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    iput-object p3, p0, Lmiui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    invoke-direct {p0, p1, p2}, Lmiui/maml/animation/BaseAnimation;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "ele"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    const/4 v0, 0x0

    const-string v1, "value"

    invoke-direct {p0, p1, v0, v1, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    return-void
.end method

.method private getRatio(Lmiui/maml/animation/BaseAnimation$AnimationItem;JJJ)F
    .locals 4
    .param p1, "item1"    # Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .param p2, "time"    # J
    .param p4, "base"    # J
    .param p6, "range"    # J

    .prologue
    const-wide/16 v2, 0x0

    cmp-long v1, p6, v2

    if-nez v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "ratio":F
    :goto_0
    if-eqz p1, :cond_0

    iget-object v1, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

    invoke-virtual {v1, v0}, Lmiui/maml/animation/interpolater/InterpolatorHelper;->get(F)F

    move-result v0

    :cond_0
    return v0

    .end local v0    # "ratio":F
    :cond_1
    sub-long v2, p2, p4

    long-to-float v1, v2

    long-to-float v2, p6

    div-float v0, v1, v2

    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 10
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "name"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    invoke-virtual {p0}, Lmiui/maml/animation/BaseAnimation;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    .local v1, "vars":Lmiui/maml/data/Variables;
    iget-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    if-eqz v2, :cond_0

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "current_frame"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v1, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mCurrentFrame:Lmiui/maml/data/IndexedVariable;

    :cond_0
    const-string v2, "delay"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mDelay:Lmiui/maml/data/Expression;

    const-string v2, "initPause"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mInitPaused:Z

    const-string v2, "false"

    const-string v5, "loop"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mLoop:Z

    const-string v2, "tag"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mTag:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v4

    const-string v5, "Item"

    aput-object v5, v2, v3

    new-instance v5, Lmiui/maml/animation/BaseAnimation$1;

    invoke-direct {v5, p0}, Lmiui/maml/animation/BaseAnimation$1;-><init>(Lmiui/maml/animation/BaseAnimation;)V

    invoke-static {p1, v2, v5}, Lmiui/maml/util/Utils;->traverseXmlElementChildrenTags(Lorg/w3c/dom/Element;[Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    const-string v2, "BaseAnimation"

    const-string v3, "empty items"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void

    .end local v1    # "vars":Lmiui/maml/data/Variables;
    :cond_2
    move v2, v4

    goto :goto_0

    .restart local v1    # "vars":Lmiui/maml/data/Variables;
    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v6, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    const-wide v8, 0xe8d4a51000L

    cmp-long v2, v6, v8

    if-ltz v2, :cond_5

    move v4, v3

    :cond_5
    iput-boolean v4, p0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_6

    iget-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v2, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    :goto_3
    const-string v2, "Triggers"

    invoke-static {p1, v2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .local v0, "triggers":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_1

    new-instance v2, Lmiui/maml/CommandTriggers;

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-direct {v2, v0, v3}, Lmiui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    goto :goto_2

    .end local v0    # "triggers":Lorg/w3c/dom/Element;
    :cond_6
    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v2, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    goto :goto_3
.end method

.method private reevaluate()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const-wide/16 v4, 0x0

    .local v4, "timeRange":J
    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    .local v2, "pos":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    iget-object v3, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    double-to-long v6, v10

    .local v6, "tmpTimeRange":J
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-gez v3, :cond_0

    const-wide/16 v6, 0x0

    :cond_0
    add-long/2addr v4, v6

    iput-wide v4, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .end local v6    # "tmpTimeRange":J
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-wide v10, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    cmp-long v3, v10, v4

    if-ltz v3, :cond_1

    iget-wide v4, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    goto :goto_1

    .end local v2    # "pos":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    :cond_3
    const-wide v10, 0xe8d4a51000L

    cmp-long v3, v4, v10

    if-ltz v3, :cond_4

    move v3, v8

    :goto_2
    iput-boolean v3, p0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-le v0, v8, :cond_5

    iget-boolean v3, p0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, -0x2

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v8, v3, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v8, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    :goto_3
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    iput-wide v4, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    goto :goto_3
.end method

.method private resetTime()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    iget-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    :cond_0
    iput-boolean v3, p0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lmiui/maml/animation/BaseAnimation;->reevaluate()V

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    invoke-direct {p0, v2, v3}, Lmiui/maml/animation/BaseAnimation;->transToAnimTime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    invoke-direct {p0, v2, v3}, Lmiui/maml/animation/BaseAnimation;->transToAnimTime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mAnimEndTime:J

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mAnimEndTime:J

    iget-wide v4, p0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    return-void
.end method

.method private transToAnimTime(J)J
    .locals 3
    .param p1, "time"    # J

    .prologue
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    iget-wide p1, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .end local p1    # "time":J
    :cond_1
    return-wide p1
.end method


# virtual methods
.method public finish()V
    .locals 6

    .prologue
    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v3}, Lmiui/maml/CommandTriggers;->finish()V

    :cond_0
    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "M":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    invoke-virtual {v3}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    array-length v1, v3

    .local v1, "N":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getAttrs()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    return-object v0
.end method

.method public getCurValue(I)D
    .locals 2
    .param p1, "i"    # I

    .prologue
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method protected getDefaultValue()D
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getDelayValue(I)D
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/maml/animation/BaseAnimation;->getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    .local v0, "ai":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method protected getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method protected final getVariables()Lmiui/maml/data/Variables;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->init()V

    :cond_0
    return-void
.end method

.method public onAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0, p1}, Lmiui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onCreateItem(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .locals 1
    .param p1, "ani"    # Lmiui/maml/animation/BaseAnimation;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    new-instance v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    invoke-direct {v0, p1, p2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;-><init>(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method protected onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 12
    .param p1, "item1"    # Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .param p2, "item2"    # Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .param p3, "ratio"    # F

    .prologue
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/animation/BaseAnimation;->getDefaultValue()D

    move-result-wide v2

    .local v2, "defaultValue":D
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    array-length v0, v6

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    if-nez p1, :cond_2

    move-wide v4, v2

    .local v4, "v":D
    :goto_1
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    invoke-virtual {p2, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v8

    sub-double/2addr v8, v4

    float-to-double v10, p3

    mul-double/2addr v8, v10

    add-double/2addr v8, v4

    aput-wide v8, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "v":D
    :cond_2
    invoke-virtual {p1, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->pause()V

    :cond_0
    return-void
.end method

.method public pauseAnim(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    iput-wide p1, p0, Lmiui/maml/animation/BaseAnimation;->mPauseTime:J

    goto :goto_0
.end method

.method public playAnim(JJJZZ)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v0, :cond_0

    .end local p3    # "startTime":J
    .end local p5    # "endTime":J
    :goto_0
    return-void

    .restart local p3    # "startTime":J
    .restart local p5    # "endTime":J
    :cond_0
    iput-wide p1, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_6

    .end local p3    # "startTime":J
    :cond_1
    :goto_1
    iput-wide p3, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    iput-wide p3, p0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gez v0, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, p5, v0

    if-nez v0, :cond_7

    .end local p5    # "endTime":J
    :cond_2
    :goto_2
    iput-wide p5, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    iput-wide p5, p0, Lmiui/maml/animation/BaseAnimation;->mAnimEndTime:J

    iput-boolean p7, p0, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    iput-boolean p8, p0, Lmiui/maml/animation/BaseAnimation;->mIsDelay:Z

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    :cond_3
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsReverse:Z

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    :cond_4
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsDelay:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mDelay:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    long-to-double v0, v0

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mDelay:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    goto :goto_0

    .restart local p3    # "startTime":J
    .restart local p5    # "endTime":J
    :cond_6
    const-wide/16 p3, 0x0

    goto :goto_1

    .end local p3    # "startTime":J
    :cond_7
    const-wide/16 p5, 0x0

    goto :goto_2

    .end local p5    # "endTime":J
    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public reset(J)V
    .locals 13
    .param p1, "time"    # J

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    iget-boolean v1, p0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    array-length v0, v1

    .local v0, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v0, :cond_1

    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    invoke-virtual {p0, v10}, Lmiui/maml/animation/BaseAnimation;->getDelayValue(I)D

    move-result-wide v2

    aput-wide v2, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lmiui/maml/animation/BaseAnimation;->mInitPaused:Z

    if-eqz v1, :cond_3

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, v4

    move v9, v8

    invoke-virtual/range {v1 .. v9}, Lmiui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    :goto_2
    iget-boolean v1, p0, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation;->mCurrentFrame:Lmiui/maml/data/IndexedVariable;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_2
    const-string v1, "init"

    invoke-virtual {p0, v1}, Lmiui/maml/animation/BaseAnimation;->onAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-wide/16 v6, -0x1

    move-object v1, p0

    move-wide v2, p1

    move v8, v11

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Lmiui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    goto :goto_2
.end method

.method public resume()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->resume()V

    :cond_0
    return-void
.end method

.method public resumeAnim(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mPauseTime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    goto :goto_0
.end method

.method public setCurValue(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "v"    # D

    .prologue
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    aput-wide p2, v0, p1

    return-void
.end method

.method public setDisable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    return-void
.end method

.method public final tick(J)V
    .locals 23
    .param p1, "currentTime"    # J

    .prologue
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    move-wide/from16 v18, v0

    sub-long v14, p1, v18

    .local v14, "elapsedTime":J
    const-wide/16 v18, 0x0

    cmp-long v4, v14, v18

    if-gez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    const-wide/16 v14, 0x0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mLoop:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    if-eqz v4, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Lmiui/maml/animation/BaseAnimation;->resetTime()V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mLoop:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    if-nez v4, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/animation/BaseAnimation;->mPauseTime:J

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/animation/BaseAnimation;->mCurrentFrame:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_6
    const-string v4, "end"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/maml/animation/BaseAnimation;->onAction(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v4, v1, v2}, Lmiui/maml/animation/BaseAnimation;->onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    move-wide/from16 v18, v0

    cmp-long v4, v14, v18

    if-ltz v4, :cond_9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    rem-long v18, v14, v18

    sub-long v18, p1, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsReverse:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    move-wide/from16 v18, v0

    sub-long v14, v18, v14

    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    rem-long v6, v14, v18

    .local v6, "time":J
    const/4 v5, 0x0

    .local v5, "item1":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    const/16 v16, 0x0

    .local v16, "item2":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, "N":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v12, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "item2":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    check-cast v16, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    .restart local v16    # "item2":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    move-object/from16 v0, v16

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    move-wide/from16 v18, v0

    cmp-long v4, v6, v18

    if-gez v4, :cond_c

    const-wide/16 v8, 0x0

    .local v8, "base":J
    if-nez v13, :cond_b

    move-object/from16 v0, v16

    iget-wide v10, v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .local v10, "range":J
    :goto_3
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lmiui/maml/animation/BaseAnimation;->getRatio(Lmiui/maml/animation/BaseAnimation$AnimationItem;JJJ)F

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1, v4}, Lmiui/maml/animation/BaseAnimation;->onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V

    goto/16 :goto_0

    .end local v5    # "item1":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .end local v6    # "time":J
    .end local v8    # "base":J
    .end local v10    # "range":J
    .end local v12    # "N":I
    .end local v13    # "i":I
    .end local v16    # "item2":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    move-wide/from16 v18, v0

    add-long v14, v14, v18

    goto :goto_1

    .restart local v5    # "item1":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .restart local v6    # "time":J
    .restart local v8    # "base":J
    .restart local v12    # "N":I
    .restart local v13    # "i":I
    .restart local v16    # "item2":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v17, v13, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "item1":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    check-cast v5, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    .restart local v5    # "item1":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    move-object/from16 v0, v16

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    move-wide/from16 v20, v0

    sub-long v10, v18, v20

    .restart local v10    # "range":J
    iget-wide v8, v5, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    goto :goto_3

    .end local v8    # "base":J
    .end local v10    # "range":J
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_d
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1, v4}, Lmiui/maml/animation/BaseAnimation;->onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V

    goto/16 :goto_0
.end method
