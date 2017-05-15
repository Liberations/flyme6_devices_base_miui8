.class public Lcom/android/internal/os/RuntimeInitInjector;
.super Ljava/lang/Object;
.source "RuntimeInitInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v2, "result":Ljava/lang/StringBuilder;
    const-string v4, "Dalvik/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "java.vm.version"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (Linux; U; Android "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .end local v3    # "version":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "REL"

    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1    # "model":Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .local v0, "inc_ver":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, " MIUI/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .end local v0    # "inc_ver":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    :cond_2
    const-string v3, "1.0"

    goto :goto_0
.end method

.method public static onJE(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pknName"    # Ljava/lang/String;
    .param p3, "threadName"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/Throwable;
    .param p5, "prefix"    # Ljava/lang/String;
    .param p6, "isSystem"    # Z

    .prologue
    new-instance v0, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v0, p4}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    .local v0, "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    new-instance v1, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    invoke-direct {v1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;-><init>()V

    .local v1, "event":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    invoke-virtual {v1, p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setPid(I)V

    invoke-virtual {v1, p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setProcessName(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setPackageName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setTimeStamp(J)V

    invoke-virtual {v1, p3}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setThreadName(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setSystem(Z)V

    iget-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setStackTrace(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setExceptionClassName(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setExceptionMessage(Ljava/lang/String;)V

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V

    return-void
.end method
