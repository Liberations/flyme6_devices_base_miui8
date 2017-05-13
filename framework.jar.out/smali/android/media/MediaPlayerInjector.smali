.class Landroid/media/MediaPlayerInjector;
.super Ljava/lang/Object;
.source "MediaPlayerInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static updateActiveProcessStatus(ZZII)V
    .locals 3
    .param p0, "stayAwake"    # Z
    .param p1, "awake"    # Z
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v1, 0x2

    .line 12
    if-eq p0, p1, :cond_0

    const/16 v2, 0x2710

    if-le p3, v2, :cond_0

    .line 13
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 14
    .local v0, "status":I
    :goto_0
    invoke-static {p3, p2, v1, v0}, Lcom/miui/whetstone/WhetstoneManager;->updateActiveProcessStatus(IIII)V

    .line 16
    .end local v0    # "status":I
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 13
    goto :goto_0
.end method
