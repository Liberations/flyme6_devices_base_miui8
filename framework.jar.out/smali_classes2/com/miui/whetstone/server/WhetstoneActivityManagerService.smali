.class public Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.super Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;
    }
.end annotation


# static fields
.field public static final APP_SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field public static final D:Z

.field private static final FROZEN_APP:I = 0x1

.field private static final MSG_SYSTEM_UPDATE_CURRENT_PROCESS_PSS:I = 0x3

.field private static final MSG_USER_CLEAR_DEAD_NATIVE_PROCESS:I = 0x2

.field private static final MSG_USER_REMOVE_PROMOTE_LEVEL:I = 0x1

.field private static final PER_USER_RANGE:I = 0x186a0

.field public static final PROMOTE_LEVEL_HIGH:I = 0x2

.field public static final PROMOTE_LEVEL_MIDDLE:I = 0x1

.field public static final PROMOTE_LEVEL_NORMAL:I = 0x0

.field public static final SERVICE:Ljava/lang/String; = "whetstone.activity"

.field private static final TAG:Ljava/lang/String; = "whetstone.activity"

.field private static mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# instance fields
.field private PowerManagerServiceInjector:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;

.field private mAM:Landroid/os/IBinder;

.field private mComponentManagerNative:Lcom/miui/whetstone/component/ComponentManagerNative;

.field private mContext:Landroid/content/Context;

.field private mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mExtraActivityManagerService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

.field private mPidsSelfLocked:Landroid/util/SparseArray;

.field private mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoveTask:Ljava/lang/reflect/Method;

.field private mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

.field private mScheduleDestroyActivities:Ljava/lang/reflect/Method;

.field private mSystemServiceClassLoader:Ljava/lang/ClassLoader;

