.class public Lmiui/security/WakePathRuleInfo;
.super Ljava/lang/Object;
.source "WakePathRuleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/WakePathRuleInfo$UserSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/security/WakePathRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXPRESS_TYPE_WILDCARD_ALL:I = 0x2

.field private static final EXPRESS_TYPE_WILDCARD_END:I = 0x1

.field private static final EXPRESS_TYPE_WILDCARD_NONE:I = 0x0

.field private static final EXPRESS_TYPE_WILDCARD_OTHER:I = 0x3

.field private static final EXPRESS_WILDCARD:Ljava/lang/String; = "*"

.field private static final TAG:Ljava/lang/String;

.field public static final WAKE_TYPE_ALLOW_START_ACTIVITY:I = 0x11

.field public static final WAKE_TYPE_CALL_LIST:I = 0x10

.field public static final WAKE_TYPE_GET_CONTENT_PROVIDER:I = 0x4

.field public static final WAKE_TYPE_SEND_BROADCAST:I = 0x2

.field public static final WAKE_TYPE_START_ACTIVITY:I = 0x1

.field public static final WAKE_TYPE_START_SERVICE:I = 0x8


# instance fields
.field public mActionExpress:Ljava/lang/String;

.field private mActionExpressType:I

.field public mCalleeExpress:Ljava/lang/String;

.field private mCalleeExpressType:I

.field public mCallerExpress:Ljava/lang/String;

.field private mCallerExpressType:I

.field public mClassNameExpress:Ljava/lang/String;

.field private mClassNameExpressType:I

.field public mHashCode:I

.field public mUserSettings:I

.field public mWakeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lmiui/security/WakePathRuleInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/security/WakePathRuleInfo;->TAG:Ljava/lang/String;

    new-instance v0, Lmiui/security/WakePathRuleInfo$1;

    invoke-direct {v0}, Lmiui/security/WakePathRuleInfo$1;-><init>()V

    sput-object v0, Lmiui/security/WakePathRuleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpressType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpressType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpressType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpressType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mUserSettings:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mHashCode:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/security/WakePathRuleInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lmiui/security/WakePathRuleInfo$1;

    .prologue
    invoke-direct {p0, p1}, Lmiui/security/WakePathRuleInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "actionExpress"    # Ljava/lang/String;
    .param p2, "classNameExpress"    # Ljava/lang/String;
    .param p3, "callerExpress"    # Ljava/lang/String;
    .param p4, "calleeExpress"    # Ljava/lang/String;
    .param p5, "wakeType"    # I
    .param p6, "userSettings"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    invoke-static {v0}, Lmiui/security/WakePathRuleInfo;->getExpressType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpressType:I

    iput-object p2, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    invoke-static {v0}, Lmiui/security/WakePathRuleInfo;->getExpressType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpressType:I

    iput-object p3, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    invoke-static {v0}, Lmiui/security/WakePathRuleInfo;->getExpressType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpressType:I

    iput-object p4, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    invoke-static {v0}, Lmiui/security/WakePathRuleInfo;->getExpressType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpressType:I

    iput p5, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    iput p6, p0, Lmiui/security/WakePathRuleInfo;->mUserSettings:I

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2, p3, p4}, Lmiui/security/WakePathRuleInfo;->getHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mHashCode:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/security/WakePathRuleInfo;->mHashCode:I

    goto :goto_0
.end method

.method public static checkCompatibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "actionExpress"    # Ljava/lang/String;
    .param p1, "classNameExpress"    # Ljava/lang/String;
    .param p2, "callerExpress"    # Ljava/lang/String;
    .param p3, "calleeExpress"    # Ljava/lang/String;
    .param p4, "wakeType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-ne p4, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "*"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "*"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "*"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "*"

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v2, "com.miui.home"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.miui.home"

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const-string v2, "android"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android"

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    const-string v2, "android"

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    const-string v2, "*"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "*"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static expressCompare(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p0, "selfExpress"    # Ljava/lang/String;
    .param p1, "selfExpressType"    # I
    .param p2, "otherExpress"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3

    :pswitch_1
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :pswitch_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "strStart":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "strEnd":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getExpressType(Ljava/lang/String;)I
    .locals 2
    .param p0, "express"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "type":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "actionExpress"    # Ljava/lang/String;
    .param p1, "classNameExpress"    # Ljava/lang/String;
    .param p2, "callerExpress"    # Ljava/lang/String;
    .param p3, "calleeExpress"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "strBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(I)Z
    .locals 4
    .param p1, "hashCode"    # I

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    sget-object v1, Lmiui/security/WakePathRuleInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG-WAKEPATH equals: Invalid parameter!! mWakeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hashCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mHashCode:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lmiui/security/WakePathRuleInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "info":Lmiui/security/WakePathRuleInfo;
    iget-object v4, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    iget-object v5, v2, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    iget-object v5, v2, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    iget-object v5, v2, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    iget-object v5, v2, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    iget v5, v2, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .end local v2    # "info":Lmiui/security/WakePathRuleInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "actionExpress"    # Ljava/lang/String;
    .param p2, "classNameExpress"    # Ljava/lang/String;
    .param p3, "callerExpress"    # Ljava/lang/String;
    .param p4, "calleeExpress"    # Ljava/lang/String;
    .param p5, "wakeType"    # I

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    and-int/2addr v1, p5

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    iget v2, p0, Lmiui/security/WakePathRuleInfo;->mActionExpressType:I

    invoke-static {v1, v2, p1}, Lmiui/security/WakePathRuleInfo;->expressCompare(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    iget v2, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpressType:I

    invoke-static {v1, v2, p2}, Lmiui/security/WakePathRuleInfo;->expressCompare(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    iget v2, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpressType:I

    invoke-static {v1, v2, p3}, Lmiui/security/WakePathRuleInfo;->expressCompare(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    iget v2, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpressType:I

    invoke-static {v1, v2, p4}, Lmiui/security/WakePathRuleInfo;->expressCompare(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCalleeExpress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerExpress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSettings()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mUserSettings:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakePathRuleInfo: mActionExpress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mClassNameExpress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCallerExpress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCalleeExpress= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWakeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/security/WakePathRuleInfo;->mUserSettings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mActionExpressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mClassNameExpressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mCallerExpressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mCalleeExpressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mWakeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mUserSettings:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/security/WakePathRuleInfo;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
