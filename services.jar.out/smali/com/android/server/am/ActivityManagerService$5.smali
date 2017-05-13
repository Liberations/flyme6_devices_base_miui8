.class Lcom/android/server/am/ActivityManagerService$5;
.super Landroid/os/AnrMonitor$TimerThread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$dumpApp:Lcom/android/server/am/ProcessRecord;

.field final synthetic val$stringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;JLcom/android/server/am/ProcessRecord;Ljava/lang/StringBuffer;)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 5249
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$5;->val$dumpApp:Lcom/android/server/am/ProcessRecord;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$5;->val$stringBuffer:Ljava/lang/StringBuffer;

    invoke-direct {p0, p2, p3}, Landroid/os/AnrMonitor$TimerThread;-><init>(J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5254
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$5;->val$dumpApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->dumpMessage()Ljava/lang/String;

    move-result-object v1

    .line 5255
    .local v1, "msgs":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$5;->val$stringBuffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 5256
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$5;->val$stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5257
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$5;->finishRun()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5261
    .end local v1    # "msgs":Ljava/lang/String;
    :goto_0
    return-void

    .line 5258
    :catch_0
    move-exception v0

    .line 5259
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Error happened during dump message"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
