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
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceInfo;->restartPerformed:Z

    .line 123
    iput-object p1, p0, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    .line 124
    iput-boolean p2, p0, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    .line 125
    return-void
.end method
