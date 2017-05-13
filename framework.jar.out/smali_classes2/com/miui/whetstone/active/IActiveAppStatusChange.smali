.class public interface abstract Lcom/miui/whetstone/active/IActiveAppStatusChange;
.super Ljava/lang/Object;
.source "IActiveAppStatusChange.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/active/IActiveAppStatusChange$Stub;
    }
.end annotation


# virtual methods
.method public abstract onProcessActiveStatusChange(Lcom/miui/whetstone/active/ActiveInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
