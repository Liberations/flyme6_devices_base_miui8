.class public Lcom/android/server/am/ProcessPolicyManager;
.super Ljava/lang/Object;
.source "ProcessPolicyManager.java"


# static fields
.field private static final ENABLE:Z

.field private static final TAG:Ljava/lang/String; = "ProcessPolicyManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "persist.am.enable_ppm"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessPolicyManager;->ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDelayBootPersistentApp(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/server/am/ProcessPolicyManager;->ENABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/ProcessPolicyConfig;->sDelayBootPersistentAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "ProcessPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay boot  persistent app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIgnoreException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "t"    # Ljava/lang/Thread;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public static isImportantProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessPolicyManager;->isImportantProcess(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isImportantProcess(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/server/am/ProcessPolicyManager;->ENABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/ProcessPolicyConfig;->sImportantProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedTraceProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/server/am/ProcessPolicyManager;->ENABLE:Z

    if-eqz v0, :cond_1

    .line 41
    sget-object v0, Lcom/android/server/am/ProcessPolicyConfig;->sNeedTraceProcessList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    goto :goto_0
.end method

.method public static isSecureProtectedProcess(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/server/am/ProcessPolicyManager;->ENABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/ProcessPolicyConfig;->sProcessCleanProtectedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static promoteImportantProcAdj(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 78
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/am/ProcessPolicyManager;->isImportantProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 80
    const-string v0, "ProcessPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "promote important process adj "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return-void
.end method

.method public static promoteImportantProcState(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/16 v1, 0xd

    .line 72
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/server/am/ProcessPolicyManager;->isImportantProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 75
    :cond_0
    return-void
.end method
