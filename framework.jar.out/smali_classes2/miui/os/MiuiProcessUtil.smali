.class public Lmiui/os/MiuiProcessUtil;
.super Ljava/lang/Object;
.source "MiuiProcessUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFreeMemory()J
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalMemory()J
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    return-wide v0
.end method
