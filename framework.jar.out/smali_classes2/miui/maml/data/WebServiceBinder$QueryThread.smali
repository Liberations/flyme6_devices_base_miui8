.class Lmiui/maml/data/WebServiceBinder$QueryThread;
.super Ljava/lang/Thread;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# static fields
.field private static final ERROR_IO_EXCEPTION:I = 0x8

.field private static final ERROR_OK:I = 0x0

.field private static final ERROR_SECURE_ACCOUNT_AUTHTOKEN_FAIL:I = 0x5

.field private static final ERROR_SECURE_ACCOUNT_NOT_LOGIN:I = 0x4

.field private static final ERROR_SECURE_CIPHER_EXCEPTION:I = 0x6

.field private static final ERROR_SECURE_INVALID_RESPONSE:I = 0x7

.field public static final ERROR_USE_NETWORK_FORBIDDEN:I = 0x3

.field private static final KEY_ENCRYPTED_USER_ID:Ljava/lang/String; = "encrypted_user_id"


# instance fields
.field final synthetic this$0:Lmiui/maml/data/WebServiceBinder;


# direct methods
.method public constructor <init>(Lmiui/maml/data/WebServiceBinder;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const-string v0, "WebServiceBinder QueryThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZ)Ljava/lang/Object;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Lmiui/maml/data/WebServiceBinder$RequestMethod;
    .param p3, "auth"    # Z
    .param p4, "secure"    # Z

    .prologue
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/maml/data/WebServiceBinder$QueryThread;->doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZZ)Ljava/lang/Object;
    .locals 27
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Lmiui/maml/data/WebServiceBinder$RequestMethod;
    .param p3, "auth"    # Z
    .param p4, "secure"    # Z
    .param p5, "retry"    # Z

    .prologue
    const-string v4, "WebServiceBinder"

    const-string v5, "doRequest"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    .local v14, "cookies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-virtual {v4}, Lmiui/maml/data/WebServiceBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v13, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .local v13, "context":Landroid/content/Context;
    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .local v2, "accountManager":Landroid/accounts/AccountManager;
    if-eqz p3, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v4, v4, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v4, v4, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    if-nez v4, :cond_6

    :cond_0
    const/4 v3, 0x0

    .local v3, "account":Landroid/accounts/Account;
    const-string v4, "com.xiaomi"

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    .local v10, "accounts":[Landroid/accounts/Account;
    array-length v4, v10

    if-lez v4, :cond_1

    const/4 v4, 0x0

    aget-object v3, v10, v4

    :cond_1
    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v5, 0x4

    # invokes: Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V
    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->access$200(Lmiui/maml/data/WebServiceBinder;I)V

    const-string v4, "WebServiceBinder"

    const-string v5, "xiaomi account not login"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    .end local v3    # "account":Landroid/accounts/Account;
    .end local v10    # "accounts":[Landroid/accounts/Account;
    :goto_0
    return-object v24

    .restart local v3    # "account":Landroid/accounts/Account;
    .restart local v10    # "accounts":[Landroid/accounts/Account;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const-string v5, "encrypted_user_id"

    invoke-virtual {v2, v3, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mServiceId:Ljava/lang/String;
    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->access$1000(Lmiui/maml/data/WebServiceBinder;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v17

    .local v17, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v12, 0x0

    .local v12, "authToken":Lmiui/maml/data/WebServiceBinder$AuthToken;
    if-eqz v17, :cond_4

    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/Bundle;

    .local v25, "result":Landroid/os/Bundle;
    if-eqz v25, :cond_3

    const-string v4, "authtoken"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "extTokenStr":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lmiui/maml/data/WebServiceBinder$AuthToken;->parse(Ljava/lang/String;)Lmiui/maml/data/WebServiceBinder$AuthToken;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v12

    .end local v16    # "extTokenStr":Ljava/lang/String;
    .end local v25    # "result":Landroid/os/Bundle;
    :goto_1
    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v5, 0x5

    # invokes: Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V
    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->access$200(Lmiui/maml/data/WebServiceBinder;I)V

    const/16 v24, 0x0

    goto :goto_0

    .restart local v25    # "result":Landroid/os/Bundle;
    :cond_3
    :try_start_1
    const-string v4, "WebServiceBinder"

    const-string v5, "getAuthToken: future getResult is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .end local v25    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v15

    .local v15, "e":Landroid/accounts/OperationCanceledException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v4, v15}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    goto :goto_1

    .end local v15    # "e":Landroid/accounts/OperationCanceledException;
    :cond_4
    :try_start_2
    const-string v4, "WebServiceBinder"

    const-string v5, "getAuthToken: future is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    move-exception v15

    .local v15, "e":Landroid/accounts/AuthenticatorException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v4, v15}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    goto :goto_1

    .end local v15    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v15

    .local v15, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v4, v15}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    goto :goto_1

    .end local v15    # "e":Ljava/io/IOException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v12, Lmiui/maml/data/WebServiceBinder$AuthToken;->authToken:Ljava/lang/String;

    iput-object v5, v4, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v12, Lmiui/maml/data/WebServiceBinder$AuthToken;->security:Ljava/lang/String;

    iput-object v5, v4, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    .end local v3    # "account":Landroid/accounts/Account;
    .end local v10    # "accounts":[Landroid/accounts/Account;
    .end local v12    # "authToken":Lmiui/maml/data/WebServiceBinder$AuthToken;
    .end local v17    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_6
    new-instance v14, Ljava/util/HashMap;

    .end local v14    # "cookies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .restart local v14    # "cookies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "cUserId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "serviceToken"

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .local v22, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mParamsFormatter:Lmiui/maml/util/TextFormatter;
    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->access$1200(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/util/TextFormatter;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v23

    .local v23, "paramsStr":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .local v26, "strParams":[Ljava/lang/String;
    move-object/from16 v11, v26

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    aget-object v20, v11, v18

    .local v20, "pa":Ljava/lang/String;
    const-string v4, ":"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .local v21, "param":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    aget-object v4, v21, v4

    const/4 v5, 0x1

    aget-object v5, v21, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    .end local v20    # "pa":Ljava/lang/String;
    .end local v21    # "param":[Ljava/lang/String;
    .end local v26    # "strParams":[Ljava/lang/String;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;
    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->access$600(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    move-result-object v4

    sget-object v5, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    if-ne v4, v5, :cond_b

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Lmiui/maml/util/net/SimpleRequest;->getAsStream(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lmiui/maml/util/net/SimpleRequest$StreamContent;

    move-result-object v24

    .local v24, "resp":Lmiui/maml/util/net/SimpleRequest$StreamContent;
    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v5, 0xc8

    # invokes: Lmiui/maml/data/WebServiceBinder;->setStatusCode(I)V
    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->access$300(Lmiui/maml/data/WebServiceBinder;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lmiui/maml/util/net/CipherException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lmiui/maml/util/net/AccessDeniedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lmiui/maml/util/net/InvalidResponseException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lmiui/maml/util/net/AuthenticationFailureException; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_0

    .end local v24    # "resp":Lmiui/maml/util/net/SimpleRequest$StreamContent;
    :catch_3
    move-exception v15

    .restart local v15    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v4, v15}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v5, 0x8

    # invokes: Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V
    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->access$200(Lmiui/maml/data/WebServiceBinder;I)V

    .end local v15    # "e":Ljava/io/IOException;
    :cond_a
    :goto_4
    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v24, 0x0

    .local v24, "resp":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :try_start_4
    sget-object v4, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$data$WebServiceBinder$RequestMethod:[I

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/data/WebServiceBinder$RequestMethod;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_5
    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v5, 0xc8

    # invokes: Lmiui/maml/data/WebServiceBinder;->setStatusCode(I)V
    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->access$300(Lmiui/maml/data/WebServiceBinder;I)V

    invoke-virtual/range {v24 .. v24}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v25

    .local v25, "result":Ljava/lang/String;
    move-object/from16 v24, v25

    goto/16 :goto_0

    .end local v25    # "result":Ljava/lang/String;
    :pswitch_0
    if-eqz p4, :cond_c

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14, v4, v5}, Lmiui/maml/util/net/SecureRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v24

    goto :goto_5

    :cond_c
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14, v4}, Lmiui/maml/util/net/SimpleRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v24

    goto :goto_5

    :pswitch_1
    if-eqz p4, :cond_d

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14, v4, v5}, Lmiui/maml/util/net/SecureRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v24

    goto :goto_5

    :cond_d
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14, v4}, Lmiui/maml/util/net/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lmiui/maml/util/net/CipherException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lmiui/maml/util/net/AccessDeniedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lmiui/maml/util/net/InvalidResponseException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lmiui/maml/util/net/AuthenticationFailureException; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v24

    goto :goto_5

    .end local v24    # "resp":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :catch_4
    move-exception v15

    .local v15, "e":Lmiui/maml/util/net/CipherException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v4, v15}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v5, 0x6

    # invokes: Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V
    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->access$200(Lmiui/maml/data/WebServiceBinder;I)V

    goto :goto_4

    .end local v15    # "e":Lmiui/maml/util/net/CipherException;
    :catch_5
    move-exception v15

    .local v15, "e":Lmiui/maml/util/net/AccessDeniedException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v4, v15}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v5, 0x193

    # invokes: Lmiui/maml/data/WebServiceBinder;->setStatusCode(I)V
    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->access$300(Lmiui/maml/data/WebServiceBinder;I)V

    goto :goto_4

    .end local v15    # "e":Lmiui/maml/util/net/AccessDeniedException;
    :catch_6
    move-exception v15

    .local v15, "e":Lmiui/maml/util/net/InvalidResponseException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v4, v15}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v5, 0x7

    # invokes: Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V
    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->access$200(Lmiui/maml/data/WebServiceBinder;I)V

    goto/16 :goto_4

    .end local v15    # "e":Lmiui/maml/util/net/InvalidResponseException;
    :catch_7
    move-exception v15

    .local v15, "e":Lmiui/maml/util/net/AuthenticationFailureException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v4, v15}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v5, 0x190

    # invokes: Lmiui/maml/data/WebServiceBinder;->setStatusCode(I)V
    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->access$300(Lmiui/maml/data/WebServiceBinder;I)V

    const-string v4, "com.xiaomi"

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v5, 0x0

    iput-object v5, v4, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    if-eqz p5, :cond_a

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Lmiui/maml/data/WebServiceBinder$QueryThread;->doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZZ)Ljava/lang/Object;

    move-result-object v24

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v3, "WebServiceBinder"

    const-string v4, "QueryThread start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V
    invoke-static {v3, v6}, Lmiui/maml/data/WebServiceBinder;->access$200(Lmiui/maml/data/WebServiceBinder;I)V

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->setStatusCode(I)V
    invoke-static {v3, v6}, Lmiui/maml/data/WebServiceBinder;->access$300(Lmiui/maml/data/WebServiceBinder;I)V

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v3, v3, Lmiui/maml/data/WebServiceBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v3}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v1

    .local v1, "uriStr":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v3, v3, Lmiui/maml/data/WebServiceBinder;->mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    iget-object v4, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mAuthentication:Z
    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->access$400(Lmiui/maml/data/WebServiceBinder;)Z

    move-result v4

    iget-object v5, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mSecure:Z
    invoke-static {v5}, Lmiui/maml/data/WebServiceBinder;->access$500(Lmiui/maml/data/WebServiceBinder;)Z

    move-result v5

    invoke-direct {p0, v1, v3, v4, v5}, Lmiui/maml/data/WebServiceBinder$QueryThread;->doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZ)Ljava/lang/Object;

    move-result-object v0

    .local v0, "response":Ljava/lang/Object;
    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v3, v3, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_3

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v3, v2, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    sget-object v2, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$data$WebServiceBinder$ResponseProtocol:[I

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;
    invoke-static {v3}, Lmiui/maml/data/WebServiceBinder;->access$600(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .end local v0    # "response":Ljava/lang/Object;
    :cond_1
    :goto_2
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-virtual {v2}, Lmiui/maml/data/WebServiceBinder;->onUpdateComplete()V

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # setter for: Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z
    invoke-static {v2, v6}, Lmiui/maml/data/WebServiceBinder;->access$902(Lmiui/maml/data/WebServiceBinder;Z)Z

    const-string v2, "WebServiceBinder"

    const-string v3, "QueryThread end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move-object v1, v2

    goto :goto_0

    .restart local v0    # "response":Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v3, v3, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_0
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    check-cast v0, Ljava/lang/String;

    .end local v0    # "response":Ljava/lang/Object;
    # invokes: Lmiui/maml/data/WebServiceBinder;->processResponseXml(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lmiui/maml/data/WebServiceBinder;->access$700(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V

    goto :goto_2

    .restart local v0    # "response":Ljava/lang/Object;
    :pswitch_1
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    check-cast v0, Ljava/lang/String;

    .end local v0    # "response":Ljava/lang/Object;
    # invokes: Lmiui/maml/data/WebServiceBinder;->processResponseJson(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lmiui/maml/data/WebServiceBinder;->access$800(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V

    goto :goto_2

    .restart local v0    # "response":Ljava/lang/Object;
    :pswitch_2
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    check-cast v0, Lmiui/maml/util/net/SimpleRequest$StreamContent;

    .end local v0    # "response":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Lmiui/maml/data/WebServiceBinder;->processResponseBitmap(Lmiui/maml/util/net/SimpleRequest$StreamContent;)V

    goto :goto_2

    :cond_4
    const-string v2, "WebServiceBinder"

    const-string v3, "url is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
