.class Lcom/miui/server/SecurityManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mAccessControlLockConvenientUri:Landroid/net/Uri;

.field private final mAccessControlLockEnabledUri:Landroid/net/Uri;

.field private final mAccessControlLockModedUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;


# direct methods
.method public constructor <init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 4
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v1, "access_control_lock_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockEnabledUri:Landroid/net/Uri;

    const-string v1, "access_control_lock_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockModedUri:Landroid/net/Uri;

    const-string v1, "access_control_lock_convenient"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockConvenientUri:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockEnabledUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockModedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockConvenientUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/server/SecurityManagerService$SettingsObserver;->onChange(ZLandroid/net/Uri;I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;
    invoke-static {v1, p3}, Lcom/miui/server/SecurityManagerService;->access$600(Lcom/miui/server/SecurityManagerService;I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    invoke-static {v1, v0}, Lcom/miui/server/SecurityManagerService;->access$700(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockModedUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    invoke-static {v1, v0}, Lcom/miui/server/SecurityManagerService;->access$800(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V

    goto :goto_0

    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockConvenientUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    invoke-static {v1, v0}, Lcom/miui/server/SecurityManagerService;->access$900(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
