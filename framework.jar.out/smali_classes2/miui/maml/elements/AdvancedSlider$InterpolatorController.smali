.class Lmiui/maml/elements/AdvancedSlider$InterpolatorController;
.super Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterpolatorController"
.end annotation


# instance fields
.field private mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

.field private mReboundTime:J

.field private mReboundTimeExp:Lmiui/maml/data/Expression;

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/animation/interpolater/InterpolatorHelper;Lmiui/maml/data/Expression;)V
    .locals 1
    .param p2, "iph"    # Lmiui/maml/animation/interpolater/InterpolatorHelper;
    .param p3, "time"    # Lmiui/maml/data/Expression;

    .prologue
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V

    iput-object p2, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

    iput-object p3, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTimeExp:Lmiui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method protected getDistance(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    iget-wide v2, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->onStop()V

    iget-wide v2, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mTotalDistance:D

    double-to-long v2, v2

    :goto_0
    return-wide v2

    :cond_0
    long-to-float v1, p1

    iget-wide v2, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTime:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .local v0, "ratio":F
    iget-wide v2, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mTotalDistance:D

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

    invoke-virtual {v1, v0}, Lmiui/maml/animation/interpolater/InterpolatorHelper;->get(F)F

    move-result v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-long v2, v2

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTimeExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTime:J

    return-void
.end method
