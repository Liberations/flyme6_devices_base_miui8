.class public interface abstract Landroid/net/INetd;
.super Ljava/lang/Object;
.source "INetd.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetd$Stub;
    }
.end annotation


# virtual methods
.method public abstract firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isAlive()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
