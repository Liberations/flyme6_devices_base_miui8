.class public Lcom/android/server/MiuiInputFilter;
.super Landroid/view/InputFilter;
.source "MiuiInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MiuiInputFilter$ClickableRect;,
        Lcom/android/server/MiuiInputFilter$H;,
        Lcom/android/server/MiuiInputFilter$KeyData;
    }
.end annotation


# static fields
.field static ENTERED_LISTEN_COMBINATION_KEYS:[[I = null

.field private static final GESTURE_DETECT_FAIL_ALERT_INTERVAL:I = 0x1388

.field private static final GESTURE_FINGER_COUNT:I = 0x3

.field private static MIDDLE_KEYCODE:I = 0x0

.field static NOT_ENTERED_LISTEN_COMBINATION_KEYS:[[I = null

.field private static final PERSIST_SYS_BACKTOUCH_PROPERTY:Ljava/lang/String; = "persist.sys.backtouch"

.field private static final PERSIST_SYS_HANDSWAP_PROPERTY:Ljava/lang/String; = "persist.sys.handswap"

.field private static final THREE_GESTURE_STATE_DETECTED_FALSE:I = 0x2

.field private static final THREE_GESTURE_STATE_DETECTED_TRUE:I = 0x3

.field private static final THREE_GESTURE_STATE_DETECTING:I = 0x1

.field private static final THREE_GESTURE_STATE_NONE:I = 0x0

.field private static final THREE_GESTURE_STATE_NO_DETECT:I = 0x4

.field private static isDpadDevice:Z

.field private static sBootCompleted:Z

.field private static sEdgeDistance:F

.field private static sThreeGestureThreshold:I


# instance fields
.field private final MAX_COS:D

.field private mCitTestEnabled:Z

.field private mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/MiuiInputFilter$H;

.field private mInitMotionY:[F

.field private mInstalled:Z

.field private mOutsideClickableRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MiuiInputFilter$ClickableRect;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MiuiInputFilter$KeyData;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerIds:[I

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleDura:I

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mThreeGestureState:I

.field private mWasInside:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x52

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const-string v0, "middle_keycode_is_dpad_center"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/MiuiInputFilter;->isDpadDevice:Z

    .line 45
    sget-boolean v0, Lcom/android/server/MiuiInputFilter;->isDpadDevice:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    :goto_0
    sput v0, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    .line 60
    new-array v0, v5, [[I

    new-array v1, v5, [I

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v3

    aput v6, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [I

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v3

    aput v7, v1, v4

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/MiuiInputFilter;->NOT_ENTERED_LISTEN_COMBINATION_KEYS:[[I

    .line 66
    new-array v0, v6, [[I

    new-array v1, v5, [I

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v3

    aput v6, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [I

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v3

    aput v7, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [I

    aput v6, v1, v3

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v4

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v5, [I

    aput v7, v2, v3

    sget v3, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v3, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/MiuiInputFilter;->ENTERED_LISTEN_COMBINATION_KEYS:[[I

    return-void

    .line 45
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x3

    .line 137
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 57
    const-wide v0, 0x3fd657184ae74487L    # 0.3490658503988659

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/MiuiInputFilter;->MAX_COS:D

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/MiuiInputFilter;->mThreeGestureState:I

    .line 90
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPointerIds:[I

    .line 91
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mInitMotionY:[F

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    .line 138
    iput-object p1, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    .line 139
    new-instance v0, Lcom/android/server/MiuiInputFilter$H;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MiuiInputFilter$H;-><init>(Lcom/android/server/MiuiInputFilter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    .line 141
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    .line 142
    const/high16 v0, 0x43160000    # 150.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/server/MiuiInputFilter;->sThreeGestureThreshold:I

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MiuiInputFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiInputFilter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MiuiInputFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MiuiInputFilter;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/MiuiInputFilter;->gotoScreenshotSetting()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/MiuiInputFilter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MiuiInputFilter;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/MiuiInputFilter;->setIsShowThreeGestureAlert(Z)V

    return-void
.end method

.method private changeThreeGestureState(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 447
    iput p1, p0, Lcom/android/server/MiuiInputFilter;->mThreeGestureState:I

    .line 448
    return-void
.end method

.method private changeVolumeForBackTouch(I)V
    .locals 20
    .param p1, "policyFlags"    # I

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 183
    .local v2, "firstP":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    .line 184
    .local v11, "secondP":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/PointF;

    .line 185
    .local v14, "thirdP":Landroid/graphics/PointF;
    const/4 v15, 0x0

    .line 186
    .local v15, "volumeChange":F
    iget v6, v11, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iget v7, v14, Landroid/graphics/PointF;->x:F

    iget v8, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, v11, Landroid/graphics/PointF;->y:F

    iget v8, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    iget v8, v14, Landroid/graphics/PointF;->y:F

    iget v9, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    iget v8, v11, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, v11, Landroid/graphics/PointF;->y:F

    iget v0, v2, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v10, v10, v16

    float-to-double v0, v10

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    iget v10, v14, Landroid/graphics/PointF;->x:F

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v10, v10, v16

    float-to-double v0, v10

    move-wide/from16 v16, v0

    iget v10, v14, Landroid/graphics/PointF;->y:F

    iget v0, v11, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    sub-float v10, v10, v18

    float-to-double v0, v10

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    mul-double v8, v8, v16

    div-double v12, v6, v8

    .line 188
    .local v12, "cosTheta":D
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/MiuiInputFilter;->MAX_COS:D

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 189
    iget v6, v11, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iget v7, v14, Landroid/graphics/PointF;->y:F

    iget v8, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, v14, Landroid/graphics/PointF;->x:F

    iget v8, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    iget v8, v11, Landroid/graphics/PointF;->y:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float v15, v6, v7

    .line 191
    :cond_0
    const/4 v6, 0x0

    cmpl-float v6, v15, v6

    if-eqz v6, :cond_1

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 193
    .local v4, "time":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v6, 0x0

    cmpl-float v6, v15, v6

    if-lez v6, :cond_2

    const/16 v9, 0x18

    :goto_0
    const/4 v10, 0x0

    move-wide v6, v4

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 194
    .local v3, "evt":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 196
    new-instance v3, Landroid/view/KeyEvent;

    .end local v3    # "evt":Landroid/view/KeyEvent;
    const/4 v8, 0x1

    const/4 v6, 0x0

    cmpl-float v6, v15, v6

    if-lez v6, :cond_3

    const/16 v9, 0x18

    :goto_1
    const/4 v10, 0x0

    move-wide v6, v4

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 197
    .restart local v3    # "evt":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 199
    .end local v3    # "evt":Landroid/view/KeyEvent;
    .end local v4    # "time":J
    :cond_1
    return-void

    .line 193
    .restart local v4    # "time":J
    :cond_2
    const/16 v9, 0x19

    goto :goto_0

    .line 196
    :cond_3
    const/16 v9, 0x19

    goto :goto_1
.end method

.method private checkIsStartThreeGesture(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 432
    const/4 v1, 0x1

    .line 433
    .local v1, "maxY":F
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 434
    .local v2, "minY":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 435
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 436
    .local v3, "y":F
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 437
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    .end local v3    # "y":F
    :cond_0
    sub-float v4, v1, v2

    iget-object v5, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x43160000    # 150.0f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 440
    const/4 v4, 0x0

    .line 443
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private findClickableRect(FF)Lcom/android/server/MiuiInputFilter$ClickableRect;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 512
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiInputFilter$ClickableRect;

    .line 513
    .local v0, "c":Lcom/android/server/MiuiInputFilter$ClickableRect;
    iget-object v2, v0, Lcom/android/server/MiuiInputFilter$ClickableRect;->mRect:Landroid/graphics/Rect;

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    .end local v0    # "c":Lcom/android/server/MiuiInputFilter$ClickableRect;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 530
    iget-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v4

    .line 531
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 532
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 533
    .local v2, "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v4, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 534
    if-eqz v2, :cond_0

    .line 535
    iget-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    .end local v2    # "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 539
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v0

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    move v1, v3

    .line 530
    goto :goto_0

    .line 541
    .restart local v0    # "i":I
    .restart local v1    # "oldSize":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v3
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 545
    iget-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v4

    .line 546
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 547
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 548
    .local v2, "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v4, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 549
    if-eqz v2, :cond_0

    .line 550
    iget-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    .end local v2    # "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 554
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v0

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    move v1, v3

    .line 545
    goto :goto_0

    .line 556
    .restart local v0    # "i":I
    .restart local v1    # "oldSize":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v3
.end method

.method private gotoScreenshotSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 480
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v0, "settingIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v1, ":android:show_fragment"

    const-string v2, "com.android.settings.display.ScreenshotFragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 486
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 487
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 488
    return-void
.end method

.method private isShowThreeGestureAlert()Z
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_show_three_gesture_alert"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method private isThreeGestureScreenshotEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "three_gesture_screenshot"

    invoke-static {v0, v1, v2, v2}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method private isTouchInside(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 521
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/HandyMode;->sScreenHeight:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchInsideOrEdge(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 525
    sget v0, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    neg-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v0, v0

    sget v1, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    sget v0, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    neg-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/HandyMode;->sScreenHeight:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needDelayKey(Z)Z
    .locals 1
    .param p1, "isSecondKey"    # Z

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/android/server/MiuiInputFilter;->needShowDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needShowDialog()Z
    .locals 1

    .prologue
    .line 560
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v0}, Lmiui/util/HandyModeUtils;->isEnterDirect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 12
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 573
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/HandyMode;->sEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 574
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 577
    :cond_2
    const/4 v9, 0x0

    .line 578
    .local v9, "needDelay":Z
    const/4 v10, 0x0

    .line 579
    .local v10, "needTrigger":Z
    const/4 v7, 0x0

    .line 580
    .local v7, "isSecondKey":Z
    :try_start_1
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 635
    :cond_3
    :goto_1
    if-nez v9, :cond_4

    .line 636
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 639
    :cond_4
    if-eqz v10, :cond_1

    .line 640
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->triggerCombinationClick()V

    .line 641
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->clearPendingList()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 573
    .end local v7    # "isSecondKey":Z
    .end local v9    # "needDelay":Z
    .end local v10    # "needTrigger":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 582
    .restart local v7    # "isSecondKey":Z
    .restart local v9    # "needDelay":Z
    .restart local v10    # "needTrigger":Z
    :pswitch_0
    :try_start_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/MiuiInputFilter;->checkKeyNeedListen(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 584
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/MiuiInputFilter;->needDelayKey(Z)Z

    move-result v9

    .line 585
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez v9, :cond_5

    :goto_2
    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V

    goto :goto_1

    :cond_5
    move v5, v2

    goto :goto_2

    .line 590
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v0, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v1, v0, :cond_7

    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/MiuiInputFilter;->checkSecondKey(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 594
    :cond_7
    invoke-direct {p0, v7}, Lcom/android/server/MiuiInputFilter;->needDelayKey(Z)Z

    move-result v9

    .line 595
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v9, :cond_8

    :goto_3
    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V

    goto :goto_1

    :cond_8
    move v5, v2

    goto :goto_3

    .line 597
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->flushPending()V

    goto :goto_1

    .line 603
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v6, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    .line 604
    .local v6, "firstKeyEvent":Landroid/view/KeyEvent;
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v8, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    .line 605
    .local v8, "lastKeyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/MiuiInputFilter;->checkSecondKey(I)Z

    move-result v7

    if-nez v7, :cond_b

    :cond_a
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 612
    :cond_b
    invoke-direct {p0, v7}, Lcom/android/server/MiuiInputFilter;->needDelayKey(Z)Z

    move-result v9

    .line 613
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    :goto_4
    const/4 v4, 0x1

    if-nez v9, :cond_d

    :goto_5
    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V

    goto/16 :goto_1

    :cond_c
    move v3, v5

    goto :goto_4

    :cond_d
    move v5, v2

    goto :goto_5

    .line 616
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->flushPending()V

    goto/16 :goto_1

    .line 622
    .end local v6    # "firstKeyEvent":Landroid/view/KeyEvent;
    .end local v8    # "lastKeyEvent":Landroid/view/KeyEvent;
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v11, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    .line 623
    .local v11, "pendingKeyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 625
    const/4 v10, 0x1

    .line 626
    const/4 v9, 0x1

    .line 627
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez v9, :cond_f

    :goto_6
    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V

    goto/16 :goto_1

    :cond_f
    move v5, v2

    goto :goto_6

    .line 629
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->flushPending()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 580
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Lcom/android/server/MiuiInputFilter;->processMotionEventForThreeGestureDetect(Landroid/view/MotionEvent;I)Z

    move-result v0

    .line 241
    .local v0, "consumed":Z
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/android/server/HandyMode;->sEnable:Z

    if-eqz v1, :cond_0

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/server/MiuiInputFilter;->processMotionEventForHandyMode(Landroid/view/MotionEvent;I)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0
.end method

.method static processCoordinate(FFFF)F
    .locals 1
    .param p0, "coordValue"    # F
    .param p1, "offset"    # F
    .param p2, "scale"    # F
    .param p3, "scalePivot"    # F

    .prologue
    .line 236
    sub-float v0, p3, p0

    mul-float/2addr v0, p2

    sub-float v0, p3, v0

    sub-float/2addr v0, p1

    return v0
.end method

.method private processMotionEventForBackTouch(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 164
    :pswitch_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 165
    .local v0, "curPointF":Landroid/graphics/PointF;
    iget v1, p0, Lcom/android/server/MiuiInputFilter;->mSampleDura:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/MiuiInputFilter;->mSampleDura:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iput v3, p0, Lcom/android/server/MiuiInputFilter;->mSampleDura:I

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 170
    invoke-direct {p0, p2}, Lcom/android/server/MiuiInputFilter;->changeVolumeForBackTouch(I)V

    .line 171
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 175
    .end local v0    # "curPointF":Landroid/graphics/PointF;
    :pswitch_1
    iput v3, p0, Lcom/android/server/MiuiInputFilter;->mSampleDura:I

    .line 176
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processMotionEventForHandyMode(Landroid/view/MotionEvent;I)V
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 264
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v21

    .line 265
    .local v21, "mode":I
    if-eqz v21, :cond_9

    .line 266
    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lcom/android/server/HandyMode;->sScale:F

    div-float v23, v4, v5

    .line 268
    .local v23, "scaleInverse":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 269
    .local v9, "pointerCount":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/MiuiInputFilter;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    .line 270
    .local v11, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/MiuiInputFilter;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v10

    .line 271
    .local v10, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v0, v9, :cond_1

    .line 272
    aget-object v4, v11, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 274
    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_0

    sget v4, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v0, v4

    move/from16 v24, v0

    .line 275
    .local v24, "xPivot":F
    :goto_1
    aget-object v4, v11, v20

    aget-object v5, v11, v20

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v6, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/MiuiInputFilter;->processCoordinate(FFFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 277
    sget v4, Lcom/android/server/HandyMode;->sScreenHeight:I

    int-to-float v0, v4

    move/from16 v25, v0

    .line 278
    .local v25, "yPivot":F
    aget-object v4, v11, v20

    aget-object v5, v11, v20

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v6, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/MiuiInputFilter;->processCoordinate(FFFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 280
    aget-object v4, v10, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 271
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 274
    .end local v24    # "xPivot":F
    .end local v25    # "yPivot":F
    :cond_0
    const/16 v24, 0x0

    goto :goto_1

    .line 282
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v22

    .line 297
    .local v22, "newEvent":Landroid/view/MotionEvent;
    const/4 v4, 0x1

    if-ne v9, v4, :cond_8

    .line 298
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    .line 300
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/MiuiInputFilter;->findClickableRect(FF)Lcom/android/server/MiuiInputFilter$ClickableRect;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    .line 304
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    if-nez v4, :cond_6

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/MiuiInputFilter;->isTouchInside(FF)Z

    move-result v4

    if-nez v4, :cond_6

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    iget-object v4, v4, Lcom/android/server/MiuiInputFilter$ClickableRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 306
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    .line 309
    :cond_3
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    if-eqz v4, :cond_5

    .line 311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    iget-object v4, v4, Lcom/android/server/MiuiInputFilter$ClickableRect;->mClickListener:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 330
    :cond_4
    :goto_2
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->recycle()V

    .line 334
    .end local v9    # "pointerCount":I
    .end local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v20    # "i":I
    .end local v22    # "newEvent":Landroid/view/MotionEvent;
    .end local v23    # "scaleInverse":F
    :goto_3
    return-void

    .line 312
    .restart local v9    # "pointerCount":I
    .restart local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v20    # "i":I
    .restart local v22    # "newEvent":Landroid/view/MotionEvent;
    .restart local v23    # "scaleInverse":F
    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/MiuiInputFilter;->isTouchInsideOrEdge(FF)Z

    move-result v4

    if-nez v4, :cond_4

    .line 313
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/server/HandyMode;->changeMode(I)V

    goto :goto_2

    .line 317
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    if-nez v4, :cond_7

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 318
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 320
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 321
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    .line 322
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    goto :goto_2

    .line 325
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 326
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    .line 327
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    goto :goto_2

    .line 332
    .end local v9    # "pointerCount":I
    .end local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v20    # "i":I
    .end local v22    # "newEvent":Landroid/view/MotionEvent;
    .end local v23    # "scaleInverse":F
    :cond_9
    invoke-super/range {p0 .. p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_3
.end method

.method private processMotionEventForThreeGestureDetect(Landroid/view/MotionEvent;I)Z
    .locals 28
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 337
    sget-boolean v4, Lcom/android/server/MiuiInputFilter;->sBootCompleted:Z

    if-nez v4, :cond_1

    .line 338
    const-string v4, "sys.boot_completed"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/MiuiInputFilter;->sBootCompleted:Z

    .line 339
    sget-boolean v4, Lcom/android/server/MiuiInputFilter;->sBootCompleted:Z

    if-nez v4, :cond_1

    const/16 v24, 0x0

    .line 427
    :cond_0
    :goto_0
    return v24

    .line 342
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MiuiInputFilter;->isThreeGestureScreenshotEnabled()Z

    move-result v24

    .line 343
    .local v24, "isGestureEnabled":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MiuiInputFilter;->isShowThreeGestureAlert()Z

    move-result v25

    .line 344
    .local v25, "isShowThreeGestureAlert":Z
    if-nez v25, :cond_2

    if-nez v24, :cond_2

    .line 345
    const/16 v24, 0x0

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    .line 349
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/MiuiInputFilter;->changeThreeGestureState(I)V

    .line 387
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/MiuiInputFilter;->mThreeGestureState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    .line 388
    const/16 v24, 0x0

    goto :goto_0

    .line 350
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/MiuiInputFilter;->mThreeGestureState:I

    if-nez v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 351
    invoke-direct/range {p0 .. p1}, Lcom/android/server/MiuiInputFilter;->checkIsStartThreeGesture(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 352
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/MiuiInputFilter;->changeThreeGestureState(I)V

    goto :goto_1

    .line 354
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/MiuiInputFilter;->changeThreeGestureState(I)V

    .line 355
    if-eqz v24, :cond_7

    .line 356
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v27

    .line 357
    .local v27, "pointerCount":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/MiuiInputFilter;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    .line 358
    .local v11, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/MiuiInputFilter;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v10

    .line 359
    .local v10, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 360
    aget-object v4, v11, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 361
    aget-object v4, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 359
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 363
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const/4 v8, 0x3

    add-int/lit8 v9, v27, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v20

    .line 377
    .local v20, "cancelEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 380
    .end local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v20    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v22    # "i":I
    .end local v27    # "pointerCount":I
    :cond_7
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_3
    const/4 v4, 0x3

    move/from16 v0, v22

    if-ge v0, v4, :cond_3

    .line 381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mPointerIds:[I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v4, v22

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mInitMotionY:[F

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    aput v5, v4, v22

    .line 380
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 391
    .end local v22    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/MiuiInputFilter;->mThreeGestureState:I

    if-eqz v4, :cond_e

    .line 392
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/MiuiInputFilter;->mThreeGestureState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_9

    .line 397
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/MiuiInputFilter;->changeThreeGestureState(I)V

    goto/16 :goto_0

    .line 400
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 402
    :pswitch_0
    const/16 v21, 0x0

    .line 403
    .local v21, "distance":F
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_4
    const/4 v4, 0x3

    move/from16 v0, v22

    if-ge v0, v4, :cond_c

    .line 404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mPointerIds:[I

    aget v4, v4, v22

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v23

    .line 405
    .local v23, "index":I
    if-ltz v23, :cond_a

    const/4 v4, 0x3

    move/from16 v0, v23

    if-lt v0, v4, :cond_b

    .line 406
    :cond_a
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/MiuiInputFilter;->changeThreeGestureState(I)V

    goto/16 :goto_0

    .line 409
    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MiuiInputFilter;->mInitMotionY:[F

    aget v5, v5, v22

    sub-float/2addr v4, v5

    add-float v21, v21, v4

    .line 403
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 411
    .end local v23    # "index":I
    :cond_c
    sget v4, Lcom/android/server/MiuiInputFilter;->sThreeGestureThreshold:I

    int-to-float v4, v4

    cmpl-float v4, v21, v4

    if-ltz v4, :cond_0

    .line 412
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/MiuiInputFilter;->changeThreeGestureState(I)V

    .line 413
    if-eqz v24, :cond_d

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MiuiInputFilter;->takeScreenshot()V

    goto/16 :goto_0

    .line 416
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/KeyguardManager;

    .line 417
    .local v26, "km":Landroid/app/KeyguardManager;
    invoke-virtual/range {v26 .. v26}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-nez v4, :cond_0

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MiuiInputFilter;->showGestureDetectAlert()V

    goto/16 :goto_0

    .line 427
    .end local v21    # "distance":F
    .end local v22    # "i":I
    .end local v26    # "km":Landroid/app/KeyguardManager;
    :cond_e
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 496
    const-string v5, "count_event"

    .line 497
    .local v5, "STAT_TYPE_COUNT_EVENT":Ljava/lang/String;
    const-string v4, "com.miui.gallery"

    .line 498
    .local v4, "GALLERY_PKG_NAME":Ljava/lang/String;
    const-string v0, "com.miui.gallery.intent.action.SEND_STAT"

    .line 499
    .local v0, "ACTION_SEND_STAT":Ljava/lang/String;
    const-string v3, "stat_type"

    .line 500
    .local v3, "EXTRA_STAT_TYPE":Ljava/lang/String;
    const-string v1, "category"

    .line 501
    .local v1, "EXTRA_CATEGORY":Ljava/lang/String;
    const-string v2, "event"

    .line 503
    .local v2, "EXTRA_EVENT":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.gallery.intent.action.SEND_STAT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "com.miui.gallery"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v7, "stat_type"

    const-string v8, "count_event"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string v7, "category"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v7, "event"

    invoke-virtual {v6, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 509
    return-void
.end method

.method private setIsShowThreeGestureAlert(Z)V
    .locals 3
    .param p1, "val"    # Z

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_show_three_gesture_alert"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 261
    return-void
.end method

.method private showGestureDetectAlert()V
    .locals 5

    .prologue
    .line 451
    const-string v1, "trigger_restart_min_framework"

    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    :goto_0
    return-void

    .line 454
    :cond_0
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    const v4, 0x110700a4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x110700a1

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x110700a2

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x110700a3

    new-instance v3, Lcom/android/server/MiuiInputFilter$1;

    invoke-direct {v3, p0}, Lcom/android/server/MiuiInputFilter$1;-><init>(Lcom/android/server/MiuiInputFilter;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    .line 467
    .local v0, "dlg":Lmiui/app/AlertDialog;
    new-instance v1, Lcom/android/server/MiuiInputFilter$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/MiuiInputFilter$2;-><init>(Lcom/android/server/MiuiInputFilter;Lmiui/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 475
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7de

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 476
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private takeScreenshot()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 492
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    const-string v1, "screenshot"

    const-string v2, "threefingers"

    invoke-static {v0, v1, v2}, Lcom/android/server/MiuiInputFilter;->sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void
.end method


# virtual methods
.method public addOutsideClickableRect(Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    new-instance v1, Lcom/android/server/MiuiInputFilter$ClickableRect;

    invoke-direct {v1, p1, p2}, Lcom/android/server/MiuiInputFilter$ClickableRect;-><init>(Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method declared-synchronized addPendingData(Landroid/view/KeyEvent;IIZZ)V
    .locals 6
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "index"    # I
    .param p4, "delayEnhance"    # Z
    .param p5, "isSended"    # Z

    .prologue
    const/4 v1, 0x1

    .line 709
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/MiuiInputFilter$H;->removeMessages(I)V

    .line 711
    new-instance v0, Lcom/android/server/MiuiInputFilter$KeyData;

    invoke-direct {v0}, Lcom/android/server/MiuiInputFilter$KeyData;-><init>()V

    .line 712
    .local v0, "keyData":Lcom/android/server/MiuiInputFilter$KeyData;
    iput-object p1, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    .line 713
    iput p2, v0, Lcom/android/server/MiuiInputFilter$KeyData;->policyFlags:I

    .line 714
    iput-boolean p5, v0, Lcom/android/server/MiuiInputFilter$KeyData;->isSended:Z

    .line 715
    if-gez p3, :cond_1

    .line 716
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    :goto_0
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    const/4 v3, 0x1

    sget v4, Lcom/android/server/HandyMode;->COMBINATION_CLICK_TIMEOUT:I

    if-eqz p4, :cond_0

    const/4 v1, 0x2

    :cond_0
    mul-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/MiuiInputFilter$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    monitor-exit p0

    return-void

    .line 718
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 709
    .end local v0    # "keyData":Lcom/android/server/MiuiInputFilter$KeyData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method checkKeyNeedListen(I)Z
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 646
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->getListenCombinationKeys()[[I

    move-result-object v2

    .line 647
    .local v2, "listenCombinationKeys":[[I
    array-length v0, v2

    .line 648
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 649
    aget-object v4, v2, v1

    aget v4, v4, v3

    if-ne v4, p1, :cond_1

    .line 650
    const/4 v3, 0x1

    .line 653
    :cond_0
    return v3

    .line 648
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method checkSecondKey(I)Z
    .locals 8
    .param p1, "secondKeyCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 665
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->getListenCombinationKeys()[[I

    move-result-object v4

    .line 666
    .local v4, "listenCombinationKeys":[[I
    iget-object v5, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v5, v5, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 667
    .local v1, "firstKeyCode":I
    array-length v0, v4

    .line 668
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 669
    aget-object v3, v4, v2

    .line 670
    .local v3, "keySequence":[I
    aget v5, v3, v7

    if-ne v5, v1, :cond_0

    aget v5, v3, v6

    if-ne v5, p1, :cond_0

    move v5, v6

    .line 674
    .end local v3    # "keySequence":[I
    :goto_1
    return v5

    .line 668
    .restart local v3    # "keySequence":[I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "keySequence":[I
    :cond_1
    move v5, v7

    .line 674
    goto :goto_1
.end method

.method declared-synchronized clearPendingList()V
    .locals 2

    .prologue
    .line 726
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/MiuiInputFilter$H;->removeMessages(I)V

    .line 727
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    monitor-exit p0

    return-void

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized flushPending()V
    .locals 4

    .prologue
    .line 699
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 700
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MiuiInputFilter$KeyData;

    .line 701
    .local v1, "keyData":Lcom/android/server/MiuiInputFilter$KeyData;
    iget-boolean v2, v1, Lcom/android/server/MiuiInputFilter$KeyData;->isSended:Z

    if-nez v2, :cond_0

    .line 702
    iget-object v3, v1, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MiuiInputFilter$KeyData;

    iget v2, v2, Lcom/android/server/MiuiInputFilter$KeyData;->policyFlags:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 699
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    .end local v1    # "keyData":Lcom/android/server/MiuiInputFilter$KeyData;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->clearPendingList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    monitor-exit p0

    return-void

    .line 699
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getListenCombinationKeys()[[I
    .locals 1

    .prologue
    .line 657
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 658
    sget-object v0, Lcom/android/server/MiuiInputFilter;->NOT_ENTERED_LISTEN_COMBINATION_KEYS:[[I

    .line 660
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/MiuiInputFilter;->ENTERED_LISTEN_COMBINATION_KEYS:[[I

    goto :goto_0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/MiuiInputFilter;->mInstalled:Z

    return v0
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 203
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "backtouch"

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/MiuiInputFilter;->mCitTestEnabled:Z

    if-nez v0, :cond_0

    .line 205
    check-cast p1, Landroid/view/MotionEvent;

    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-direct {p0, p1, p2}, Lcom/android/server/MiuiInputFilter;->processMotionEventForBackTouch(Landroid/view/MotionEvent;I)V

    .line 217
    :goto_0
    return-void

    .line 208
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-direct {p0, p1, p2}, Lcom/android/server/MiuiInputFilter;->onMotionEvent(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 210
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_1
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_2

    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    invoke-static {}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    check-cast p1, Landroid/view/KeyEvent;

    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-direct {p0, p1, p2}, Lcom/android/server/MiuiInputFilter;->onKeyEvent(Landroid/view/KeyEvent;I)V

    goto :goto_0

    .line 216
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0
.end method

.method public onInstalled()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MiuiInputFilter;->mInstalled:Z

    .line 223
    return-void
.end method

.method public onUninstalled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    .line 228
    iput-boolean v1, p0, Lcom/android/server/MiuiInputFilter;->mInstalled:Z

    .line 229
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {v1}, Lcom/android/server/HandyMode;->changeMode(I)V

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->clearPendingList()V

    .line 233
    return-void
.end method

.method public removeOutsideClickableRect(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MiuiInputFilter$ClickableRect;

    iget-object v1, v1, Lcom/android/server/MiuiInputFilter$ClickableRect;->mClickListener:Ljava/lang/Runnable;

    if-ne v1, p1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 150
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 155
    :cond_1
    return-void
.end method

.method public setCitTestEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/android/server/MiuiInputFilter;->mCitTestEnabled:Z

    .line 159
    return-void
.end method

.method declared-synchronized triggerCombinationClick()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 678
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "screen_buttons_state"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 696
    :goto_0
    monitor-exit p0

    return-void

    .line 681
    :cond_0
    :try_start_1
    const-string v3, "persist.sys.handswap"

    const-string v6, "0"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "handswap":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 684
    .local v1, "keyDirectionExchanged":Z
    const/4 v2, 0x0

    .line 685
    .local v2, "newMode":I
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v3, v3, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    .line 686
    if-eqz v1, :cond_2

    move v2, v4

    .line 691
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/MiuiInputFilter;->needShowDialog()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 692
    invoke-static {v2}, Lcom/android/server/HandyMode;->alertToEnter(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 678
    .end local v0    # "handswap":Ljava/lang/String;
    .end local v1    # "keyDirectionExchanged":Z
    .end local v2    # "newMode":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0    # "handswap":Ljava/lang/String;
    .restart local v1    # "keyDirectionExchanged":Z
    .restart local v2    # "newMode":I
    :cond_2
    move v2, v5

    .line 686
    goto :goto_1

    .line 687
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v3, v3, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v6, 0x52

    if-ne v3, v6, :cond_1

    .line 688
    if-eqz v1, :cond_4

    move v2, v5

    :goto_2
    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2

    .line 694
    :cond_5
    invoke-static {v2}, Lcom/android/server/HandyMode;->changeMode(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
