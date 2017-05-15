.class public abstract Lcom/miui/whetstone/WhetstoneManager;
.super Ljava/lang/Object;
.source "WhetstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneManager$PermissionFile;,
        Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    }
.end annotation


# static fields
.field public static final ANALYTIC_PROPERTY:Ljava/lang/String; = "persist.sys.whetstone.analytic"

.field public static final DEBUG:Z

.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field private static ws:Lcom/miui/whetstone/IWhetstone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const-string v0, "persist.sys.whetstone.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/WhetstoneManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/whetstone/IWhetstone;)Lcom/miui/whetstone/IWhetstone;
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/IWhetstone;

    .prologue
    sput-object p0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object p0
.end method

.method public static analyticTrack(Lcom/miui/whetstone/WhetstoneAction;)V
    .locals 2
    .param p0, "action"    # Lcom/miui/whetstone/WhetstoneAction;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->analyticTrack(Lcom/miui/whetstone/WhetstoneAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static cancelLocationRequest(Lcom/miui/whetstone/ILocationCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/miui/whetstone/ILocationCallback;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->cancelLocationRequest(Lcom/miui/whetstone/ILocationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkAppTheShotScreenPermission(II)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x1

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->checkAppTheShotScreenPermission(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkIfAppBelongToActive(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->checkIfAppBelongToActive(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkIfHaveTheCallFunctionPermission(III)Z
    .locals 2
    .param p0, "type"    # I
    .param p1, "callPid"    # I
    .param p2, "callUid"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->checkIfHaveTheCallFunctionPermission(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkIfProcessBelongToActive(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->checkIfProcessBelongToActive(Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkIfSupportWhestone()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .local v2, "result":Z
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-nez v3, :cond_1

    const-string v3, "miui.whetstone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/whetstone/IWhetstone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;

    move-result-object v3

    sput-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    :try_start_0
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v3, :cond_0

    new-instance v0, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;

    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-direct {v0, v3}, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;-><init>(Lcom/miui/whetstone/IWhetstone;)V

    .local v0, "death":Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v3}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .end local v0    # "death":Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    sput-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static checkPermissionLevel(III)I
    .locals 2
    .param p0, "type"    # I
    .param p1, "callPid"    # I
    .param p2, "callUid"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->checkPermissionLevel(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static checkService()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->getService()Lcom/miui/whetstone/IWhetstone;

    return-void
.end method

.method public static completeBackagroundAllModes(II)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->completeBackagroundAllModes(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static completeBackgroundModes(III)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "type"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->completeBackgroundModes(III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static decodeWatermark(Landroid/graphics/Bitmap;Lcom/miui/whetstone/watermark/IWatermarkCallback;)V
    .locals 2
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "callback"    # Lcom/miui/whetstone/watermark/IWatermarkCallback;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstone;->decodeWatermark(Landroid/graphics/Bitmap;Lcom/miui/whetstone/watermark/IWatermarkCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I
    .locals 3
    .param p0, "config"    # Lcom/miui/whetstone/WhetstoneConfig;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->clearDeadAppFromNative()V

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/miui/whetstone/watermark/IWatermarkCallback;)V
    .locals 2
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "watermark"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/miui/whetstone/watermark/IWatermarkCallback;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/miui/whetstone/watermark/IWatermarkCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getActiveAppListByLevel(I)Ljava/util/List;
    .locals 3
    .param p0, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v0, 0x0

    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getActiveAppListByLevel(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getActiveAppListByType(I)Ljava/util/List;
    .locals 3
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v0, 0x0

    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getActiveAppListByType(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getApplicationActiveLevel(Ljava/lang/String;I)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "level":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->getApplicationActiveLevel(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getApplicationThread(I)Landroid/os/IBinder;
    .locals 3
    .param p0, "pid"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v0, 0x0

    .local v0, "applicationThread":Landroid/os/IBinder;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getApplicationThread(I)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryCapacity()I
    .locals 3

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v0, 0x0

    .local v0, "capacity":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getBatteryCapacity()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryChargeTime()J
    .locals 4

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const-wide/16 v0, 0x0

    .local v0, "ct":J
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v3}, Lcom/miui/whetstone/IWhetstone;->getBatteryChargeTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryCurrentNow()I
    .locals 3

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v0, 0x0

    .local v0, "cn":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getBatteryCurrentNow()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryStandbyTime()J
    .locals 4

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const-wide/16 v0, 0x0

    .local v0, "ct":J
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v3}, Lcom/miui/whetstone/IWhetstone;->getBatteryStandbyTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getComponentManager()Lcom/miui/whetstone/IComponentManager;
    .locals 3

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":Lcom/miui/whetstone/IComponentManager;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getComponentManager()Lcom/miui/whetstone/IComponentManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getForegroundApplicationThread()Landroid/os/IBinder;
    .locals 3

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v0, 0x0

    .local v0, "applicationThread":Landroid/os/IBinder;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getForegroundApplicationThread()Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getForegroundApplicationUid()I
    .locals 3

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "uid":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getForegroundApplicationUid()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getForegroundPreTaskApp()Lcom/miui/whetstone/AppInfo;
    .locals 3

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "info":Lcom/miui/whetstone/AppInfo;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getForegroundPreTaskApp()Lcom/miui/whetstone/AppInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMetokToken()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1}, Lcom/miui/whetstone/IWhetstone;->getMetokToken()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getProcessActiveLevel(Ljava/lang/String;II)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "level":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->getProcessActiveLevel(Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getProcessBackgourndModes(II)I
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "mode":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->getProcessBackgourndModes(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getService()Lcom/miui/whetstone/IWhetstone;
    .locals 4

    .prologue
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-nez v2, :cond_0

    const-string v2, "miui.whetstone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/IWhetstone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;

    move-result-object v2

    sput-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;

    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-direct {v0, v2}, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;-><init>(Lcom/miui/whetstone/IWhetstone;)V

    .local v0, "death":Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    sput-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    goto :goto_0
.end method

.method public static getSmartConfigLevel()I
    .locals 3

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getSmartConfigLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstoneLeve()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/whetstone/WhetstoneManager;->getWhetstoneLeve(I)I

    move-result v0

    return v0
.end method

.method public static getWhetstoneLeve(I)I
    .locals 3
    .param p0, "defValue"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    move v1, p0

    .local v1, "level":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getWhetstoneLevel()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    .locals 3
    .param p0, "applicationThread"    # Landroid/os/IBinder;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "info":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstonePackageInfo(Ljava/lang/String;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "info":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getWhetstonePackageInfo(Ljava/lang/String;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstonePackageInfo(Ljava/lang/String;I)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "info":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->getWhetstonePackageInfoByUid(Ljava/lang/String;I)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 3
    .param p0, "event"    # Landroid/view/InputEvent;
    .param p1, "mode"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)Z
    .locals 3
    .param p0, "packageURI"    # Landroid/net/Uri;
    .param p1, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p2, "flags"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isBitmapCacheNeeded()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/miui/whetstone/IWhetstone;->isNeeded(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isInCharging()Z
    .locals 3

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->isInCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isOPENGLDisableNeeded()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/miui/whetstone/IWhetstone;->isNeeded(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static killApplication(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "restartMask"    # I
    .param p2, "uid"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x1

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->killApplication(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static killApplicationAlways(IILjava/lang/String;)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "restartMask"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x1

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->killApplicationAlways(IILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static log(I[B)V
    .locals 0
    .param p0, "tag"    # I
    .param p1, "data"    # [B

    .prologue
    return-void
.end method

.method public static putSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "database"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->putSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static registTargetProcessForegroundNotify(Ljava/lang/String;Ljava/util/List;Lcom/miui/whetstone/IProcessForegroundCallback;)V
    .locals 2
    .param p0, "from"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/miui/whetstone/IProcessForegroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/whetstone/IProcessForegroundCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->registTargetProcessForegroundNotify(Ljava/lang/String;Ljava/util/List;Lcom/miui/whetstone/IProcessForegroundCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z
    .locals 3
    .param p0, "listner"    # Lcom/miui/whetstone/active/IActiveAppStatusChange;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->registerActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/miui/whetstone/IAppObserver;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->registerAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestBackgroundModes(III)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "type"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->requestBackgroundModes(III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestCurrentLocation(Ljava/lang/String;Lcom/miui/whetstone/ILocationCallback;)V
    .locals 2
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/miui/whetstone/ILocationCallback;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstone;->requestCurrentLocation(Ljava/lang/String;Lcom/miui/whetstone/ILocationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static screenShot(II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->screenShot(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setWhetstoneLeve(I)V
    .locals 2
    .param p0, "level"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->setWhetstoneLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static unregisterActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z
    .locals 3
    .param p0, "listner"    # Lcom/miui/whetstone/active/IActiveAppStatusChange;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->unregisterActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static unregisterAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/miui/whetstone/IAppObserver;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->unregisterAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateActiveProcessStatus(IIII)V
    .locals 2
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "type"    # I
    .param p3, "status"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/miui/whetstone/IWhetstone;->updateActiveProcessStatus(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateProcessCurrentPss(II)V
    .locals 2
    .param p0, "pid"    # I
    .param p1, "pss"    # I

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstone;->updateProcessCurrentPss(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/whetstone/WhetstoneResultBinder;)V
    .locals 8
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/miui/whetstone/WhetstoneResultBinder;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigStartAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v0, Lcom/miui/whetstone/WhetstoneResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/miui/whetstone/WhetstoneResult;-><init>(I)V

    invoke-virtual {p4, v0}, Lcom/miui/whetstone/WhetstoneResultBinder;->onResult(Lcom/miui/whetstone/WhetstoneResult;)V

    goto :goto_0
.end method

.method public static wifiSmartConfigAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 7
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "result"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/whetstone/WhetstoneManager;->wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V

    return-void
.end method

.method public static wifiSmartConfigMacAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/whetstone/WhetstoneResultBinder;)V
    .locals 8
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/miui/whetstone/WhetstoneResultBinder;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigStartAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Lcom/miui/whetstone/WhetstoneResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/miui/whetstone/WhetstoneResult;-><init>(I)V

    invoke-virtual {p5, v0}, Lcom/miui/whetstone/WhetstoneResultBinder;->onResult(Lcom/miui/whetstone/WhetstoneResult;)V

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 9
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "result"    # Landroid/os/IBinder;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigStop()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigSupport()Z
    .locals 3

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v1, 0x0

    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigSupport()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigUap(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "token"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    const/4 v7, 0x0

    .local v7, "ret":Ljava/lang/String;
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigUap(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :cond_0
    :goto_0
    return-object v7

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigUapAsync(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/os/IBinder;)V
    .locals 8
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/IBinder;

    .prologue
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigUapAsync(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
