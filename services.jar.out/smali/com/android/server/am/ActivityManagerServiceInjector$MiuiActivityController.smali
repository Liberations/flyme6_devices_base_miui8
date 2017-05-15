.class public Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiActivityController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;
    }
.end annotation


# static fields
.field private static final DEBUG_MESSAGES:Z

.field private static final PREFIX_TAG:Ljava/lang/String; = "MiuiLog-ActivityObserver:"

.field private static final TAG:Ljava/lang/String; = "MiuiActivityController"

.field private static sInstance:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;


# instance fields
.field private final mActivityObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IMiuiActivityObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mH:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;

.field private final mSendIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "debug.miui.activity.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->DEBUG_MESSAGES:Z

    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    invoke-direct {v0}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sInstance:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mSendIntent:Landroid/content/Intent;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MiuiActivityController"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;-><init>(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mH:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->DEBUG_MESSAGES:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mSendIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sInstance:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    return-object v0
.end method

.method public static logMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->DEBUG_MESSAGES:Z

    if-eqz v0, :cond_0

    const-string v0, "MiuiActivityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;I)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;II)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;IIZ)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "async"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    .local v1, "size":I
    const-string v2, "MiuiLog-ActivityObserver:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mH:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->codeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " observer size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput p4, v0, Landroid/os/Message;->arg2:I

    if-eqz p5, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mH:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public activityDestroyed(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public activityIdle(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public activityPaused(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public activityResumed(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public activityStopped(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V
    .locals 1
    .param p1, "observer"    # Landroid/app/IMiuiActivityObserver;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterActivityObserver(Landroid/app/IMiuiActivityObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/app/IMiuiActivityObserver;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
