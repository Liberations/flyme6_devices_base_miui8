.class final Lmiui/mqsas/sdk/event/BroadcastEvent$1;
.super Ljava/lang/Object;
.source "BroadcastEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/sdk/event/BroadcastEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmiui/mqsas/sdk/event/BroadcastEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lmiui/mqsas/sdk/event/BroadcastEvent$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/mqsas/sdk/event/BroadcastEvent;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/mqsas/sdk/event/BroadcastEvent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 127
    new-instance v0, Lmiui/mqsas/sdk/event/BroadcastEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;-><init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/BroadcastEvent$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lmiui/mqsas/sdk/event/BroadcastEvent$1;->newArray(I)[Lmiui/mqsas/sdk/event/BroadcastEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/mqsas/sdk/event/BroadcastEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 131
    new-array v0, p1, [Lmiui/mqsas/sdk/event/BroadcastEvent;

    return-object v0
.end method
