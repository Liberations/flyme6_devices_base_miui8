.class public Lmiui/app/ToggleManager;
.super Ljava/lang/Object;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/ToggleManager$OnToggleOrderChangedListener;,
        Lmiui/app/ToggleManager$OnToggleChangedListener;
    }
.end annotation


# static fields
.field public static final ALPHA_DEFAULT:I = 0xff

.field public static final ALPHA_HALF:I = 0x7d

.field public static final AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

.field public static final DEFAULT_BACKLIGHT:I = 0x66

.field private static final KEY_POWER_MODE_OPEN:Ljava/lang/String; = "POWER_SAVE_MODE_OPEN"

.field public static final MAXIMUM_BACKLIGHT:I = 0xff

.field public static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field private static final METHOD_CHANGE_POWER_MODE:Ljava/lang/String; = "changePowerMode"

.field public static final MINIMUM_BACKLIGHT:I

.field public static final MIUI_BRIGHTNESS_OPT_STRATEGY:Ljava/lang/String; = "miui"

.field public static final PINECONE_BRIGHTNESS_OPT_STRATEGY:Ljava/lang/String; = "pinecone"

.field private static final POWER_MODE_URI_PATH:Ljava/lang/String; = "content://com.miui.powercenter.powersaver"

.field private static final PROCESS_NAME_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field public static final RANGE:I

.field private static final SETTINGS_MIDROP:Ljava/lang/String; = "key_midrop_enabled"

.field public static final SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

.field static final TAG:Ljava/lang/String; = "ToggleManager"

.field public static final TOGGLE_ADVANCED_SYNC:I = 0x13

.field public static final TOGGLE_AUTO_BRIGHTNESS:I = 0x16

.field public static final TOGGLE_BATTERY_SAVER:I = 0x1e

.field public static final TOGGLE_BLUETOOTH:I = 0x2

.field public static final TOGGLE_BRIGHTNESS:I = 0x4

.field public static final TOGGLE_CAST:I = 0x1c

.field public static final TOGGLE_COUNT:I = 0x20

.field public static final TOGGLE_DATA:I = 0x1

.field public static final TOGGLE_DIVIDER:I = 0x0

.field public static final TOGGLE_DRIVE_MODE:I = 0x15

.field public static final TOGGLE_EDIT:I = 0x1d

.field public static final TOGGLE_FLIGHT_MODE:I = 0x9

.field public static final TOGGLE_GPS:I = 0x7

.field public static final TOGGLE_LOCK:I = 0xa

.field public static final TOGGLE_MIDROP:I = 0x1b

.field public static final TOGGLE_NETWORK_TYPE:I = 0x11

.field public static final TOGGLE_PAPER_MODE:I = 0x1a

.field public static final TOGGLE_POWER_MODE:I = 0x17

.field public static final TOGGLE_QUIET_MODE:I = 0x19

.field public static final TOGGLE_REBOOT:I = 0xc

.field public static final TOGGLE_RINGER:I = 0x5

.field public static final TOGGLE_ROTATE:I = 0x3

.field public static final TOGGLE_SCREENSHOT:I = 0x12

.field public static final TOGGLE_SCREEN_BUTTON:I = 0x14

.field public static final TOGGLE_SHUTDOWN:I = 0xd

.field public static final TOGGLE_SYNC:I = 0x8

.field public static final TOGGLE_TORCH:I = 0xb

.field public static final TOGGLE_VIBRATE:I = 0x6

.field public static final TOGGLE_WIFI:I = 0xf

.field public static final TOGGLE_WIFI_AP:I = 0x18

.field public static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static mHasMiDrop:Z

