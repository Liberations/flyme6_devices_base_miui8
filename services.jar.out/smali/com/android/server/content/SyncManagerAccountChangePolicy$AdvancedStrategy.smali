.class public Lcom/android/server/content/SyncManagerAccountChangePolicy$AdvancedStrategy;
.super Ljava/lang/Object;
.source "SyncManagerAccountChangePolicy.java"

# interfaces
.implements Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManagerAccountChangePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvancedStrategy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSyncForbidden(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {p1}, Lcom/android/server/content/SyncManagerAccountChangePolicy;->isBatteryCharging(Landroid/content/Context;)Z

    move-result v0

    .line 143
    .local v0, "isBatteryCharging":Z
    invoke-static {p1}, Lcom/android/server/content/SyncManagerAccountChangePolicy;->isNetworkNotMetered(Landroid/content/Context;)Z

    move-result v1

    .line 144
    .local v1, "isNetworkNotMetered":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
