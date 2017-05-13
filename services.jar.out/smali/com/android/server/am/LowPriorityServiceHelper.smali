.class Lcom/android/server/am/LowPriorityServiceHelper;
.super Ljava/lang/Object;
.source "ActiveServicesInjector.java"


# static fields
.field static final DEBUG_DELAYED_STARTS:Z = false

.field static final DEFAULT_NO_PROC_DELAY_TIME:J = 0x12cL

.field static final LOW_PRIORITY_DELAY:J = 0x96L

.field static final MAX_DELAY_TIME:J = 0x3e8L

.field static final MAX_TIME_OUT:J = 0x5dcL

.field static final MIN_DELAY_TIME:J = 0x0L

.field static final MSG_BG_RESTART_LOW_PRIORITY:I = 0x66

.field static final MSG_BG_START_LOW_PRIORITY:I = 0x65

.field private static final PACKAGE_NAME_ALL:Ljava/lang/String; = "*"

.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field static final SHORT_DELAY:J = 0x5L

.field static final mInstance:Lcom/android/server/am/LowPriorityServiceHelper;


# instance fields
.field private final MAX_SIZE:I

.field private canOpen:Z

.field private closeCheck:Z

.field private fLowPriorityDelay:Ljava/lang/reflect/Field;

.field private fLowPriorityDelayRestart:Ljava/lang/reflect/Field;

.field private lastLowPriorityEnforcedTime:J

.field private final mBlacklist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowPriorityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/LowPriorityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhitelist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;"
        }
    .end annotation
.end field

.field noProcDelayTime:J

.field private sendNoDelayEnforcedMsg:Z

.field private startEnforcedLowPriorityService:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-direct {v0}, Lcom/android/server/am/LowPriorityServiceHelper;-><init>()V

    sput-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->MAX_SIZE:I

    .line 149
    iput-boolean v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    .line 151
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    .line 155
    iput-boolean v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    .line 156
    iput-boolean v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    .line 170
    :try_start_0
    const-class v1, Lcom/android/server/am/ServiceRecord;

    const-string v2, "lowPriorityDelay"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelay:Ljava/lang/reflect/Field;

    .line 171
    const-class v1, Lcom/android/server/am/ServiceRecord;

    const-string v2, "lowPriorityDelayRestart"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelayRestart:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    sget-boolean v1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelay:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelayRestart:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    .line 176
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    .line 178
    :cond_1
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private countDelayTime(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/internal/app/MiuiServicePriority;Lcom/android/server/am/LowPriorityServiceInfo;)V
    .locals 6
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "sp"    # Lcom/android/internal/app/MiuiServicePriority;
    .param p3, "info"    # Lcom/android/server/am/LowPriorityServiceInfo;

    .prologue
    .line 256
    if-nez p2, :cond_0

    .line 257
    const-wide/16 v0, 0x96

    .line 262
    .local v0, "delay":J
    :goto_0
    iput-wide v0, p3, Lcom/android/server/am/LowPriorityServiceInfo;->delay:J

    .line 263
    return-void

    .line 259
    .end local v0    # "delay":J
    :cond_0
    iget-wide v2, p2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-wide/16 v0, 0x96

    .restart local v0    # "delay":J
    :goto_1
    goto :goto_0

    .end local v0    # "delay":J
    :cond_1
    iget-wide v0, p2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    goto :goto_1
.end method

