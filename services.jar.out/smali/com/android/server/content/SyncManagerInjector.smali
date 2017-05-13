.class public Lcom/android/server/content/SyncManagerInjector;
.super Lcom/android/server/content/SyncManagerAccountChangePolicy;
.source "SyncManagerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_FOR_NET_RECHABLE_DISCONNECT:Ljava/lang/String; = "android.os.action.networkDisconnectFromInternet"

.field private static final ACTION_FOR_NET_RECHABLE_RECONNECT:Ljava/lang/String; = "android.os.action.networkReconnectToInternet"

.field public static final REASON_NET_REACHABLE_CHANGED:I = -0x9

.field public static final SYNC_EXTRAS_REASON:Ljava/lang/String; = "reason"

.field public static final SYNC_EXTRAS_SOURCE:Ljava/lang/String; = "source"

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final XIAOMI_ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"

.field private static final XIAOMI_MAX_PARALLEL_SYNC_NUM:I = 0x1

.field private static volatile mNetReachableStat:Z

.field private static numSync:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/content/SyncManagerInjector;->mNetReachableStat:Z

    .line 93
    const/4 v0, 0x0

    sput v0, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/server/content/SyncManagerAccountChangePolicy;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 14
    invoke-static {p0}, Lcom/android/server/content/SyncManagerInjector;->setNetReachableStat(Z)V

    return-void
.end method

.method public static canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public static checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z
    .locals 3
    .param p0, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v1, 0x3

    .line 122
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-nez v0, :cond_2

    .line 123
    :cond_0
    const-string v0, "SyncManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "SyncManager"

    const-string v1, "injector: checkSyncOperationAccount: false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    .line 128
    :cond_2
    const-string v0, "SyncManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injector: checkSyncOperationAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_3
    const-string v0, "com.xiaomi"

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static clearSyncNum()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "SyncManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "SyncManager"

    const-string v1, "injector: clearSyncNum"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    .line 100
    return-void
.end method

.method public static countSyncOperation(Lcom/android/server/content/SyncOperation;)V
    .locals 3
    .param p0, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget v0, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    .line 105
    const-string v0, "SyncManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injector: countSyncOperation\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    return-void
.end method

.method public static expandSyncOperationExtras(Lcom/android/server/content/SyncOperation;)V
    .locals 3
    .param p0, "operation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "reason"

    iget v2, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "source"

    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static initNetReachableControl(Landroid/content/Context;Lcom/android/server/content/SyncManager;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 82
    new-instance v0, Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;

    invoke-direct {v0, p1}, Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 84
    .local v0, "netReachableIntentReceiver":Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;
    invoke-static {p0, v0}, Lcom/android/server/content/SyncManagerInjector;->registerNetReachableIntentReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 85
    return-void
.end method

.method public static isNetReachable()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/server/content/SyncManagerInjector;->mNetReachableStat:Z

    return v0
.end method

.method public static isRoomAvailable(Lcom/android/server/content/SyncOperation;)Z
    .locals 4
    .param p0, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v0, 0x1

    .line 112
    invoke-static {p0}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const-string v1, "SyncManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injector: isRoomAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    sget v1, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    if-ge v1, v0, :cond_2

    .line 118
    :cond_1
    :goto_0
    return v0

    .line 116
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSyncForbidden(Landroid/content/Context;Lcom/android/server/content/SyncOperation;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 135
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 136
    :cond_0
    const-string v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    const-string v3, "SyncManager"

    const-string v4, "injector: isSyncForbidden: false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    :goto_0
    return v2

    .line 142
    :cond_2
    invoke-static {p1}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 143
    const-string v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    const-string v3, "SyncManager"

    const-string v4, "injector: isSyncForbidden: false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_3
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 150
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_4

    const-string v3, "initialize"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const-string v3, "force"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "ignore_settings"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 153
    :cond_5
    const-string v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    const-string v3, "SyncManager"

    const-string v4, "injector: isSyncForbidden: false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_6
    iget v3, p1, Lcom/android/server/content/SyncOperation;->reason:I

    const/4 v4, -0x6

    if-ne v3, v4, :cond_7

    .line 160
    const-string v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    const-string v3, "SyncManager"

    const-string v4, "injector: isSyncForbidden: false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_7
    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 167
    .local v0, "authority":Ljava/lang/String;
    const-string v3, "com.miui.gallery.cloud.provider"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 168
    const-string v3, "com.miui.gallery"

    invoke-static {p0, v3}, Lcom/android/server/content/SyncManagerInjector;->isPackageNameForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 169
    const-string v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    const-string v3, "SyncManager"

    const-string v4, "injector: isSyncForbidden: false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_8
    invoke-static {v0}, Lcom/android/server/content/SyncManagerInjector;->getSyncForbiddenStrategy(Ljava/lang/String;)Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;

    move-result-object v2

    invoke-interface {v2, p0, v0}, Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;->isSyncForbidden(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method private static registerNetReachableIntentReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.networkReconnectToInternet"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.networkDisconnectFromInternet"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method private static setNetReachableStat(Z)V
    .locals 0
    .param p0, "netReachableStat"    # Z

    .prologue
    .line 72
    sput-boolean p0, Lcom/android/server/content/SyncManagerInjector;->mNetReachableStat:Z

    .line 73
    return-void
.end method
