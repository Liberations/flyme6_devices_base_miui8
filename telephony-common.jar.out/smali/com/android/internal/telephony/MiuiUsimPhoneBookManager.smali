.class public Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;
.super Landroid/os/Handler;
.source "MiuiUsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;,
        Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;,
        Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;,
        Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$MyHandler;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final EVENT_ANR_RECORD_LOAD_DONE:I = 0x4

.field static final EVENT_EMAIL_RECORD_LOAD_DONE:I = 0x5

.field static final EVENT_IAP_RECORD_LOAD_DONE:I = 0x6

.field static final EVENT_PBR_LOAD_DONE:I = 0x1

.field static final EVENT_RECORD_SIZE_READ_DONE:I = 0x2

.field static final EVENT_REQUEST_PBR_LOAD:I = 0x8

.field static final EVENT_UPDATE_DONE:I = 0x7

.field static final EVENT_USIM_ADN_LOAD_DONE:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "UsimPhoneBookManager"

.field static final MAX_ANR_DATA_LENGTH:I = 0xb

.field static final MAX_ANR_LENGTH:I = 0x14

.field static final USIM_EFAAS_TAG:I = 0xc7

.field static final USIM_EFADN_TAG:I = 0xc0

.field static final USIM_EFANR_TAG:I = 0xc4

.field static final USIM_EFCCP1_TAG:I = 0xcb

.field static final USIM_EFEMAIL_TAG:I = 0xca

.field static final USIM_EFEXT1_TAG:I = 0xc2

.field static final USIM_EFGRP_TAG:I = 0xc6

.field static final USIM_EFGSD_TAG:I = 0xc8

.field static final USIM_EFIAP_TAG:I = 0xc1

.field static final USIM_EFPBC_TAG:I = 0xc5

.field static final USIM_EFSNE_TAG:I = 0xc3

.field static final USIM_EFUID_TAG:I = 0xc9

.field static final USIM_TYPE1_TAG:I = 0xa8

.field static final USIM_TYPE2_CONDITIONAL_LENGTH:I = 0x2

.field static final USIM_TYPE2_TAG:I = 0xa9

.field static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

