.class public Lcom/miui/whetstone/PowerKeeperPolicy;
.super Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;,
        Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;,
        Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    }
.end annotation


# static fields
.field public static final APP_BG_IDLE_LEVEL_DELAY:I = 0x1

.field public static final APP_BG_IDLE_LEVEL_DISABLE:I = 0x2

.field public static final APP_BG_IDLE_LEVEL_NORMAL:I = 0x0

.field private static final DEBUG:Z

.field public static final DEFAULT_UID:I = -0xa

.field private static final MSG_LE_SCAN_PAROLE_CHANGE:I = 0x3e9

.field private static final MSG_LE_SCAN_UID_RULE_CHANGE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PowerKeeperPolicy"

.field private static final debug:Z

.field private static sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;


# instance fields
.field private final SYSTEM_PID_STAT_FORMAT:[I

.field private mAlarmDataTotal:I

.field private mAlarmRestricts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private mAlarmTypeData:Landroid/util/SparseIntArray;

.field private mAlarmUidData:Landroid/util/SparseIntArray;

.field private mAppBGIdleFeatureStatus:Z

.field private final mAppBGIdleLevel:Landroid/util/SparseIntArray;

.field private final mAppBGIdleStat:Landroid/util/SparseBooleanArray;

.field private mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

.field private final mBleLock:Ljava/lang/Object;

.field private mBlockedUidWakelocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBrdcastUidTypeInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBroadcastDataTotal:I

.field private mBroadcastRestricts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastTypeData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastUidData:Landroid/util/SparseIntArray;

.field private mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BleScanWrapper;",
            "Lcom/miui/whetstone/PowerKeeperPolicy$Client;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mExtraActivityManagerService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mLeScanFeatureEnable:Z

.field private mLeScanHandler:Landroid/os/Handler;

.field private mLocationPolicyListener:Landroid/location/ILocationPolicyListener;

.field private final mLock:Ljava/lang/Object;

.field private mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

.field private final mPolicyLock:Ljava/lang/Object;

.field private mPowerManagerServiceInjector:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mSystemServiceClassLoader:Ljava/lang/ClassLoader;

.field private final mSytemPidStatData:[Ljava/lang/String;

.field private mUidAllow:Landroid/util/SparseBooleanArray;

.field private final mUidBroadcastStat:Landroid/util/SparseBooleanArray;

.field private final mUidPushAlarmProperty:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

.field private mUidScanning:Landroid/util/SparseBooleanArray;

.field private pushAlarmLeaderIntent:Landroid/content/Intent;

.field private pushAlarmLeaderUid:I

.field private sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

.field private setAppToIdle:Ljava/lang/reflect/Method;

.field private setUidWakeLockDisabledState:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 7
    .param p1, "cld"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    iput-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;

    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mSytemPidStatData:[Ljava/lang/String;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->SYSTEM_PID_STAT_FORMAT:[I

    iput-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleFeatureStatus:Z

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleStat:Landroid/util/SparseBooleanArray;

    iput-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    new-instance v1, Lcom/miui/whetstone/PowerKeeperPolicy$3;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/PowerKeeperPolicy$3;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocationPolicyListener:Landroid/location/ILocationPolicyListener;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPolicyLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    iput-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderUid:I

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    :try_start_0
    const-string v1, "com.android.server.am.ExtraActivityManagerService"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mExtraActivityManagerService:Ljava/lang/Class;

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mExtraActivityManagerService:Ljava/lang/Class;

    invoke-static {v1}, Lcom/miui/whetstone/component/ComponentHelper;->init(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string v2, "setAppToIdle"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->setAppToIdle:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    :try_start_2
    const-string v1, "com.android.server.power.PowerManagerServiceInjector"

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPowerManagerServiceInjector:Ljava/lang/Class;

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPowerManagerServiceInjector:Ljava/lang/Class;

    const-string v2, "setUidPartialWakeLockDisabledState"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->setUidWakeLockDisabledState:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iput-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    iput-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mExtraActivityManagerService:Ljava/lang/Class;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "WhetstoneActivityManagerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->setAppToIdle:Ljava/lang/reflect/Method;

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "PowerKeeperPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :array_0
    .array-data 4
        0x120
        0x1020
        0x1020
    .end array-data
.end method

.method static synthetic access$002(Lcom/miui/whetstone/PowerKeeperPolicy;Lcom/miui/whetstone/IPowerKeeperClient;)Lcom/miui/whetstone/IPowerKeeperClient;
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy;
    .param p1, "x1"    # Lcom/miui/whetstone/IPowerKeeperClient;

    .prologue
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy;

    .prologue
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->restoreFakeGpsStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy;

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy;

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy;

    .prologue
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanAllLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy;

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy;->onLeScanMessageHandler(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy;

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/whetstone/PowerKeeperPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy;

    .prologue
    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy;

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/miui/whetstone/PowerKeeperPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy;

    .prologue
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked()Z

    move-result v0

    return v0
.end method

.method private checkLeScanAllowedLocked()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .local v2, "ret":Z
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v3, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkLeScanAllowedLocked: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private checkLeScanParoleLocked()Z
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v0

    .local v0, "ret":Z
    sget-boolean v1, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLeScanParoleLocked: ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private checkLeScanRunningLocked()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .local v2, "ret":Z
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getScanning()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v3, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkLeScanRunningLocked: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private dumpBrdCastManageInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v10, "---------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .local v5, "jsonArray":Lorg/json/JSONArray;
    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    monitor-enter v11

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v3, v10, :cond_1

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .local v7, "jsonForApp":Lorg/json/JSONObject;
    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/miui/whetstone/PowerKeeperPolicy;->getPkgNameByUid(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "pkgName":Ljava/lang/String;
    if-nez v9, :cond_0

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    :cond_0
    const-string v10, "pkgName"

    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .local v0, "broadCastArray":Lorg/json/JSONArray;
    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .local v6, "jsonBroadCast":Lorg/json/JSONObject;
    const-string v10, "Name"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "Cnts"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v0    # "broadCastArray":Lorg/json/JSONArray;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "jsonBroadCast":Lorg/json/JSONObject;
    .end local v7    # "jsonForApp":Lorg/json/JSONObject;
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/json/JSONException;
    :try_start_1
    const-string v10, "PowerKeeperPolicy"

    const-string v12, "dumpBrdCastManageInfo"

    invoke-static {v10, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "broadCastInfo:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "---------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .restart local v0    # "broadCastArray":Lorg/json/JSONArray;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "jsonForApp":Lorg/json/JSONObject;
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v9    # "pkgName":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v10, "broadcast"

    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .end local v0    # "broadCastArray":Lorg/json/JSONArray;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "jsonForApp":Lorg/json/JSONObject;
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "pkgName":Ljava/lang/String;
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10
.end method

.method private getAppPushAlarmLeaderIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;
    .locals 2

    .prologue
    sget-object v1, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .local v0, "cld":Ljava/lang/ClassLoader;
    new-instance v1, Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {v1, v0}, Lcom/miui/whetstone/PowerKeeperPolicy;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    :cond_0
    sget-object v1, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    return-object v1
.end method

.method private getPkgNameByUid(I)Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "packagesForUid":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private hasAlarmRestrict(II)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "ret":Z
    const/4 v1, 0x0

    .local v1, "alarmRestrictTypes":[I
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPolicyLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [I

    move-object v1, v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    aget v4, v1, v2

    if-ne v4, p2, :cond_1

    const/4 v3, 0x1

    .end local v2    # "i":I
    :cond_0
    return v3

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private hasBroadcastRestrict(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .local v2, "ret":Z
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPolicyLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .local v0, "broadcastRestrictTypes":[Ljava/lang/String;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    array-length v4, v0

    if-ne v4, v3, :cond_0

    const-string v4, "a.jack.bc.1"

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v3

    .end local v0    # "broadcastRestrictTypes":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v0    # "broadcastRestrictTypes":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .end local v1    # "i":I
    :cond_1
    move v3, v2

    goto :goto_0

    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private onLeScanMessageHandler(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    .local v3, "ret":Z
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget-boolean v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    if-eqz v7, :cond_0

    iget v4, p1, Landroid/os/Message;->arg1:I

    .local v4, "uid":I
    iget v7, p1, Landroid/os/Message;->arg2:I

    if-lez v7, :cond_3

    .local v5, "uidAllow":Z
    :goto_1
    sget-boolean v6, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "PowerKeeperPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "leScan uid rule change, uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", allow = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked()Z

    move-result v2

    .local v2, "leScanAllowedBefore":Z
    invoke-direct {p0, v4, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->setLeScanAllowedLocked(IZ)V

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked()Z

    move-result v1

    .local v1, "leScanAllowedAfter":Z
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v6}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->startLeScanAllLocked()V

    :cond_2
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v6}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v6}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->stopParoleCheck()V

    goto :goto_0

    .end local v1    # "leScanAllowedAfter":Z
    .end local v2    # "leScanAllowedBefore":Z
    .end local v5    # "uidAllow":Z
    :cond_3
    move v5, v6

    goto :goto_1

    .restart local v5    # "uidAllow":Z
    :cond_4
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked()Z

    move-result v2

    .restart local v2    # "leScanAllowedBefore":Z
    invoke-direct {p0, v4, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->setLeScanAllowedLocked(IZ)V

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked()Z

    move-result v1

    .restart local v1    # "leScanAllowedAfter":Z
    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v6}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanAllLocked()V

    :cond_5
    if-nez v1, :cond_0

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v6}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v6}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V

    goto/16 :goto_0

    .end local v1    # "leScanAllowedAfter":Z
    .end local v2    # "leScanAllowedBefore":Z
    .end local v4    # "uid":I
    .end local v5    # "uidAllow":Z
    :pswitch_1
    iget-boolean v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v6, "PowerKeeperPolicy"

    const-string v7, "le scan is allowed but parole check is still running"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-lez v7, :cond_8

    move v0, v5

    .local v0, "inParole":Z
    :goto_2
    sget-boolean v6, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "PowerKeeperPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "leScan parole change, inParole = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->startLeScanAllLocked()V

    goto/16 :goto_0

    .end local v0    # "inParole":Z
    :cond_8
    move v0, v6

    goto :goto_2

    .restart local v0    # "inParole":Z
    :cond_9
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanAllLocked()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private restoreFakeGpsStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "PowerKeeperPolicy"

    const-string v1, "restore miui gps status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationPolicyManager;->setPhoneStationary(ZLandroid/location/Location;)V

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/location/LocationPolicyManager;->setFakeGpsFeatureOnState(Z)V

    return-void
.end method

.method private setLeScanAllowedLocked(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I
    invoke-static {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->access$400(Lcom/miui/whetstone/PowerKeeperPolicy$Client;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v2, p2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->setAllowed(Z)V

    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "PowerKeeperPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLeScanAllowedLocked: uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", allow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    :cond_1
    return-void
.end method

.method private startLeScanAllLocked()V
    .locals 4

    .prologue
    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "PowerKeeperPolicy"

    const-string v3, "startLeScanAllLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->startLeScan()V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    :cond_1
    return-void
.end method

.method private stopLeScanAllLocked()V
    .locals 4

    .prologue
    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "PowerKeeperPolicy"

    const-string v3, "stopLeScanAllLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->stopLeScan()V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public bleScanInit()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PowerKeeperPolicy"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$2;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/PowerKeeperPolicy$2;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .local v0, "callback":Landroid/os/Handler$Callback;
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanHandler:Landroid/os/Handler;

    const/16 v4, 0x3e9

    invoke-direct {v2, p0, v3, v4}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Handler;I)V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocationPolicyListener:Landroid/location/ILocationPolicyListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationPolicyManager;->registerListener(Landroid/location/ILocationPolicyListener;)V

    .end local v0    # "callback":Landroid/os/Handler$Callback;
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    return-void
.end method

.method public checkPreInstallNeeded(Ljava/lang/String;)Z
    .locals 4
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    invoke-interface {v2, p1}, Lcom/miui/whetstone/IPowerKeeperClient;->checkPreInstallNeeded(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PowerKeeperPolicy"

    const-string v3, "checkPreInstallNeeded"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v9, "\nDump of PowerKeeperPolicy:\n"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_2

    aget-object v0, v1, v4

    .local v0, "arg":Ljava/lang/String;
    const-string v9, "broadCastInfo"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->dumpBrdCastManageInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "arg":Ljava/lang/String;
    :cond_2
    const-string v9, "====mAlarmRestricts:"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .end local v1    # "arr$":[Ljava/lang/String;
    .local v3, "i":I
    :goto_2
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .local v1, "arr$":[I
    array-length v7, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_3

    aget v5, v1, v4

    .local v5, "item":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAlarmName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v5    # "item":I
    :cond_3
    const-string v9, "\n"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1    # "arr$":[I
    :cond_4
    const-string v9, "\n====mBroadcastRestricts:"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_4
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "------["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_5

    aget-object v5, v1, v4

    .local v5, "item":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "----------"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v5    # "item":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v1    # "arr$":[Ljava/lang/String;
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n====Total block alarm "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " times"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_6
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_7

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .local v6, "key":I
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .local v8, "times":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAlarmTypeData["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v6}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAlarmName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .end local v6    # "key":I
    .end local v8    # "times":I
    :cond_7
    const/4 v3, 0x0

    :goto_7
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_8

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .restart local v6    # "key":I
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .restart local v8    # "times":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAlarmUidData["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .end local v6    # "key":I
    .end local v8    # "times":I
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n====Total block broadcast "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " times"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mBroadcastTypeData["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_9
    const/4 v3, 0x0

    :goto_9
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_a

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .restart local v6    # "key":I
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .restart local v8    # "times":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mBroadcastUidData["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .end local v6    # "key":I
    .end local v8    # "times":I
    :cond_a
    const-string v9, "\n====mBlockedWakelocks====\n\t"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_a
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " uid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " tags:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_b
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_b

    :cond_c
    const-string v9, "\n====mUidBroadcastStat====\n\t"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    monitor-enter v10

    const/4 v3, 0x0

    :goto_c
    :try_start_0
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " uid:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " policy = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_d
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n====AppBGIdleFeatureIs===="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppBGIdleFeatureEnable()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppBGIdleFeatureEnable()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->setAppToIdle:Ljava/lang/reflect/Method;

    if-nez v9, :cond_e

    const-string v9, "setAppToIdle = null"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleStat:Landroid/util/SparseBooleanArray;

    monitor-enter v10

    const/4 v3, 0x0

    :goto_d
    :try_start_1
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_10

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    if-eqz v9, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " uid = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " level is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppBGIdleLevel(I)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    :cond_10
    :try_start_3
    monitor-exit v10

    goto/16 :goto_1

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9
.end method

.method public getAlarmName(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "RTC_WAKEUP"

    goto :goto_0

    :pswitch_1
    const-string v0, "RTC"

    goto :goto_0

    :pswitch_2
    const-string v0, "ELAPSED_REALTIME_WAKEUP"

    goto :goto_0

    :pswitch_3
    const-string v0, "ELAPSED_REALTIME"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAlarmPolicies()[Lcom/miui/whetstone/AlarmPolicy;
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v1, v2, [Lcom/miui/whetstone/AlarmPolicy;

    .local v1, "policies":[Lcom/miui/whetstone/AlarmPolicy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    aget-object v3, v1, v0

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    aget-object v4, v1, v0

    iget v4, v4, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v3, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getAppBGIdleFeatureEnable()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleFeatureStatus:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppBGIdleLevel(I)I
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
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

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

.method public getAppBGIdleStatus(I)Z
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
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleStat:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleStat:Landroid/util/SparseBooleanArray;

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

.method public getAppBroadcastControlStat(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

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

.method public getAppPushAlarmFunc(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .local v0, "result":Z
    monitor-exit v2

    return v0

    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppPushAlarmLeaderUid()I
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderUid:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppPushAlarmProperty(I)Landroid/content/Intent;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBroadcastPolicies()[Lcom/miui/whetstone/BroadcastPolicy;
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v1, v2, [Lcom/miui/whetstone/BroadcastPolicy;

    .local v1, "policies":[Lcom/miui/whetstone/BroadcastPolicy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    aget-object v3, v1, v0

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    aget-object v4, v1, v0

    iget v4, v4, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v3, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public getOomAdjByPid(Landroid/content/Context;I)I
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I

    .prologue
    const/4 v7, 0x0

    .local v7, "oom_adj":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "is":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .local v5, "isr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/proc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/oom_adj"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .local v6, "isr":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v7

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_2
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :cond_3
    :goto_2
    if-eqz v7, :cond_9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_3
    return v8

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    const-string v8, "PowerKeeperPolicy"

    const-string v9, "getOomAdjByPid"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_4

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_6
    if-eqz v3, :cond_3

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    :catch_2
    move-exception v8

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_7
    if-eqz v0, :cond_6

    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_6
    :goto_8
    if-eqz v5, :cond_7

    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_7
    :goto_9
    if-eqz v3, :cond_8

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_8
    :goto_a
    throw v8

    :cond_9
    const/16 v8, -0x64

    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v8

    goto :goto_0

    :catch_4
    move-exception v8

    goto :goto_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v8

    goto :goto_5

    :catch_6
    move-exception v8

    goto :goto_6

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v9

    goto :goto_8

    :catch_8
    move-exception v9

    goto :goto_9

    :catch_9
    move-exception v9

    goto :goto_a

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v2

    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public getPackageNameByPid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I

    .prologue
    const/4 v11, 0x0

    .local v11, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "is":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .local v8, "isr":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/proc/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/cmdline"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "is":Ljava/io/FileInputStream;
    .local v7, "is":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .local v9, "isr":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v13, 0x0

    const/16 v14, 0x20

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v11

    :cond_0
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :cond_4
    :goto_2
    if-nez v11, :cond_6

    const-string v13, "activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .local v10, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v12, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v13, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v0, p2

    if-ne v13, v0, :cond_5

    iget-object v11, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v10    # "manager":Landroid/app/ActivityManager;
    .end local v12    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6
    if-eqz v11, :cond_7

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .local v5, "index":I
    if-lez v5, :cond_7

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .end local v5    # "index":I
    :cond_7
    return-object v11

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v13

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    const-string v13, "PowerKeeperPolicy"

    const-string v14, "getPackageNameByPid"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_8

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_8
    :goto_4
    if-eqz v8, :cond_9

    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_9
    :goto_5
    if-eqz v6, :cond_4

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    :catch_2
    move-exception v13

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    :goto_6
    if-eqz v1, :cond_a

    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_a
    :goto_7
    if-eqz v8, :cond_b

    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_b
    :goto_8
    if-eqz v6, :cond_c

    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_c
    :goto_9
    throw v13

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v13

    goto :goto_0

    :catch_4
    move-exception v13

    goto :goto_1

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v7    # "is":Ljava/io/FileInputStream;
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v13

    goto :goto_4

    :catch_6
    move-exception v13

    goto :goto_5

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v14

    goto :goto_7

    :catch_8
    move-exception v14

    goto :goto_8

    :catch_9
    move-exception v14

    goto :goto_9

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v13

    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v13

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catch_a
    move-exception v3

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v3

    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public isAlarmAllowedLocked(III)Z
    .locals 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .local v0, "alarmAllowed":Z
    if-ltz p3, :cond_0

    const/4 v3, 0x3

    if-le p3, v3, :cond_1

    :cond_0
    move v1, v0

    .end local v0    # "alarmAllowed":Z
    .local v1, "alarmAllowed":I
    :goto_0
    return v1

    .end local v1    # "alarmAllowed":I
    .restart local v0    # "alarmAllowed":Z
    :cond_1
    const/16 v3, -0xa

    invoke-direct {p0, v3, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasAlarmRestrict(II)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasAlarmRestrict(II)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x0

    const-string v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAlarmAllowedLocked, uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v0, :cond_4

    iget v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .local v2, "count":I
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, p3, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .end local v2    # "count":I
    :cond_4
    move v1, v0

    .restart local v1    # "alarmAllowed":I
    goto :goto_0
.end method

.method public isBroadcastAllowedLocked(IILjava/lang/String;)Z
    .locals 9
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    .local v1, "broadcastAllowed":Z
    if-nez p3, :cond_0

    move v2, v1

    .end local v1    # "broadcastAllowed":Z
    .local v2, "broadcastAllowed":I
    :goto_0
    return v2

    .end local v2    # "broadcastAllowed":I
    .restart local v1    # "broadcastAllowed":Z
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppBroadcastControlStat(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v1

    .restart local v2    # "broadcastAllowed":I
    goto :goto_0

    .end local v2    # "broadcastAllowed":I
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasBroadcastRestrict(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x0

    const-string v5, "PowerKeeperPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isBroadcastAllowedLocked, uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", return :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v1, :cond_6

    iget v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    invoke-interface {v5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .local v4, "count":Ljava/lang/Integer;
    if-nez v4, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_3
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p2, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .local v0, "brdCastTypeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "brdCastTypeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .restart local v0    # "brdCastTypeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, "cnt":Ljava/lang/Integer;
    if-nez v3, :cond_5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "brdCastTypeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "cnt":Ljava/lang/Integer;
    .end local v4    # "count":Ljava/lang/Integer;
    :cond_6
    move v2, v1

    .restart local v2    # "broadcastAllowed":I
    goto/16 :goto_0
.end method

.method public isLeScanAllowed(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x1

    .local v0, "allow":Z
    :try_start_0
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    const/4 v5, 0x3

    invoke-static {v4, p1, v5}, Landroid/location/LocationPolicyManager;->isAllowedByLocationPolicy(Landroid/content/Context;II)Z

    move-result v0

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    iget-boolean v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    if-nez v4, :cond_1

    monitor-exit v3

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    const-string v4, "PowerKeeperPolicy"

    const-string v5, "isLeScanAllowed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    if-nez v0, :cond_2

    :try_start_2
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanParoleLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLeScanAllowed: uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", allow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isWakelockDisabledByPolicy(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "disabled":Z
    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_1

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .local v5, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "item":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    .end local v5    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v7

    return v0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public notifyAppsPreInstalled()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->clear()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->removeCleared()V

    return-void
.end method

.method public notifyFrozenAppWakeUpByHighPriorityAlarm(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    invoke-interface {v1, p1}, Lcom/miui/whetstone/IPowerKeeperClient;->notifyFrozenAppWakeUpByHighPriorityAlarm(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "notifyFrozenAppWakeUpByBroacastReceive failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyVpnStart(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    invoke-interface {v1, p1}, Lcom/miui/whetstone/IPowerKeeperClient;->notifyVpnStart(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "notifyVpnStart failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyVpnStatusChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .param p1, "status"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/whetstone/IPowerKeeperClient;->notifyVpnStatusChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "notifyVpnStatusChanged failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public offerPowerKeeperIBinder(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "b"    # Landroid/os/IBinder;

    .prologue
    invoke-static {p1}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPowerKeeperClient;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    :try_start_0
    new-instance v1, Lcom/miui/whetstone/PowerKeeperPolicy$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$1;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "offerPowerKeeperIBinder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public preInstallApps()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    invoke-interface {v1}, Lcom/miui/whetstone/IPowerKeeperClient;->preInstallApps()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "preInstallApps"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->notifyAppsPreInstalled()V

    goto :goto_0
.end method

.method public registerForAppsPreInstalled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .end local v0    # "r":Landroid/os/Registrant;
    :cond_0
    return-void
.end method

.method public setAlarmPolicy([Lcom/miui/whetstone/AlarmPolicy;Z)V
    .locals 5
    .param p1, "policies"    # [Lcom/miui/whetstone/AlarmPolicy;
    .param p2, "clear"    # Z

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callerUid":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    if-eqz v2, :cond_3

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    array-length v2, v2

    if-nez v2, :cond_5

    :cond_3
    if-nez p2, :cond_4

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public setAppBGIdleFeatureEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleFeatureStatus:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppBGIdleLevel(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "level"    # I

    .prologue
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppBGIdleStatus(IZ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "isIdle"    # Z

    .prologue
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppBGIdleFeatureEnable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleStat:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->setAppToIdle:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->setAppToIdle:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mExtraActivityManagerService:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v1, "PowerKeeperPolicy"

    const-string v3, "setAppBGIdleStatus"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "PowerKeeperPolicy"

    const-string v3, "setAppBGIdleStatus"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v1, "PowerKeeperPolicy"

    const-string v3, "setAppBGIdleStatus"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PowerKeeperPolicy"

    const-string v3, "setAppBGIdleStatus"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setAppBroadcastControlStat(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppPushAlarmLeader(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderUid:I

    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppPushAlarmProperty(ILandroid/content/Intent;Z)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isEnable"    # Z

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBroadcastPolicy([Lcom/miui/whetstone/BroadcastPolicy;Z)V
    .locals 5
    .param p1, "policies"    # [Lcom/miui/whetstone/BroadcastPolicy;
    .param p2, "clear"    # Z

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callerUid":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    if-nez v2, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    if-eqz v2, :cond_5

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_6

    :cond_5
    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->bleScanInit()V

    :cond_0
    return-void
.end method

.method public setLeScanFeature(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    if-ne v3, p1, :cond_1

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    sget-boolean v3, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "PowerKeeperPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLeScanFeature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V

    :goto_1
    monitor-exit v4

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->stopParoleCheck()V

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .local v0, "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->startLeScan()V

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->unlinkToDeath()V

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->clearResource()V

    goto :goto_2

    .end local v0    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    :cond_4
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setLeScanParam(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v1, "parolePeriodArray"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "parolePeriodArray"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .local v0, "parolePeriodArray":[J
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v1, v0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->setParoleCheckParam([J)V

    .end local v0    # "parolePeriodArray":[J
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startLeScan(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH_ADMIN"

    const-string v10, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "BleScanWrapper"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BleScanWrapper;

    .local v2, "bleScanWrapper":Landroid/bluetooth/BleScanWrapper;
    const-string v8, "IBinder"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .local v1, "b":Landroid/os/IBinder;
    const-string v8, "uid"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .local v7, "uid":I
    sget-boolean v8, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "PowerKeeperPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startLeScan: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-boolean v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    if-nez v8, :cond_2

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x1

    invoke-virtual {v8, v7, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .local v0, "allowed":Z
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x1

    invoke-virtual {v8, v7, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    .local v6, "scanning":Z
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .local v3, "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->unlinkToDeath()V

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->clearResource()V

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked()Z

    move-result v5

    .local v5, "leScanAllowedBefore":Z
    new-instance v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .end local v3    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    invoke-direct {v3, p0, v2, v1, v7}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/bluetooth/BleScanWrapper;Landroid/os/IBinder;I)V

    .restart local v3    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    invoke-virtual {v3, v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->setAllowed(Z)V

    invoke-virtual {v3, v6}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->setScanning(Z)V

    new-instance v8, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;

    invoke-direct {v8, p0, v2}, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/bluetooth/BleScanWrapper;)V

    invoke-virtual {v3, v8}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked()Z

    move-result v4

    .local v4, "leScanAllowedAfter":Z
    if-nez v5, :cond_4

    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v8}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->startLeScanAllLocked()V

    :cond_4
    if-eqz v4, :cond_5

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v8}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v8}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->stopParoleCheck()V

    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public stopLeScan(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    const-string v7, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "BleScanWrapper"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BleScanWrapper;

    .local v1, "bleScanWrapper":Landroid/bluetooth/BleScanWrapper;
    const-string v5, "IBinder"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    sget-boolean v5, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "PowerKeeperPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stopLeScan: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    if-nez v5, :cond_2

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked()Z

    move-result v4

    .local v4, "leScanAllowedBefore":Z
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .local v2, "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->unlinkToDeath()V

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->clearResource()V

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked()Z

    move-result v3

    .local v3, "leScanAllowedAfter":Z
    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v5}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanAllLocked()V

    :cond_4
    if-nez v3, :cond_5

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v5}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v5}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V

    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateWakelockBlockedUid(ILjava/lang/String;Z)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "isBlocked"    # Z

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    const-string v5, "PowerKeeperPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caller["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] updateWakelockBlockedUid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", block="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x3e8

    if-eq v0, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, "changed":Z
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_8

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .local v3, "otags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_4

    if-nez p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .end local v3    # "otags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->setUidWakeLockDisabledState:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPowerManagerServiceInjector:Ljava/lang/Class;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    const-string v5, "PowerKeeperPolicy"

    const-string v6, "updateWakelockBlockedUid"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v3    # "otags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    if-eqz p2, :cond_2

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    const-string v5, "PowerKeeperPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot unblock the wakelock["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] for uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", please unblock all the wakelock with a null tag"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3    # "otags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :cond_8
    if-eqz p3, :cond_2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .local v4, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_9

    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .end local v4    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "PowerKeeperPolicy"

    const-string v6, "updateWakelockBlockedUid"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
