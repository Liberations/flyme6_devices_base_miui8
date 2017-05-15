.class public Lmiui/maml/elements/FramerateController;
.super Lmiui/maml/elements/ScreenElement;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/FramerateController$ControlPoint;
    }
.end annotation


# static fields
.field public static final INNER_TAG:Ljava/lang/String; = "ControlPoint"

.field public static final TAG_NAME:Ljava/lang/String; = "FramerateController"


# instance fields
.field private mControlPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/FramerateController$ControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDelay:J

.field private mLastUpdateTime:J

.field private mLock:Ljava/lang/Object;

.field private mLoop:Z

.field private mNextUpdateInterval:J

.field private mStartTime:J

.field private mStopped:Z

.field private mTag:Ljava/lang/String;

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 8
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    const-string v4, "loop"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    const-string v4, "tag"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    const-string v4, "delay"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "strDelay":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/maml/elements/FramerateController;->mDelay:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v4, "ControlPoint"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .local v0, "e":Lorg/w3c/dom/Element;
    iget-object v4, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v5, Lmiui/maml/elements/FramerateController$ControlPoint;

    invoke-direct {v5, v0}, Lmiui/maml/elements/FramerateController$ControlPoint;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "e":Lorg/w3c/dom/Element;
    .end local v1    # "i":I
    .end local v2    # "nodeList":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "FramerateController"

    const-string v5, "invalid delay attribute"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "i":I
    .restart local v2    # "nodeList":Lorg/w3c/dom/NodeList;
    :cond_1
    iget-object v4, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    iget-object v5, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/FramerateController$ControlPoint;

    iget-wide v4, v4, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    iput-wide v4, p0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    iget-boolean v4, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private restart(J)V
    .locals 5
    .param p1, "startTime"    # J

    .prologue
    iget-object v1, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lmiui/maml/elements/FramerateController;->mDelay:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->requestUpdate()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    sub-long v0, p1, p3

    invoke-direct {p0, v0, v1}, Lmiui/maml/elements/FramerateController;->restart(J)V

    goto :goto_0
.end method

.method public reset(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/FramerateController;->restart(J)V

    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .locals 1
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    invoke-static {p1, v0}, Lmiui/maml/elements/FramerateController;->isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/FramerateController;->show(Z)V

    return-void
.end method

.method public updateFramerate(J)J
    .locals 19
    .param p1, "currentTime"    # J

    .prologue
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/FramerateController;->updateVisibility()V

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/FramerateController;->isVisible()Z

    move-result v12

    if-nez v12, :cond_0

    const-wide v12, 0x7fffffffffffffffL

    :goto_0
    return-wide v12

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    if-eqz v12, :cond_1

    const-wide v12, 0x7fffffffffffffffL

    monitor-exit v14

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    const-wide/16 v16, 0x0

    cmp-long v12, v12, v16

    if-lez v12, :cond_2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    sub-long v6, p1, v12

    .local v6, "elapsedTime":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    cmp-long v12, v6, v12

    if-gez v12, :cond_2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    sub-long/2addr v12, v6

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v14

    goto :goto_0

    .end local v6    # "elapsedTime":J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mStartTime:J

    sub-long v6, p1, v12

    .restart local v6    # "elapsedTime":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-gez v12, :cond_3

    const-wide/16 v6, 0x0

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    rem-long v10, v6, v12

    .local v10, "time":J
    :goto_1
    const-wide/16 v8, 0x0

    .local v8, "nextUpdateTime":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/FramerateController$ControlPoint;

    .local v4, "cp":Lmiui/maml/elements/FramerateController$ControlPoint;
    iget-wide v12, v4, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    cmp-long v12, v10, v12

    if-ltz v12, :cond_7

    iget v12, v4, Lmiui/maml/elements/FramerateController$ControlPoint;->mFramerate:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lmiui/maml/elements/FramerateController;->requestFramerate(F)V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v5, v12, :cond_4

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    :cond_4
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    if-eqz v12, :cond_6

    const-wide v12, 0x7fffffffffffffffL

    :goto_3
    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v14

    goto/16 :goto_0

    .end local v4    # "cp":Lmiui/maml/elements/FramerateController$ControlPoint;
    .end local v5    # "i":I
    .end local v8    # "nextUpdateTime":J
    .end local v10    # "time":J
    :cond_5
    move-wide v10, v6

    goto :goto_1

    .restart local v4    # "cp":Lmiui/maml/elements/FramerateController$ControlPoint;
    .restart local v5    # "i":I
    .restart local v8    # "nextUpdateTime":J
    .restart local v10    # "time":J
    :cond_6
    sub-long v12, v8, v10

    goto :goto_3

    :cond_7
    iget-wide v8, v4, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .end local v4    # "cp":Lmiui/maml/elements/FramerateController$ControlPoint;
    :cond_8
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide v12, 0x7fffffffffffffffL

    goto/16 :goto_0
.end method
