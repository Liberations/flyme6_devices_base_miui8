.class public Lcom/android/internal/policy/MiuiPhoneWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "MiuiPhoneWindow.java"


# instance fields
.field private mMenuDownCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .locals 15
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v2, 0xbb

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    new-instance v3, Landroid/view/KeyEvent;

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    const/16 v9, 0x52

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .end local p3    # "event":Landroid/view/KeyEvent;
    .local v3, "event":Landroid/view/KeyEvent;
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    move-object/from16 p3, v3

    .end local v3    # "event":Landroid/view/KeyEvent;
    .restart local p3    # "event":Landroid/view/KeyEvent;
    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :pswitch_0
    iget v2, p0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    if-nez v2, :cond_1

    new-instance p3, Landroid/view/KeyEvent;

    .end local p3    # "event":Landroid/view/KeyEvent;
    const/4 v2, 0x0

    const/16 v4, 0x52

    move-object/from16 v0, p3

    invoke-direct {v0, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .restart local p3    # "event":Landroid/view/KeyEvent;
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .locals 15
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v2, 0xbb

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    new-instance v3, Landroid/view/KeyEvent;

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    const/16 v9, 0x52

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .end local p3    # "event":Landroid/view/KeyEvent;
    .local v3, "event":Landroid/view/KeyEvent;
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    move-object/from16 p3, v3

    .end local v3    # "event":Landroid/view/KeyEvent;
    .restart local p3    # "event":Landroid/view/KeyEvent;
    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :pswitch_0
    iget v2, p0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    new-instance p3, Landroid/view/KeyEvent;

    .end local p3    # "event":Landroid/view/KeyEvent;
    const/4 v2, 0x1

    const/16 v4, 0x52

    move-object/from16 v0, p3

    invoke-direct {v0, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .restart local p3    # "event":Landroid/view/KeyEvent;
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method
