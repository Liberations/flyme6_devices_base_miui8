.class public Lmiui/provider/CallLog;
.super Ljava/lang/Object;
.source "CallLog.java"


# static fields
.field private static final IS_CTS:Z

.field private static final TAG:Ljava/lang/String; = "CallLog"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    sput-boolean v0, Lmiui/provider/CallLog;->IS_CTS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "insertUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "addForAllUsers"    # Z

    .prologue
    const-string v11, "CallLog"

    const-string v12, "addCall(): addForAllUsers=%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .local v5, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .local v6, "result":Landroid/net/Uri;
    if-eqz p3, :cond_1

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportSecuritySpace()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .local v9, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .local v3, "currentUserId":I
    const-string v11, "CallLog"

    const-string v12, "addCall(): currentUserId=%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-static {v9, v8}, Lmiui/provider/CallLog;->canInsertCalllog(Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "CallLog"

    const-string v12, "addCall(): insert for userId=%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v5, v11, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .local v7, "uri":Landroid/net/Uri;
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    if-ne v11, v3, :cond_0

    move-object v6, v7

    .end local v7    # "uri":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "count":I
    .end local v3    # "currentUserId":I
    .end local v4    # "i":I
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "userManager":Landroid/os/UserManager;
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    :cond_2
    const-string v11, "CallLog"

    const-string v12, "addCall(): result=%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 26
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I
    .param p10, "simInfoId"    # J
    .param p12, "phoneCallType"    # J
    .param p14, "feature"    # J
    .param p16, "addForAllUsers"    # Z
    .param p17, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    const/16 v24, 0x0

    .local v24, "tm":Landroid/telecom/TelecomManager;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    :goto_0
    const/16 v21, 0x0

    .local v21, "accountAddress":Ljava/lang/String;
    if-eqz v24, :cond_0

    if-eqz p17, :cond_0

    move-object/from16 v0, v24

    move-object/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v22

    .local v22, "account":Landroid/telecom/PhoneAccount;
    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v23

    .local v23, "address":Landroid/net/Uri;
    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v21

    .end local v22    # "account":Landroid/telecom/PhoneAccount;
    .end local v23    # "address":Landroid/net/Uri;
    :cond_0
    const/16 v19, 0x0

    .local v19, "accountComponentString":Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, "accountId":Ljava/lang/String;
    if-eqz p17, :cond_1

    invoke-virtual/range {p17 .. p17}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p17 .. p17}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v20

    :cond_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    move/from16 v18, p16

    invoke-static/range {v2 .. v21}, Lmiui/provider/ExtraContacts$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .end local v19    # "accountComponentString":Ljava/lang/String;
    .end local v20    # "accountId":Ljava/lang/String;
    .end local v21    # "accountAddress":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static canInsertCalllog(Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Z
    .locals 7
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/16 v5, 0x3e7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "canInsert":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .local v1, "userHandle":Landroid/os/UserHandle;
    sget-boolean v4, Lmiui/provider/CallLog;->IS_CTS:Z

    if-eqz v4, :cond_2

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, v4, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "no_outgoing_calls"

    invoke-virtual {p0, v4, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .end local v1    # "userHandle":Landroid/os/UserHandle;
    :cond_0
    :goto_0
    const-string v4, "CallLog"

    const-string v5, "canInsertCallLog(): user=%s, canInsert=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .restart local v1    # "userHandle":Landroid/os/UserHandle;
    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, v4, :cond_3

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "no_outgoing_calls"

    invoke-virtual {p0, v4, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method
