.class public interface abstract Lcom/android/server/net/NetlinkTracker$Callback;
.super Ljava/lang/Object;
.source "NetlinkTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetlinkTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# static fields
.field public static final EVENT_ADDRESS_REMOVE:I = 0x2

.field public static final EVENT_ADDRESS_UPDATE:I = 0x1

.field public static final EVENT_ROUTER_REMOVE:I = 0x4

.field public static final EVENT_ROUTER_UPDATE:I = 0x3


# virtual methods
.method public abstract update()V
.end method

.method public abstract update(I)V
.end method
