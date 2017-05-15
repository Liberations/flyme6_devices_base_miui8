.class public Lcom/android/server/location/LocationOpHandler$LocationOpRecord;
.super Ljava/lang/Object;
.source "LocationOpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationOpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationOpRecord"
.end annotation


# instance fields
.field locationOp:I

.field final synthetic this$0:Lcom/android/server/location/LocationOpHandler;

.field timestamp:J

.field uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/location/LocationOpHandler;IIJ)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "locationOp"    # I
    .param p4, "timestamp"    # J

    .prologue
    iput-object p1, p0, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->this$0:Lcom/android/server/location/LocationOpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->uid:I

    iput p3, p0, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->locationOp:I

    iput-wide p4, p0, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->timestamp:J

    return-void
.end method
