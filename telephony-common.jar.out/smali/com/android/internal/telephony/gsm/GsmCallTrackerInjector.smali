.class public Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;
.super Ljava/lang/Object;
.source "GsmCallTrackerInjector.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GsmCallTrackerInjector"

.field private static sIsHD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->sIsHD:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static isSpecialNumber(Lcom/android/internal/telephony/Phone;)Z
    .locals 10
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 79
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    const-string v9, "10010"

    aput-object v9, v6, v7

    const-string v9, "114"

    aput-object v9, v6, v8

    .line 81
    .local v6, "specialNumArray":[Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 82
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 91
    .local v1, "currentCall":Lcom/android/internal/telephony/Call;
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v8, :cond_3

    move v7, v8

    .line 107
    .end local v1    # "currentCall":Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_1
    return v7

    .line 83
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 84
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .restart local v1    # "currentCall":Lcom/android/internal/telephony/Call;
    goto :goto_0

    .line 85
    .end local v1    # "currentCall":Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 86
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .restart local v1    # "currentCall":Lcom/android/internal/telephony/Call;
    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 96
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "currentNumber":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lmiui/telephony/TelephonyManagerEx;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v7, v8

    .line 99
    goto :goto_1

    .line 101
    :cond_4
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 102
    .local v5, "num":Ljava/lang/String;
    invoke-static {v5, v2, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    move v7, v8

    .line 103
    goto :goto_1

    .line 101
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static sendSpeechCodecIsHDBroadcast(Lcom/android/internal/telephony/Phone;Z)V
    .locals 9
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "isHD"    # Z

    .prologue
    .line 35
    sget-boolean v6, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-nez v6, :cond_0

    if-nez p0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v5

    .line 39
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x1109001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 40
    .local v0, "configed":Z
    if-eqz v0, :cond_0

    .line 43
    move v3, p1

    .line 44
    .local v3, "localHD":Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "numeric":Ljava/lang/String;
    invoke-static {v4}, Lmiui/telephony/ServiceProviderUtils;->isChinaUnicom(Ljava/lang/String;)Z

    move-result v2

    .line 46
    .local v2, "isChinaUnicom":Z
    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->isSpecialNumber(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 47
    :cond_2
    const/4 v3, 0x0

    .line 49
    :cond_3
    sget-boolean v6, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->sIsHD:Z

    if-eq v6, v3, :cond_0

    .line 50
    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->sIsHD:Z

    .line 51
    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->setSpeechCodecHD(Lcom/android/internal/telephony/Phone;Z)V

    .line 52
    if-eqz v2, :cond_0

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_SPEECH_CODEC_IS_HD"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    const-string v6, "is_hd"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-static {v1, v6}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 57
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 58
    const-string v6, "GsmCallTrackerInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendSpeechCodecIsHDBroadcast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V
    .locals 4
    .param p0, "call"    # Lcom/android/internal/telephony/Call;
    .param p1, "isHD"    # Z

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    .line 71
    .local v1, "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 73
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz p1, :cond_0

    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Connection;->setAudioQuality(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 76
    .end local v0    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private static setSpeechCodecHD(Lcom/android/internal/telephony/Phone;Z)V
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "isHD"    # Z

    .prologue
    .line 64
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V

    .line 65
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V

    .line 66
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V

    .line 67
    return-void
.end method
