.class public Landroid/service/securespaces/SpaceEncryptionManager;
.super Ljava/lang/Object;
.source "SpaceEncryptionManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "spaceencryption"

.field private static final TAG:Ljava/lang/String; = "SpaceEncryptionManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ecryptfsMount(IILjava/lang/String;)I
    .locals 4
    .param p0, "userId"    # I
    .param p1, "authId"    # I
    .param p2, "authData"    # Ljava/lang/String;

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsMount(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static ecryptfsMountRemovableNonOwner(I)V
    .locals 4
    .param p0, "userId"    # I

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsMountRemovableNonOwner(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static ecryptfsOverwrite(I)I
    .locals 4
    .param p0, "userId"    # I

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsOverwrite(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static ecryptfsUnmount(I)I
    .locals 4
    .param p0, "userId"    # I

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsUnmount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static ecryptfsUnmountRemovableNonOwner(I)V
    .locals 4
    .param p0, "userId"    # I

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsUnmountRemovableNonOwner(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static ecryptfsUpdate(IILjava/lang/String;)I
    .locals 4
    .param p0, "userId"    # I
    .param p1, "authId"    # I
    .param p2, "authData"    # Ljava/lang/String;

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsUpdate(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static isAuthProtected(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->isAuthProtected(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static needAirlockUser(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->needAirlockUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static needsEcryptfsMount(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->needsEcryptfsMount(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static processEncryption(Landroid/content/pm/UserInfo;)Z
    .locals 4
    .param p0, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->processEncryption(Landroid/content/pm/UserInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setAirlockWallpaperToUser(I)V
    .locals 4
    .param p0, "userIdOrig"    # I

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->setAirlockWallpaperToUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setOpAddExcludeFromWipe(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpAddExcludeFromWipe(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpCleanUserData(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpCleanUserData(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpClearUserData(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpClearUserData(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpCreateUserConfig(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpCreateUserConfig(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpCreateUserData(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "seinfo"    # Ljava/lang/String;

    .prologue
    const-string v1, "spaceencryption"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v0

    .local v0, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpCreateUserData(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v6

    .local v6, "re":Landroid/os/RemoteException;
    const-string v1, "SpaceEncryptionManager"

    const-string v2, "Error connecting to SpaceEncryptionService"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setOpDeleteCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpDeleteCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpDeleteCodeCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpDeleteCodeCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpLinkNativeLibraryDir(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "dataPath"    # Ljava/lang/String;
    .param p3, "newNativePath32"    # Ljava/lang/String;

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2, p3}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpLinkNativeLibraryDir(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpRemove(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpRemove(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static switchUser(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    const-string v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method
