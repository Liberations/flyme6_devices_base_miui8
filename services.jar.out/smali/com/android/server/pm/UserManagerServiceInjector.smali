.class public Lcom/android/server/pm/UserManagerServiceInjector;
.super Ljava/lang/Object;
.source "UserManagerServiceInjector.java"


# static fields
.field private static HIDDEN_SPACES_MIN_USER_ID:I = 0x0

.field private static HIDDEN_SPACES_USER_ID_SCOPE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xc7

    sput v0, Lcom/android/server/pm/UserManagerServiceInjector;->HIDDEN_SPACES_USER_ID_SCOPE:I

    const/16 v0, 0x64

    sput v0, Lcom/android/server/pm/UserManagerServiceInjector;->HIDDEN_SPACES_MIN_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndGetNewUserId(II)I
    .locals 1
    .param p0, "flags"    # I
    .param p1, "defUserId"    # I

    .prologue
    invoke-static {p0, p1}, Lmiui/securityspace/XSpaceUserHandle;->checkAndGetXSpaceUserId(II)I

    move-result v0

    return v0
.end method

.method public static checkAndGetNewUserId(Lcom/android/server/pm/UserManagerService;IIZLjava/lang/Object;Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)I
    .locals 1
    .param p0, "userManagerService"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "flags"    # I
    .param p2, "defUserId"    # I
    .param p3, "isAirlockUser"    # Z
    .param p4, "mPackagesLock"    # Ljava/lang/Object;
    .param p6, "mRemovingUserIds"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "IIZ",
            "Ljava/lang/Object;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")I"
        }
    .end annotation

    .prologue
    .local p5, "mUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/UserInfo;>;"
    move v0, p2

    .local v0, "userId":I
    if-eqz p3, :cond_0

    const/16 v0, 0x63

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerServiceInjector;->checkAndGetNewUserId(II)I

    move-result v0

    goto :goto_0
.end method

.method public static handleUserRestrictions(ZLandroid/content/pm/UserInfo;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "isAirlockUser"    # Z
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "restrictions"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    if-eqz p0, :cond_1

    const-string v0, "no_install_apps"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "no_debugging_features"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "no_install_unknown_sources"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static isAvailable(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)Z
    .locals 1
    .param p0, "id"    # I
    .param p2, "mRemovingUserIds"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "mUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p2, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHiddenUserType(I)Z
    .locals 1
    .param p0, "flags"    # I

    .prologue
    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserFlag(I)Z

    move-result v0

    return v0
.end method

.method public static processEncryption(ZLandroid/content/pm/UserInfo;)Z
    .locals 2
    .param p0, "isAirlockUser"    # Z
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    if-nez p0, :cond_0

    invoke-static {p1}, Landroid/service/securespaces/SpaceEncryptionManager;->processEncryption(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UserManagerService"

    const-string v1, "SpaceEncryptionManager.processEncryption Failed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "UserManagerService"

    const-string v1, "SpaceEncryptionManager.processEncryption OK!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method
