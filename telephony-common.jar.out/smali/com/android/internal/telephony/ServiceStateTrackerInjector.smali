.class public Lcom/android/internal/telephony/ServiceStateTrackerInjector;
.super Ljava/lang/Object;
.source "ServiceStateTrackerInjector.java"


# static fields
.field public static final DATA_DEREGISTERED:Ljava/lang/String; = "Data Deregistered"

.field private static final NON_ROAMING_MCC:[[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GSSTInjector"

.field public static final VOICE_DEREGISTERED:Ljava/lang/String; = "Voice Deregistered"

.field private static sNitzOperator:[Ljava/lang/String;

.field private static sReceiveNitz:[Z

.field private static sTimeZoneIdByMcc:[[Ljava/lang/String;

.field private static sTimeZoneIdOfCapitalCity:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "404"

    aput-object v2, v1, v4

    const-string v2, "405"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->NON_ROAMING_MCC:[[Ljava/lang/String;

    .line 166
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "334"

    aput-object v2, v1, v4

    const-string v2, "America/Mexico_City"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "460"

    aput-object v2, v1, v4

    const-string v2, "Asia/Shanghai"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "404"

    aput-object v2, v1, v4

    const-string v2, "Asia/Calcutta"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "405"

    aput-object v2, v1, v4

    const-string v2, "Asia/Calcutta"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "406"

    aput-object v2, v1, v4

    const-string v2, "Asia/Calcutta"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "454"

    aput-object v3, v2, v4

    const-string v3, "Asia/Hong_Kong"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdByMcc:[[Ljava/lang/String;

    .line 174
    const/16 v0, 0x10

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "au"

    aput-object v2, v1, v4

    const-string v2, "Australia/Sydney"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "cn"

    aput-object v2, v1, v4

    const-string v2, "Asia/Shanghai"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "br"

    aput-object v2, v1, v4

    const-string v2, "America/Sao_Paulo"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ca"

    aput-object v2, v1, v4

    const-string v2, "America/Toronto"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "cl"

    aput-object v2, v1, v4

    const-string v2, "America/Santiago"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "es"

    aput-object v3, v2, v4

    const-string v3, "Europe/Madrid"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fm"

    aput-object v3, v2, v4

    const-string v3, "Pacific/Ponape"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gl"

    aput-object v3, v2, v4

    const-string v3, "America/Godthab"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v4

    const-string v3, "Asia/Jakarta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kz"

    aput-object v3, v2, v4

    const-string v3, "Asia/Almaty"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mn"

    aput-object v3, v2, v4

    const-string v3, "Asia/Ulaanbaatar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mx"

    aput-object v3, v2, v4

    const-string v3, "America/Mexico_City"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pf"

    aput-object v3, v2, v4

    const-string v3, "Pacific/Tahiti"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pt"

    aput-object v3, v2, v4

    const-string v3, "Europe/Lisbon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ru"

    aput-object v3, v2, v4

    const-string v3, "Europe/Moscow"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "us"

    aput-object v3, v2, v4

    const-string v3, "America/New_York"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic access$000()[Z
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    return-object v0
.end method

.method public static convertNetworkType(Lcom/android/internal/telephony/ServiceStateTracker;I)I
    .locals 3
    .param p0, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p1, "type"    # I

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "operator":Ljava/lang/String;
    const/16 v1, 0x14

    if-ne v1, p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1108000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    :cond_0
    const/16 p1, 0xf

    .line 161
    .end local p1    # "type":I
    :cond_1
    return p1
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ServiceStateTrackerInjector: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 340
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ge v0, v2, :cond_0

    .line 341
    const-string v2, " sReceiveNitz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sNitzOperator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 345
    return-void
.end method

.method public static getPlmn(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;
    .locals 8
    .param p0, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    .line 104
    const-string v5, "45006"

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    .line 128
    :cond_0
    :goto_0
    return-object v4

    .line 108
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v5, :cond_3

    .line 110
    const-string v5, "46697"

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "46605"

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    const-string v4, "Gt"

    goto :goto_0

    .line 113
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "spn":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v6

    invoke-static {v5, v6, v3}, Lmiui/telephony/ServiceProviderUtils;->isVirtualServiceProvider(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 115
    .local v0, "isMvno":Z
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    .line 116
    .local v1, "isRoaming":Z
    const-string v5, "GSSTInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRoaming="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isMvno="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 118
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v6

    invoke-static {v5, v6, v3}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "spnOverride":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    .end local v0    # "isMvno":Z
    .end local v1    # "isRoaming":Z
    .end local v3    # "spn":Ljava/lang/String;
    .end local v4    # "spnOverride":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "plmn":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 126
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v4, v2

    .line 128
    goto/16 :goto_0
.end method

.method public static getReceivedNitz()Z
    .locals 2

    .prologue
    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 331
    sget-object v1, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 332
    const/4 v1, 0x1

    .line 335
    :goto_1
    return v1

    .line 330
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getReceivedNitz(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 210
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static getRevertTimeZoneId(ILjava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "phoneId"    # I
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 299
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-ge v9, v10, :cond_5

    :cond_0
    const/4 v5, 0x0

    .line 300
    .local v5, "mcc":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 301
    .local v2, "iso":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v9, "000"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 303
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 308
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 309
    .local v3, "isoZoneId":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x100

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "SUB["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]revertToNitzTimeZone mcc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " iso="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 311
    .local v4, "logStr":Ljava/lang/StringBuilder;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 312
    const/4 v8, 0x0

    .line 313
    .local v8, "zone":Ljava/util/TimeZone;
    const-string v9, "telephony.test.ignore.nitz"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_6

    const/4 v1, 0x1

    .line 315
    .local v1, "isTest":Z
    :goto_2
    invoke-static {v2}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 316
    .local v7, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 317
    .local v6, "size":I
    const/4 v9, 0x1

    if-eq v6, v9, :cond_2

    if-eqz v1, :cond_7

    .line 318
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "zone":Ljava/util/TimeZone;
    check-cast v8, Ljava/util/TimeZone;

    .line 322
    .restart local v8    # "zone":Ljava/util/TimeZone;
    :cond_3
    :goto_3
    if-nez v8, :cond_8

    const/4 v3, 0x0

    .line 323
    :goto_4
    const-string v9, " size="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isTest="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 325
    .end local v1    # "isTest":Z
    .end local v6    # "size":I
    .end local v7    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .end local v8    # "zone":Ljava/util/TimeZone;
    :cond_4
    const-string v9, "GSSTInjector"

    const-string v10, " isoZoneId="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-object v3

    .line 299
    .end local v2    # "iso":Ljava/lang/String;
    .end local v3    # "isoZoneId":Ljava/lang/String;
    .end local v4    # "logStr":Ljava/lang/StringBuilder;
    .end local v5    # "mcc":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 304
    .restart local v2    # "iso":Ljava/lang/String;
    .restart local v5    # "mcc":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 305
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v9, "GSSTInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getRevertTimeZoneId: invalid numeric "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 313
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v3    # "isoZoneId":Ljava/lang/String;
    .restart local v4    # "logStr":Ljava/lang/StringBuilder;
    .restart local v8    # "zone":Ljava/util/TimeZone;
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 319
    .restart local v1    # "isTest":Z
    .restart local v6    # "size":I
    .restart local v7    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_7
    const/4 v9, 0x1

    if-le v6, v9, :cond_3

    .line 320
    const/4 v9, 0x1

    invoke-static {v2, v9}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->getTimeZoneWithCapitalCity(Ljava/lang/String;Z)Ljava/util/TimeZone;

    move-result-object v8

    goto :goto_3

    .line 322
    :cond_8
    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method

.method public static getSpn(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;
    .locals 4
    .param p0, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    .line 90
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v2, :cond_1

    .line 91
    const-string v0, ""

    .line 98
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "spn":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3, v0}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "spnOverride":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    move-object v0, v1

    goto :goto_0
.end method

.method public static getSpnUpdateActionName(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;
    .locals 3
    .param p0, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    .line 85
    .local v0, "slotId":I
    if-nez v0, :cond_0

    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTimeZoneByMcc(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/TimeZone;
    .locals 7
    .param p0, "mcc"    # Ljava/lang/String;
    .param p1, "originalTimeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->getReceivedNitz()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v3, p1

    .line 236
    :goto_0
    return-object v3

    .line 217
    :cond_1
    move-object v3, p1

    .line 218
    .local v3, "ret":Ljava/util/TimeZone;
    const/4 v1, 0x0

    .line 219
    .local v1, "mccTz":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdByMcc:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 220
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdByMcc:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 221
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdByMcc:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget-object v1, v4, v5

    .line 226
    :cond_2
    if-nez v1, :cond_3

    .line 227
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 232
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 233
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 235
    :cond_4
    const-string v5, "GSSTInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTimeZoneByMcc mcc:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " zone.getID="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_6

    const-string v4, ""

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 229
    :catch_0
    move-exception v2

    .line 230
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const-string v4, "GSSTInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTimeZoneByMcc: invalid mcc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 235
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_6
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public static getTimeZoneWithCapitalCity(Ljava/lang/String;Z)Ljava/util/TimeZone;
    .locals 9
    .param p0, "iso"    # Ljava/lang/String;
    .param p1, "canGet"    # Z

    .prologue
    const/4 v3, 0x0

    .line 275
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-object v3

    .line 278
    :cond_1
    invoke-static {p0}, Landroid/util/TimeUtils;->getTimeZones(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 279
    .local v5, "zones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "currentZoneID":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TimeZone;

    .line 281
    .local v4, "zone":Ljava/util/TimeZone;
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 282
    const-string v6, "GSSTInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTimeZonesWithCapitalCity iso "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , current zone ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    .end local v4    # "zone":Ljava/util/TimeZone;
    :cond_3
    const/4 v3, 0x0

    .line 287
    .local v3, "ret":Ljava/util/TimeZone;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 288
    sget-object v6, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 289
    sget-object v6, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 293
    :cond_4
    const-string v7, "GSSTInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTimeZonesWithCapitalCity iso="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " zone.getID="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v3, :cond_6

    const-string v6, ""

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 287
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 293
    :cond_6
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method public static init(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 7
    .param p0, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    const/4 v6, 0x0

    .line 35
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    if-nez v4, :cond_1

    .line 36
    sget v4, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    new-array v4, v4, [Z

    sput-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    .line 37
    sget v4, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    .line 38
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v4, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ge v1, v4, :cond_0

    .line 39
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aput-boolean v6, v4, v1

    .line 40
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v1

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/internal/telephony/ServiceStateTrackerInjector$1;

    invoke-direct {v2}, Lcom/android/internal/telephony/ServiceStateTrackerInjector$1;-><init>()V

    .line 60
    .local v2, "mIntentReceiver":Landroid/content/BroadcastReceiver;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "i":I
    .end local v2    # "mIntentReceiver":Landroid/content/BroadcastReceiver;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    .line 63
    .local v3, "slotId":I
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aput-boolean v6, v4, v3

    .line 64
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v3

    .line 65
    return-void
.end method

.method public static isOperatorConsideredNonRoaming(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Z
    .locals 10
    .param p0, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p1, "newOperatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x0

    .line 135
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v7

    .line 138
    :cond_1
    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "networkMcc":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "imsi":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 143
    invoke-virtual {v2, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "simMcc":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->NON_ROAMING_MCC:[[Ljava/lang/String;

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 145
    .local v4, "mccArray":[Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v4, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 146
    const-string v7, "GSSTInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Consider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with sim mcc "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " as non roaming."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v7, 0x1

    goto :goto_0

    .line 144
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static sendIssueIntent(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)V
    .locals 4
    .param p0, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_0

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.issuecollection.TelephonyIssueReceiver.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "UTCtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 79
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 81
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static setReceivedNitz(IZ)V
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "received"    # Z

    .prologue
    .line 193
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aput-boolean p1, v0, p0

    .line 194
    const-string v0, "GSSTInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReceivedNitz phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public static setReceivedNitzAndOperator(IZLjava/lang/String;)V
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "received"    # Z
    .param p2, "nitzOperator"    # Ljava/lang/String;

    .prologue
    .line 203
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aput-boolean p1, v0, p0

    .line 204
    sget-object v1, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v1, p0

    .line 205
    const-string v0, "GSSTInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReceivedNitz phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nitzOperator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void

    :cond_0
    move-object v0, p2

    .line 204
    goto :goto_0
.end method

.method public static setReceivedNitzOperator(ILjava/lang/String;)V
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "nitzOperator"    # Ljava/lang/String;

    .prologue
    .line 198
    sget-object v1, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v1, p0

    .line 199
    const-string v0, "GSSTInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReceivedNitzOperator phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nitzOperator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    :cond_0
    move-object v0, p1

    .line 198
    goto :goto_0
.end method

.method public static updateNitzInfo(IILjava/lang/String;)Z
    .locals 8
    .param p0, "slot"    # I
    .param p1, "zoneOffset"    # I
    .param p2, "currentOperator"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 240
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aget-boolean v3, v3, p0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    const-string v3, "GSSTInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNitzInfo from  slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NitzOperator old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aget-object v6, v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " new="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aput-object p2, v3, p0

    .line 244
    :cond_0
    if-nez p1, :cond_1

    move v3, v4

    .line 271
    :goto_0
    return v3

    .line 247
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_2

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "currentMcc":Ljava/lang/String;
    :goto_1
    const-string v3, "460"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    .line 250
    goto :goto_0

    .line 247
    .end local v0    # "currentMcc":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 252
    .restart local v0    # "currentMcc":Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    .line 254
    goto :goto_0

    .line 257
    :cond_4
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->getTimeZoneByMcc(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/TimeZone;

    move-result-object v1

    .line 258
    .local v1, "mccZone":Ljava/util/TimeZone;
    if-nez v1, :cond_5

    move v3, v4

    .line 259
    goto :goto_0

    .line 261
    :cond_5
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 262
    .local v2, "mccZoneOffset":I
    const-string v3, "GSSTInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needResetTimezone slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mccZoneOffset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " zoneOffset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nitzOperator"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aget-object v6, v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-ne p1, v2, :cond_7

    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_6

    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    .line 267
    goto/16 :goto_0

    .line 264
    :cond_6
    const-string v3, ""

    goto :goto_2

    .line 269
    :cond_7
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sReceiveNitz:[Z

    aput-boolean v4, v3, p0

    .line 270
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->sNitzOperator:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, p0

    .line 271
    const/4 v3, 0x1

    goto/16 :goto_0
.end method
