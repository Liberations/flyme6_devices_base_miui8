.class public Lmiui/util/SimRingtoneUtils;
.super Ljava/lang/Object;
.source "SimRingtoneUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canSlotSettingRingtoneType(I)Z
    .locals 2
    .param p0, "ringtoneType"    # I

    .prologue
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/16 v1, 0x10

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlotId"    # I

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lmiui/util/SimRingtoneUtils;->getDefaultSoundUriBySlot(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSmsDeliveredUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlotId"    # I

    .prologue
    const/16 v0, 0x8

    invoke-static {p0, v0, p1}, Lmiui/util/SimRingtoneUtils;->getDefaultSoundUriBySlot(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSmsReceivedUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlotId"    # I

    .prologue
    const/16 v0, 0x10

    invoke-static {p0, v0, p1}, Lmiui/util/SimRingtoneUtils;->getDefaultSoundUriBySlot(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSoundUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extraRingtoneType"    # I

    .prologue
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-object v0

    :sswitch_1
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_0

    :sswitch_2
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    :sswitch_3
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    :sswitch_4
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_0

    :sswitch_5
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_0

    :sswitch_6
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_1:Landroid/net/Uri;

    goto :goto_0

    :sswitch_7
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_2:Landroid/net/Uri;

    goto :goto_0

    :sswitch_8
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    goto :goto_0

    :sswitch_9
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    goto :goto_0

    :sswitch_a
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    goto :goto_0

    :sswitch_b
    sget-object v0, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_5
        0x20 -> :sswitch_0
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_a
        0x200 -> :sswitch_b
        0x400 -> :sswitch_8
        0x800 -> :sswitch_9
    .end sparse-switch
.end method

.method private static getDefaultSoundUriBySlot(Landroid/content/Context;II)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "simSlotId"    # I

    .prologue
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq p2, v0, :cond_0

    invoke-static {p0, p1}, Lmiui/util/SimRingtoneUtils;->isDefaultSoundUniform(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lmiui/util/SimRingtoneUtils;->getExtraRingtoneTypeBySlot(II)I

    move-result p1

    :cond_0
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundActualUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getExtraRingtoneTypeBySlot(II)I
    .locals 1
    .param p0, "ringtoneType"    # I
    .param p1, "simSlotId"    # I

    .prologue
    if-ltz p1, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, p0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    if-nez p1, :cond_2

    const/16 v0, 0x40

    goto :goto_0

    :cond_2
    const/16 v0, 0x80

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    if-ne p0, v0, :cond_5

    if-nez p1, :cond_4

    const/16 v0, 0x100

    goto :goto_0

    :cond_4
    const/16 v0, 0x200

    goto :goto_0

    :cond_5
    const/16 v0, 0x10

    if-ne p0, v0, :cond_7

    if-nez p1, :cond_6

    const/16 v0, 0x400

    goto :goto_0

    :cond_6
    const/16 v0, 0x800

    goto :goto_0

    :cond_7
    move v0, p0

    goto :goto_0
.end method

.method private static getSoundUniformSettingName(I)Ljava/lang/String;
    .locals 1
    .param p0, "ringtoneType"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "ringtone_sound_use_uniform"

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    const-string v0, "sms_delivered_sound_use_uniform"

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    if-ne p0, v0, :cond_2

    const-string v0, "sms_received_sound_use_uniform"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefaultSoundUniform(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneType"    # I

    .prologue
    const/4 v0, 0x1

    invoke-static {p1}, Lmiui/util/SimRingtoneUtils;->canSlotSettingRingtoneType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lmiui/util/SimRingtoneUtils;->getSoundUniformSettingName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDefaultSoundUniform(Landroid/content/Context;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneType"    # I
    .param p2, "useUniform"    # Z

    .prologue
    invoke-static {p1}, Lmiui/util/SimRingtoneUtils;->canSlotSettingRingtoneType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lmiui/util/SimRingtoneUtils;->getSoundUniformSettingName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
