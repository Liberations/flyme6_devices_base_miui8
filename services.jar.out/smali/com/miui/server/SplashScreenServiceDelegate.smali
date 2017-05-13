.class public Lcom/miui/server/SplashScreenServiceDelegate;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DELAY_BIND_AFTER_BOOT_COMPLETE:J = 0x1d4c0L

.field private static final MAX_DELAY_TIME:J = 0x36ee80L

.field private static final MSG_REBIND:I = 0x1

.field public static final SPLASHSCREEN_ACTIVITY:Ljava/lang/String; = "com.miui.systemAdSolution.splashscreen.SplashActivity"

.field public static final SPLASHSCREEN_CLASS:Ljava/lang/String; = "com.miui.systemAdSolution.splashscreen.SplashScreenService"

.field public static final SPLASHSCREEN_PACKAGE:Ljava/lang/String; = "com.miui.systemAdSolution"

.field private static final TAG:Ljava/lang/String; = "SplashScreenServiceDelegate"


# instance fields
.field private mContext:Landroid/content/Context;

.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mDelayTime:J

.field final mHandler:Landroid/os/Handler;

.field private mRebindCount:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSeverity:I

.field private final mSplashScreenConnection:Landroid/content/ServiceConnection;

.field protected mSplashScreenService:Lcom/miui/server/ISplashScreenService;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    .line 38
    iput v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    .line 39
    iput-wide v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 40
    iput v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    .line 47
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$1;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$2;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;

    .line 168
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$3;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$3;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 210
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$4;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$4;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->registerBootCompleteReceiver()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToBindServiceAfterBootCompleted()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/server/SplashScreenServiceDelegate;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/server/SplashScreenServiceDelegate;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;
    .param p1, "x1"    # J

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/miui/server/SplashScreenServiceDelegate;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->bindService()V

    return-void
.end method

.method private bindService()V
    .locals 6

    .prologue
    .line 78
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-nez v2, :cond_0

    .line 80
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.miui.systemAdSolution"

    const-string v3, "com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x5

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    const-string v2, "SplashScreenServiceDelegate"

    const-string v3, "splashscreen: can\'t bind to com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService()V

    .line 93
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 87
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "SplashScreenServiceDelegate"

    const-string v3, "splashscreen service started"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SplashScreenServiceDelegate"

    const-string v3, "Can not start splash screen service! "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private calcDelayTime()J
    .locals 18

    .prologue
    .line 138
    const-wide/16 v10, 0x2710

    .line 139
    .local v10, "tenSeconds":J
    const-wide/32 v6, 0xea60

    .line 140
    .local v6, "minute":J
    const-wide/32 v4, 0x36ee80

    .line 141
    .local v4, "hour":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    sub-long v2, v12, v14

    .line 143
    .local v2, "aliveTime":J
    cmp-long v9, v2, v6

    if-gez v9, :cond_0

    .line 144
    const/4 v8, 0x1

    .line 150
    .local v8, "severity":I
    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    if-ne v8, v9, :cond_4

    .line 151
    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 152
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    const-wide/16 v14, 0x2

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 161
    :goto_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    int-to-long v0, v9

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 162
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    const-wide/32 v14, 0x36ee80

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 163
    move-object/from16 v0, p0

    iput v8, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    .line 164
    const-string v9, "SplashScreenServiceDelegate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restart service delay time "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    return-wide v12

    .line 145
    .end local v8    # "severity":I
    :cond_0
    cmp-long v9, v2, v4

    if-gez v9, :cond_1

    .line 146
    const/4 v8, 0x2

    .restart local v8    # "severity":I
    goto :goto_0

    .line 148
    .end local v8    # "severity":I
    :cond_1
    const/4 v8, 0x3

    .restart local v8    # "severity":I
    goto :goto_0

    .line 153
    :cond_2
    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    add-long/2addr v12, v10

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_1

    .line 156
    :cond_3
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_1

    .line 159
    :cond_4
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_1
.end method

.method private delayToBindServiceAfterBootCompleted()V
    .locals 3

    .prologue
    .line 99
    const-wide/32 v0, 0x1d4c0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService(JZ)V

    .line 100
    return-void
.end method

.method private delayToRebindService()V
    .locals 3

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->calcDelayTime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService(JZ)V

    .line 104
    return-void
.end method

.method private delayToRebindService(JZ)V
    .locals 5
    .param p1, "delayTime"    # J
    .param p3, "increaseRebindCount"    # Z

    .prologue
    const/4 v2, 0x1

    .line 107
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 110
    if-eqz p3, :cond_0

    iget v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    .line 111
    :cond_0
    const-string v1, "SplashScreenServiceDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splashscreen service rebind count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method private registerBootCompleteReceiver()V
    .locals 4

    .prologue
    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    const-string v1, "SplashScreenServiceDelegate"

    const-string v2, "register BOOT_COMPLETED receiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-wide/32 v2, 0x927c0

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService(JZ)V

    .line 75
    return-void
.end method


# virtual methods
.method public activityIdle(Landroid/content/pm/ActivityInfo;)V
    .locals 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-eqz v1, :cond_0

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    invoke-interface {v1, p1}, Lcom/miui/server/ISplashScreenService;->activityIdle(Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SplashScreenServiceDelegate"

    const-string v2, "activityIdle failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public destroyActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 201
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-eqz v1, :cond_0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    invoke-interface {v1, p1}, Lcom/miui/server/ISplashScreenService;->destroyActivity(Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SplashScreenServiceDelegate"

    const-string v2, "destroyActivity failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 177
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-eqz v2, :cond_0

    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "finalIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    invoke-interface {v2, p1, p2}, Lcom/miui/server/ISplashScreenService;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    .end local v1    # "finalIntent":Landroid/content/Intent;
    :goto_0
    return-object v1

    .line 183
    .restart local v1    # "finalIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SplashScreenServiceDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request splash screen failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "finalIntent":Landroid/content/Intent;
    :cond_0
    move-object v1, p1

    .line 187
    goto :goto_0
.end method
