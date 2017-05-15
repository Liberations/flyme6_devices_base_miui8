.class Lcom/android/server/display/DisplayFeatureService$BinderService;
.super Landroid/hardware/display/IDisplayFeatureService$Stub;
.source "DisplayFeatureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayFeatureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayFeatureService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayFeatureService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureService;

    invoke-direct {p0}, Landroid/hardware/display/IDisplayFeatureService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayFeatureService;Lcom/android/server/display/DisplayFeatureService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/DisplayFeatureService;
    .param p2, "x1"    # Lcom/android/server/display/DisplayFeatureService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureService$BinderService;-><init>(Lcom/android/server/display/DisplayFeatureService;)V

    return-void
.end method


# virtual methods
.method public setAd(IZI)I
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "enable"    # Z
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setCABC(II)I
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public setCE(II)I
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/os/ColorAdjust;->setCe(J)Z

    const/4 v0, 0x0

    return v0
.end method

.method public setColorPrefer(II)I
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/os/ColorAdjust;->setGamma(J)Z

    const/4 v0, 0x0

    return v0
.end method

.method public setEyeCare(II)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "colorService":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureService;

    # invokes: Lcom/android/server/display/DisplayFeatureService;->setActiveMode(Landroid/os/IBinder;II)I
    invoke-static {v2, v0, v1, p2}, Lcom/android/server/display/DisplayFeatureService;->access$100(Lcom/android/server/display/DisplayFeatureService;Landroid/os/IBinder;II)I

    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureService;

    # invokes: Lcom/android/server/display/DisplayFeatureService;->setDefaultMode(Landroid/os/IBinder;II)I
    invoke-static {v2, v0, v1, p2}, Lcom/android/server/display/DisplayFeatureService;->access$200(Lcom/android/server/display/DisplayFeatureService;Landroid/os/IBinder;II)I

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setGamutMode(II)I
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    return v0
.end method