.field private final mUidFrozenState:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "whetstone.activity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;-><init>()V

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    new-instance v5, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;

    invoke-direct {v5, p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    :try_start_0
    const-string v5, "android.os.ServiceManager"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v3

    .local v3, "getService":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "activity"

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    const/4 v2, 0x0

    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_2
    const-string v5, "com.android.server.am.ActivityManagerService"

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mPidsSelfLocked"

    invoke-static {v5, v6}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->findRemoveTaskMethod()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6

    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_3
    const-string v5, "com.android.server.am.ExtraActivityManagerService"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    invoke-static {v5}, Lcom/miui/whetstone/component/ComponentHelper;->init(Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string v6, "scheduleDestroyActivities"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mScheduleDestroyActivities not found in AcivityManagerService"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/miui/whetstone/PowerKeeperPolicy;->setContext(Landroid/content/Context;)V

    new-instance v5, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    :try_start_4
    const-class v5, Landroid/os/PowerManager;

    const-string v6, "ACTION_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "idleModeChange":Ljava/lang/String;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "deviceIdleFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-virtual {p1, v5, v0, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .end local v0    # "deviceIdleFilter":Landroid/content/IntentFilter;
    .end local v4    # "idleModeChange":Ljava/lang/String;
    :goto_2
    new-instance v5, Lcom/miui/whetstone/component/ComponentManagerNative;

    invoke-direct {v5}, Lcom/miui/whetstone/component/ComponentManagerNative;-><init>()V

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mComponentManagerNative:Lcom/miui/whetstone/component/ComponentManagerNative;

    sput-object p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    return-void

    .restart local v3    # "getService":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v5, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Error: can not found AcivityManagerService"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_6

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "whetstone.activity"

    const-string v6, "WhetstoneActivityManagerService"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "getService":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_6
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Error: mPidsSelfLocked not found in AcivityManagerService"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "whetstone.activity"

    const-string v6, "WhetstoneActivityManagerService"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "whetstone.activity"

    const-string v6, "WhetstoneActivityManagerService"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v5, "whetstone.activity"

    const-string v6, "WhetstoneActivityManagerService"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_6
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "whetstone.activity"

    const-string v6, "WhetstoneActivityManagerService"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :try_start_7
    const-string v5, "com.android.server.power.PowerManagerServiceInjector"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    const-string v6, "getPartialWakeLockHoldByUid"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    :catch_7
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .param p1, "x1"    # Landroid/os/PowerManager;

    .prologue
    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->releasePromoteLevelWithUserId(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .prologue
    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->handleClearDeadAppFromNative()V

    return-void
.end method

.method private checkCallInterfacePermission()Z
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    const v1, 0x186a0

    rem-int/2addr v0, v1

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private findRemoveTaskMethod()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-gt v1, v2, :cond_0

    :try_start_0
    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "removeTask"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :goto_1
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "whetstone.activity"

    const-string v2, "WhetstoneActivityManagerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v1, v2, :cond_1

    :try_start_1
    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "removeTask"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    const-string v1, "com.android.server.am.ActivityManagerService"

    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "removeTaskByIdLocked"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "whetstone.activity"

    const-string v2, "WhetstoneActivityManagerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "whetstone.activity"

    const-string v2, "WhetstoneActivityManagerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "whetstone.activity"

    const-string v2, "WhetstoneActivityManagerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_2
    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "removeTask"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    const-string v1, "com.android.server.am.ActivityManagerService"

    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "removeTaskByIdLocked"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6

    goto/16 :goto_0

    :catch_4
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "whetstone.activity"

    const-string v2, "WhetstoneActivityManagerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "whetstone.activity"

    const-string v2, "WhetstoneActivityManagerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_6
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "whetstone.activity"

    const-string v2, "WhetstoneActivityManagerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    const-string v1, "whetstone.activity"

    const-string v2, "could not find removeTask"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    const-string v1, "whetstone.activity"

    const-string v2, "could not find removeTaskByIdLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private getProcessPidByPackageNameLocked(Ljava/lang/String;I)I
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v6

    .local v6, "n":I
    :try_start_0
    const-string v12, "com.android.server.am.ProcessRecord"

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v12, v13, v14}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v6, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    .local v9, "processRecord":Ljava/lang/Object;
    if-eqz v9, :cond_1

    const-string v12, "processName"

    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "name":Ljava/lang/String;
    const-string v12, "userId"

    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .local v10, "uId":Ljava/lang/Integer;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v0, p2

    if-ne v12, v0, :cond_1

    const-string v12, "pid"

    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .local v8, "pid":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "i":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "pid":Ljava/lang/Integer;
    .end local v9    # "processRecord":Ljava/lang/Object;
    .end local v10    # "uId":Ljava/lang/Integer;
    :cond_0
    :goto_1
    return v11

    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "i":I
    .restart local v9    # "processRecord":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v9    # "processRecord":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    .local v2, "count":I
    const/4 v11, -0x1

    .local v11, "value":I
    add-int/lit8 v4, v6, -0x1

    :goto_2
    if-ltz v4, :cond_4

    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "processRecord":Ljava/lang/Object;
    if-eqz v9, :cond_3

    const-string v12, "info"

    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_3

    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v12, :cond_3

    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    add-int/lit8 v2, v2, 0x1

    const-string v12, "pid"

    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .restart local v8    # "pid":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "pid":Ljava/lang/Integer;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .end local v9    # "processRecord":Ljava/lang/Object;
    :cond_4
    const/4 v12, 0x1

    if-eq v2, v12, :cond_0

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v11    # "value":I
    :goto_3
    const/4 v11, -0x1

    goto :goto_1

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v12, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .locals 1

    .prologue
    sget-object v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    return-object v0
.end method

.method private handleClearDeadAppFromNative()V
    .locals 5

    .prologue
    :try_start_0
    const-string v2, "com.android.server.am.ActivityManagerService"

    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "clearDeadAppFromNative"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "clearMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "clearMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "whetstone.activity"

    const-string v3, "handleClearDeadAppFromNative"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private releasePromoteLevelWithUserId(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isSystemProtectImportantApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getProcessPidByPackageNameLocked(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .local v3, "pid":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    :try_start_1
    monitor-exit v7

    goto :goto_0

    .end local v3    # "pid":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .restart local v3    # "pid":I
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .local v4, "processRecord":Ljava/lang/Object;
    if-eqz v4, :cond_3

    const-string v6, "com.android.server.am.ProcessRecord"

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v6, v8, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "com.android.server.am.ProcessList"

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v6, v8, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "UNKNOWN_ADJ"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v6, v8}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .local v5, "value3":Ljava/lang/Integer;
    const-string v6, "maxAdj"

    invoke-static {v0, v6}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pid":I
    .end local v4    # "processRecord":Ljava/lang/Object;
    .end local v5    # "value3":Ljava/lang/Integer;
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v7

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private removeTaskByIdInternal(IZZ)Z
    .locals 8
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-gt v2, v4, :cond_0

    invoke-direct {p0, p1, p2, v7}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->removeTaskByIdL(IZZ)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    check-cast v2, Landroid/app/IActivityManager;

    const-string v4, "android.permission.REMOVE_TASKS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-interface {v2, v4, v5, v6}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: removeTaskById from pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " requires "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "android.permission.REMOVE_TASKS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "msg":Ljava/lang/String;
    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, p1, p2, v7}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->removeTaskByIdLocked(IZZ)Z

    move-result v2

    goto :goto_0
.end method

.method private removeTaskByIdL(IZZ)Z
    .locals 9
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, "res":Z
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    if-nez v5, :cond_0

    const-string v3, "whetstone.activity"

    const-string v5, "could not find removeTaskById L"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    :goto_0
    return v3

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0
.end method

.method private removeTaskByIdLocked(IZZ)Z
    .locals 11
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, "res":Z
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    const-string v4, "whetstone.activity"

    const-string v6, "could not find removeTaskById M"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "orig":J
    :try_start_0
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-gt v4, v7, :cond_1

    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v5

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private updateCurrentProcessPss(IJ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "pss"    # J

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    long-to-int v1, p2

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-virtual {v1, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public addAppToServiceControlWhitelist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listPkg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/whetstone/process/WtServiceControlEntry;->addAppToServiceControlWhitelist(Ljava/util/List;)V

    return-void
.end method

.method public bindWhetstoneService(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "client"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/whetstone/IWhetstoneClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstoneClient;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->init(Landroid/content/Context;Lcom/miui/whetstone/IWhetstoneClient;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    return-void
.end method

.method public checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "threshold"    # J

    .prologue
    invoke-static {p1, p2, p3, p4}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V

    const-wide/16 v0, 0x400

    div-long v0, p3, v0

    invoke-direct {p0, p2, v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->updateCurrentProcessPss(IJ)V

    return-void
.end method

.method public checkIfPackageIsLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkIfPackageIsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {p1, p2}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkIfPackageIsLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public varargs checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "callerType"    # I
    .param p4, "userId"    # I
    .param p5, "componentName"    # Ljava/lang/String;
    .param p6, "processName"    # Ljava/lang/String;
    .param p7, "additionalArgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v14, 0x1

    .local v14, "res":I
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->getComponentManager()Lcom/miui/whetstone/IComponentManager;

    move-result-object v1

    .local v1, "componentManager":Lcom/miui/whetstone/IComponentManager;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "additional":Landroid/os/Bundle;
    move-object/from16 v0, p7

    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    aget-object v13, p7, v2

    check-cast v13, Landroid/content/Intent;

    .local v13, "intent":Landroid/content/Intent;
    const-string v2, "intent"

    invoke-virtual {v10, v2, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v10}, Lcom/miui/whetstone/IComponentManager;->handleComponentStartV1(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    :cond_1
    :goto_1
    return v14

    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/ClassCastException;
    const-string v2, "WhetstonePackageState"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v11    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    const-string v2, "WhetstonePackageState"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v9}, Lcom/miui/whetstone/IComponentManager;->handleComponentStart(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v14

    goto :goto_1

    :catch_2
    move-exception v12

    .local v12, "e1":Landroid/os/RemoteException;
    const-string v2, "WhetstonePackageState"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public clearDeadAppFromNative()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public distoryActivity(I)Z
    .locals 7
    .param p1, "pid"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "whetstone"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "whetstone.activity"

    const-string v3, "distoryActivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "whetstone.activity"

    const-string v3, "distoryActivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "whetstone.activity"

    const-string v3, "distoryActivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump whetstone.activity service from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    .local v0, "p":Lcom/miui/whetstone/PowerKeeperPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAndroidCachedEmptyProcessMemory()J
    .locals 2

    .prologue
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getEmptyProcTotalMemoryInfo()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundAPPS()[Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentManagerNative()Lcom/miui/whetstone/IComponentManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mComponentManagerNative:Lcom/miui/whetstone/component/ComponentManagerNative;

    return-object v0
.end method

.method public getPackageNamebyPid(I)Ljava/lang/String;
    .locals 9
    .param p1, "pid"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .local v4, "processRecord":Ljava/lang/Object;
    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v5, "com.android.server.am.ProcessRecord"

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v7, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "info"

    invoke-static {v0, v5}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v6

    return-object v3

    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "whetstone.activity"

    const-string v7, "getPackageNamebyPid"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "processRecord":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "processRecord":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    const-string v5, "whetstone.activity"

    const-string v7, "getPackageNamebyPid"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v5, "whetstone.activity"

    const-string v7, "getPackageNamebyPid"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "whetstone.activity"

    const-string v7, "getPackageNamebyPid"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getPartialWakeLockHoldByUid(I)I
    .locals 8
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":I
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    const-string v3, "whetstone.activity"

    const-string v4, "whetstone.activity getPartialWakeLockHoldByUid == null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, "wakeLockCnt":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    const-string v3, "whetstone.activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "whetstone.activity ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v2    # "wakeLockCnt":Ljava/lang/Integer;
    :goto_1
    move v3, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "whetstone.activity"

    const-string v4, "getPartialWakeLockHoldByUid"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "whetstone.activity"

    const-string v4, "getPartialWakeLockHoldByUid"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "whetstone.activity"

    const-string v4, "getPartialWakeLockHoldByUid"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public bridge synthetic getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    return-object v0
.end method

.method public getProcessReceiverState(I)Z
    .locals 10
    .param p1, "pid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, -0x1

    .local v0, "ProcStat":I
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string v6, "getProcStateByPid"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-static {v3, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "getProcStateByPid":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .end local v2    # "getProcStateByPid":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    const/16 v3, 0xb

    if-ne v0, v3, :cond_1

    move v3, v4

    :goto_1
    return v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    move v3, v5

    goto :goto_1
.end method

.method public getSystemPid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public getUidFrozenState(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAlarmAllowedLocked(III)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # I

    .prologue
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAlarmAllowedLocked() for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->isAlarmAllowedLocked(III)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_1

    const-string v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm restrict for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBroadcastAllowedLocked(IILjava/lang/String;)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBroadcastAllowedLocked() for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->isBroadcastAllowedLocked(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_1

    const-string v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast restrict for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProcessExecutingServices(I)Z
    .locals 10
    .param p1, "pid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, "executingServicesN":I
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string v6, "getExecutingServicesSize"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-static {v3, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "getExecutingServicesSize":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .end local v2    # "getExecutingServicesSize":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    move v3, v4

    :goto_1
    return v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    move v3, v5

    goto :goto_1
.end method

.method public promoteApplicationLevel(II)V
    .locals 19
    .param p1, "level"    # I
    .param p2, "timeoutMills"    # I

    .prologue
    const/4 v11, 0x0

    .local v11, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .local v2, "callPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .local v3, "callUid":I
    const/4 v13, -0x1

    .local v13, "tempLevel":I
    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v15, -0x1

    if-ne v13, v15, :cond_1

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    const/16 v15, 0x20

    invoke-static {v15, v2, v3}, Lcom/miui/whetstone/WhetstoneManager;->checkPermissionLevel(III)I

    move-result v13

    goto :goto_0

    :pswitch_1
    const/16 v15, 0x40

    invoke-static {v15, v2, v3}, Lcom/miui/whetstone/WhetstoneManager;->checkPermissionLevel(III)I

    move-result v13

    goto :goto_0

    :pswitch_2
    const/16 v15, 0x80

    invoke-static {v15, v2, v3}, Lcom/miui/whetstone/WhetstoneManager;->checkPermissionLevel(III)I

    move-result v13

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    monitor-enter v16

    if-gtz v2, :cond_2

    :try_start_0
    monitor-exit v16

    goto :goto_1

    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    .local v12, "processRecord":Ljava/lang/Object;
    if-eqz v12, :cond_6

    const-string v15, "com.android.server.am.ProcessRecord"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v15, "com.android.server.am.ProcessList"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .local v5, "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v15, "maxAdj"

    invoke-static {v4, v15}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .local v14, "value":Ljava/lang/Integer;
    const-string v15, "HEAVY_WEIGHT_APP_ADJ"

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    invoke-static {v5, v15, v0}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .local v10, "normal_adj":Ljava/lang/Integer;
    const-string v15, "PERCEPTIBLE_APP_ADJ"

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    invoke-static {v5, v15, v0}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .local v8, "middle_adj":Ljava/lang/Integer;
    const-string v15, "VISIBLE_APP_ADJ"

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    invoke-static {v5, v15, v0}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .local v7, "high_adj":Ljava/lang/Integer;
    if-nez v13, :cond_3

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    if-le v15, v0, :cond_3

    const-string v15, "maxAdj"

    invoke-static {v4, v15}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    invoke-virtual {v15, v12, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "high_adj":Ljava/lang/Integer;
    .end local v8    # "middle_adj":Ljava/lang/Integer;
    .end local v10    # "normal_adj":Ljava/lang/Integer;
    .end local v12    # "processRecord":Ljava/lang/Object;
    .end local v14    # "value":Ljava/lang/Integer;
    :goto_2
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez p2, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .local v9, "msg":Landroid/os/Message;
    iput-object v11, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v9, Landroid/os/Message;->arg1:I

    iput v3, v9, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v9, v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .end local v9    # "msg":Landroid/os/Message;
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "high_adj":Ljava/lang/Integer;
    .restart local v8    # "middle_adj":Ljava/lang/Integer;
    .restart local v10    # "normal_adj":Ljava/lang/Integer;
    .restart local v12    # "processRecord":Ljava/lang/Object;
    .restart local v14    # "value":Ljava/lang/Integer;
    :cond_3
    const/4 v15, 0x1

    if-ne v13, v15, :cond_4

    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    if-le v15, v0, :cond_4

    const-string v15, "maxAdj"

    invoke-static {v4, v15}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    invoke-virtual {v15, v12, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "high_adj":Ljava/lang/Integer;
    .end local v8    # "middle_adj":Ljava/lang/Integer;
    .end local v10    # "normal_adj":Ljava/lang/Integer;
    .end local v12    # "processRecord":Ljava/lang/Object;
    .end local v14    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v15, "whetstone.activity"

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "high_adj":Ljava/lang/Integer;
    .restart local v8    # "middle_adj":Ljava/lang/Integer;
    .restart local v10    # "normal_adj":Ljava/lang/Integer;
    .restart local v12    # "processRecord":Ljava/lang/Object;
    .restart local v14    # "value":Ljava/lang/Integer;
    :cond_4
    const/4 v15, 0x2

    if-ne v13, v15, :cond_5

    :try_start_5
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    if-le v15, v0, :cond_5

    const-string v15, "maxAdj"

    invoke-static {v4, v15}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    invoke-virtual {v15, v12, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_5
    :try_start_6
    monitor-exit v16

    goto/16 :goto_1

    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "high_adj":Ljava/lang/Integer;
    .end local v8    # "middle_adj":Ljava/lang/Integer;
    .end local v10    # "normal_adj":Ljava/lang/Integer;
    .end local v14    # "value":Ljava/lang/Integer;
    :cond_6
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public putUidFrozenState(II)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    if-ne v1, p2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseApplicationPromoteLevel()V
    .locals 14

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, "callPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "callUid":I
    const/16 v10, 0x10

    invoke-static {v10, v0, v1}, Lcom/miui/whetstone/WhetstoneManager;->checkIfHaveTheCallFunctionPermission(III)Z

    move-result v10

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v11, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11

    if-gtz v0, :cond_1

    :try_start_0
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .local v6, "processRecord":Ljava/lang/Object;
    if-eqz v6, :cond_4

    const-string v10, "com.android.server.am.ProcessRecord"

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v10, v12, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "com.android.server.am.ProcessList"

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v10, v12, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .local v3, "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "processName"

    invoke-static {v2, v10}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "processName":Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isSystemProtectImportantApp(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_2

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_3
    const-string v10, "maxAdj"

    invoke-static {v2, v10}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .local v7, "value":Ljava/lang/Integer;
    const-string v10, "HEAVY_WEIGHT_APP_ADJ"

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v10, v12}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .local v8, "value2":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-gt v10, v12, :cond_3

    const-string v10, "UNKNOWN_ADJ"

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v10, v12}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .local v9, "value3":Ljava/lang/Integer;
    const-string v10, "maxAdj"

    invoke-static {v2, v10}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v6, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v9    # "value3":Ljava/lang/Integer;
    :cond_3
    const/4 v10, 0x0

    invoke-static {v5, v10}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "processName":Ljava/lang/String;
    .end local v6    # "processRecord":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/Integer;
    .end local v8    # "value2":Ljava/lang/Integer;
    :cond_4
    :goto_1
    :try_start_4
    monitor-exit v11

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/miui/whetstone/process/WtServiceControlEntry;->removeAppFromServiceControlWhitelist(Ljava/lang/String;)V

    return-void
.end method

.method public removeTaskById(IZ)Z
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->removeTaskByIdInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method public scheduleStopService(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleTrimMemory(II)Z
    .locals 9
    .param p1, "pid"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string v5, "scheduleTrimMemory"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "scheduleTrimMemory":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v1    # "scheduleTrimMemory":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move v2, v3

    goto :goto_0

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setPerformanceComponents([Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # [Landroid/content/ComponentName;

    .prologue
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->setComponment([Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public updateApplicationByLockedState(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "locked"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V

    return-void
.end method

.method public updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "locked"    # Z
    .param p3, "userId"    # I

    .prologue
    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkCallInterfacePermission()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isSystemProtectImportantApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {p1, p2, p3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getProcessPidByPackageNameLocked(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .local v3, "pid":I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_3

    :try_start_1
    monitor-exit v9

    goto :goto_0

    .end local v3    # "pid":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .restart local v3    # "pid":I
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .local v4, "processRecord":Ljava/lang/Object;
    if-eqz v4, :cond_4

    const-string v8, "com.android.server.am.ProcessRecord"

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v8, v10, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "com.android.server.am.ProcessList"

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v8, v10, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "maxAdj"

    invoke-static {v0, v8}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .local v5, "value":Ljava/lang/Integer;
    const-string v8, "HEAVY_WEIGHT_APP_ADJ"

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v8, v10}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .local v6, "value2":Ljava/lang/Integer;
    if-eqz p2, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v8, v10, :cond_4

    const-string v8, "maxAdj"

    invoke-static {v0, v8}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "value":Ljava/lang/Integer;
    .end local v6    # "value2":Ljava/lang/Integer;
    :cond_4
    :goto_1
    invoke-static {p1, p2, p3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;ZI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "pid":I
    .end local v4    # "processRecord":Ljava/lang/Object;
    :goto_2
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "pid":I
    .restart local v4    # "processRecord":Ljava/lang/Object;
    .restart local v5    # "value":Ljava/lang/Integer;
    .restart local v6    # "value2":Ljava/lang/Integer;
    :cond_5
    :try_start_4
    const-string v8, "UNKNOWN_ADJ"

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v8, v10}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .local v7, "value3":Ljava/lang/Integer;
    const-string v8, "maxAdj"

    invoke-static {v0, v8}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pid":I
    .end local v4    # "processRecord":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Integer;
    .end local v6    # "value2":Ljava/lang/Integer;
    .end local v7    # "value3":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v8, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateApplicationsMemoryThreshold(Ljava/util/List;)V

    return-void
.end method

.method public updateFrameworkCommonConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    invoke-virtual {v0, p1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->updateFrameworkCommonConfig(Ljava/lang/String;)V

    return-void
.end method

.method public updateUserLockedAppList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkCallInterfacePermission()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateUserLockedAppList(Ljava/util/List;)V

    goto :goto_0
.end method

.method public updateUserLockedAppListWithUserId(Ljava/util/List;I)V
    .locals 0
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateUserLockedAppList(Ljava/util/List;I)V

    return-void
.end method