.field mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mIapFiles:[[[B

.field mLock:Ljava/lang/Object;

.field mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

.field mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field mReadLock:Ljava/lang/Object;

.field mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field mRecordSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;",
            ">;"
        }
    .end annotation
.end field

.field mSupportAnr:[Z

.field mSupportEmail:[Z

.field mUpdateResult:Landroid/os/AsyncResult;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;)V
    .locals 2
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 97
    iput-object p2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    .line 101
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsimPhoneBookManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$MyHandler;-><init>(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method private getRecordNumber(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;I)I
    .locals 11
    .param p1, "record"    # Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;
    .param p2, "recordCount"    # I

    .prologue
    const/4 v10, 0x1

    .line 1001
    const/4 v4, -0x1

    .line 1002
    .local v4, "recordNumber":I
    new-instance v6, Ljava/util/BitSet;

    add-int/lit8 v8, p2, 0x1

    invoke-direct {v6, v8}, Ljava/util/BitSet;-><init>(I)V

    .line 1003
    .local v6, "validIndex":Ljava/util/BitSet;
    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v6, v10, v8}, Ljava/util/BitSet;->set(II)V

    .line 1005
    iget-object v8, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v8, v8, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    iget v9, p1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    .line 1006
    .local v3, "r":Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;
    iget v8, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mEfTag:I

    iget v9, p1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v8, v9, :cond_0

    .line 1007
    iget-object v8, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    iget v9, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    aget-object v2, v8, v9

    .line 1008
    .local v2, "iaps":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v8, v2

    if-ge v0, v8, :cond_0

    .line 1009
    aget-object v7, v2, v0

    .line 1010
    .local v7, "value":[B
    if-eqz v7, :cond_1

    .line 1011
    iget v8, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v5, v7, v8

    .line 1012
    .local v5, "tempIndex":I
    if-lez v5, :cond_1

    const/16 v8, 0xff

    if-ge v5, v8, :cond_1

    if-gt v5, p2, :cond_1

    .line 1013
    invoke-virtual {v6, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1008
    .end local v5    # "tempIndex":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1020
    .end local v0    # "i":I
    .end local v2    # "iaps":[[B
    .end local v3    # "r":Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;
    .end local v7    # "value":[B
    :cond_2
    invoke-virtual {v6, v10}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    .line 1021
    return v4
.end method

.method private initCapabilitySupported(I)V
    .locals 3
    .param p1, "numRecs"    # I

    .prologue
    const/4 v2, 0x1

    .line 1220
    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportEmail:[Z

    .line 1221
    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportAnr:[Z

    .line 1222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportEmail:[Z

    aput-boolean v2, v1, v0

    .line 1224
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportAnr:[Z

    aput-boolean v2, v1, v0

    .line 1222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1226
    :cond_0
    return-void
.end method

.method private notifyPending(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1105
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1106
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1107
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1109
    .end local v0    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1110
    return-void
.end method


# virtual methods
.method buildAnrRecord(Ljava/lang/String;I)[B
    .locals 6
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "recordSize"    # I

    .prologue
    .line 1050
    new-array v1, p2, [B

    .line 1051
    .local v1, "data":[B
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 1053
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1054
    .local v2, "updatedAnr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1066
    .end local v1    # "data":[B
    :cond_0
    :goto_0
    return-object v1

    .line 1057
    .restart local v1    # "data":[B
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_2

    .line 1058
    const/4 v1, 0x0

    goto :goto_0

    .line 1061
    :cond_2
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 1062
    .local v0, "bcdNumber":[B
    if-eqz v0, :cond_0

    .line 1063
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, v0

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1064
    const/4 v3, 0x1

    array-length v4, v0

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    goto :goto_0
.end method

.method buildEmailRecord(Ljava/lang/String;II)[B
    .locals 11
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "adnRecordNumber"    # I
    .param p3, "recordSize"    # I

    .prologue
    const/16 v10, 0xc0

    const/4 v8, 0x0

    .line 1025
    new-array v3, p3, [B

    .line 1026
    .local v3, "emailRecordData":[B
    const/4 v7, -0x1

    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 1028
    iget-object v7, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    const/16 v9, 0xca

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    iget v7, v7, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v9, 0xa9

    if-ne v7, v9, :cond_1

    const/4 v2, 0x1

    .line 1029
    .local v2, "emailInIap":Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1030
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    .line 1031
    .local v1, "emailData":[B
    if-eqz v2, :cond_2

    array-length v7, v3

    add-int/lit8 v4, v7, -0x2

    .line 1033
    .local v4, "maxDataLength":I
    :goto_1
    array-length v7, v1

    if-le v7, v4, :cond_3

    .line 1034
    const/4 v3, 0x0

    .line 1046
    .end local v1    # "emailData":[B
    .end local v3    # "emailRecordData":[B
    .end local v4    # "maxDataLength":I
    :cond_0
    :goto_2
    return-object v3

    .end local v2    # "emailInIap":Z
    .restart local v3    # "emailRecordData":[B
    :cond_1
    move v2, v8

    .line 1028
    goto :goto_0

    .line 1031
    .restart local v1    # "emailData":[B
    .restart local v2    # "emailInIap":Z
    :cond_2
    array-length v4, v3

    goto :goto_1

    .line 1037
    .restart local v4    # "maxDataLength":I
    :cond_3
    array-length v7, v1

    invoke-static {v1, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1038
    if-eqz v2, :cond_0

    .line 1039
    iget-object v7, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v7, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 1040
    .local v0, "adnRecordCount":I
    add-int/lit8 v7, p2, -0x1

    div-int v5, v7, v0

    .line 1041
    .local v5, "pbrIndex":I
    iget-object v7, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    .line 1042
    .local v6, "record":Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;
    add-int/lit8 v7, p3, -0x2

    iget-byte v8, v6, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mSfi:B

    aput-byte v8, v3, v7

    .line 1043
    add-int/lit8 v7, p3, -0x1

    add-int/lit8 v8, p2, -0x1

    rem-int/2addr v8, v0

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    goto :goto_2
.end method

.method checkAnrCapacityFree(ILjava/lang/String;)Z
    .locals 9
    .param p1, "adnRecordNumber"    # I
    .param p2, "anr"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xc4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 757
    add-int/lit8 v6, p1, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v7, 0xc0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    div-int v1, v6, v3

    .line 758
    .local v1, "pbrIndex":I
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportAnr:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    move v4, v5

    .line 771
    :cond_0
    :goto_0
    return v4

    .line 762
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 766
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 767
    .local v0, "anrRecordCount":I
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    .line 768
    .local v2, "record":Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;
    iget v3, v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v6, 0xa9

    if-ne v3, v6, :cond_0

    .line 769
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->getRecordNumber(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;I)I

    move-result v3

    if-lez v3, :cond_2

    move v3, v4

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1
.end method

.method checkAnrLength(Ljava/lang/String;)Z
    .locals 3
    .param p1, "anr"    # Ljava/lang/String;

    .prologue
    .line 790
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "updatedAnr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method checkEmailCapacityFree(I[Ljava/lang/String;)Z
    .locals 9
    .param p1, "adnRecordNumber"    # I
    .param p2, "emails"    # [Ljava/lang/String;

    .prologue
    const/16 v8, 0xca

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 739
    add-int/lit8 v6, p1, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v7, 0xc0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    div-int v1, v6, v3

    .line 740
    .local v1, "pbrIndex":I
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportEmail:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    move v4, v5

    .line 753
    :cond_0
    :goto_0
    return v4

    .line 744
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->hasEmail([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 748
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 749
    .local v0, "emailRecordCount":I
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    .line 750
    .local v2, "record":Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;
    iget v3, v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v6, 0xa9

    if-ne v3, v6, :cond_0

    .line 751
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->getRecordNumber(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;I)I

    move-result v3

    if-lez v3, :cond_2

    move v3, v4

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1
.end method

.method checkEmailLength([Ljava/lang/String;)Z
    .locals 8
    .param p1, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0xca

    const/4 v4, 0x0

    .line 775
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v1, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    .line 776
    .local v1, "emailRecordSize":I
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    if-eq v3, v7, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    iget v3, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-ne v3, v5, :cond_0

    add-int/lit8 v2, v1, -0x2

    .line 780
    .local v2, "maxDataLength":I
    :goto_0
    if-eqz p1, :cond_1

    aget-object v3, p1, v4

    if-eqz v3, :cond_1

    .line 781
    aget-object v3, p1, v4

    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 782
    .local v0, "emailData":[B
    if-eq v2, v7, :cond_1

    array-length v3, v0

    if-le v3, v2, :cond_1

    move v3, v4

    .line 786
    .end local v0    # "emailData":[B
    :goto_1
    return v3

    .end local v2    # "maxDataLength":I
    :cond_0
    move v2, v1

    .line 776
    goto :goto_0

    .line 786
    .restart local v2    # "maxDataLength":I
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1229
    const-string v0, "MiuiUsimPhoneBookManager: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1230
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    if-eqz v0, :cond_0

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportEmail:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportAnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportAnr:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhoneBookRecords.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRecordSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPbrFile.mFileIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPbrFile.mEfRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1240
    :goto_0
    return-void

    .line 1238
    :cond_0
    const-string v0, " mPbrFile=null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAdnRecordsIfLoaded()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 327
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 353
    :goto_0
    return-void

    .line 329
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readPbrFileDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 332
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readRecordSizeDone(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 335
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readAdnFileDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 338
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readAnrRecordDone(IILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 341
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readEmailRecordDone(IILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 344
    :pswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readIapRecordDone(IILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 347
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->notifyPending(Landroid/os/AsyncResult;)V

    .line 350
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method hasEmail([Ljava/lang/String;)Z
    .locals 2
    .param p1, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 735
    if-eqz p1, :cond_0

    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 150
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v3

    .line 196
    :goto_0
    return-object v2

    .line 154
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readPbrFileAndWait()V

    .line 158
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_2

    .line 159
    monitor-exit v3

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 162
    :cond_2
    const/16 v4, 0xc0

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readRecordSizeAndWait(I)V

    .line 163
    const/16 v4, 0xca

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readRecordSizeAndWait(I)V

    .line 164
    const/16 v4, 0xc1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readRecordSizeAndWait(I)V

    .line 165
    const/16 v4, 0xc4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readRecordSizeAndWait(I)V

    .line 167
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_3

    .line 168
    monitor-exit v3

    goto :goto_0

    .line 171
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 172
    .local v1, "numRecs":I
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->initCapabilitySupported(I)V

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 175
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_4

    .line 176
    monitor-exit v3

    goto :goto_0

    .line 178
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 182
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v3

    goto :goto_0

    .line 185
    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 186
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_7

    .line 187
    monitor-exit v3

    goto :goto_0

    .line 189
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 190
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_8

    .line 191
    monitor-exit v3

    goto :goto_0

    .line 193
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 195
    :cond_9
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method readAdnFileAndWait(I)V
    .locals 7
    .param p1, "pbrIndex"    # I

    .prologue
    const/16 v6, 0xc2

    const/16 v5, 0xc0

    .line 410
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 411
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 412
    :cond_0
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAdnFileAndWait: no ADN tag in PBR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 419
    .local v1, "extEf":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v1, v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 422
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 417
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "extEf":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method readAdnFileDone(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 429
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 431
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 432
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 436
    .end local v0    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 438
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    return-void

    .line 434
    :cond_0
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "readAdnFileDone failed"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method readAnrFileAndWait(I)V
    .locals 6
    .param p1, "pbrIndex"    # I

    .prologue
    const/16 v4, 0xc4

    const/4 v5, 0x0

    .line 442
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 443
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 444
    :cond_0
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAnrFileAndWait: no ANR tag in PBR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportAnr:[Z

    aput-boolean v5, v2, p1

    .line 466
    :cond_1
    :goto_0
    return-void

    .line 449
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 450
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "readAnrFileAndWait: size of ANR tag in PBR is incorrect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportAnr:[Z

    aput-boolean v5, v2, p1

    goto :goto_0

    .line 455
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    .line 456
    .local v1, "record":Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;
    iget v2, v1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_5

    .line 457
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 458
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "readAnrFileAndWait: no AIP size in PBR and anr type is type2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportAnr:[Z

    aput-boolean v5, v2, p1

    goto :goto_0

    .line 462
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readType2Ef(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;)V

    goto :goto_0

    .line 463
    :cond_5
    iget v2, v1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_1

    .line 464
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readType1Ef(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;)V

    goto :goto_0
.end method

.method readAnrRecordDone(IILandroid/os/AsyncResult;)V
    .locals 3
    .param p1, "pbrIndex"    # I
    .param p2, "adnIndex"    # I
    .param p3, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 469
    iget-object v0, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->setPhoneAdnRecordAnr(II[B)V

    .line 475
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 480
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    return-void

    .line 472
    :cond_1
    const-string v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAnrRecord failed for pbrIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adnIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 480
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method readEmailFileAndWait(I)V
    .locals 6
    .param p1, "pbrIndex"    # I

    .prologue
    const/16 v4, 0xca

    const/4 v5, 0x0

    .line 708
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 709
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 710
    :cond_0
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readEmailFileAndWait: no EMAIL tag in PBR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportEmail:[Z

    aput-boolean v5, v2, p1

    .line 732
    :cond_1
    :goto_0
    return-void

    .line 715
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 716
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "readEmailFileAndWait: size of EMAIL tag in PBR is incorrect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportEmail:[Z

    aput-boolean v5, v2, p1

    goto :goto_0

    .line 721
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    .line 722
    .local v1, "record":Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;
    iget v2, v1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_5

    .line 723
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 724
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "readEmailFileAndWait: no AIP size in PBR and anr type is type2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportEmail:[Z

    aput-boolean v5, v2, p1

    goto :goto_0

    .line 728
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readType2Ef(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;)V

    goto :goto_0

    .line 729
    :cond_5
    iget v2, v1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_1

    .line 730
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readType1Ef(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;)V

    goto :goto_0
.end method

.method readEmailRecordDone(IILandroid/os/AsyncResult;)V
    .locals 3
    .param p1, "pbrIndex"    # I
    .param p2, "adnIndex"    # I
    .param p3, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 484
    iget-object v0, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 485
    iget-object v0, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->setPhoneAdnRecordEmail(II[B)V

    .line 490
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 495
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    return-void

    .line 487
    :cond_1
    const-string v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAnrRecord failed for pbrIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adnIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method readIapFileAndWait(I)V
    .locals 19
    .param p1, "pbrIndex"    # I

    .prologue
    .line 648
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    if-nez v15, :cond_0

    .line 649
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v15, v15, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v15

    new-array v15, v15, [[[B

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    .line 652
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    aget-object v15, v15, p1

    if-eqz v15, :cond_2

    .line 690
    :cond_1
    :goto_0
    return-void

    .line 656
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v16, 0xc0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v5, v15, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 658
    .local v5, "adnRecordCount":I
    new-array v9, v5, [[B

    .line 659
    .local v9, "iapList":[[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v16, 0xc1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v10, v15, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    .line 660
    .local v10, "iapRecordSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v5, :cond_3

    .line 661
    new-array v14, v10, [B

    .line 662
    .local v14, "value":[B
    const/4 v15, -0x1

    invoke-static {v14, v15}, Ljava/util/Arrays;->fill([BB)V

    .line 663
    aput-object v14, v9, v8

    .line 660
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 665
    .end local v14    # "value":[B
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    aput-object v9, v15, p1

    .line 667
    mul-int v12, p1, v5

    .line 668
    .local v12, "offset":I
    add-int v11, v12, v5

    .line 669
    .local v11, "max":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v15, v11, :cond_4

    .line 670
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 673
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v15, v15, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const/16 v16, 0xc1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 674
    .local v7, "efid":I
    move v4, v12

    .local v4, "adnIndex":I
    :goto_2
    if-ge v4, v11, :cond_6

    .line 675
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 676
    .local v13, "rec":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    .line 677
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 678
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    add-int/lit8 v16, v4, 0x1

    sub-int v16, v16, v12

    const/16 v17, 0x6

    sub-int v18, v4, v12

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v7, v10, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    .line 674
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 683
    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v15

    if-eqz v15, :cond_1

    .line 685
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 686
    :catch_0
    move-exception v6

    .line 687
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v15, "UsimPhoneBookManager"

    const-string v16, "Interrupted Exception in readIapFileAndWait"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method readIapRecordDone(IILandroid/os/AsyncResult;)V
    .locals 3
    .param p1, "pbrIndex"    # I
    .param p2, "iapIndex"    # I
    .param p3, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 693
    iget-object v0, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    aget-object v1, v0, p1

    iget-object v0, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aput-object v0, v1, p2

    .line 699
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 704
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    return-void

    .line 696
    :cond_1
    const-string v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readIapRecordDone failed for pbrIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iapIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 356
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 357
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 358
    const-string v1, "readPbrFileAndWait"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method readPbrFileDone(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 362
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 364
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 365
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 369
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 370
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->notifyPending(Landroid/os/AsyncResult;)V

    .line 371
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    return-void

    .line 367
    :cond_0
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "readPbrFile failed"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method readRecordSizeAndWait(II)Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;
    .locals 4
    .param p1, "type"    # I
    .param p2, "fileId"    # I

    .prologue
    const/4 v3, 0x0

    .line 389
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 390
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, v3, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 391
    const-string v1, "readRecordSizeAndWait"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    return-object v1
.end method

.method readRecordSizeAndWait(I)V
    .locals 3
    .param p1, "efTag"    # I

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readRecordSizeAndWait(II)Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    .line 386
    :cond_0
    return-void
.end method

.method readRecordSizeDone(ILandroid/os/AsyncResult;)V
    .locals 4
    .param p1, "fileId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 396
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 397
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 398
    .local v0, "recordSize":[I
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 399
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;-><init>(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;[I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .end local v0    # "recordSize":[I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 405
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->notifyPending(Landroid/os/AsyncResult;)V

    .line 406
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    return-void

    .line 402
    :cond_1
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "readRecordSize failed"

    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method readType1Ef(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;)V
    .locals 13
    .param p1, "record"    # Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    .prologue
    .line 529
    iget v9, p1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v10, 0xa8

    if-eq v9, v10, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v10, 0xc0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v1, v9, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 534
    .local v1, "adnRecordCount":I
    iget v9, p1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    mul-int v4, v9, v1

    .line 535
    .local v4, "offset":I
    add-int v3, v4, v1

    .line 536
    .local v3, "max":I
    iget-object v9, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v3, :cond_2

    .line 537
    iget-object v9, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 542
    :cond_2
    iget v9, p1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v9, :sswitch_data_0

    .line 552
    const-string v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readType1Ef: unsupported tag "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :sswitch_0
    const/4 v8, 0x4

    .line 545
    .local v8, "what":I
    iget-object v5, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 556
    .local v5, "readingNum":Ljava/util/concurrent/atomic/AtomicInteger;
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    iget v10, p1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v7, v9, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    .line 557
    .local v7, "recordSize":I
    move v0, v4

    .local v0, "adnIndex":I
    :goto_2
    if-ge v0, v3, :cond_4

    .line 558
    iget-object v9, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 559
    .local v6, "rec":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 560
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 561
    iget-object v9, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v10, p1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mEfTag:I

    add-int/lit8 v11, v0, 0x1

    sub-int/2addr v11, v4

    iget v12, p1, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    invoke-virtual {p0, v8, v12, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v9, v10, v7, v11, v12}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    .line 557
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 548
    .end local v0    # "adnIndex":I
    .end local v5    # "readingNum":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v7    # "recordSize":I
    .end local v8    # "what":I
    :sswitch_1
    const/4 v8, 0x5

    .line 549
    .restart local v8    # "what":I
    iget-object v5, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 550
    .restart local v5    # "readingNum":Ljava/util/concurrent/atomic/AtomicInteger;
    goto :goto_1

    .line 566
    .restart local v0    # "adnIndex":I
    .restart local v7    # "recordSize":I
    :cond_4
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    if-eqz v9, :cond_0

    .line 568
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 569
    :catch_0
    move-exception v2

    .line 570
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "Interrupted Exception in readType1Ef"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 542
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method

.method readType2Ef(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;)V
    .locals 18
    .param p1, "record"    # Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    .prologue
    .line 576
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v16, 0xa9

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v15, v15, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 581
    .local v5, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v5, :cond_0

    const/16 v15, 0xc1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 585
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 586
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    array-length v15, v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    if-nez v15, :cond_3

    .line 588
    :cond_2
    const-string v15, "UsimPhoneBookManager"

    const-string v16, "readType2Ef: IAP file is empty"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 594
    :cond_3
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v15, :sswitch_data_0

    .line 604
    const-string v15, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readType2EF: no implementation for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    :sswitch_0
    const/4 v14, 0x4

    .line 597
    .local v14, "what":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 608
    .local v10, "readingNum":Ljava/util/concurrent/atomic/AtomicInteger;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    move/from16 v16, v0

    aget-object v7, v15, v16

    .line 609
    .local v7, "iaps":[[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v16, 0xc0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v15, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 610
    .local v3, "adnRecordCount":I
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    mul-int v9, v15, v3

    .line 611
    .local v9, "offset":I
    add-int v8, v9, v3

    .line 612
    .local v8, "max":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v15, v8, :cond_4

    .line 613
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 616
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v13, v15, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    .line 617
    .local v13, "recordSize":I
    move v2, v9

    .local v2, "adnIndex":I
    :goto_2
    if-ge v2, v8, :cond_9

    .line 618
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 619
    .local v11, "rec":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6

    .line 620
    sub-int v15, v2, v9

    aget-object v6, v7, v15

    .line 621
    .local v6, "iap":[B
    if-eqz v6, :cond_5

    array-length v15, v6

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType2Record:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v15, v0, :cond_7

    .line 622
    :cond_5
    const-string v15, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readType2Ef: No IAP for ADN "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    add-int/lit8 v17, v2, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .end local v6    # "iap":[B
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 600
    .end local v2    # "adnIndex":I
    .end local v3    # "adnRecordCount":I
    .end local v7    # "iaps":[[B
    .end local v8    # "max":I
    .end local v9    # "offset":I
    .end local v10    # "readingNum":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v11    # "rec":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v13    # "recordSize":I
    .end local v14    # "what":I
    :sswitch_1
    const/4 v14, 0x5

    .line 601
    .restart local v14    # "what":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 602
    .restart local v10    # "readingNum":Ljava/util/concurrent/atomic/AtomicInteger;
    goto/16 :goto_1

    .line 626
    .restart local v2    # "adnIndex":I
    .restart local v3    # "adnRecordCount":I
    .restart local v6    # "iap":[B
    .restart local v7    # "iaps":[[B
    .restart local v8    # "max":I
    .restart local v9    # "offset":I
    .restart local v11    # "rec":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .restart local v13    # "recordSize":I
    :cond_7
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v12, v6, v15

    .line 627
    .local v12, "recordNumber":I
    const/4 v15, -0x1

    if-ne v12, v15, :cond_8

    .line 628
    const-string v15, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readType2Ef: NO IAP index for ADN "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    add-int/lit8 v17, v2, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 632
    :cond_8
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 633
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v13, v12, v1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    goto :goto_3

    .line 638
    .end local v6    # "iap":[B
    .end local v11    # "rec":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v12    # "recordNumber":I
    :cond_9
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v15

    if-eqz v15, :cond_0

    .line 640
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 641
    :catch_0
    move-exception v4

    .line 642
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v15, "UsimPhoneBookManager"

    const-string v16, "Interrupted Exception in readType2Ef"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 594
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method

.method public requestLoadEfFilesFromUsim(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    .line 110
    const/4 v0, 0x0

    check-cast v0, [[[B

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 112
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setPhoneAdnRecordAnr(II[B)V
    .locals 4
    .param p1, "pbrIndex"    # I
    .param p2, "adnIndex"    # I
    .param p3, "anrData"    # [B

    .prologue
    const/4 v3, 0x2

    .line 499
    if-eqz p3, :cond_0

    array-length v2, p3

    if-ge v2, v3, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    const/4 v2, 0x1

    aget-byte v1, p3, v2

    .line 504
    .local v1, "length":I
    if-lez v1, :cond_0

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 505
    invoke-static {p3, v3, v1}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "anr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setAnr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setPhoneAdnRecordEmail(II[B)V
    .locals 5
    .param p1, "pbrIndex"    # I
    .param p2, "adnIndex"    # I
    .param p3, "emailData"    # [B

    .prologue
    const/4 v4, 0x0

    .line 513
    if-nez p3, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    array-length v1, p3

    .line 518
    .local v1, "length":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 519
    add-int/lit8 v1, v1, -0x2

    .line 522
    :cond_2
    invoke-static {p3, v4, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setEmails([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;)I
    .locals 6
    .param p1, "recordNumber"    # I
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .prologue
    .line 200
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 201
    add-int/lit8 v4, p1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v5, 0xc0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v2, v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    div-int v0, v4, v2

    .line 202
    .local v0, "pbrIndex":I
    const/4 v1, 0x0

    .line 204
    .local v1, "result":I
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v5, 0xc0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v2, v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    invoke-static {v4, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isAdnAlphaTagTooLong(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const/16 v2, -0x3ec

    monitor-exit v3

    .line 251
    :goto_0
    return v2

    .line 208
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isAdnNumberTooLong(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    const/16 v2, -0x3eb

    monitor-exit v3

    goto :goto_0

    .line 252
    .end local v0    # "pbrIndex":I
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 212
    .restart local v0    # "pbrIndex":I
    .restart local v1    # "result":I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportEmail:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3

    .line 213
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->checkEmailCapacityFree(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 214
    const/16 v2, -0x3f3

    monitor-exit v3

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->checkEmailLength([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 218
    const/16 v2, -0x3f4

    monitor-exit v3

    goto :goto_0

    .line 222
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportAnr:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_5

    .line 223
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->checkAnrCapacityFree(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 224
    const/16 v2, -0x3f0

    monitor-exit v3

    goto :goto_0

    .line 227
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->checkAnrLength(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 228
    const/16 v2, -0x3f1

    monitor-exit v3

    goto :goto_0

    .line 232
    :cond_5
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->updateAdnAndWait(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)I

    move-result v1

    .line 233
    if-eqz v1, :cond_6

    .line 234
    monitor-exit v3

    move v2, v1

    goto :goto_0

    .line 237
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportEmail:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_7

    .line 238
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->updateEmailAndWait(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)I

    move-result v1

    .line 239
    if-eqz v1, :cond_7

    .line 240
    monitor-exit v3

    move v2, v1

    goto :goto_0

    .line 244
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportAnr:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_8

    .line 245
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->updateAnrAndWait(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)I

    move-result v1

    .line 246
    if-eqz v1, :cond_8

    .line 247
    monitor-exit v3

    move v2, v1

    goto :goto_0

    .line 251
    :cond_8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    goto :goto_0
.end method

.method public update(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;ILcom/android/internal/telephony/uicc/MiuiAdnRecord;)I
    .locals 18
    .param p1, "oldAdn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p2, "oldRecordNumber"    # I
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .prologue
    .line 256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 257
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v14, 0xc0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v12, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 258
    .local v3, "adnCount":I
    add-int/lit8 v12, p2, -0x1

    div-int v6, v12, v3

    .line 260
    .local v6, "pbrIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v12, v12, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    new-array v10, v12, [I

    .line 261
    .local v10, "validPbr":[I
    const/4 v12, 0x0

    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([II)V

    .line 262
    array-length v11, v10

    .line 265
    .local v11, "validPbrCount":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportEmail:[Z

    aget-boolean v12, v12, v6

    if-eqz v12, :cond_1

    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v12, v12, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    const/16 v14, 0xca

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    .line 267
    .local v7, "record":Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->hasEmail([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->hasEmail([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    iget v12, v7, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v14, 0xa9

    if-ne v12, v14, :cond_1

    .line 268
    const/4 v4, 0x0

    .local v4, "i":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v12, v12, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v9

    .local v9, "s":I
    :goto_0
    if-ge v4, v9, :cond_1

    .line 269
    mul-int v12, v4, v3

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->checkEmailCapacityFree(I[Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 270
    const/16 v12, -0x3f3

    aput v12, v10, v4

    .line 271
    add-int/lit8 v11, v11, -0x1

    .line 268
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 277
    .end local v4    # "i":I
    .end local v7    # "record":Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;
    .end local v9    # "s":I
    :cond_1
    if-nez v11, :cond_2

    .line 278
    aget v12, v10, v6

    monitor-exit v13

    .line 321
    :goto_1
    return v12

    .line 282
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mSupportAnr:[Z

    aget-boolean v12, v12, v6

    if-eqz v12, :cond_4

    .line 283
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v12, v12, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    const/16 v14, 0xc4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    .line 284
    .restart local v7    # "record":Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget v12, v7, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v14, 0xa9

    if-ne v12, v14, :cond_4

    .line 285
    const/4 v4, 0x0

    .restart local v4    # "i":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v12, v12, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v9

    .restart local v9    # "s":I
    :goto_2
    if-ge v4, v9, :cond_4

    .line 286
    mul-int v12, v4, v3

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->checkAnrCapacityFree(ILjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 287
    const/16 v12, -0x3f0

    aput v12, v10, v4

    .line 288
    add-int/lit8 v11, v11, -0x1

    .line 285
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 294
    .end local v4    # "i":I
    .end local v7    # "record":Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;
    .end local v9    # "s":I
    :cond_4
    if-nez v11, :cond_5

    .line 295
    aget v12, v10, v6

    monitor-exit v13

    goto :goto_1

    .line 322
    .end local v3    # "adnCount":I
    .end local v6    # "pbrIndex":I
    .end local v10    # "validPbr":[I
    .end local v11    # "validPbrCount":I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 298
    .restart local v3    # "adnCount":I
    .restart local v6    # "pbrIndex":I
    .restart local v10    # "validPbr":[I
    .restart local v11    # "validPbrCount":I
    :cond_5
    :try_start_1
    aget v12, v10, v6

    if-nez v12, :cond_6

    .line 299
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->update(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;)I

    move-result v12

    monitor-exit v13

    goto :goto_1

    .line 302
    :cond_6
    const/4 v8, -0x1

    .line 303
    .local v8, "recordNumber":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    array-length v12, v10

    if-ge v4, v12, :cond_9

    .line 304
    aget v12, v10, v4

    if-nez v12, :cond_7

    .line 305
    mul-int v5, v3, v4

    .local v5, "j":I
    add-int v9, v5, v3

    .restart local v9    # "s":I
    :goto_4
    if-ge v5, v9, :cond_7

    .line 306
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 307
    add-int/lit8 v8, v5, 0x1

    .line 303
    .end local v5    # "j":I
    .end local v9    # "s":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 305
    .restart local v5    # "j":I
    .restart local v9    # "s":I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 314
    .end local v5    # "j":I
    .end local v9    # "s":I
    :cond_9
    if-gez v8, :cond_a

    .line 315
    aget v12, v10, v6

    monitor-exit v13

    goto/16 :goto_1

    .line 318
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 319
    new-instance v12, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const-string v14, ""

    const-string v15, ""

    const/16 v16, 0x0

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v14, v15, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->update(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;)I

    .line 321
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->update(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;)I

    move-result v12

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method updateAdnAndWait(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)I
    .locals 13
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p2, "adnRecordNumber"    # I

    .prologue
    const/16 v6, 0xc2

    const/4 v1, 0x0

    const/16 v5, 0xc0

    .line 1070
    add-int/lit8 v2, p2, -0x1

    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    div-int v11, v2, v0

    .line 1071
    .local v11, "pbrIndex":I
    add-int/lit8 v2, p2, -0x1

    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    rem-int v8, v2, v0

    .line 1073
    .local v8, "adnIndex":I
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 1074
    .local v9, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v9, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1075
    :cond_0
    const/16 v0, -0x3f6

    .line 1091
    :goto_0
    return v0

    .line 1079
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1081
    .local v4, "extensionEF":I
    :goto_1
    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v12, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1082
    .local v12, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->getLoader()Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v5, v8, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v12}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 1084
    const-string v0, "updateAdnAndWait"

    invoke-virtual {p0, v12, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 1088
    .local v10, "oldAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setAlphaTag(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setNumber(Ljava/lang/String;)V

    .line 1091
    .end local v10    # "oldAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/android/internal/telephony/MiuiIccProviderException;->getErrorCauseFromException(Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0

    .end local v4    # "extensionEF":I
    .end local v12    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_3
    move v4, v1

    .line 1079
    goto :goto_1
.end method

.method updateAnrAndWait(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)I
    .locals 7
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p2, "adnRecordNumber"    # I

    .prologue
    const/16 v6, 0xc4

    .line 814
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v5, 0xc0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v4, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 815
    .local v0, "adnRecordCount":I
    add-int/lit8 v4, p2, -0x1

    div-int v2, v4, v0

    .line 817
    .local v2, "pbrIndex":I
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 818
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 819
    :cond_0
    const/16 v4, -0x3f6

    .line 829
    :goto_0
    return v4

    .line 822
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    .line 824
    .local v3, "record":Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;
    iget v4, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-ne v4, v5, :cond_2

    .line 825
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2, v3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->updateType2Ef(Ljava/lang/String;ILcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;)I

    move-result v4

    goto :goto_0

    .line 826
    :cond_2
    iget v4, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_3

    .line 827
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2, v3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->updateType1Ef(Ljava/lang/String;ILcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;)I

    move-result v4

    goto :goto_0

    .line 829
    :cond_3
    const/16 v4, -0x3e9

    goto :goto_0
.end method

.method updateEmailAndWait(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)I
    .locals 9
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p2, "adnRecordNumber"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0xca

    const/4 v7, 0x0

    .line 795
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v6, 0xc0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v4, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 796
    .local v0, "adnRecordCount":I
    add-int/lit8 v4, p2, -0x1

    div-int v2, v4, v0

    .line 798
    .local v2, "pbrIndex":I
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 799
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 800
    :cond_0
    const/16 v4, -0x3f6

    .line 810
    :goto_0
    return v4

    .line 803
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    .line 805
    .local v3, "record":Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;
    iget v4, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v6, 0xa9

    if-ne v4, v6, :cond_3

    .line 806
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v5

    :goto_1
    invoke-virtual {p0, v4, p2, v3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->updateType2Ef(Ljava/lang/String;ILcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;)I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    goto :goto_1

    .line 807
    :cond_3
    iget v4, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v6, 0xa8

    if-ne v4, v6, :cond_5

    .line 808
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_2
    invoke-virtual {p0, v5, p2, v3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->updateType1Ef(Ljava/lang/String;ILcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;)I

    move-result v4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v7

    goto :goto_2

    .line 810
    :cond_5
    const/16 v4, -0x3e9

    goto :goto_0
.end method

.method updateType1Ef(Ljava/lang/String;ILcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;)I
    .locals 12
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "adnRecordNumber"    # I
    .param p3, "record"    # Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    .prologue
    const/16 v11, 0xca

    const/16 v5, 0xc4

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/16 v0, -0x3f6

    .line 833
    iget v1, p3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v2, 0xa8

    if-eq v1, v2, :cond_0

    .line 895
    :goto_0
    return v0

    .line 837
    :cond_0
    iget v1, p3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 845
    :sswitch_0
    const/4 v3, 0x0

    .line 846
    .local v3, "recordData":[B
    iget v0, p3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v0, :sswitch_data_1

    .line 871
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v7, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 872
    .local v7, "adnRecordCount":I
    add-int/lit8 v0, p2, -0x1

    rem-int v6, v0, v7

    .line 873
    .local v6, "adnIndex":I
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 874
    .local v9, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v1, p3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mEfTag:I

    add-int/lit8 v2, v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-virtual {p0, v5, v9}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 875
    const-string v0, "updateType1Ef"

    invoke-virtual {p0, v9, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 877
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 878
    .local v8, "oldAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget v0, p3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v0, :sswitch_data_2

    .line 895
    .end local v8    # "oldAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/android/internal/telephony/MiuiIccProviderException;->getErrorCauseFromException(Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0

    .line 848
    .end local v6    # "adnIndex":I
    .end local v7    # "adnRecordCount":I
    .end local v9    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :sswitch_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 849
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;I)[B

    move-result-object v3

    .line 850
    if-nez v3, :cond_1

    .line 851
    const/16 v0, -0x3f1

    goto :goto_0

    .line 854
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    new-array v3, v0, [B

    .line 855
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_1

    .line 859
    :sswitch_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v3

    .line 861
    if-nez v3, :cond_1

    .line 862
    const/16 v0, -0x3f4

    goto/16 :goto_0

    .line 865
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    new-array v3, v0, [B

    .line 866
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    goto/16 :goto_1

    .line 880
    .restart local v6    # "adnIndex":I
    .restart local v7    # "adnRecordCount":I
    .restart local v8    # "oldAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .restart local v9    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :sswitch_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 881
    const-string v0, ""

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setAnr(Ljava/lang/String;)V

    goto :goto_2

    .line 883
    :cond_5
    invoke-virtual {v8, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setAnr(Ljava/lang/String;)V

    goto :goto_2

    .line 887
    :sswitch_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 888
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setEmails([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 890
    :cond_6
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v10

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setEmails([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 837
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_0
    .end sparse-switch

    .line 846
    :sswitch_data_1
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_2
    .end sparse-switch

    .line 878
    :sswitch_data_2
    .sparse-switch
        0xc4 -> :sswitch_3
        0xca -> :sswitch_4
    .end sparse-switch
.end method

.method updateType2Ef(Ljava/lang/String;ILcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;)I
    .locals 23
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "adnRecordNumber"    # I
    .param p3, "record"    # Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    .prologue
    .line 899
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v4, 0xa9

    if-eq v3, v4, :cond_0

    .line 900
    const/16 v3, -0x3f6

    .line 997
    :goto_0
    return v3

    .line 902
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    .line 903
    .local v17, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v17, :cond_1

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 904
    :cond_1
    const/16 v3, -0x3f6

    goto :goto_0

    .line 907
    :cond_2
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_0

    .line 912
    const/16 v3, -0x3f6

    goto :goto_0

    .line 915
    :sswitch_0
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    move/from16 v16, v0

    .line 918
    .local v16, "adnRecordCount":I
    add-int/lit8 v3, p2, -0x1

    rem-int v18, v3, v16

    .line 919
    .local v18, "iapIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    aget-object v19, v3, v4

    .line 920
    .local v19, "iaps":[[B
    aget-object v13, v19, v18

    .line 922
    .local v13, "iap":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    move/from16 v21, v0

    .line 923
    .local v21, "recordCount":I
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v9, v13, v3

    .line 924
    .local v9, "dataIndex":I
    const/16 v5, 0xff

    .line 925
    .local v5, "recordNumber":I
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 926
    if-lez v9, :cond_7

    move/from16 v0, v21

    if-gt v9, v0, :cond_7

    .line 927
    move v5, v9

    .line 935
    :cond_3
    const/4 v6, 0x0

    .line 936
    .local v6, "recordData":[B
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_1

    .line 950
    :cond_4
    new-instance v22, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 951
    .local v22, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 952
    const-string v3, "updateType2Ef"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    .line 970
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    .line 971
    if-eq v5, v9, :cond_5

    .line 972
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType2Record:I

    int-to-byte v4, v5

    aput-byte v4, v13, v3

    .line 973
    new-instance v22, Ljava/util/concurrent/atomic/AtomicBoolean;

    .end local v22    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 974
    .restart local v22    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v12, v18, 0x1

    const/4 v14, 0x0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 975
    const-string v3, "updateType2Ef"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    .line 977
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 979
    .local v20, "oldAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_2

    .line 997
    .end local v20    # "oldAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3}, Lcom/android/internal/telephony/MiuiIccProviderException;->getErrorCauseFromException(Ljava/lang/Throwable;)I

    move-result v3

    goto/16 :goto_0

    .line 929
    .end local v6    # "recordData":[B
    .end local v22    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->getRecordNumber(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;I)I

    move-result v5

    .line 930
    if-gez v5, :cond_3

    .line 931
    const/16 v3, -0x3ed

    goto/16 :goto_0

    .line 938
    .restart local v6    # "recordData":[B
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v4, 0xc4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;I)[B

    move-result-object v6

    .line 939
    if-nez v6, :cond_4

    .line 940
    const/16 v3, -0x3f1

    goto/16 :goto_0

    .line 944
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v4, 0xca

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v6

    .line 945
    if-nez v6, :cond_4

    .line 946
    const/16 v3, -0x3f4

    goto/16 :goto_0

    .line 953
    .end local v6    # "recordData":[B
    :cond_8
    if-lez v9, :cond_9

    move/from16 v0, v21

    if-gt v9, v0, :cond_9

    .line 954
    const/4 v6, 0x0

    .line 955
    .restart local v6    # "recordData":[B
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_3

    .line 963
    :goto_3
    new-instance v22, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 964
    .restart local v22    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v11, 0x0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object v10, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 965
    const-string v3, "updateType2Ef"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 957
    .end local v22    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :sswitch_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v7, 0xc4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;I)[B

    move-result-object v6

    .line 958
    goto :goto_3

    .line 960
    :sswitch_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v7, 0xca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v3, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1, v3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v6

    goto :goto_3

    .line 967
    .end local v6    # "recordData":[B
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 981
    .restart local v6    # "recordData":[B
    .restart local v20    # "oldAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .restart local v22    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :sswitch_5
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 982
    const-string v3, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setAnr(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 984
    :cond_a
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setAnr(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 988
    :sswitch_6
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 989
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setEmails([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 991
    :cond_b
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setEmails([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 907
    nop

    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_0
    .end sparse-switch

    .line 936
    :sswitch_data_1
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_2
    .end sparse-switch

    .line 979
    :sswitch_data_2
    .sparse-switch
        0xc4 -> :sswitch_5
        0xca -> :sswitch_6
    .end sparse-switch

    .line 955
    :sswitch_data_3
    .sparse-switch
        0xc4 -> :sswitch_3
        0xca -> :sswitch_4
    .end sparse-switch
.end method

.method protected waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V
    .locals 4
    .param p1, "status"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "functionName"    # Ljava/lang/String;

    .prologue
    .line 1095
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1097
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted Exception in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1102
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
