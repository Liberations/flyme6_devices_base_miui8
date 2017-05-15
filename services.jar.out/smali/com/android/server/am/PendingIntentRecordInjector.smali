.class public Lcom/android/server/am/PendingIntentRecordInjector;
.super Ljava/lang/Object;
.source "PendingIntentRecordInjector.java"


# static fields
.field private static final MSG_CLEAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PendingIntentRecordInjector"

.field private static sIgnorePackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLock:Ljava/lang/Object;

.field private static sMessageHanlder:Landroid/os/Handler;

.field private static sPendingPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sPendingPackages:Landroid/util/ArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/am/PendingIntentRecordInjector$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/PendingIntentRecordInjector$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sMessageHanlder:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    const-string v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/util/ArraySet;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sPendingPackages:Landroid/util/ArraySet;

    return-object v0
.end method

.method public static containsPendingIntent(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    sget-object v1, Lcom/android/server/am/PendingIntentRecordInjector;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sPendingPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static preSendInner(Lcom/android/server/am/PendingIntentRecord$Key;Landroid/content/Intent;)V
    .locals 18
    .param p0, "key"    # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .local v2, "callingPid":I
    invoke-static {v2}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "pkg":Ljava/lang/String;
    sget-object v15, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    invoke-virtual {v15, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v13

    .local v13, "targetPkg":Ljava/lang/String;
    if-nez v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .local v3, "component":Landroid/content/ComponentName;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_2
    if-nez v13, :cond_3

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .local v8, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    .local v14, "userId":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v15, 0x0

    const/16 v16, 0x400

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v8, v0, v15, v1, v14}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .local v12, "resolveIntent":Landroid/content/pm/ResolveInfo;
    if-eqz v12, :cond_3

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v15, :cond_3

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .end local v8    # "pm":Landroid/content/pm/IPackageManager;
    .end local v12    # "resolveIntent":Landroid/content/pm/ResolveInfo;
    .end local v14    # "userId":I
    :cond_3
    :goto_1
    if-eqz v13, :cond_0

    sget-object v16, Lcom/android/server/am/PendingIntentRecordInjector;->sLock:Ljava/lang/Object;

    monitor-enter v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v15, Lcom/android/server/am/PendingIntentRecordInjector;->sPendingPackages:Landroid/util/ArraySet;

    invoke-virtual {v15, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v15, Lcom/android/server/am/PendingIntentRecordInjector;->sMessageHanlder:Landroid/os/Handler;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v15, Lcom/android/server/am/PendingIntentRecordInjector;->sMessageHanlder:Landroid/os/Handler;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .local v5, "msg":Landroid/os/Message;
    sget-object v15, Lcom/android/server/am/PendingIntentRecordInjector;->sMessageHanlder:Landroid/os/Handler;

    const-wide/16 v16, 0xbb8

    move-wide/from16 v0, v16

    invoke-virtual {v15, v5, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v2    # "callingPid":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v13    # "targetPkg":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v15, "PendingIntentRecordInjector"

    const-string v16, "preSendInner error"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "callingPid":I
    .restart local v7    # "pkg":Ljava/lang/String;
    :pswitch_2
    const/4 v15, 0x2

    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .restart local v8    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v13    # "targetPkg":Ljava/lang/String;
    .restart local v14    # "userId":I
    :cond_4
    const/4 v15, 0x0

    const/16 v16, 0x400

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v8, v0, v15, v1, v14}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v9

    .local v9, "qeury":Ljava/util/List;
    if-eqz v9, :cond_0

    const/4 v10, 0x0

    .local v10, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x17

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    move-object v0, v9

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    move-object v6, v0

    .local v6, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    .end local v6    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    :goto_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const/4 v15, 0x0

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v15, :cond_3

    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .end local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    move-object v10, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .end local v8    # "pm":Landroid/content/pm/IPackageManager;
    .end local v9    # "qeury":Ljava/util/List;
    .end local v10    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "userId":I
    :catchall_0
    move-exception v15

    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
