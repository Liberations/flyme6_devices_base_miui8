.class public Lcom/android/internal/os/BatteryStatsImplInjector;
.super Ljava/lang/Object;
.source "BatteryStatsImplInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProcessName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "NameAndReason"    # Ljava/lang/String;

    .prologue
    .line 15
    if-eqz p0, :cond_0

    .line 16
    const-string v0, "#for#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 18
    .end local p0    # "NameAndReason":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
