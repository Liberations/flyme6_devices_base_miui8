.class public Lcom/android/internal/telephony/InboundSmsHandlerInjector;
.super Ljava/lang/Object;
.source "InboundSmsHandlerInjector.java"


# static fields
.field private static final B2C_DEFAULT_TTL_VALUE:J = 0x493e0L

.field private static final ENCODING_16BIT:I = 0x3

.field private static final SERVER_LIVE_TIME:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "InboundSmsHandler"

.field private static sIndiaSpPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "^[A-Za-z][A-Za-z][-]\\S{6}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->sIndiaSpPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static beforeDispatchIntent(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 12
    .param p0, "inboundSmsHandler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "deleteWhere"    # Ljava/lang/String;
    .param p5, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 392
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 393
    .local v4, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v5, Ljava/util/concurrent/FutureTask;

    new-instance v8, Lcom/android/internal/telephony/InboundSmsHandlerInjector$1;

    invoke-direct {v8, p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandlerInjector$1;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-direct {v5, v8}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 401
    .local v5, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 403
    const/4 v6, 0x0

    .line 406
    .local v6, "result":Ljava/lang/Boolean;
    const-wide/16 v10, 0x2710

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v10, v11, v8}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0

    .line 407
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-ne v8, v9, :cond_0

    .line 413
    :try_start_1
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 414
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 416
    const-string v8, "InboundSmsHandler"

    const-string v10, "beforeDispatchIntent result is true"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    :try_start_2
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    move v8, v9

    .line 459
    :goto_1
    return v8

    .line 432
    :catch_0
    move-exception v2

    .line 433
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "InboundSmsHandler"

    const-string v10, "beforeDispatchIntent shutdown exp "

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 418
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 419
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "InboundSmsHandler"

    const-string v10, "beforeDispatchIntent exp is "

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 431
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_4
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 436
    :goto_2
    const-string v8, "InboundSmsHandler"

    const-string v10, "beforeDispatchIntent result is false"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->writeMessageToInbox(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 441
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v10, "msg_uri"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 442
    .local v7, "uriStr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 448
    :try_start_5
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 449
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 451
    const-string v8, "InboundSmsHandler"

    const-string v10, "writeMessageToInbox result is true"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move v8, v9

    .line 452
    goto :goto_1

    .line 432
    .end local v7    # "uriStr":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 433
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "InboundSmsHandler"

    const-string v10, "beforeDispatchIntent shutdown exp "

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 422
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 423
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v8, "InboundSmsHandler"

    const-string v10, "beforeDispatchIntent exp is "

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 425
    const/4 v8, 0x1

    :try_start_7
    invoke-virtual {v5, v8}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 431
    :goto_3
    :try_start_8
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 432
    :catch_4
    move-exception v2

    .line 433
    const-string v8, "InboundSmsHandler"

    const-string v10, "beforeDispatchIntent shutdown exp "

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 426
    :catch_5
    move-exception v3

    .line 427
    .local v3, "e1":Ljava/lang/Exception;
    :try_start_9
    const-string v8, "InboundSmsHandler"

    const-string v10, "beforeDispatchIntent futureTask.cancel exp "

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 430
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 431
    :try_start_a
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 434
    :goto_4
    throw v8

    .line 432
    :catch_6
    move-exception v2

    .line 433
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "InboundSmsHandler"

    const-string v10, "beforeDispatchIntent shutdown exp "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 453
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "uriStr":Ljava/lang/String;
    :catch_7
    move-exception v2

    .line 454
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "InboundSmsHandler"

    const-string v9, "writeMessageToInbox exp is "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "uriStr":Ljava/lang/String;
    :cond_1
    const-string v8, "InboundSmsHandler"

    const-string v9, "writeMessageToInbox result is false"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method static beforeDispatchIntentInt(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 18
    .param p0, "inboundSmsHandler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    .prologue
    .line 463
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "action":Ljava/lang/String;
    const/4 v13, 0x0

    .line 467
    .local v13, "smsBlocked":Z
    const-string v15, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 472
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "pdus"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/Object;

    move-object v0, v15

    check-cast v0, [Ljava/lang/Object;

    move-object v10, v0

    .line 473
    .local v10, "pdusArray":[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "format"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 475
    .local v4, "format":Ljava/lang/String;
    array-length v15, v10

    new-array v9, v15, [[B

    .line 476
    .local v9, "pdus":[[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v15, v10

    if-ge v5, v15, :cond_0

    .line 477
    aget-object v15, v10, v5

    check-cast v15, [B

    move-object v0, v15

    check-cast v0, [B

    move-object v8, v0

    .line 478
    .local v8, "part":[B
    aput-object v8, v9, v5

    .line 476
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 480
    .end local v8    # "part":[B
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "phone"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 481
    .local v12, "slotId":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "subscription"

    const/16 v17, -0x1

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 482
    .local v14, "subId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v15, v12, v14}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->checkSmsCmd([[BLjava/lang/String;Landroid/content/Context;II)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 483
    const-string v15, "InboundSmsHandler"

    const-string v16, "checkSmsCmd is true, intercept this sms."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    const/4 v13, 0x1

    .line 492
    .end local v4    # "format":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v9    # "pdus":[[B
    .end local v10    # "pdusArray":[Ljava/lang/Object;
    .end local v12    # "slotId":I
    .end local v14    # "subId":I
    :cond_1
    :goto_1
    const/4 v6, 0x0

    .line 494
    .local v6, "isServiceNumber":Z
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 495
    .local v7, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v7, :cond_2

    array-length v15, v7

    if-lez v15, :cond_2

    .line 496
    const/4 v15, 0x0

    aget-object v15, v7, v15

    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, "address":Ljava/lang/String;
    invoke-static {v2}, Lmiui/provider/ExtraTelephony;->isServiceNumber(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    if-eqz v15, :cond_2

    .line 498
    const/4 v6, 0x1

    .line 504
    .end local v2    # "address":Ljava/lang/String;
    .end local v7    # "messages":[Landroid/telephony/SmsMessage;
    :cond_2
    :goto_2
    const-string v15, "miui.intent.SERVICE_NUMBER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 505
    const-string v15, "InboundSmsHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "beforeDispatchIntentInt isServiceNumber is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    if-nez v13, :cond_3

    .line 510
    :try_start_2
    const-string v15, "security"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v11

    .line 512
    .local v11, "securityManager":Lmiui/security/ISecurityManager;
    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lmiui/security/ISecurityManager;->checkSmsBlocked(Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v15

    if-eqz v15, :cond_3

    .line 513
    const/4 v13, 0x1

    .line 519
    .end local v11    # "securityManager":Lmiui/security/ISecurityManager;
    :cond_3
    :goto_3
    const-string v15, "InboundSmsHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "beforeDispatchIntentInt smsBlocked is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return v13

    .line 486
    .end local v6    # "isServiceNumber":Z
    :catch_0
    move-exception v3

    .line 487
    .local v3, "e":Ljava/lang/Exception;
    const-string v15, "InboundSmsHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception before InboundSmsDispatcher: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 501
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "isServiceNumber":Z
    :catch_1
    move-exception v3

    .line 502
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v15, "InboundSmsHandler"

    const-string v16, " ServiceNumber parse error "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 515
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 516
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v15, "InboundSmsHandler"

    const-string v16, "beforeDispatchIntentInt exp is "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private static buildMessageString([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 16
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v1, "body":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 203
    .local v6, "length":I
    const/4 v8, 0x1

    .line 205
    .local v8, "needCombinByByte":Z
    move-object/from16 v0, p0

    .local v0, "arr$":[Landroid/telephony/SmsMessage;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v7, v0, v3

    .line 206
    .local v7, "m":Landroid/telephony/SmsMessage;
    if-eqz v7, :cond_0

    iget-object v13, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-nez v13, :cond_2

    .line 207
    :cond_0
    const-string v13, "InboundSmsHandler"

    const-string v14, "buildMessageString m or mWrappedSmsMessage is null"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getEncodingType()I

    move-result v13

    const/4 v14, 0x3

    if-eq v13, v14, :cond_3

    .line 211
    const/4 v8, 0x0

    .line 213
    :cond_3
    if-eqz v8, :cond_4

    .line 214
    iget-object v13, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v13, :cond_4

    .line 215
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v12

    .line 216
    .local v12, "userData":[B
    if-eqz v12, :cond_4

    .line 217
    array-length v13, v12

    add-int/2addr v6, v13

    .line 221
    .end local v12    # "userData":[B
    :cond_4
    if-nez v8, :cond_1

    iget-object v13, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v13, :cond_1

    .line 222
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 225
    .end local v7    # "m":Landroid/telephony/SmsMessage;
    :cond_5
    const-string v13, "InboundSmsHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "buildMessageString needCombinByByte is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-eqz v8, :cond_9

    .line 227
    new-array v9, v6, [B

    .line 228
    .local v9, "newbuf":[B
    const/4 v10, 0x0

    .line 229
    .local v10, "pos":I
    move-object/from16 v0, p0

    array-length v5, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_8

    aget-object v7, v0, v3

    .line 230
    .restart local v7    # "m":Landroid/telephony/SmsMessage;
    if-nez v7, :cond_7

    .line 229
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 233
    :cond_7
    iget-object v13, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v13, :cond_6

    .line 234
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v12

    .line 235
    .restart local v12    # "userData":[B
    array-length v4, v12

    .line 236
    .local v4, "l":I
    const/4 v13, 0x0

    invoke-static {v12, v13, v9, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 237
    add-int/2addr v10, v4

    goto :goto_3

    .line 243
    .end local v4    # "l":I
    .end local v7    # "m":Landroid/telephony/SmsMessage;
    .end local v12    # "userData":[B
    :cond_8
    :try_start_0
    new-instance v11, Ljava/lang/String;

    const-string v13, "utf-16"

    invoke-direct {v11, v9, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v9    # "newbuf":[B
    .end local v10    # "pos":I
    :goto_4
    return-object v11

    .line 244
    .restart local v9    # "newbuf":[B
    .restart local v10    # "pos":I
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/Exception;
    const-string v13, "InboundSmsHandler"

    const-string v14, "buildMessageString: new string utf-16 error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v11, 0x0

    .local v11, "result":Ljava/lang/String;
    goto :goto_4

    .line 250
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v9    # "newbuf":[B
    .end local v10    # "pos":I
    .end local v11    # "result":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4
.end method

.method static checkSmsCmd([[BLjava/lang/String;Landroid/content/Context;II)Z
    .locals 7
    .param p0, "pdus"    # [[B
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "slotId"    # I
    .param p4, "subId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 530
    if-eqz p0, :cond_0

    aget-object v6, p0, v4

    if-nez v6, :cond_1

    .line 551
    :cond_0
    :goto_0
    return v4

    .line 533
    :cond_1
    aget-object v6, p0, v4

    invoke-static {v6, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 534
    .local v3, "msg":Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_0

    .line 537
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "address":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .local v1, "body":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, p0

    if-ge v2, v6, :cond_3

    .line 540
    aget-object v6, p0, v2

    invoke-static {v6, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 541
    if-eqz v3, :cond_2

    .line 542
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 545
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v0, v6, p3, p4}, Lmiui/provider/MiCloudSmsCmd;->checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v5

    .line 546
    goto :goto_0

    .line 548
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, p3, v0, v6}, Lmiui/provider/MiCloudSmsCmd;->checkAndDispatchActivationSms(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 549
    goto :goto_0
.end method

.method private static isB2CDuplicate(Landroid/content/Context;Landroid/content/ContentValues;)Z
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 316
    const-string v2, "address"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 317
    .local v16, "sender":Ljava/lang/String;
    const-string v2, "body"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 318
    .local v8, "body":Ljava/lang/String;
    const-string v2, "thread_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 319
    .local v18, "threadId":J
    const/4 v15, 0x0

    .line 321
    .local v15, "mxType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v20, 0x493e0

    sub-long v6, v6, v20

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, "where":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "date desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 325
    .local v9, "c":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 326
    .local v13, "lastBody":Ljava/lang/String;
    const/4 v14, -0x1

    .line 327
    .local v14, "lastMxType":I
    const/4 v12, 0x0

    .line 328
    .local v12, "isDup":Z
    if-eqz v9, :cond_2

    .line 330
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    const-string v2, "body"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 332
    .local v10, "columnBody":I
    const-string v2, "mx_status"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 334
    .local v11, "columnMxType":I
    :cond_0
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 335
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 336
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v14, :cond_3

    .line 337
    const/4 v12, 0x1

    .line 343
    .end local v10    # "columnBody":I
    .end local v11    # "columnMxType":I
    :cond_1
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_2
    const/4 v9, 0x0

    .line 347
    if-eqz v12, :cond_4

    .line 348
    const-string v2, "InboundSmsHandler"

    const-string v3, "isB2CDuplicate duplicated message received"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v2, 0x1

    .line 381
    :goto_1
    return v2

    .line 340
    .restart local v10    # "columnBody":I
    .restart local v11    # "columnMxType":I
    :cond_3
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 343
    .end local v10    # "columnBody":I
    .end local v11    # "columnMxType":I
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 353
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date>= ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - CASE WHEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "b2c_ttl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v6, 0x493e0

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " THEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v6, 0x493e0

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ELSE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "b2c_ttl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " END)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mx_status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "b2c_numbers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NOT NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "b2c_numbers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LIKE \"%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "date desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 360
    if-eqz v9, :cond_7

    .line 362
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 363
    const-string v2, "body"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 365
    .restart local v10    # "columnBody":I
    :cond_5
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 366
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-eqz v2, :cond_8

    .line 367
    const/4 v12, 0x1

    .line 373
    .end local v10    # "columnBody":I
    :cond_6
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_7
    const/4 v9, 0x0

    .line 377
    if-eqz v12, :cond_9

    .line 378
    const-string v2, "InboundSmsHandler"

    const-string v3, "duplicated common sp message received"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 370
    .restart local v10    # "columnBody":I
    :cond_8
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 373
    .end local v10    # "columnBody":I
    :catchall_1
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 381
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private static isDuplicate(Landroid/content/Context;Landroid/telephony/SmsMessage;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v0

    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v0

    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v0, v1, :cond_1

    .line 277
    :cond_0
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    .line 279
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    .line 280
    .local v9, "originatingAddress":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    const/4 v0, 0x0

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v12

    .line 284
    .local v12, "timestamp":J
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-gtz v0, :cond_3

    .line 285
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, "body":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    const/4 v0, 0x0

    goto :goto_0

    .line 291
    :cond_4
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "address"

    aput-object v1, v2, v0

    .line 292
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address=? AND date_sent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "body"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mx_status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 299
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 301
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 302
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 303
    .local v10, "id":J
    const-string v0, "InboundSmsHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive duplicated message from msg id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    const/4 v0, 0x1

    .line 309
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v10    # "id":J
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 312
    :cond_6
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 306
    :catch_0
    move-exception v8

    .line 307
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "InboundSmsHandler"

    const-string v1, "isDuplicate query is "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isIndiaServiceNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "isIndiaSP":Z
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string v1, "IN"

    invoke-static {v1}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->matchIndiaSpPattern(Ljava/lang/String;)Z

    move-result v0

    .line 267
    if-nez v0, :cond_0

    .line 268
    const-string v1, "+91"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchIndiaSpPattern(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, "result":Z
    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->sIndiaSpPattern:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_0

    .line 257
    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->sIndiaSpPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 258
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 260
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_0
    return v1
.end method

.method private static parseSmsMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 153
    const/4 v10, 0x0

    aget-object v6, p1, v10

    .line 154
    .local v6, "sms":Landroid/telephony/SmsMessage;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v9, "values":Landroid/content/ContentValues;
    const-string v10, "error_code"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "address":Ljava/lang/String;
    const-string v10, "address"

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v10, "date_sent"

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    new-instance v2, Ljava/util/GregorianCalendar;

    const/16 v10, 0x7db

    const/16 v11, 0x8

    const/16 v12, 0x12

    invoke-direct {v2, v10, v11, v12}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 160
    .local v2, "buildDate":Ljava/util/Calendar;
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 161
    .local v3, "nowDate":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 162
    .local v4, "now":J
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 163
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 164
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    .line 166
    :cond_0
    const-string v10, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    const-string v10, "protocol"

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v10, "seen"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v10, "read"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "subject":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 172
    const-string v10, "subject"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_1
    const-string v11, "reply_path_present"

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    :goto_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v10, "service_center"

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 178
    .local v8, "threadId":Ljava/lang/Long;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 179
    invoke-static {p0, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 180
    const-string v10, "thread_id"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    :goto_1
    const/4 v1, 0x0

    .line 185
    .local v1, "body":Ljava/lang/String;
    array-length v10, p1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 187
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    :goto_2
    const-string v10, "body"

    invoke-virtual {v9, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-object v9

    .line 174
    .end local v1    # "body":Ljava/lang/String;
    .end local v8    # "threadId":Ljava/lang/Long;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 182
    .restart local v8    # "threadId":Ljava/lang/Long;
    :cond_3
    const-string v10, "InboundSmsHandler"

    const-string v11, "address is empty"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 190
    .restart local v1    # "body":Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->buildMessageString([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 197
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xc

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static writeMessageToInbox(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    if-eqz v18, :cond_0

    const-string v18, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 51
    :cond_0
    const-string v18, "InboundSmsHandler"

    const-string v19, "writeMessageToInbox args is wrong"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/16 v18, 0x0

    .line 149
    :goto_0
    return v18

    .line 55
    :cond_1
    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v7

    .line 56
    .local v7, "cn":Landroid/content/ComponentName;
    if-eqz v7, :cond_2

    const-string v18, "com.android.mms"

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 57
    const-string v18, "InboundSmsHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "default sms application is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    const/16 v18, 0x0

    .line 147
    const-string v19, "InboundSmsHandler"

    const-string v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_2
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v10

    .line 61
    .local v10, "msgs":[Landroid/telephony/SmsMessage;
    if-eqz v10, :cond_3

    array-length v0, v10

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 62
    :cond_3
    const-string v18, "InboundSmsHandler"

    const-string v19, "Failed to parse SMS pdu"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    const/16 v18, 0x0

    .line 147
    const-string v19, "InboundSmsHandler"

    const-string v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_4
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "subscription"

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 67
    .local v12, "subId":I
    if-gez v12, :cond_5

    .line 68
    const-string v18, "InboundSmsHandler"

    const-string v19, "writeMessageToInbox subId < 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    const/16 v18, 0x0

    .line 147
    const-string v19, "InboundSmsHandler"

    const-string v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_5
    const/16 v18, 0x0

    :try_start_3
    aget-object v11, v10, v18

    .line 73
    .local v11, "sms":Landroid/telephony/SmsMessage;
    if-eqz v11, :cond_6

    iget-object v0, v11, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 74
    :cond_6
    const-string v18, "InboundSmsHandler"

    const-string v19, "writeMessageToInbox: sms == null or sms.mWrappedSmsMessage == null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    const/16 v18, 0x0

    .line 147
    const-string v19, "InboundSmsHandler"

    const-string v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 76
    :cond_7
    :try_start_4
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 77
    const-string v18, "InboundSmsHandler"

    const-string v19, "writeMessageToInbox address is empty"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    const/16 v18, 0x0

    .line 147
    const-string v19, "InboundSmsHandler"

    const-string v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 79
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->isDuplicate(Landroid/content/Context;Landroid/telephony/SmsMessage;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 80
    const-string v18, "InboundSmsHandler"

    const-string v19, "duplicate sms"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 81
    const/16 v18, 0x1

    .line 147
    const-string v19, "InboundSmsHandler"

    const-string v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 82
    :cond_9
    :try_start_6
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_a

    .line 83
    const-string v18, "InboundSmsHandler"

    const-string v19, "display message body is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 84
    const/16 v18, 0x0

    .line 147
    const-string v19, "InboundSmsHandler"

    const-string v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 85
    :cond_a
    :try_start_7
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v18

    sget-object v19, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 86
    const-string v18, "InboundSmsHandler"

    const-string v19, "message class is 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 87
    const/16 v18, 0x0

    .line 147
    const-string v19, "InboundSmsHandler"

    const-string v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 88
    :cond_b
    :try_start_8
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 89
    const-string v18, "InboundSmsHandler"

    const-string v19, "sms is replace"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 90
    const/16 v18, 0x0

    .line 147
    const-string v19, "InboundSmsHandler"

    const-string v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 93
    :cond_c
    :try_start_9
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->parseSmsMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v17

    .line 95
    .local v17, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->isB2CDuplicate(Landroid/content/Context;Landroid/content/ContentValues;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 96
    const-string v18, "InboundSmsHandler"

    const-string v19, "isB2CDuplicate is true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 97
    const/16 v18, 0x1

    .line 147
    const-string v19, "InboundSmsHandler"

    const-string v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 100
    :cond_d
    :try_start_a
    const-string v18, "sim_id"

    int-to-long v0, v12

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    const-string v18, "address"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "address":Ljava/lang/String;
    const/4 v9, 0x0

    .line 104
    .local v9, "isServiceNumber":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 105
    invoke-static {v4}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->isIndiaServiceNumber(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 106
    const/4 v9, 0x1

    .line 114
    :cond_e
    :goto_1
    if-eqz v9, :cond_12

    .line 115
    const-string v18, "advanced_seen"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    :goto_2
    const-string v18, "blockType"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 121
    .local v5, "blockType":I
    move v6, v5

    .line 122
    .local v6, "blockTypeOld":I
    invoke-static {v5}, Lmiui/provider/ExtraTelephony;->getRealBlockType(I)I

    move-result v5

    .line 123
    invoke-static {v6}, Lmiui/provider/ExtraTelephony;->isURLFlagRisky(I)Z

    move-result v16

    .line 124
    .local v16, "urlSuspicious":Z
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ne v5, v0, :cond_13

    .line 125
    const-string v18, "url_risky_type"

    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    :cond_f
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-wide v14

    .line 132
    .local v14, "token":J
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 133
    .local v13, "uri":Landroid/net/Uri;
    if-eqz v13, :cond_10

    .line 134
    const-string v18, "InboundSmsHandler"

    const-string v19, "writeMessageToInbox uri is not null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_10
    const-string v18, "InboundSmsHandler"

    const-string v19, "writeMessageToInbox insert uri is successfully"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v18, "msg_uri"

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 138
    const/16 v18, 0x1

    .line 142
    :try_start_c
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 147
    const-string v19, "InboundSmsHandler"

    const-string v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 108
    .end local v5    # "blockType":I
    .end local v6    # "blockTypeOld":I
    .end local v13    # "uri":Landroid/net/Uri;
    .end local v14    # "token":J
    .end local v16    # "urlSuspicious":Z
    :cond_11
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "miui.intent.SERVICE_NUMBER"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 109
    if-nez v9, :cond_e

    .line 110
    invoke-static {v4}, Lmiui/provider/ExtraTelephony;->isServiceNumber(Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_1

    .line 117
    :cond_12
    const-string v18, "advanced_seen"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 144
    .end local v4    # "address":Ljava/lang/String;
    .end local v7    # "cn":Landroid/content/ComponentName;
    .end local v9    # "isServiceNumber":Z
    .end local v10    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v11    # "sms":Landroid/telephony/SmsMessage;
    .end local v12    # "subId":I
    .end local v17    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 145
    .local v8, "e":Ljava/lang/Exception;
    :try_start_e
    const-string v18, "InboundSmsHandler"

    const-string v19, "writeMessageToInbox injector is "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 147
    const-string v18, "InboundSmsHandler"

    const-string v19, "writeMessageToInbox finally"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_4
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 126
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "address":Ljava/lang/String;
    .restart local v5    # "blockType":I
    .restart local v6    # "blockTypeOld":I
    .restart local v7    # "cn":Landroid/content/ComponentName;
    .restart local v9    # "isServiceNumber":Z
    .restart local v10    # "msgs":[Landroid/telephony/SmsMessage;
    .restart local v11    # "sms":Landroid/telephony/SmsMessage;
    .restart local v12    # "subId":I
    .restart local v16    # "urlSuspicious":Z
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_13
    if-eqz v16, :cond_f

    .line 127
    :try_start_f
    const-string v18, "url_risky_type"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_3

    .line 147
    .end local v4    # "address":Ljava/lang/String;
    .end local v5    # "blockType":I
    .end local v6    # "blockTypeOld":I
    .end local v7    # "cn":Landroid/content/ComponentName;
    .end local v9    # "isServiceNumber":Z
    .end local v10    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v11    # "sms":Landroid/telephony/SmsMessage;
    .end local v12    # "subId":I
    .end local v16    # "urlSuspicious":Z
    .end local v17    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v18

    const-string v19, "InboundSmsHandler"

    const-string v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v18

    .line 139
    .restart local v4    # "address":Ljava/lang/String;
    .restart local v5    # "blockType":I
    .restart local v6    # "blockTypeOld":I
    .restart local v7    # "cn":Landroid/content/ComponentName;
    .restart local v9    # "isServiceNumber":Z
    .restart local v10    # "msgs":[Landroid/telephony/SmsMessage;
    .restart local v11    # "sms":Landroid/telephony/SmsMessage;
    .restart local v12    # "subId":I
    .restart local v14    # "token":J
    .restart local v16    # "urlSuspicious":Z
    .restart local v17    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v8

    .line 140
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_10
    const-string v18, "InboundSmsHandler"

    const-string v19, "Failed to persist inbox msgs"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 142
    :try_start_11
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 147
    const-string v18, "InboundSmsHandler"

    const-string v19, "writeMessageToInbox finally"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 142
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v18

    :try_start_12
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
.end method