.method private dumpMiuiServicePriority(Ljava/io/PrintWriter;Lcom/android/internal/app/MiuiServicePriority;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sp"    # Lcom/android/internal/app/MiuiServicePriority;

    .prologue
    .line 537
    const-string v0, "#SP : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 538
    const-string v0, " pkgName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 539
    const-string v0, " sName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 540
    const-string v0, " prio="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 541
    const-string v0, " cPrio="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 542
    const-string v0, " inBlist="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/android/internal/app/MiuiServicePriority;->inBlacklist:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 543
    const-string v0, " dTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 544
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method private setLowPriorityDelay(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "lowPriorityDelay"    # Z

    .prologue
    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelay:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 419
    invoke-virtual {p0}, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheckPriority()V

    goto :goto_0
.end method

.method private setLowPriorityDelayRestart(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "lowPriorityDelayRestart"    # Z

    .prologue
    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelayRestart:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    invoke-virtual {p0}, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheckPriority()V

    goto :goto_0
.end method


# virtual methods
.method public callerIsTopApp(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x1

    .line 266
    iget-boolean v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v1

    .line 269
    :cond_1
    if-eqz p2, :cond_2

    .line 270
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 271
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v2, v3, :cond_2

    .line 272
    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public closeCheckPriority()V
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 250
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 510
    const-string v7, "  MIUI ADD :  LPSH dump start : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    const-string v7, "  LowPriorityList services : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 513
    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/LowPriorityServiceInfo;

    .line 514
    .local v3, "info":Lcom/android/server/am/LowPriorityServiceInfo;
    const-string v7, "#LPSInfo : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, " isRestart : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v3, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 515
    const-string v7, " delay : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v3, Lcom/android/server/am/LowPriorityServiceInfo;->delay:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 516
    const-string v7, " pendingStarts.size : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 517
    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v7, v3, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const-string v8, "    "

    invoke-virtual {v7, p1, v8}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v3    # "info":Lcom/android/server/am/LowPriorityServiceInfo;
    :cond_0
    const-string v7, "  Blacklist : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 522
    .local v0, "bKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 523
    .local v4, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/MiuiServicePriority;

    .line 524
    .local v5, "sp":Lcom/android/internal/app/MiuiServicePriority;
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/LowPriorityServiceHelper;->dumpMiuiServicePriority(Ljava/io/PrintWriter;Lcom/android/internal/app/MiuiServicePriority;)V

    goto :goto_1

    .line 527
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    :cond_1
    const-string v7, "  Whitelist : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 529
    .local v6, "wKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 530
    .restart local v4    # "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/MiuiServicePriority;

    .line 531
    .restart local v5    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/LowPriorityServiceHelper;->dumpMiuiServicePriority(Ljava/io/PrintWriter;Lcom/android/internal/app/MiuiServicePriority;)V

    goto :goto_2

    .line 533
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    :cond_2
    const-string v7, "  LPSH dump END !!!"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public isLowPriorityDelayStart(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;IZ)Z
    .locals 1
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p3, "callerUid"    # I
    .param p4, "callerFg"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public isLowPriorityDelayStart(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 16
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p3, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "callerFg"    # Z
    .param p5, "restart"    # Z

    .prologue
    .line 289
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    if-eqz v11, :cond_0

    .line 290
    const/4 v11, 0x0

    .line 390
    :goto_0
    return v11

    .line 293
    :cond_0
    if-eqz p3, :cond_1

    .line 294
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 295
    .local v3, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_1

    iget-object v11, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_1

    iget-object v11, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v11, v11, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v11, v12, :cond_1

    .line 296
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_1

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 299
    const/4 v11, 0x0

    goto :goto_0

    .line 305
    .end local v3    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v7, 0x0

    .line 306
    .local v7, "sp":Lcom/android/internal/app/MiuiServicePriority;
    const/4 v2, 0x0

    .line 307
    .local v2, "addToLowPriorityList":Z
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->isAllLimit()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 308
    const/4 v2, 0x1

    .line 333
    :cond_2
    :goto_1
    if-eqz v2, :cond_e

    .line 335
    new-instance v5, Lcom/android/server/am/LowPriorityServiceInfo;

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-direct {v5, v0, v1}, Lcom/android/server/am/LowPriorityServiceInfo;-><init>(Lcom/android/server/am/ServiceRecord;Z)V

    .line 336
    .local v5, "info":Lcom/android/server/am/LowPriorityServiceInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v5}, Lcom/android/server/am/LowPriorityServiceHelper;->countDelayTime(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/internal/app/MiuiServicePriority;Lcom/android/server/am/LowPriorityServiceInfo;)V

    .line 338
    if-eqz p5, :cond_3

    .line 339
    const/4 v11, 0x0

    iput-boolean v11, v5, Lcom/android/server/am/LowPriorityServiceInfo;->restartPerformed:Z

    .line 343
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v12, 0x1e

    if-lt v11, v12, :cond_4

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    .line 348
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    if-nez v11, :cond_4

    .line 349
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    .line 350
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/LowPriorityServiceInfo;

    .line 352
    .local v4, "firstService":Lcom/android/server/am/LowPriorityServiceInfo;
    iget-boolean v11, v4, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v11, :cond_b

    .line 353
    const/16 v11, 0x66

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 357
    .local v6, "msg":Landroid/os/Message;
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    .line 362
    .end local v4    # "firstService":Lcom/android/server/am/LowPriorityServiceInfo;
    .end local v6    # "msg":Landroid/os/Message;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 365
    .local v8, "now":J
    iget-boolean v11, v5, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v11, :cond_c

    .line 366
    const/16 v11, 0x66

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 371
    .restart local v6    # "msg":Landroid/os/Message;
    :goto_3
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_5

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v11, :cond_6

    .line 372
    :cond_5
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    const-wide/16 v14, 0x96

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x12c

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    .line 374
    :cond_6
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    cmp-long v11, v8, v12

    if-ltz v11, :cond_d

    .line 375
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    .line 388
    .end local v6    # "msg":Landroid/os/Message;
    .end local v8    # "now":J
    :cond_7
    :goto_4
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 310
    .end local v5    # "info":Lcom/android/server/am/LowPriorityServiceInfo;
    :cond_8
    if-eqz p4, :cond_a

    .line 311
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    .line 312
    .local v10, "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "*/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    check-cast v7, Lcom/android/internal/app/MiuiServicePriority;

    .line 313
    .restart local v7    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    if-eqz v7, :cond_9

    .line 314
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 316
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    check-cast v7, Lcom/android/internal/app/MiuiServicePriority;

    .line 317
    .restart local v7    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    if-eqz v7, :cond_2

    .line 318
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 322
    .end local v10    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    .line 323
    .restart local v10    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    check-cast v7, Lcom/android/internal/app/MiuiServicePriority;

    .line 324
    .restart local v7    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    if-nez v7, :cond_2

    .line 325
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "*/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    check-cast v7, Lcom/android/internal/app/MiuiServicePriority;

    .line 326
    .restart local v7    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    if-nez v7, :cond_2

    .line 327
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 355
    .end local v10    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    .restart local v4    # "firstService":Lcom/android/server/am/LowPriorityServiceInfo;
    .restart local v5    # "info":Lcom/android/server/am/LowPriorityServiceInfo;
    :cond_b
    const/16 v11, 0x65

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .restart local v6    # "msg":Landroid/os/Message;
    goto/16 :goto_2

    .line 368
    .end local v4    # "firstService":Lcom/android/server/am/LowPriorityServiceInfo;
    .end local v6    # "msg":Landroid/os/Message;
    .restart local v8    # "now":J
    :cond_c
    const/16 v11, 0x65

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .restart local v6    # "msg":Landroid/os/Message;
    goto/16 :goto_3

    .line 377
    :cond_d
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    sub-long/2addr v12, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v12, v13}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 390
    .end local v5    # "info":Lcom/android/server/am/LowPriorityServiceInfo;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v8    # "now":J
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public removeService(Lcom/android/server/am/ServiceRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-boolean v3, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v3, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v2

    .line 397
    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 401
    iget-object v3, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/LowPriorityServiceInfo;

    .line 402
    .local v1, "rInfo":Lcom/android/server/am/LowPriorityServiceInfo;
    iget-object v3, v1, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 405
    iget-boolean v2, v1, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lcom/android/server/am/LowPriorityServiceInfo;->restartPerformed:Z

    if-eqz v2, :cond_3

    .line 406
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 408
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 400
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .locals 7
    .param p1, "servicePriority"    # Lcom/android/internal/app/MiuiServicePriority;
    .param p2, "inBlacklist"    # Z

    .prologue
    .line 222
    iget-boolean v5, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    if-eqz v5, :cond_0

    .line 243
    :goto_0
    return-void

    .line 226
    :cond_0
    if-eqz p2, :cond_2

    .line 227
    iget-object v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    .line 231
    .local v4, "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    :goto_1
    iget-object v5, p1, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 232
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 233
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;>;"
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 234
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 235
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/MiuiServicePriority;

    .line 237
    .local v3, "sp":Lcom/android/internal/app/MiuiServicePriority;
    iget-object v5, v3, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 238
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 229
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    .end local v4    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    .restart local v4    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    goto :goto_1

    .line 242
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public rescheduleDelayedList(JLcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$ServiceMap;)V
    .locals 11
    .param p1, "now"    # J
    .param p3, "as"    # Lcom/android/server/am/ActiveServices;
    .param p4, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    if-nez v0, :cond_7

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    .line 438
    :goto_1
    iget-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 439
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/LowPriorityServiceInfo;

    .line 440
    .local v9, "rInfo":Lcom/android/server/am/LowPriorityServiceInfo;
    const/4 v8, 0x0

    .line 441
    .local v8, "next":Lcom/android/server/am/LowPriorityServiceInfo;
    iget-boolean v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-nez v0, :cond_2

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 442
    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/LowPriorityServiceHelper;->setLowPriorityDelay(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_1

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 447
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "next":Lcom/android/server/am/LowPriorityServiceInfo;
    check-cast v8, Lcom/android/server/am/LowPriorityServiceInfo;

    .line 450
    .restart local v8    # "next":Lcom/android/server/am/LowPriorityServiceInfo;
    :cond_3
    if-eqz v8, :cond_a

    .line 451
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_9

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    .line 453
    iget-object v0, v8, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_4

    iget-object v0, v8, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_8

    .line 454
    :cond_4
    iget-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    .line 465
    :goto_2
    iget-boolean v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v0, :cond_b

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->restartPerformed:Z

    .line 468
    :try_start_0
    const-string v0, "ActiveServicesInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESTART Low priority start of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/LowPriorityServiceHelper;->setLowPriorityDelayRestart(Lcom/android/server/am/ServiceRecord;Z)V

    .line 470
    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_3
    const/16 v0, 0x66

    invoke-virtual {p4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 486
    .local v7, "msg":Landroid/os/Message;
    if-eqz v8, :cond_5

    .line 487
    iget-boolean v0, v8, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v0, :cond_e

    .line 488
    const/16 v0, 0x66

    invoke-virtual {p4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 498
    :cond_5
    :goto_4
    iget-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    invoke-virtual {p4, v7, v0, v1}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 501
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "next":Lcom/android/server/am/LowPriorityServiceInfo;
    .end local v9    # "rInfo":Lcom/android/server/am/LowPriorityServiceInfo;
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    .line 504
    :cond_7
    iget-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 505
    const/16 v0, 0x66

    invoke-virtual {p4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 456
    .restart local v8    # "next":Lcom/android/server/am/LowPriorityServiceInfo;
    .restart local v9    # "rInfo":Lcom/android/server/am/LowPriorityServiceInfo;
    :cond_8
    iget-wide v0, v8, Lcom/android/server/am/LowPriorityServiceInfo;->delay:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    goto :goto_2

    .line 459
    :cond_9
    const-wide/16 v0, 0x5

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    goto :goto_2

    .line 462
    :cond_a
    const-wide/16 v0, 0x96

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    goto :goto_2

    .line 471
    :catch_0
    move-exception v6

    .line 472
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 476
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_1
    const-string v0, "ActiveServicesInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Low priority start of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/LowPriorityServiceHelper;->setLowPriorityDelay(Lcom/android/server/am/ServiceRecord;Z)V

    .line 478
    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord$StartItem;

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    iget-object v3, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const/4 v4, 0x0

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_c

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_d

    :cond_c
    const/4 v5, 0x1

    :goto_5
    move-object v0, p3

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 480
    :catch_1
    move-exception v6

    .line 481
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 478
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_d
    const/4 v5, 0x0

    goto :goto_5

    .line 490
    .restart local v7    # "msg":Landroid/os/Message;
    :cond_e
    const/16 v0, 0x65

    invoke-virtual {p4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    goto/16 :goto_4
.end method

.method public setNoProcDelayTime(J)V
    .locals 3
    .param p1, "noProcDelayTime"    # J

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 215
    iput-wide p1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    goto :goto_0

    .line 217
    :cond_1
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    goto :goto_0
.end method

.method public setServicePriority(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    iget-boolean v5, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v5, :cond_0

    .line 208
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/MiuiServicePriority;

    .line 186
    .local v2, "servicePriority":Lcom/android/internal/app/MiuiServicePriority;
    iget-boolean v5, v2, Lcom/android/internal/app/MiuiServicePriority;->inBlacklist:Z

    if-eqz v5, :cond_1

    .line 187
    iget-object v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    .line 191
    .local v4, "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/MiuiServicePriority;

    .line 193
    .local v3, "sp":Lcom/android/internal/app/MiuiServicePriority;
    if-eqz v3, :cond_3

    .line 194
    iget-object v5, v2, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    .line 195
    iget-object v5, v2, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    .line 196
    iget v5, v2, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    iput v5, v3, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    .line 197
    iget-boolean v5, v2, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    iput-boolean v5, v3, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    .line 198
    iget-wide v6, v2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    iget-wide v6, v2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 199
    iget-wide v6, v2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    iput-wide v6, v3, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    goto :goto_1

    .line 189
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    .end local v4    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    .restart local v4    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    goto :goto_2

    .line 201
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v3    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    :cond_2
    const-wide/16 v6, 0x96

    iput-wide v6, v3, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    goto :goto_1

    .line 204
    :cond_3
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 207
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "servicePriority":Lcom/android/internal/app/MiuiServicePriority;
    .end local v3    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    .end local v4    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    goto :goto_0
.end method
