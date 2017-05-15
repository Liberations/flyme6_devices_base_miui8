.class Lcom/android/server/am/LowPriorityServiceInfo;
.super Ljava/lang/Object;
.source "ActiveServicesInjector.java"


# instance fields
.field delay:J

.field isRestart:Z

.field mR:Lcom/android/server/am/ServiceRecord;

.field restartPerformed:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "restart"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceInfo;->restartPerformed:Z

    iput-object p1, p0, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iput-boolean p2, p0, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    return-void
.end method
