.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenKeyLongPressRunnable"
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field private mKeyActionSettings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageSettingActivity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemKeyPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnderKeyguard:Z

.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .locals 3

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    .line 1321
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1322
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1323
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1324
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1325
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1326
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1327
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.jeejen.family.miui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1328
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1329
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.miui.backup"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1330
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1331
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.mihomemanager"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1336
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    .line 1338
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    const/16 v1, 0xbb

    const-string v2, "screen_key_long_press_app_switch"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1339
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string v2, "screen_key_long_press_menu"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1340
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "screen_key_long_press_home"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1341
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "screen_key_long_press_back"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1342
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;

    .prologue
    .line 1318
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->preloadRecentApps()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchRecentPanel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mPackageSettingActivity:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->showMenu()Z

    move-result v0

    return v0
.end method

.method private closeApp()Z
    .locals 18

    .prologue
    .line 1544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v13}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    .line 1546
    .local v2, "_win":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    if-nez v13, :cond_1

    :cond_0
    const/4 v13, 0x0

    .line 1612
    :goto_0
    return v13

    .line 1548
    :cond_1
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v12, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1549
    .local v12, "type":I
    const/4 v13, 0x1

    if-lt v12, v13, :cond_2

    const/16 v13, 0x63

    if-le v12, v13, :cond_4

    :cond_2
    const/16 v13, 0x3e8

    if-lt v12, v13, :cond_3

    const/16 v13, 0x7cf

    if-le v12, v13, :cond_4

    .line 1552
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 1555
    :cond_4
    const/4 v11, 0x0

    .line 1556
    .local v11, "title":Ljava/lang/String;
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget-object v9, v13, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1557
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v13, v13, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1558
    .local v10, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v13

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1561
    .local v1, "OwningUserId":I
    :try_start_0
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1562
    .local v5, "className":Ljava/lang/String;
    const/16 v13, 0x2f

    invoke-virtual {v5, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 1563
    .local v8, "index":I
    if-ltz v8, :cond_5

    .line 1564
    new-instance v6, Landroid/content/ComponentName;

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v6, v9, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    .local v6, "componentName":Landroid/content/ComponentName;
    const/4 v13, 0x0

    invoke-virtual {v10, v6, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1570
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1577
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "index":I
    :cond_5
    :goto_1
    :try_start_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1579
    const/4 v13, 0x0

    invoke-virtual {v10, v9, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1580
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 1586
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    :goto_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1587
    move-object v11, v9

    .line 1590
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    invoke-virtual {v13, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1592
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v14, v14, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v15, 0x1107007c

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;
    invoke-static {v13, v14, v15}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;I)Landroid/widget/Toast;

    .line 1595
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1572
    :catch_0
    move-exception v7

    .line 1573
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "WindowManager"

    const-string v14, "NameNotFoundException"

    invoke-static {v13, v14, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1582
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v7

    .line 1583
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "WindowManager"

    const-string v14, "NameNotFoundException"

    invoke-static {v13, v14, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1600
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    iget-object v14, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1606
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v13, v9, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v14, v14, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v15, 0x1107007b

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;
    invoke-static {v13, v14, v15}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;I)Landroid/widget/Toast;

    .line 1612
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1601
    :catch_2
    move-exception v7

    .line 1602
    .local v7, "e":Landroid/os/RemoteException;
    const-string v13, "WindowManager"

    const-string v14, "RemoteException"

    invoke-static {v13, v14, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private launchApp(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1440
    const/high16 v1, 0x10000000

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1441
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    const/4 v1, 0x1

    .line 1447
    :goto_0
    return v1

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "WindowManager"

    const-string v2, "ActivityNotFoundException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1447
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchAssistAction(Ljava/lang/String;)Z
    .locals 3
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 1615
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v2, "assist"

    invoke-virtual {v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1616
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1618
    const/4 v1, 0x0

    .line 1630
    :goto_0
    return v1

    .line 1620
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1621
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1622
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1625
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1630
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1628
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchAssistActionInternal(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private launchGoogleNow()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1489
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "children_mode_enabled"

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1494
    :goto_0
    return v1

    .line 1492
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1493
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1494
    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchApp(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_0
.end method

.method private launchNfc()Z
    .locals 3

    .prologue
    .line 1498
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1499
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1500
    const-string v1, "StartActivityWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1501
    const-string v1, "event_source"

    const-string v2, "key_volume_down"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1502
    const-string v1, "com.miui.intent.action.DOUBLE_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1503
    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchApp(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private launchQuickSearch()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1451
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "children_mode_enabled"

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1456
    :goto_0
    return v1

    .line 1454
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1455
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.quicksearchbox"

    const-string v2, "com.android.quicksearchbox.SearchActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1456
    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchApp(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_0
.end method

.method private launchRecentPanel()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1468
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v4, "recentapps"

    invoke-virtual {v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1470
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->keyguardOn()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isInLockTaskMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1472
    :cond_0
    const/4 v2, 0x0

    .line 1481
    :goto_0
    return v2

    .line 1474
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1475
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 1476
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z
    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1500(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isInCallScreenShowing()Z
    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1477
    const-string v3, "WindowManager"

    const-string v4, "Ignoring recent apps button; there\'s a ringing incoming call."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1480
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchRecentPanelInternal()V

    goto :goto_0
.end method

.method private launchVoiceAssistant()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1460
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "children_mode_enabled"

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1464
    :goto_0
    return v1

    .line 1463
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1464
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchApp(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_0
.end method

.method private preloadRecentApps()V
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->preloadRecentAppsInternal()V

    .line 1486
    return-void
.end method

.method private showMenu()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 1507
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isInLockTaskMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1538
    :cond_0
    :goto_0
    return v8

    .line 1514
    :cond_1
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    .line 1515
    .local v0, "_win":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1517
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mPackageSettingActivity:Ljava/util/HashMap;

    if-nez v9, :cond_2

    .line 1518
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mPackageSettingActivity:Ljava/util/HashMap;

    .line 1519
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1520
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "miui.intent.action.APP_SETTINGS_SHORTCUT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1522
    .local v7, "settingsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1523
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mPackageSettingActivity:Ljava/util/HashMap;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1527
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v7    # "settingsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget-object v4, v9, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1528
    .local v4, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mPackageSettingActivity:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1529
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1530
    new-instance v3, Landroid/content/Intent;

    const-string v8, "miui.intent.action.APP_SETTINGS_SHORTCUT"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1531
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x20020000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1534
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1535
    invoke-direct {p0, v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchApp(Landroid/content/Intent;)Z

    move-result v8

    goto :goto_0
.end method


# virtual methods
.method public remove()V
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1372
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1376
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z
    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1400(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    const/4 v4, 0x0

    .line 1379
    .local v4, "triggered":Z
    const-string v1, "virtual_key_longpress"

    .line 1381
    .local v1, "effectKey":Ljava/lang/String;
    const-string v7, "screen_key_long_press_volume_down"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1382
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchNfc()Z

    move-result v4

    .line 1385
    :cond_2
    iget-boolean v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mUnderKeyguard:Z

    if-eqz v7, :cond_8

    .line 1386
    const-string v7, "screen_key_long_press_home"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1387
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 1388
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z
    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1500(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v7

    if-nez v7, :cond_7

    :cond_3
    move v2, v6

    .line 1390
    .local v2, "phoneIdle":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    if-nez v7, :cond_4

    if-eqz v2, :cond_4

    .line 1391
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setTorch(Z)Z
    invoke-static {v7, v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$400(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    move-result v4

    .line 1392
    if-eqz v4, :cond_4

    .line 1393
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z
    invoke-static {v7, v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1602(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    .line 1430
    .end local v2    # "phoneIdle":Z
    .end local v3    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 1431
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;
    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1700(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/HapticFeedbackUtil;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    .line 1433
    :cond_5
    if-nez v4, :cond_6

    const-string v5, "screen_key_long_press_home"

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1434
    :cond_6
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V
    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    goto :goto_0

    .restart local v3    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_7
    move v2, v5

    .line 1388
    goto :goto_1

    .line 1399
    .end local v3    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_8
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/provider/MiuiSettings$System;->getScreenKeyLongPressAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1400
    .local v0, "action":Ljava/lang/String;
    const-string v7, "none"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1401
    const-string v7, "voice_assistant"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1402
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchVoiceAssistant()Z

    move-result v4

    .line 1403
    const-string v1, "screen_button_voice_assist"

    goto :goto_2

    .line 1405
    :cond_9
    const-string v7, "recent_panel"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1406
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchRecentPanel()Z

    move-result v4

    .line 1407
    const-string v1, "screen_button_recent_task"

    goto :goto_2

    .line 1409
    :cond_a
    const-string v7, "google_now"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1410
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchAssistAction(Ljava/lang/String;)Z

    move-result v4

    .line 1411
    const-string v1, "screen_button_voice_assist"

    goto :goto_2

    .line 1413
    :cond_b
    const-string v7, "close_app"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1414
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->closeApp()Z

    move-result v4

    goto :goto_2

    .line 1416
    :cond_c
    const-string v7, "quick_search"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1417
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchQuickSearch()Z

    move-result v4

    goto :goto_2

    .line 1419
    :cond_d
    const-string v7, "show_menu"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1420
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->showMenu()Z

    move-result v4

    .line 1421
    if-nez v4, :cond_4

    .line 1422
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;
    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1700(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/HapticFeedbackUtil;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    .line 1423
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z
    invoke-static {v7, v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1802(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    .line 1424
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z
    invoke-static {v7, v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1902(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    goto/16 :goto_2
.end method

.method public send(I)V
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    .line 1348
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1349
    .local v0, "mKeyAction":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mUnderKeyguard:Z

    .line 1350
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isNfcEnable(Z)Z
    invoke-static {v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isScreenOnInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mUnderKeyguard:Z

    if-eqz v1, :cond_1

    .line 1351
    :cond_0
    const-string v1, "screen_key_long_press_volume_down"

    iput-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    .line 1352
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1368
    :goto_0
    return-void

    .line 1355
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isScreenOnInternal()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1356
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    goto :goto_0

    .line 1359
    :cond_3
    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    .line 1361
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v2, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_key_long_press_timeout"

    const/16 v4, 0x1f4

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v5

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mUnderKeyguard:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    :goto_1
    mul-int/2addr v1, v3

    int-to-long v4, v1

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method