.field private static mWifiApEnabler:Lmiui/app/WifiApEnabler;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field private static sLongClickActions:[I

.field private static final sRemoveByMultiUserList:[I

.field private static sToggleDisabled:[Z

.field private static sToggleGeneralImages:[I

.field private static sToggleImages:[I

.field private static sToggleManager:Lmiui/app/ToggleManager;

.field private static sToggleNames:[I

.field private static sToggleOffImages:[I

.field private static sToggleOnImages:[I

.field private static sToggleStatus:[Z

.field private static sToggleStatusNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sToggleStringToId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccelerometer:Z

.field private final mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mBatterySaveMode:Z

.field private final mBatterySaverObserver:Landroid/database/ContentObserver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnable:Z

.field private mBrightnessAutoAvailable:Z

.field private mBrightnessAutoLevel:F

.field private mBrightnessAutoMode:Z

.field private mBrightnessManualLevel:I

.field private final mBrightnessObserver:Landroid/database/ContentObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mFlightMode:Z

.field private final mFlightModeObserver:Landroid/database/ContentObserver;

.field private mGpsEnable:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsSimMissing:Z

.field private final mLocationAllowedObserver:Landroid/database/ContentObserver;

.field private mMiDropChanging:Z

.field private final mMiDropObserver:Landroid/database/ContentObserver;

.field private mMobileDataEnable:Z

.field private final mMobileDataEnableObserver:Landroid/database/ContentObserver;

.field private mMobileDataUtils:Landroid/app/MobileDataUtils;

.field private mMobilePolicyEnable:Z

.field private final mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

.field private mPaperMode:Z

.field private final mPaperModeObserver:Landroid/database/ContentObserver;

.field private mPowerMode:Ljava/lang/String;

.field private final mPowerModeObserver:Landroid/database/ContentObserver;

.field private mQuietMode:Z

.field private final mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResource:Landroid/content/res/Resources;

.field private mScreenButtonDisabled:Z

.field private final mScreenButtonStateObserver:Landroid/database/ContentObserver;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private final mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private final mTogglOrderObserver:Landroid/database/ContentObserver;

.field private mToggleChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/app/ToggleManager$OnToggleChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToggleOrderChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/app/ToggleManager$OnToggleOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTorchEnable:Z

.field private final mTorchEnableObserver:Landroid/database/ContentObserver;

.field private final mUpdateSyncStateRunnable:Ljava/lang/Runnable;

.field private final mVibrateEnableObserver:Landroid/database/ContentObserver;

.field mWifiChanging:Z

.field mWifiConnected:Z

.field mWifiEnable:Z

.field mWifiSsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/16 v4, 0x20

    sget-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    sput-boolean v1, Lmiui/app/ToggleManager;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "bluetooth"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "brightness_mode"

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "data"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "flight_mode"

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "gps"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "lock"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "power_mode"

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "quiet_mode"

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "rotate"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "ringer_mode"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "screenshot"

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "screen_button"

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "sync_mode"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "torch"

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "vibration_mode"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "wifi"

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "wifi_ap"

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "paper_mode"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "midrop"

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "cast"

    const/16 v3, 0x1c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "battery_safer"

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "edit"

    const/16 v3, 0x1d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x16

    const v3, 0x11070001

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/high16 v2, 0x11070000

    aput v2, v1, v7

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11070002

    aput v2, v1, v5

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x9

    const v3, 0x11070003

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/4 v2, 0x7

    const v3, 0x11070004

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xa

    const v3, 0x11070005

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11070006

    aput v2, v1, v8

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x17

    const v3, 0x1107000e

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11070007

    aput v2, v1, v6

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x14

    const v3, 0x11070008

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x12

    const v3, 0x11070009

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x8

    const v3, 0x1107000a

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xb

    const v3, 0x1107000b

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/4 v2, 0x6

    const v3, 0x1107000c

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xf

    const v3, 0x1107000d

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x18

    const v3, 0x1107000f

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x19

    const v3, 0x11070010

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x1a

    const v3, 0x11070011

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x1b

    const v3, 0x11070012

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x1c

    const v3, 0x11070013

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x1e

    const v3, 0x11070015

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x1d

    const v3, 0x11070014

    aput v3, v1, v2

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lmiui/app/ToggleManager;->sToggleNames:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x16

    const v3, 0x11070019

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11070017

    aput v2, v1, v5

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11070018

    aput v2, v1, v7

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x9

    const v3, 0x1107001a

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/4 v2, 0x7

    const v3, 0x1107001b

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1107001c

    aput v2, v1, v8

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x17

    const v3, 0x11070021

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1107001d

    aput v2, v1, v6

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x8

    const v3, 0x1107001e

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/4 v2, 0x6

    const v3, 0x1107001f

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0xf

    const v3, 0x11070020

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x18

    const v3, 0x11070022

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x19

    const v3, 0x11070023

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x1a

    const v3, 0x11070024

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x1b

    const v3, 0x11070025

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x1e

    const v3, 0x11070026

    aput v3, v1, v2

    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x16

    const v3, 0x11020090

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x1102008f

    aput v2, v1, v7

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x11020095

    aput v2, v1, v5

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x9

    const v3, 0x11020099

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/4 v2, 0x7

    const v3, 0x1102009b

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200a1

    aput v2, v1, v8

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x17

    const v3, 0x110200a8

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200ac

    aput v2, v1, v6

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x14

    const v3, 0x110200ad    # 1.02554E-28f

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x8

    const v3, 0x110200b2

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xb

    const v3, 0x110200b4

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/4 v2, 0x6

    const v3, 0x110200b6

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xf

    const v3, 0x110200ba

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x18

    const v3, 0x110200b8

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x19

    const v3, 0x110200aa

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x1a

    const v3, 0x110200a6

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x1b

    const v3, 0x1102009f

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x1e

    const v3, 0x1102008d

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xa

    const v3, 0x1102009c

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x12

    const v3, 0x110200af

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x1c

    const v3, 0x11020092

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x1d

    const v3, 0x11020097

    aput v3, v1, v2

    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    sget-object v2, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const/16 v2, 0xa

    const v3, 0x1102009d

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const/16 v2, 0x12

    const v3, 0x110200b0

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const/16 v2, 0x1c

    const v3, 0x11020093

    aput v3, v1, v2

    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    sget-object v2, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x16

    const v3, 0x11020091

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x1102008e

    aput v2, v1, v7

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x11020094

    aput v2, v1, v5

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x9

    const v3, 0x11020098

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/4 v2, 0x7

    const v3, 0x1102009a

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200a0

    aput v2, v1, v8

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x17

    const v3, 0x110200a7

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200ab

    aput v2, v1, v6

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x14

    const v3, 0x110200ae

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x8

    const v3, 0x110200b1

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0xb

    const v3, 0x110200b3

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/4 v2, 0x6

    const v3, 0x110200b5

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0xf

    const v3, 0x110200b9

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x18

    const v3, 0x110200b7

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x19

    const v3, 0x110200a9

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x1a

    const v3, 0x110200a5

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x1b

    const v3, 0x1102009e

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x1e

    const v3, 0x1102008c

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0xa

    const v3, 0x1102009c

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x12

    const v3, 0x110200af

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x1c

    const v3, 0x11020092

    aput v3, v1, v2

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x1d

    const v3, 0x11020096

    aput v3, v1, v2

    new-array v1, v4, [Z

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    new-array v1, v4, [Z

    sput-object v1, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    const-string v1, "auto_brightness_optimize_strategy"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/app/ToggleManager;->AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

    const-string v1, "persist.power.useautobrightadj"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    const/4 v1, 0x0

    sput-object v1, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    sput-object v1, Lmiui/app/ToggleManager;->sRemoveByMultiUserList:[I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    sget v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    rsub-int v1, v1, 0xff

    sput v1, Lmiui/app/ToggleManager;->RANGE:I

    return-void

    :array_0
    .array-data 4
        0x18
        0x1
        0x1b
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    iput v5, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    iput-object v7, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    new-instance v4, Lmiui/app/ToggleManager$1;

    invoke-direct {v4, p0}, Lmiui/app/ToggleManager$1;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Lmiui/app/ToggleManager$2;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lmiui/app/ToggleManager$2;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$3;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lmiui/app/ToggleManager$3;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mFlightModeObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$4;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lmiui/app/ToggleManager$4;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$5;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lmiui/app/ToggleManager$5;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$6;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lmiui/app/ToggleManager$6;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$7;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lmiui/app/ToggleManager$7;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$8;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lmiui/app/ToggleManager$8;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$9;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lmiui/app/ToggleManager$9;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$10;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lmiui/app/ToggleManager$10;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$11;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lmiui/app/ToggleManager$11;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$12;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lmiui/app/ToggleManager$12;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mBatterySaverObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$13;

    invoke-direct {v4, p0}, Lmiui/app/ToggleManager$13;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    new-instance v4, Lmiui/app/ToggleManager$14;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lmiui/app/ToggleManager$14;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$15;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lmiui/app/ToggleManager$15;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mMiDropObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$16;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lmiui/app/ToggleManager$16;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$17;

    invoke-direct {v4, p0}, Lmiui/app/ToggleManager$17;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    new-instance v4, Lmiui/app/ToggleManager$18;

    invoke-direct {v4, p0}, Lmiui/app/ToggleManager$18;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    iput-object v7, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    iput-object p1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v4, "com.android.systemui"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "isSystemUI":Z
    if-eqz v1, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    :goto_0
    iput v4, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/ToggleManager;->mResource:Landroid/content/res/Resources;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    sput-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    :try_start_0
    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v6, "com.xiaomi.midrop"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    move v4, v3

    :goto_1
    sput-boolean v4, Lmiui/app/ToggleManager;->mHasMiDrop:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResource:Landroid/content/res/Resources;

    const v6, 0x11090001

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    .local v2, "mWifiRegexs":[Ljava/lang/String;
    array-length v4, v2

    if-eqz v4, :cond_3

    .local v3, "wifiAvailable":Z
    :goto_3
    if-eqz v3, :cond_0

    new-instance v4, Lmiui/app/WifiApEnabler;

    invoke-direct {v4, p1, p0}, Lmiui/app/WifiApEnabler;-><init>(Landroid/content/Context;Lmiui/app/ToggleManager;)V

    sput-object v4, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    :cond_0
    invoke-direct {p0, v1}, Lmiui/app/ToggleManager;->registerListener(Z)V

    return-void

    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "mWifiRegexs":[Ljava/lang/String;
    .end local v3    # "wifiAvailable":Z
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    goto :goto_0

    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_2
    move v4, v5

    goto :goto_1

    .restart local v2    # "mWifiRegexs":[Ljava/lang/String;
    :cond_3
    move v3, v5

    goto :goto_3

    .end local v2    # "mWifiRegexs":[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method static synthetic access$000(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateFlightModeToggle()V

    return-void
.end method

.method static synthetic access$1000(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateScreenButtonState()V

    return-void
.end method

.method static synthetic access$102(Lmiui/app/ToggleManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    return p1
.end method

.method static synthetic access$1100(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateGpsToggle()V

    return-void
.end method

.method static synthetic access$1200(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAccelerometerToggle()V

    return-void
.end method

.method static synthetic access$1300(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    invoke-direct {p0}, Lmiui/app/ToggleManager;->queryBrightnessStatus()V

    return-void
.end method

.method static synthetic access$1400(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBrightnessToggle()V

    return-void
.end method

.method static synthetic access$1500(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePowerModeToggle()V

    return-void
.end method

.method static synthetic access$1600(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBatterySaverToggle()V

    return-void
.end method

.method static synthetic access$1700(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateQuietModeToggle()V

    return-void
.end method

.method static synthetic access$1800(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePaperModeToggle()V

    return-void
.end method

.method static synthetic access$1900(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateMiDropToggle()V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateDataToggle()V

    return-void
.end method

.method static synthetic access$2000(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateSyncToggle()V

    return-void
.end method

.method static synthetic access$2100(Lmiui/app/ToggleManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lmiui/app/ToggleManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/app/ToggleManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/app/ToggleManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/app/ToggleManager;)Landroid/app/MobileDataUtils;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    return-object v0
.end method

.method static synthetic access$602(Lmiui/app/ToggleManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    return p1
.end method

.method static synthetic access$700(Lmiui/app/ToggleManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/app/ToggleManager;)I
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    iget v0, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$900(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateTorchToggle()V

    return-void
.end method

.method private static addIfUnselected(Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/app/ToggleManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ToggleManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    :cond_0
    sget-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    return-object v0
.end method

.method private ensureBluetoothAdapter()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v11, "support_power_mode"

    invoke-static {v11, v10}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_0

    const/16 v11, 0x17

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const-string v11, "connectivity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    .local v8, "wifiRegexs":[Ljava/lang/String;
    array-length v11, v8

    if-eqz v11, :cond_a

    move v7, v9

    .local v7, "wifiAvailable":Z
    :goto_0
    if-nez v7, :cond_1

    const/16 v11, 0x18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p0}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_2

    const/16 v11, 0xb

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0, v10}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    .local v5, "hasMobileDataFeature":Z
    if-nez v5, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v11, 0x19

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    const-string v11, "vibrator"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    .local v6, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "android.hardware.location.gps"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .local v3, "hasGpsFeature":Z
    if-nez v3, :cond_5

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    const-string v11, "support_screen_paper_mode"

    invoke-static {v11, v10}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_6

    const/16 v11, 0x1a

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    const/4 v4, 0x0

    .local v4, "hasMiDrop":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.xiaomi.midrop"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    if-eqz v11, :cond_b

    move v4, v9

    :goto_1
    if-nez v4, :cond_7

    const/16 v11, 0x1b

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    const/4 v2, 0x0

    .local v2, "hasCast":Z
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Lmiui/app/ToggleManager;->getCastIntent()Landroid/content/Intent;

    move-result-object v12

    const/high16 v13, 0x10000

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    if-lez v11, :cond_c

    move v2, v9

    :goto_2
    if-nez v2, :cond_8

    const/16 v11, 0x1c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lmiui/app/ToggleManager;->isMiPad()Z

    move-result v11

    if-nez v11, :cond_d

    move v1, v9

    .local v1, "hasBatterySaver":Z
    :goto_3
    if-nez v1, :cond_9

    const/16 v9, 0x1e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->filterToggleByUser(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void

    .end local v1    # "hasBatterySaver":Z
    .end local v2    # "hasCast":Z
    .end local v3    # "hasGpsFeature":Z
    .end local v4    # "hasMiDrop":Z
    .end local v5    # "hasMobileDataFeature":Z
    .end local v6    # "vibrator":Landroid/os/Vibrator;
    .end local v7    # "wifiAvailable":Z
    :cond_a
    move v7, v10

    goto/16 :goto_0

    .restart local v3    # "hasGpsFeature":Z
    .restart local v4    # "hasMiDrop":Z
    .restart local v5    # "hasMobileDataFeature":Z
    .restart local v6    # "vibrator":Landroid/os/Vibrator;
    .restart local v7    # "wifiAvailable":Z
    :cond_b
    move v4, v10

    goto :goto_1

    .restart local v2    # "hasCast":Z
    :cond_c
    move v2, v10

    goto :goto_2

    :cond_d
    move v1, v10

    goto :goto_3

    :catch_0
    move-exception v11

    goto :goto_2

    .end local v2    # "hasCast":Z
    :catch_1
    move-exception v11

    goto :goto_1
.end method

.method private static filterToggleByUser(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v0, Lmiui/app/ToggleManager;->sRemoveByMultiUserList:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .local v2, "index":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "index":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method public static getAllToggles(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private static getCastIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MIPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getDefaultToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-object v0
.end method

.method public static getEditFixedPosition(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x11060000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getGeneralImage(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    sget-object v0, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getImage(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    sget-object v0, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lmiui/app/ToggleManager;->getStatus(I)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lmiui/app/ToggleManager;->getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "id"    # I
    .param p1, "isOpen"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->getImageResource(IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_0

    new-instance v1, Lmiui/app/ToggleDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110200a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmiui/app/ToggleDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method public static getImageResource(IZ)I
    .locals 1
    .param p0, "id"    # I
    .param p1, "isOpen"    # Z

    .prologue
    if-eqz p1, :cond_0

    sget-object v0, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    aget v0, v0, p0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static getName(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    sget-object v0, Lmiui/app/ToggleManager;->sToggleNames:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getStatus(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "statusName":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "statusName":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .restart local v0    # "statusName":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getToggleIdFromString(Ljava/lang/String;)I
    .locals 1
    .param p0, "toggleString"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "status_bar_toggle_list_order_new"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "status_bar_toggle_page_order"

    goto :goto_0
.end method

.method public static getToggleStringFromId(I)Ljava/lang/String;
    .locals 3
    .param p0, "toggleId"    # I

    .prologue
    sget-object v2, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p0, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getUserId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "com.android.systemui"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "isSystemUI":Z
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    goto :goto_0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listStyle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    const-string v4, "status_bar_toggle_list_order_new"

    .local v4, "settingID":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v8

    invoke-static {v7, v4, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .local v5, "toggleList":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "toggles":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v6

    if-ge v1, v7, :cond_2

    :try_start_0
    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "id":I
    invoke-static {v2}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v4    # "settingID":Ljava/lang/String;
    .end local v5    # "toggleList":Ljava/lang/String;
    .end local v6    # "toggles":[Ljava/lang/String;
    :cond_1
    const-string v4, "status_bar_toggle_page_order"

    goto :goto_0

    .restart local v1    # "i":I
    .restart local v4    # "settingID":Ljava/lang/String;
    .restart local v5    # "toggleList":Ljava/lang/String;
    .restart local v6    # "toggles":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v6    # "toggles":[Ljava/lang/String;
    :cond_2
    invoke-static {p0, v3, p1}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-object v3
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .local v3, "ssid":Ljava/lang/String;
    if-nez v3, :cond_1

    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    if-eqz v3, :cond_2

    const-string v4, "<unknown ssid>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    :cond_2
    return-object v3
.end method

.method public static initDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "id"    # I
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    return-void
.end method

.method public static isDisabled(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    sget-object v0, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static isListStyle(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_style_type"

    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isMiPad()Z
    .locals 1

    .prologue
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    return v0
.end method

.method private isSyncOn()Z
    .locals 7

    .prologue
    :try_start_0
    const-class v2, Landroid/content/ContentResolver;

    const-string v3, "getMasterSyncAutomaticallyAsUser"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ToggleManager"

    const-string v3, "getMasterSyncAutomaticallyAsUser not found."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    goto :goto_0
.end method

.method public static isValid(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    if-ltz p1, :cond_0

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    invoke-static {p1}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private longClickScreenshot()Z
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .local v8, "path":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    sget-object v12, Lmiui/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v12}, Lmiui/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    const-string v13, "Screenshots"

    invoke-direct {v10, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v10, "screenShotFolder":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v9, Lmiui/app/ToggleManager$19;

    invoke-direct {v9, p0}, Lmiui/app/ToggleManager$19;-><init>(Lmiui/app/ToggleManager;)V

    .local v9, "pictureFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v10, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .end local v2    # "files":[Ljava/io/File;
    .end local v9    # "pictureFilter":Ljava/io/FilenameFilter;
    :cond_0
    :goto_0
    return v11

    .restart local v2    # "files":[Ljava/io/File;
    .restart local v9    # "pictureFilter":Ljava/io/FilenameFilter;
    :cond_1
    const-wide/16 v6, 0x0

    .local v6, "maxLastModifed":J
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v12, v12, v6

    if-lez v12, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "maxLastModifed":J
    .end local v9    # "pictureFilter":Ljava/io/FilenameFilter;
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "intent":Landroid/content/Intent;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "image/*"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v11, 0x10000000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v11, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v11, v4, v12}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v11, 0x1

    goto :goto_0
.end method

.method public static maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .prologue
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .end local p0    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "uri":Landroid/net/Uri;
    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lmiui/app/ToggleManager;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method private queryBrightnessStatus()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    iget v4, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    const/16 v2, 0x66

    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    sget v1, Lmiui/app/ToggleManager;->RANGE:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoLevel:F

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private registerListener(Z)V
    .locals 8
    .param p1, "isSystemUI"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    const/4 v6, -0x1

    .local v6, "userId":I
    :goto_0
    if-eqz p1, :cond_2

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .local v2, "user":Landroid/os/UserHandle;
    :goto_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "status_bar_toggle_list_order_new"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "status_bar_toggle_page_order"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const v0, 0x7fffffff

    iget-object v1, p0, Lmiui/app/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mFlightModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4}, Landroid/app/MobileDataUtils;->registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "mobile_policy"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v0, Lmiui/app/ToggleManager;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_buttons_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "torch_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "vibrate_in_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "vibrate_in_normal"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "power_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "POWER_SAVE_MODE_OPEN"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mBatterySaverObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-static {v0, v1}, Lmiui/provider/ExtraTelephony;->registerQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_paper_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_midrop_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mMiDropObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget v0, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lmiui/app/ToggleManager;->updateAllToggles(I)V

    return-void

    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "userId":I
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    goto/16 :goto_0

    .restart local v6    # "userId":I
    :cond_2
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v6}, Landroid/os/UserHandle;-><init>(I)V

    goto/16 :goto_1
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private setBrightnessMode()V
    .locals 4

    .prologue
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness_mode"

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p2, "isListStyle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    const-string v1, "status_bar_toggle_list_order_new"

    .local v1, "settingId":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1, p2}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x60

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v2, "toggleList":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "settingId":Ljava/lang/String;
    .end local v2    # "toggleList":Ljava/lang/StringBuilder;
    :cond_0
    const-string v1, "status_bar_toggle_page_order"

    goto :goto_0

    .restart local v0    # "i":I
    .restart local v1    # "settingId":Ljava/lang/String;
    .restart local v2    # "toggleList":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v5

    invoke-static {v3, v1, v4, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private showToast(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "length"    # I

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiui/app/ToggleManager;->showToast(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I

    .prologue
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private toggleAccelerometer()V
    .locals 3

    .prologue
    :try_start_0
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .local v0, "wm":Landroid/view/IWindowManager;
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V

    .end local v0    # "wm":Landroid/view/IWindowManager;
    :goto_0
    return-void

    .restart local v0    # "wm":Landroid/view/IWindowManager;
    :cond_0
    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v2

    if-eq v1, v2, :cond_1

    const v1, 0x11070028

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lmiui/app/ToggleManager;->showToast(II)V

    :cond_1
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private toggleAutoBrightness()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    :goto_0
    invoke-direct {p0}, Lmiui/app/ToggleManager;->setBrightnessMode()V

    return-void

    :cond_0
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    goto :goto_0
.end method

.method private toggleBatterySaverToggle()V
    .locals 5

    .prologue
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "POWER_SAVE_MODE_OPEN"

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "content://com.miui.powercenter.powersaver"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v2, v3}, Lmiui/app/ToggleManager;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "changePowerMode"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private toggleBluetooth()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    invoke-static {v0}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method

.method private toggleData()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .local v1, "result":Z
    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    if-nez v5, :cond_1

    :goto_0
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    invoke-virtual {v4, v5, v6}, Landroid/app/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    :cond_0
    :goto_1
    return v1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/app/MobileDataUtils;->getSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .local v2, "subscriberId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .local v3, "template":Landroid/net/NetworkTemplate;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.miui.securitycenter"

    const-string v6, "com.miui.networkassistant.ui.activity.NetworkOverLimitActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    goto :goto_1
.end method

.method private toggleEdit()V
    .locals 6

    .prologue
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "com.android.settings.ToggleArrangementFragment"

    .local v1, "extraShowFragment":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, ":android:show_fragment"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, ":android:no_headers"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.SubSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    .end local v1    # "extraShowFragment":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "com.android.settings.TogglePositionFragment"

    goto :goto_0

    .restart local v1    # "extraShowFragment":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ToggleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toggleEdit() Exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private toggleFlightMode()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "airplane_mode_on"

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-eqz v5, :cond_1

    :goto_1
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private toggleGps()V
    .locals 4

    .prologue
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gps"

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleMiDrop()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v2, 0x1b

    invoke-static {v2}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->isDisplayMiDropOn()Z

    move-result v1

    .local v1, "isMiDropOn":Z
    new-instance v0, Landroid/content/Intent;

    if-eqz v1, :cond_1

    const-string v2, "miui.intent.action.midrop_off"

    :goto_0
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.xiaomi.midrop"

    const-string v4, "com.xiaomi.midrop.startup.StartupReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v3, "ToggleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiDrop: toggle MiDrop to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string v2, "OFF"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isMiDropOn":Z
    :cond_0
    return-void

    .restart local v1    # "isMiDropOn":Z
    :cond_1
    const-string v2, "miui.intent.action.midrop_on"

    goto :goto_0

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v2, "ON"

    goto :goto_1
.end method

.method private togglePaperMode()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_paper_mode_enabled"

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-eqz v4, :cond_1

    :goto_1
    iget v2, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private togglePowerMode()V
    .locals 5

    .prologue
    const-string v1, "high"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "middle"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    :goto_0
    const-string v1, "persist.sys.aries.power_profile"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "power_mode"

    iget-object v3, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    iget v4, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "powerModeChange":Landroid/content/Intent;
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .end local v0    # "powerModeChange":Landroid/content/Intent;
    :cond_0
    const-string v1, "high"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    goto :goto_0
.end method

.method private toggleQuietMode()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleRinger()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;I)V

    return-void
.end method

.method private toggleScreenButtonState()V
    .locals 7

    .prologue
    const v4, 0x110700c8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_buttons_has_been_disabled"

    iget v6, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_buttons_has_been_disabled"

    iget v6, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v5, v2, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget v6, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v1, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x7da

    invoke-virtual {v1, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :goto_1
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_buttons_state"

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v5, :cond_3

    :goto_2
    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v1, :cond_2

    move v1, v4

    :goto_3
    invoke-direct {p0, v1, v3}, Lmiui/app/ToggleManager;->showToast(II)V

    goto :goto_1

    :cond_2
    const v1, 0x110700c7

    goto :goto_3

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method private toggleScreenshot()V
    .locals 3

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private toggleSync()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-class v4, Landroid/content/ContentResolver;

    const-string v5, "setMasterSyncAutomaticallyAsUser"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->isSyncOn()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    iget v7, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    move v4, v3

    goto :goto_0

    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ToggleManager"

    const-string v5, "setMasterSyncAutomaticallyAsUser not found."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_2
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2
.end method

.method private toggleTorch()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "miui.intent.extra.IS_TOGGLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private toggleVibrate()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->toggleVibrateSetting(Landroid/content/Context;)V

    return-void
.end method

.method private updateAccelerometerToggle()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "accelerometer_rotation"

    iget v4, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v5, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-eqz v0, :cond_2

    const v0, 0x110200ab

    :goto_2
    invoke-virtual {p0, v5, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const v0, 0x110200ac

    goto :goto_2
.end method

.method private updateBatterySaverToggle()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x1e

    const-string v1, "ToggleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBatterySaverToggle() old mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "POWER_SAVE_MODE_OPEN"

    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    const-string v0, "ToggleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBatterySaverToggle() new mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-static {v4, v0}, Lmiui/app/ToggleManager;->getImageResource(IZ)I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void
.end method

.method private updateBrightnessToggle()V
    .locals 3

    .prologue
    const/16 v2, 0x16

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v1, :cond_0

    const v0, 0x11020090

    .local v0, "autoResId":I
    :goto_0
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    .end local v0    # "autoResId":I
    :cond_0
    const v0, 0x11020091

    goto :goto_0
.end method

.method private updateDataToggle()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/app/MobileDataUtils;->isMobileEnable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    if-nez v3, :cond_2

    move v0, v1

    .local v0, "isDataEnabled":Z
    :goto_0
    const-string v3, "ToggleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMobileDataEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";mMobilePolicyEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";mFlightMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";mIsSimMissing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {p0, v1, v2}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    if-eqz v0, :cond_3

    const v2, 0x11020095

    :goto_1
    invoke-virtual {p0, v1, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    .end local v0    # "isDataEnabled":Z
    :cond_2
    move v0, v2

    goto :goto_0

    .restart local v0    # "isDataEnabled":Z
    :cond_3
    const v2, 0x11020094

    goto :goto_1
.end method

.method private updateFlightModeToggle()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-eqz v0, :cond_1

    const v0, 0x11020099

    :goto_0
    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateDataToggle()V

    return-void

    :cond_1
    const v0, 0x11020098

    goto :goto_0
.end method

.method private updateGpsToggle()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    iget v2, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    if-eqz v0, :cond_0

    const v0, 0x1102009b

    :goto_0
    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_0
    const v0, 0x1102009a

    goto :goto_0
.end method

.method public static updateImageView(ILandroid/widget/ImageView;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManager;->updateImageView(ILandroid/widget/ImageView;I)V

    return-void
.end method

.method public static updateImageView(ILandroid/widget/ImageView;I)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "color"    # I

    .prologue
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/app/ToggleManager;->getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->initDrawable(ILandroid/graphics/drawable/Drawable;)V

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private updateMiDropToggle()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_midrop_enabled"

    iget v5, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .local v0, "setting":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    const-string v1, "ToggleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiDrop: isMiDropDisabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1b

    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isWifiAPDisabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x18

    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMiDropChanging:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    return-void
.end method

.method private updatePaperModeToggle()V
    .locals 5

    .prologue
    const/16 v4, 0x1a

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_paper_mode_enabled"

    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-eqz v0, :cond_1

    const v0, 0x110200a6

    :goto_0
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_1
    const v0, 0x110200a5

    goto :goto_0
.end method

.method private updatePowerModeToggle()V
    .locals 5

    .prologue
    const/16 v4, 0x17

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "power_mode"

    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "middle"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    :cond_0
    const-string v1, "high"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "isHigh":Z
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    if-eqz v0, :cond_1

    const v1, 0x110200a8

    :goto_0
    invoke-virtual {p0, v4, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_1
    const v1, 0x110200a7

    goto :goto_0
.end method

.method private updateQuietModeToggle()V
    .locals 2

    .prologue
    const/16 v1, 0x19

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    if-eqz v0, :cond_0

    const v0, 0x110200aa

    :goto_0
    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_0
    const v0, 0x110200a9

    goto :goto_0
.end method

.method private updateScreenButtonState()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_buttons_state"

    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v0, :cond_1

    const v0, 0x110200ad    # 1.02554E-28f

    :goto_0
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_1
    const v0, 0x110200ae

    goto :goto_0
.end method

.method private updateSyncToggle()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    invoke-direct {p0}, Lmiui/app/ToggleManager;->isSyncOn()Z

    move-result v0

    .local v0, "isSyncOn":Z
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    if-eqz v0, :cond_0

    const v1, 0x110200b2

    :goto_0
    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_0
    const v1, 0x110200b1

    goto :goto_0
.end method

.method public static updateTextView(ILandroid/widget/TextView;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateTorchToggle()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    if-eqz v0, :cond_1

    const v0, 0x110200b4

    :goto_1
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const v0, 0x110200b3

    goto :goto_1
.end method

.method public static uriHasUserId(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static validateEditPositionInList(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v1

    if-gt v0, v1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private static validateEditPositionInPage(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private static validateToggleList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0xf

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x12

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x16

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x19

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x17

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateEditPositionInList(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private static validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "isListStyle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateToggleList(Landroid/content/Context;Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateTogglePage(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static validateTogglePage(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0xf

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x16

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x12

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x19

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x17

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateEditPositionInPage(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public applyBrightness(IZ)V
    .locals 7
    .param p1, "brightness"    # I
    .param p2, "write"    # Z

    .prologue
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .local v2, "power":Landroid/os/IPowerManager;
    if-eqz v2, :cond_0

    :try_start_0
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_2

    const-string v4, "pinecone"

    sget-object v5, Lmiui/app/ToggleManager;->AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    add-int v0, p1, v4

    .local v0, "brightnessValue":I
    invoke-interface {v2, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .end local v0    # "brightnessValue":I
    :cond_0
    :goto_0
    return-void

    :cond_1
    int-to-float v4, p1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sget v5, Lmiui/app/ToggleManager;->RANGE:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v4, v5

    .local v3, "valf":F
    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    if-eqz p2, :cond_0

    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_auto_brightness_adj"

    iget v6, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3    # "valf":F
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    sget v4, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    add-int v0, p1, v4

    .restart local v0    # "brightnessValue":I
    invoke-interface {v2, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    if-eqz p2, :cond_0

    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness"

    iget v6, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v4, v5, v0, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v3, "  - ToggleManager ------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  - wifi ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  mWifiEnable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mWifiConnected="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mWifiChanging="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mWifiSsid="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  - data ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  mMobileDataEnable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mMobilePolicyEnable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mIsSimMissing="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mFlightMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  - toggles ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x20

    if-ge v0, v3, :cond_0

    const-string v3, "  Toggle:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "  Status:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v3, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "  - listeners ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ToggleManager$OnToggleChangedListener;

    .local v2, "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    const-string v3, "  listener:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    .end local v2    # "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    :cond_1
    return-void
.end method

.method public getCurBrightness()I
    .locals 6

    .prologue
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_2

    const-string v3, "pinecone"

    sget-object v4, Lmiui/app/ToggleManager;->AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    .local v0, "defaultBrightness":I
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .local v1, "pm":Landroid/os/IPowerManager;
    const-string v3, "getScreenBrightness"

    const-class v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v5}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v2

    .local v2, "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    if-nez v2, :cond_0

    .end local v0    # "defaultBrightness":I
    :goto_0
    sget v3, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    sub-int v3, v0, v3

    .end local v1    # "pm":Landroid/os/IPowerManager;
    .end local v2    # "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :goto_1
    return v3

    .restart local v0    # "defaultBrightness":I
    .restart local v1    # "pm":Landroid/os/IPowerManager;
    .restart local v2    # "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {v2}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .end local v0    # "defaultBrightness":I
    .end local v1    # "pm":Landroid/os/IPowerManager;
    .end local v2    # "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :cond_1
    iget v3, p0, Lmiui/app/ToggleManager;->mBrightnessAutoLevel:F

    float-to-int v3, v3

    goto :goto_1

    :cond_2
    iget v3, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    sget v4, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v3, v4

    goto :goto_1
.end method

.method public isBrightnessAutoMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    return v0
.end method

.method isDisplayMiDropOn()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_midrop_enabled"

    iget v5, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .local v0, "settings":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v3}, Lmiui/app/WifiApEnabler;->isWifiApOn()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBatterySaverObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-static {v0, v1}, Lmiui/provider/ExtraTelephony;->unRegisterQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v0}, Lmiui/app/WifiApEnabler;->unregisterReceiver()V

    :cond_0
    return-void
.end method

.method public performToggle(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const-string v2, "ToggleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performToggle:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lmiui/app/ToggleManager;->isValid(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v1, v1, p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "mustCollapse":Z
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .end local v0    # "mustCollapse":Z
    :cond_1
    const-string v1, ""

    goto :goto_0

    .restart local v0    # "mustCollapse":Z
    :pswitch_1
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleAutoBrightness()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleBluetooth()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleData()Z

    move-result v0

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleFlightMode()V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleGps()V

    goto :goto_1

    :pswitch_6
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleRinger()V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleAccelerometer()V

    goto :goto_1

    :pswitch_9
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleScreenButtonState()V

    goto :goto_1

    :pswitch_a
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleScreenshot()V

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_b
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleSync()V

    goto :goto_1

    :pswitch_c
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleTorch()V

    goto :goto_1

    :pswitch_d
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleVibrate()V

    goto :goto_1

    :pswitch_e
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->toggleWifi()V

    goto :goto_1

    :pswitch_f
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePowerMode()V

    goto :goto_1

    :pswitch_10
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleBatterySaverToggle()V

    goto :goto_1

    :pswitch_11
    sget-object v1, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v1, :cond_0

    sget-object v1, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v1}, Lmiui/app/WifiApEnabler;->toggleWifiAp()V

    goto :goto_1

    :pswitch_12
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleQuietMode()V

    goto :goto_1

    :pswitch_13
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePaperMode()V

    goto :goto_1

    :pswitch_14
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleMiDrop()V

    goto :goto_1

    :pswitch_15
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->toggleCast()V

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_16
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleEdit()V

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_d
        :pswitch_5
        :pswitch_b
        :pswitch_4
        :pswitch_6
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method

.method public removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .locals 3
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .prologue
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    :cond_2
    return-void
.end method

.method public removeToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .locals 2
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setUserSelectedToggleOrder(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public startLongClickAction(I)Z
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x12

    if-ne v7, p1, :cond_1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->longClickScreenshot()Z

    move-result v5

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-ne v6, p1, :cond_2

    invoke-static {p1}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_2
    sget-object v7, Lmiui/app/ToggleManager;->sLongClickActions:[I

    aget v4, v7, p1

    .local v4, "resId":I
    if-eqz v4, :cond_0

    iget-object v7, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-ne v6, p1, :cond_3

    const-string v5, ":miui:starting_window_label"

    const-string v7, ""

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const/high16 v5, 0x14000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "ToggleManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start activity exception, component = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method toggleCast()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lmiui/app/ToggleManager;->getCastIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method toggleWifi()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .local v0, "currentWifiState":I
    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v1, 0x1

    .local v1, "enable":Z
    :goto_0
    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .local v2, "wifiApState":I
    if-eqz v1, :cond_1

    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lmiui/app/ConnectivityManagerReflector;->getWifiStaSapConcurrency(Landroid/net/wifi/WifiManager;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0xc

    if-eq v2, v4, :cond_0

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1

    :cond_0
    sget-object v4, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v4, :cond_1

    sget-object v4, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v4, v3}, Lmiui/app/WifiApEnabler;->setSoftapEnabled(Z)V

    :cond_1
    sget-object v3, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .end local v0    # "currentWifiState":I
    .end local v1    # "enable":Z
    .end local v2    # "wifiApState":I
    :cond_2
    return-void

    .restart local v0    # "currentWifiState":I
    :cond_3
    move v1, v3

    goto :goto_0
.end method

.method public updateAllToggles(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    iput p1, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-direct {p0}, Lmiui/app/ToggleManager;->queryBrightnessStatus()V

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateBluetoothToggle()V

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateRingerToggle()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/ToggleManager;->updateWifiToggle(Landroid/content/Intent;)V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateSyncToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAccelerometerToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateFlightModeToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateGpsToggle()V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBrightnessToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateScreenButtonState()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateTorchToggle()V

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateVibrateToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePowerModeToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBatterySaverToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateQuietModeToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePaperModeToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateMiDropToggle()V

    return-void
.end method

.method updateBluetoothToggle()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x0

    .local v0, "bluetoothChanging":Z
    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .local v1, "currentState":I
    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    if-ne v1, v6, :cond_3

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eq v1, v6, :cond_1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    :cond_1
    move v0, v4

    .end local v1    # "currentState":I
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    invoke-virtual {p0, v5, v2}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    invoke-virtual {p0, v5, v0}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v2, :cond_5

    const v2, 0x1102008f

    :goto_2
    invoke-virtual {p0, v5, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    .restart local v1    # "currentState":I
    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    .end local v1    # "currentState":I
    :cond_5
    const v2, 0x1102008e

    goto :goto_2
.end method

.method updateMiDropToggle(Z)V
    .locals 7
    .param p1, "updateWifiAp"    # Z

    .prologue
    const/16 v6, 0x1b

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v3, v2}, Lmiui/app/WifiApEnabler;->updateWifiApToggle(Z)V

    :cond_0
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->isDisplayMiDropOn()Z

    move-result v0

    .local v0, "isMiDropOn":Z
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v3}, Lmiui/app/WifiApEnabler;->isWifiApDisabled()Z

    move-result v1

    .local v1, "isWifiApDisabled":Z
    :goto_0
    const-string v3, "ToggleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiDrop: updateMiDropToggle(boolean) isMiDropOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isWifiApDisabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mMiDropChanging = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mWifiChanging = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p0, v6, v2}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    invoke-virtual {p0, v6, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    if-eqz v0, :cond_4

    const v2, 0x1102009f

    :goto_1
    invoke-virtual {p0, v6, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    .end local v1    # "isWifiApDisabled":Z
    :cond_3
    move v1, v2

    goto :goto_0

    .restart local v1    # "isWifiApDisabled":Z
    :cond_4
    const v2, 0x1102009e

    goto :goto_1
.end method

.method public updateRingerToggle()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v0

    .local v0, "silentEnabled":Z
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    if-eqz v0, :cond_0

    const v1, 0x110200a1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_0
    const v1, 0x110200a0

    goto :goto_0
.end method

.method protected updateToggleDisabled(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "disabled"    # Z

    .prologue
    sget-object v0, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method protected updateToggleImage(II)V
    .locals 6
    .param p1, "toggleId"    # I
    .param p2, "resId"    # I

    .prologue
    sget-object v3, Lmiui/app/ToggleManager;->sToggleImages:[I

    aput p2, v3, p1

    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ToggleManager$OnToggleChangedListener;

    .local v2, "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    if-nez v2, :cond_0

    const-string v3, "ToggleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listener is null:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v2, p1}, Lmiui/app/ToggleManager$OnToggleChangedListener;->OnToggleChanged(I)V

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    .end local v2    # "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    :cond_1
    return-void
.end method

.method protected updateToggleStatus(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "isOpen"    # Z

    .prologue
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method protected updateToggleStatusName(ILjava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "statusName"    # Ljava/lang/Object;

    .prologue
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateVibrateToggle()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    .local v0, "isVibrateEnabled":Z
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    if-eqz v0, :cond_0

    const v1, 0x110200b6

    :goto_0
    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_0
    const v1, 0x110200b5

    goto :goto_0
.end method

.method updateWifiToggle(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/16 v8, 0xf

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "wifiState":I
    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    if-ne v3, v9, :cond_3

    :cond_0
    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    if-eq v3, v9, :cond_1

    if-nez v3, :cond_4

    :cond_1
    :goto_1
    iput-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    const-string v4, "ToggleManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiEnable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mWifiChanging = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wifiState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "wifiState":I
    :cond_2
    :goto_2
    const-string v5, "ToggleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifiEnabled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";isWifiContected="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";intent="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_a

    const-string v4, ""

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    if-nez v4, :cond_b

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1107000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {p0, v8, v4}, Lmiui/app/ToggleManager;->updateToggleStatusName(ILjava/lang/Object;)V

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {p0, v8, v4}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {p0, v8, v4}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    if-eqz v4, :cond_c

    const v4, 0x110200ba

    :goto_5
    invoke-virtual {p0, v8, v4}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    .restart local v0    # "action":Ljava/lang/String;
    .restart local v3    # "wifiState":I
    :cond_3
    move v4, v5

    goto/16 :goto_0

    :cond_4
    move v6, v5

    goto/16 :goto_1

    .end local v3    # "wifiState":I
    :cond_5
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_6
    iput-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    if-eqz v4, :cond_9

    const-string v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_6

    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_8

    invoke-direct {p0, v1}, Lmiui/app/ToggleManager;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lmiui/app/ToggleManager;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    :goto_7
    const-string v4, "ToggleManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifiEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";ssid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";isWifiContected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";WifiInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_7
    move v6, v5

    goto :goto_6

    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_8
    iput-object v7, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto :goto_7

    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_9
    iput-object v7, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto/16 :goto_2

    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_b
    iget-object v4, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto/16 :goto_4

    :cond_c
    const v4, 0x110200b9

    goto/16 :goto_5
.end method

.method useWifiApForMiDrop()Z
    .locals 1

    .prologue
    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/app/ToggleManager;->mHasMiDrop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
