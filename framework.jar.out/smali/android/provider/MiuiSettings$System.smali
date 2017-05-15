.class public Landroid/provider/MiuiSettings$System;
.super Landroid/provider/SystemSettings$System;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MiuiSettings$System$SmallWindowType;
    }
.end annotation


# static fields
.field public static final ACTIVITY_RESOLVE_ORDER:Ljava/lang/String; = "activity_resolve_order"

.field private static final ACTIVITY_RESOLVE_ORDER_DELIMETER:Ljava/lang/String; = ","

.field public static final ALWAYS_ENABLE_MMS:Ljava/lang/String; = "always_enable_mms"

.field public static final AUTO_TEST_MODE_ENABLE:Ljava/lang/String; = "auto_test_mode_on"

.field public static final BATTERY_INDICATOR_STYLE:Ljava/lang/String; = "battery_indicator_style"

.field public static final BATTERY_INDICATOR_STYLE_GRAPHIC:I = 0x0

.field public static final BATTERY_INDICATOR_STYLE_NUMBER:I = 0x1

.field public static final BATTERY_INDICATOR_STYLE_TOP:I = 0x2

.field public static final BATTERY_LEVEL_LOW_CUSTOMIZED:Ljava/lang/String; = "battery_level_low_customized"

.field public static final BREATHING_LIGHT_COLOR:Ljava/lang/String; = "breathing_light_color"

.field public static final BREATHING_LIGHT_FREQ:Ljava/lang/String; = "breathing_light_freq"

.field public static final CALENDAR_ALERT:Ljava/lang/String; = "calendar_alert"

.field public static final CALL_BREATHING_LIGHT_COLOR:Ljava/lang/String; = "call_breathing_light_color"

.field public static final CALL_BREATHING_LIGHT_COLOR_DEFAULT:I

.field public static final CALL_BREATHING_LIGHT_FREQ:Ljava/lang/String; = "call_breathing_light_freq"

.field public static final CALL_BREATHING_LIGHT_FREQ_DEFAULT:I

.field public static final CAMERA_KEY_PREFERRED_ACTION_APP_COMPONENT:Ljava/lang/String; = "camera_key_preferred_action_app_component"

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID:Ljava/lang/String; = "camera_key_preferred_action_shortcut_id"

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID_CALL:I = 0x3

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID_HOME:I = 0x0

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID_SCREENSHOT:I = 0x1

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID_SEARCH:I = 0x2

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID_WAKE:I = 0x4

.field public static final CAMERA_KEY_PREFERRED_ACTION_TOGGLE_ID:Ljava/lang/String; = "camera_key_preferred_action_toggle_id"

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE:Ljava/lang/String; = "camera_key_preferred_action_type"

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE_APP:I = 0x3

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE_DEFAULT:I = 0x0

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE_NONE:I = 0x0

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE_SHORTCUT:I = 0x1

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE_TOGGLE:I = 0x2

.field public static final CDMA_PRECISE_ANSWER_STATE:Ljava/lang/String; = "cdma_precise_answer_state"

.field public static final CDMA_PRECISE_ANSWER_STATE_DEFAULT:I = 0x1

.field public static final CDMA_PRECISE_ANSWER_STATE_DISABLE:I = 0x0

.field public static final CDMA_PRECISE_ANSWER_STATE_ENABLE:I = 0x1

.field public static final CURRENT_LIVE_WALLPAPER_PACKAGENAME:Ljava/lang/String; = "current_live_wallpaper_packagename"

.field public static final DATA_AND_WIFI_ROAM:Ljava/lang/String; = "data_and_wifi_roam"

.field public static final DATA_AND_WIFI_ROAM_DEFAULT:I = 0x0

.field public static final DEFAULT_ALARM_ALERT:Ljava/lang/String; = "default_alarm_alert"

.field public static final DEFAULT_CALENDAR_ALERT_URI:Landroid/net/Uri;

.field public static final DEFAULT_ENABLE_DEMO_MODE:Z = false

.field public static final DEFAULT_PERSIST_SYS_LINE_BREAKING:Z

.field public static final DEFAULT_RINGTONE_URI_SLOT_1:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_URI_SLOT_2:Landroid/net/Uri;

.field public static final DEFAULT_SCREEN_BUTTONS_TIMEOUT:I = 0x1388

.field public static final DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

.field public static final DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1:Landroid/net/Uri;

.field public static final DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2:Landroid/net/Uri;

.field public static final DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

.field public static final DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1:Landroid/net/Uri;

.field public static final DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2:Landroid/net/Uri;

.field public static final DEFAULT_TOUCH_SENSITIVE:Z = false

.field public static final DIAL_PAD_TOUCH_TONE:Ljava/lang/String; = "dial_pad_touch_tone"

.field public static final DIAL_PAD_TOUCH_TONE_DEFAULT:I = -0x1

.field public static final DIAL_PAD_TOUCH_TONE_HUMAN:I = 0x1

.field public static final DIAL_PAD_TOUCH_TONE_PIANO:I = 0x0

.field public static final DISABLE_WIFI_AUTO_CONNECT_SSID:Ljava/lang/String; = "disable_wifi_auto_connect_ssid"

.field public static final DRIVE_MODE_CALLING_AUTO_SMS_REPLY:Ljava/lang/String; = "drive_mode_calling_auto_sms_reply"

.field public static final DRIVE_MODE_DRIVE_MODE:Ljava/lang/String; = "drive_mode_drive_mode"

.field public static final DRIVE_MODE_INVERT_STOP_REPORT:Ljava/lang/String; = "drive_mode_invert_stop_report"

.field public static final DRIVE_MODE_ONLY_CONTACT_REPLY:Ljava/lang/String; = "drive_mode_only_contact_reply"

.field public static final DRIVE_MODE_PHONE_REPORT:Ljava/lang/String; = "drive_mode_phone_report"

.field public static final DRIVE_MODE_SMS_AUTO_REPLY_CONTENT:Ljava/lang/String; = "drive_mode_sms_auto_reply_content"

.field public static final DRIVE_MODE_SMS_AUTO_SMS_REPLY:Ljava/lang/String; = "drive_mode_sms_auto_sms_reply"

.field public static final DRIVE_MODE_SMS_REPORT:Ljava/lang/String; = "drive_mode_sms_report"

.field public static final EDGE_HANDGRIP_MODE:Ljava/lang/String; = "edge_handgrip"

.field public static final EDGE_HANDGRIP_MODE_BACK:Ljava/lang/String; = "edge_handgrip_back"

.field public static final EDGE_HANDGRIP_MODE_CLEAN:Ljava/lang/String; = "edge_handgrip_clean"

.field public static final EDGE_HANDGRIP_MODE_PHOTO:Ljava/lang/String; = "edge_handgrip_photo"

.field public static final EDGE_HANDGRIP_MODE_SCREENSHOT:Ljava/lang/String; = "edge_handgrip_screenshot"

.field public static final ENABLE_AUTO_DISABLE_SCREEN_ROTATION:Ljava/lang/String; = "enable_auto_disable_screen_rotation"

.field public static final ENABLE_DEMO_MODE:Ljava/lang/String; = "enable_demo_mode"

.field public static final ENABLE_SCREEN_ON_PROXIMITY_SENSOR:Ljava/lang/String; = "enable_screen_on_proximity_sensor"

.field public static final ENABLE_SNAPSHOT_SCREENLOCK:Ljava/lang/String; = "enable_snapshot_screenlock"

.field public static final ENABLE_SNAPSHOT_SCREENLOCK_DEFAULT:I = 0x0

.field public static final ENABLE_TELOCATION:Ljava/lang/String; = "enable_telocation"

.field public static final ENABLE_TELOCATION_DEFAULT:I = 0x1

.field public static final FINGERPRINT_NAV_ACTION_HOME:I = 0x1

.field public static final FINGERPRINT_NAV_ACTION_NONE:I = 0x0

.field public static final FINGERPRINT_NAV_CENTER_ACTION:Ljava/lang/String; = "fingerprint_nav_center_action"

.field public static final FLASH_WHEN_RING_ENABLED:Ljava/lang/String; = "flash_when_ring_enabled"

.field public static final FLASH_WHEN_RING_ENABLED_DEFAULT:Z = false

.field public static final GESTURE_WAKEUP_MODE:Ljava/lang/String; = "gesture_wakeup"

.field public static final HANDY_MODE_ENTER_DIRECT:Ljava/lang/String; = "handy_mode_enter_direct"

.field public static final HANDY_MODE_SIZE:Ljava/lang/String; = "handy_mode_size"

.field public static final HAPTIC_FEEDBACK_LEVEL:Ljava/lang/String; = "haptic_feedback_level"

.field public static final HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

.field public static final HAPTIC_FEEDBACK_LEVEL_MAX:I = 0x2

.field public static final HAPTIC_FEEDBACK_LEVEL_MIN:I = 0x0

.field public static final HAS_FOLLOWED_MIPUB:Ljava/lang/String; = "has_followed_mipub"

.field public static final HAS_SCREENSHOT_SOUND:Ljava/lang/String; = "has_screenshot_sound"

.field public static final HAS_SCREENSHOT_SOUND_DEFAULT:Z = true

.field public static final HOTSOPT_MAC_BLACK_SET:Ljava/lang/String; = "hotspot_mac_black_set"

.field public static final HOTSOPT_MAX_STATION_NUM:Ljava/lang/String; = "hotspot_max_station_num"

.field public static final HOTSOPT_VENDOR_SPECIFIC:Ljava/lang/String; = "hotspot_vendor_specific"

.field public static final IS_SECURITY_ENCRYTPION_ENABLED:Ljava/lang/String; = "is_security_encryption_enabled"

.field public static final IS_SHOW_THREE_GESTURE_ALERT:Ljava/lang/String; = "is_show_three_gesture_alert"

.field public static final KEEP_LAUNCHER_IN_MEMORY:Ljava/lang/String; = "keep_launcher_in_memory"

.field public static final KEEP_LAUNCHER_IN_MEMORY_DEFAULT:I = 0x1

.field public static final KEYGUARD_DISABLE_POWER_KEY_LONG_PRESS:Ljava/lang/String; = "keyguard_disable_power_key_long_press"

.field public static final KEYGUARD_DISABLE_POWER_KEY_LONG_PRESS_DEFAULT:I = 0x0

.field public static final KEYGUARD_LEFT_FUNCTION_CHOOSER:Ljava/lang/String; = "keyguard_left_function_chooser"

.field public static final KEYGUARD_LEFT_FUNCTION_ENABLED:Ljava/lang/String; = "keyguard_left_function_enabled"

.field public static final KEYGUARD_RIGHT_FUNCTION_CHOOSER:Ljava/lang/String; = "keyguard_right_function_chooser"

.field public static final KEYGUARD_RIGHT_FUNCTION_ENABLED:Ljava/lang/String; = "keyguard_right_function_enabled"

.field public static final KEY_AUTO_DISABLE_SCREEN_BUTTON:Ljava/lang/String; = "auto_disable_screen_button"

.field public static final KEY_COMMON_PASSWORD_CHILDRENMODE:Ljava/lang/String; = "childrenmode"

.field public static final KEY_COMMON_PASSWORD_KEYGUARD:Ljava/lang/String; = "miui_keyguard"

.field public static final KEY_FUNCTION_LIMIT_SWITCH:Ljava/lang/String; = "persist.sys.func_limit_switch"

.field public static final KEY_IN_SMALL_WINDOW_MODE:Ljava/lang/String; = "is_small_window"

.field public static final KEY_MIDROP_ENABLED:Ljava/lang/String; = "key_midrop_enabled"

.field public static final KEY_SECURITY_CENTER_ALLOW_CONNECT_NETWORK:Ljava/lang/String; = "persist.sys.sc_allow_conn"

.field public static final KEY_TOUCH_ASSISTANT_ENABLED:Ljava/lang/String; = "touch_assistant_enabled"

.field public static final KEY_TOUCH_ASSISTANT_SHOW_ON_KEYGUARD:Ljava/lang/String; = "touch_assistant_show_on_keyguard"

.field public static final KEY_TOUCH_ASSISTANT_TEMPORARY:Ljava/lang/String; = "touch_assistant_temporary"

.field public static final KEY_WAKEUP_FOR_KEYGUARD_NOTIFICATION:Ljava/lang/String; = "wakeup_for_keyguard_notification"

.field public static final LAST_AUDIBLE_RING_VOLUME:Ljava/lang/String; = "last_audible_ring_volume"

.field public static final LAST_VALID_DEVICE_ID:Ljava/lang/String; = "last_valid_device_id"

.field public static final LOCAL_SEA_LEVEL_PRESSURE:Ljava/lang/String; = "persist.sea_level_pres"

.field public static final MEMORY_LOW_THRESHOLD_PROPERTY:Ljava/lang/String; = "sys.memory.threshold.low"

.field public static final MIUI_HOME_ENABLE_AUTO_FILL_EMPTY_CELLS:Ljava/lang/String; = "miui_home_enable_auto_fill_empty_cells"

.field public static final MIUI_HOME_LOCK_SCREEN_CELLS:Ljava/lang/String; = "miui_home_lock_screen_cells"

.field public static final MIUI_HOME_SCREEN_CELLS_SIZE:Ljava/lang/String; = "miui_home_screen_cells_size"

.field public static final MMS_BREATHING_LIGHT_COLOR:Ljava/lang/String; = "mms_breathing_light_color"

.field public static final MMS_BREATHING_LIGHT_FREQ:Ljava/lang/String; = "mms_breathing_light_freq"

.field public static final MMS_PRIVATE_ADDRESS_MARKER:Ljava/lang/String; = "mms_private_address_marker"

.field public static final MMS_SYNC_WILD_MSG_STATE:Ljava/lang/String; = "mms_sync_wild_msg_state"

.field public static final MMS_SYNC_WILD_MSG_STATE_DONE:I = 0x3

.field public static final MMS_SYNC_WILD_MSG_STATE_DOWNLOAD_PENDING:I = 0x2

.field public static final MMS_SYNC_WILD_MSG_STATE_INIT:I = 0x0

.field public static final MMS_SYNC_WILD_MSG_STATE_MSG_FOUND:I = 0x1

.field public static final MMS_SYNC_WILD_MSG_STATE_UPGRADE:I = 0x4

.field public static final MMS_SYNC_WILD_MSG_STATE_UPGRADE_SIM:I = 0x5

.field public static final MMS_SYNC_WILD_NUMBERS:Ljava/lang/String; = "mms_sync_wild_numbers"

.field public static final MMS_THREAD_MARKER:Ljava/lang/String; = "mms_thread_marker"

.field public static final MMS_UPLOAD_OLD_MSG_ACCOUNTS:Ljava/lang/String; = "mms_upload_old_msg_accounts"

.field public static final MMS_UPLOAD_OLD_MSG_STATE:Ljava/lang/String; = "mms_upload_old_msg_state"

.field public static final MMS_UPLOAD_OLD_MSG_STATE_INIT:I = 0x0

.field public static final MMS_UPLOAD_OLD_MSG_STATE_NEED_PROMPT:I = 0x1

.field public static final NEED_RESET_SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "need_reset_screen_off_timeout"

.field public static final NEW_NUMERIC_PASSWORD_TYPE:Ljava/lang/String; = "new_numeric_password_type"

.field public static final NEXT_ALARM_CLOCK_FORMATTED:Ljava/lang/String; = "next_alarm_clock_formatted"

.field public static final PACKAGE_DELETE_BY_RESTORE_PHONE:Ljava/lang/String; = "package_delete_by_restore_phone"

.field public static final PERSIST_SYS_LINE_BREAKING:Ljava/lang/String; = "persist.sys.line_breaking"

.field public static final POWER_MODE:Ljava/lang/String; = "power_mode"

.field public static final POWER_MODE_KEY_PROPERTY:Ljava/lang/String; = "persist.sys.aries.power_profile"

.field public static final POWER_MODE_VALUES:[Ljava/lang/String;

.field public static final POWER_MODE_VALUE_DEFAULT:Ljava/lang/String; = "middle"

.field public static final POWER_MODE_VALUE_HIGH:Ljava/lang/String; = "high"

.field public static final POWER_MODE_VALUE_LOW:Ljava/lang/String; = "low"

.field public static final POWER_MODE_VALUE_MIDDLE:Ljava/lang/String; = "middle"

.field public static final PRIVATE_SMS_NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_private_notification"

.field public static final PUBLIC_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECENT_APPS_KEY_SHOW:Ljava/lang/String; = "recent_apps_key_show"

.field public static final REMOTE_CONTROL_PACKAGE_NAME:Ljava/lang/String; = "remote_control_pkg_name"

.field public static final REMOTE_CONTROL_PROCESS_NAME:Ljava/lang/String; = "remote_control_proc_name"

.field public static final RINGTONE_SOUND_SLOT_1:Ljava/lang/String; = "ringtone_sound_slot_1"

.field public static final RINGTONE_SOUND_SLOT_2:Ljava/lang/String; = "ringtone_sound_slot_2"

.field public static final RINGTONE_SOUND_USE_UNIFORM:Ljava/lang/String; = "ringtone_sound_use_uniform"

.field public static final SCREENSHOT_NOTIFICATION_ENABLED:Ljava/lang/String; = "screenshot_notification_enabled"

.field public static final SCREEN_BUTTONS_TIMEOUT:Ljava/lang/String; = "screen_buttons_timeout"

.field public static final SCREEN_KEY_BACK:I = 0x3

.field public static final SCREEN_KEY_COUNT:I = 0x4

.field public static final SCREEN_KEY_HOME:I = 0x1

.field public static final SCREEN_KEY_LONG_PRESS_ACTION_CLOSE_APP:Ljava/lang/String; = "close_app"

.field public static final SCREEN_KEY_LONG_PRESS_ACTION_GOOGLE_NOW:Ljava/lang/String; = "google_now"

.field public static final SCREEN_KEY_LONG_PRESS_ACTION_NONE:Ljava/lang/String; = "none"

.field public static final SCREEN_KEY_LONG_PRESS_ACTION_QUICK_SEARCH:Ljava/lang/String; = "quick_search"

.field public static final SCREEN_KEY_LONG_PRESS_ACTION_RECENT_PANEL:Ljava/lang/String; = "recent_panel"

.field public static final SCREEN_KEY_LONG_PRESS_ACTION_SHOW_MENU:Ljava/lang/String; = "show_menu"

.field public static final SCREEN_KEY_LONG_PRESS_ACTION_VOICE_ASSISTANT:Ljava/lang/String; = "voice_assistant"

.field public static final SCREEN_KEY_LONG_PRESS_APP_SWITCH:Ljava/lang/String; = "screen_key_long_press_app_switch"

.field public static final SCREEN_KEY_LONG_PRESS_BACK:Ljava/lang/String; = "screen_key_long_press_back"

.field public static final SCREEN_KEY_LONG_PRESS_HOME:Ljava/lang/String; = "screen_key_long_press_home"

.field public static final SCREEN_KEY_LONG_PRESS_MENU:Ljava/lang/String; = "screen_key_long_press_menu"

.field public static final SCREEN_KEY_LONG_PRESS_TIMEOUT:Ljava/lang/String; = "screen_key_long_press_timeout"

.field public static final SCREEN_KEY_LONG_PRESS_TIMEOUT_DEFAULT:I = 0x1f4

.field public static final SCREEN_KEY_MENU:I = 0x0

.field public static final SCREEN_KEY_ORDER:Ljava/lang/String; = "screen_key_order"

.field public static final SCREEN_KEY_PRESS_APP_SWITCH:Ljava/lang/String; = "screen_key_press_app_switch"

.field public static final SCREEN_KEY_PRESS_APP_SWITCH_DEFAULT:Z = true

.field public static final SCREEN_KEY_RECENT_APPS:I = 0x2

.field public static final SCREEN_OFF_BY_LID_PROPERTY_STRING:Ljava/lang/String; = "sys.keyguard.screen_off_by_lid"

.field public static final SHOW_LOCK_BEFORE_UNLOCK:Ljava/lang/String; = "show_lock_before_unlock"

.field public static final SHOW_LOCK_BEFORE_UNLOCK_DEFAULT:Z

.field public static final SHOW_ROUNDED_CORNERS:Ljava/lang/String; = "show_rounded_corners"

.field private static final SIMPLE_MODE:Ljava/lang/String; = "simple_mode"

.field public static final SMARTCOVER_DISABLED:I = 0x0

.field public static final SMARTCOVER_FULL_MODE:I = 0x4

.field public static final SMARTCOVER_GUIDE_KEY:Ljava/lang/String; = "smart_cover_key"

.field public static final SMARTCOVER_LATTICE_MODE:I = 0x3

.field public static final SMARTCOVER_MODE_DEFAULT_VALUE:I = -0x1

.field public static final SMARTCOVER_MODE_KEY:Ljava/lang/String; = "persist.sys.smartcover_mode"

.field public static final SMARTCOVER_NORMAL_MODE:I = 0x1

.field public static final SMARTCOVER_SMALLWINDOW_MODE:I = 0x2

.field public static final SMARTCOVER_SMALLWIN_TYPE:Ljava/lang/String; = "persist.sys.smallwin_type"

.field public static final SMS_DELIVERED_SOUND:Ljava/lang/String; = "sms_delivered_sound"

.field public static final SMS_DELIVERED_SOUND_SLOT_1:Ljava/lang/String; = "sms_delivered_sound_slot_1"

.field public static final SMS_DELIVERED_SOUND_SLOT_2:Ljava/lang/String; = "sms_delivered_sound_slot_2"

.field public static final SMS_DELIVERED_SOUND_USE_UNIFORM:Ljava/lang/String; = "sms_delivered_sound_use_uniform"

.field public static final SMS_NOTIFICATION_BODY_ENABLED:Ljava/lang/String; = "pref_key_enable_notification_body"

.field public static final SMS_NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_notification"

.field public static final SMS_RECEIVED_SOUND:Ljava/lang/String; = "sms_received_sound"

.field public static final SMS_RECEIVED_SOUND_SLOT_1:Ljava/lang/String; = "sms_received_sound_slot_1"

.field public static final SMS_RECEIVED_SOUND_SLOT_2:Ljava/lang/String; = "sms_received_sound_slot_2"

.field public static final SMS_RECEIVED_SOUND_USE_UNIFORM:Ljava/lang/String; = "sms_received_sound_use_uniform"

.field public static final SMS_WAKE_UP_SCREEN_ENABLED:Ljava/lang/String; = "pref_key_enable_wake_up_screen"

.field public static final STATUS_BAR_COLLAPSE_AFTER_CLICKED:Ljava/lang/String; = "status_bar_collapse_after_clicked"

.field public static final STATUS_BAR_CUSTOM_CARRIER:Ljava/lang/String; = "status_bar_custom_carrier"

.field public static final STATUS_BAR_EXPANDABLE_UNDER_FULLSCREEN:Ljava/lang/String; = "status_bar_expandable_under_fullscreen"

.field public static final STATUS_BAR_EXPANDABLE_UNDER_KEYGUARD:Ljava/lang/String; = "status_bar_expandable_under_keyguard"

.field public static final STATUS_BAR_REAL_CARRIER:Ljava/lang/String; = "status_bar_real_carrier"

.field public static final STATUS_BAR_SHOW_CUSTOM_CARRIER:Ljava/lang/String; = "status_bar_show_custom_carrier"

.field public static final STATUS_BAR_SHOW_NETWORK_ASSISTANT:Ljava/lang/String; = "status_bar_show_network_assistant"

.field public static final STATUS_BAR_SHOW_NETWORK_ASSISTANT_DEFAULT:I = 0x0

.field public static final STATUS_BAR_SHOW_NETWORK_SPEED:Ljava/lang/String; = "status_bar_show_network_speed"

.field public static final STATUS_BAR_SHOW_NETWORK_SPEED_DEFAULT:I = 0x0

.field public static final STATUS_BAR_SHOW_NOTIFICATION_ICON:Ljava/lang/String; = "status_bar_show_notification_icon"

.field public static final STATUS_BAR_SHOW_NOTIFICATION_ICON_DEFAULT:I

.field public static final STATUS_BAR_STYLE:Ljava/lang/String; = "status_bar_style_type"

.field public static final STATUS_BAR_STYLE_DEFAULT:I = 0x0

.field public static final STATUS_BAR_STYLE_LIST:I = 0x0

.field public static final STATUS_BAR_STYLE_PAGE:I = 0x1

.field public static final STATUS_BAR_TOGGLE_LIST:Ljava/lang/String; = "status_bar_toggle_list_order_new"

.field public static final STATUS_BAR_TOGGLE_PAGE:Ljava/lang/String; = "status_bar_toggle_page_order"

.field public static final STATUS_BAR_UPDATE_NETWORK_SPEED_INTERVAL:Ljava/lang/String; = "status_bar_network_speed_interval"

.field public static final STATUS_BAR_UPDATE_NETWORK_SPEED_INTERVAL_DEFAULT:I = 0xfa0

.field public static final SYSTEM_NEW_VERSION_FOUND:Ljava/lang/String; = "system_new_version_found"

.field public static final T9_INDEXING_KEY:Ljava/lang/String; = "t9_indexing_key"

.field public static final T9_INDEXING_KEY_PINYIN:I = 0x0

.field public static final T9_INDEXING_KEY_ZHUYIN:I = 0x1

.field public static final THREE_GESTURE_SCREENSHOT:Ljava/lang/String; = "three_gesture_screenshot"

.field public static final THREE_GESTURE_SCREENSHOT_DEFAULT:Z = false

.field public static final TORCH_STATE:Ljava/lang/String; = "torch_state"

.field public static final TOUCH_SENSITIVE:Ljava/lang/String; = "touch_sensitive"

.field public static final TRACKBALL_WAKE_SCREEN:Ljava/lang/String; = "trackball_wake_screen"

.field public static final UI_MODE_SCALE:Ljava/lang/String; = "ui_mode_scale"

.field public static final USER_GUIDE_LOCK_SCREEN_UNLOCK:Ljava/lang/String; = "user_guide_lock_screen_unlock"

.field public static final USER_GUIDE_STATUS_BAR_CALL:Ljava/lang/String; = "user_guide_status_bar_call"

.field public static final USER_GUIDE_STATUS_BAR_NOTIFICATION:Ljava/lang/String; = "user_guide_status_bar_notification"

.field public static final USER_GUIDE_STATUS_BAR_TOGGLE:Ljava/lang/String; = "user_guide_status_bar_toggle"

.field public static final USER_GUIDE_STATUS_BAR_TOGGLE_LIST:Ljava/lang/String; = "user_guide_status_bar_toggle_list"

.field public static final VIBRATE_IN_NORMAL:Ljava/lang/String; = "vibrate_in_normal"

.field public static final VIBRATE_IN_NORMAL_DEFAULT:Z

.field public static final VIBRATE_IN_SILENT:Ljava/lang/String; = "vibrate_in_silent"

.field public static final VIBRATE_IN_SILENT_DEFAULT:Z = true

.field public static final VOICEASSIST_INVERT_STOP_REPORT:Ljava/lang/String; = "voiceassist_invert_stop_report"

.field public static final VOICEASSIST_MENU_LONG_LAUNCH:Ljava/lang/String; = "voiceassist_menu_long_press_launch"

.field public static final VOICEASSIST_PHONE_BY_EAR_LAUNCH:Ljava/lang/String; = "voiceassist_phone_by_ear_launch"

.field public static final VOICEASSIST_PHONE_REPORT:Ljava/lang/String; = "voiceassist_phone_report"

.field public static final VOICEASSIST_REPORT_METHOD:Ljava/lang/String; = "voiceassist_report_method"

.field public static final VOICEASSIST_REPORT_OFF:I = 0x2

.field public static final VOICEASSIST_REPORT_ON:I = 0x1

.field public static final VOICEASSIST_REPORT_WIREDON:I = 0x0

.field public static final VOICEASSIST_SMS_REPORT:Ljava/lang/String; = "voiceassist_sms_report"

.field public static final VOLUMEKEY_WAKE_SCREEN:Ljava/lang/String; = "volumekey_wake_screen"

.field public static final WIFI_CONNECT_TYPE:Ljava/lang/String; = "wifi_connect_type"

.field public static final WIFI_CONNECT_TYPE_ASK:I = 0x2

.field public static final WIFI_CONNECT_TYPE_AUTO:I = 0x0

.field public static final WIFI_CONNECT_TYPE_MANUL:I = 0x1

.field public static final WIFI_DIALOG_REMIND_TYPE:Ljava/lang/String; = "wifi_dialog_remind_type"

.field public static final WIFI_DIALOG_REMIND_TYPE_CLOSE:I = 0x0

.field public static final WIFI_DIALOG_REMIND_TYPE_OPEN:I = 0x1

.field public static final WIFI_MASTER_KEY:Ljava/lang/String; = "wifi_master_key"

.field public static final WIFI_MASTER_KEY_DEFAULT:I = 0x1

.field public static final WIFI_PRIORITY_TYPE:Ljava/lang/String; = "wifi_priority_type"

.field public static final WIFI_PRIORITY_TYPE_DEFAULT:I = 0x0

.field public static final WIFI_PRIORITY_TYPE_MAMUAL:I = 0x1

.field public static final WIFI_SELECT_SSID_ASK:I = 0x2

.field public static final WIFI_SELECT_SSID_AUTO:I = 0x0

.field public static final WIFI_SELECT_SSID_MANUL:I = 0x1

.field public static final WIFI_SELECT_SSID_TYPE:Ljava/lang/String; = "wifi_select_ssid_type"

.field public static final WIFI_SHARE:Ljava/lang/String; = "wifi"

.field public static final WINDOW_TYPE_LAYER:Ljava/lang/String; = "window_type_layer"

.field private static final WORD_PHOTO:Ljava/lang/String; = "word_photo"

.field public static screenKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v1, "ro.haptic.default_level"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    sget-boolean v1, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    sput v1, Landroid/provider/MiuiSettings$System;->STATUS_BAR_SHOW_NOTIFICATION_ICON_DEFAULT:I

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    sput-boolean v1, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    sput-boolean v1, Landroid/provider/MiuiSettings$System;->SHOW_LOCK_BEFORE_UNLOCK_DEFAULT:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v5, [Ljava/lang/String;

    const-string v4, "high"

    aput-object v4, v1, v2

    const-string v4, "middle"

    aput-object v4, v1, v3

    sput-object v1, Landroid/provider/MiuiSettings$System;->POWER_MODE_VALUES:[Ljava/lang/String;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v4, 0x110d0000

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Landroid/provider/MiuiSettings$System;->CALL_BREATHING_LIGHT_COLOR_DEFAULT:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1106000b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Landroid/provider/MiuiSettings$System;->CALL_BREATHING_LIGHT_FREQ_DEFAULT:I

    const-string v1, "calendar_alert"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_CALENDAR_ALERT_URI:Landroid/net/Uri;

    const-string v1, "sms_received_sound"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

    const-string v1, "sms_delivered_sound"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

    const-string v1, "ringtone_sound_slot_1"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_1:Landroid/net/Uri;

    const-string v1, "ringtone_sound_slot_2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_2:Landroid/net/Uri;

    const-string v1, "sms_received_sound_slot_1"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    const-string v1, "sms_received_sound_slot_2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    const-string v1, "sms_delivered_sound_slot_1"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    const-string v1, "sms_delivered_sound_slot_2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    sget-boolean v1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v1, :cond_3

    :goto_2
    sput-boolean v3, Landroid/provider/MiuiSettings$System;->DEFAULT_PERSIST_SYS_LINE_BREAKING:Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-call_log-0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-call_log-1"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "setting_last_time_alert_call_log"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-wifi-0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-wifi-1"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "setting_last_time_alert_wifi"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-com.miui.gallery.cloud.provider-0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-com.miui.gallery.cloud.provider-1"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "setting_last_time_alert_com.miui.gallery.cloud.provider"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-records-0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-records-1"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "setting_last_time_alert_records"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-com.android.calendar-0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-com.android.calendar-1"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "setting_last_time_alert_com.android.calendar"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-notes-0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-notes-1"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "setting_last_time_alert_notes"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-sms-0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-sms-1"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "setting_last_time_alert_sms"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-com.android.contacts-0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-com.android.contacts-1"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "setting_last_time_alert_com.android.contacts"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-com.miui.browser-0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-com.miui.browser-1"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "setting_last_time_alert_com.miui.browser"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-antispam-0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-antispam-1"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "setting_last_time_alert_antispam"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-com.miui.player-0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "sync_for_sim_com.xiaomi-com.miui.player-1"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "setting_last_time_alert_com.miui.player"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "com.xiaomi.opensdk.pdc.host"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "micloud_network_availability"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "micloud_hosts"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "micloud_accountname"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "micloud_hosts_v2"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "micloud_accountname_v2"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "micloud_updatehosts_third_party"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "mms_sync_wild_msg_state"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "mms_sync_wild_numbers"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "mms_upload_old_msg_state"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "mms_upload_old_msg_accounts"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "mms_thread_marker"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "mms_private_address_marker"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "miprofile.settings.miprofile_user_notice"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "miprofile.settings.miprofile_badge_notice"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "miprofile.settings.miprofile_set"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "miprofile.settings.miprofile_on"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "miprofile.settings.miprofile_visible"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "debug_switch"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "debug_dp_path"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "xunlei_token"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "vip_token"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "xunlei_usage_permission"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "default_alarm_alert"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "next_alarm_clock_formatted"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "voiceassist_report_method"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "voiceassist_phone_report"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "voiceassist_sms_report"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "last_valid_device_id"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "livetalk_service_status"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "livetalk_enabled"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "livetalk_switch_state"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "need_prompt"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "livetalk_use_current_account"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "internal_dial_avaiable"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "international_dial_avaiable"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "recent_country_remain_mins"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "livetalk_dial_range"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "livetalk_available_status"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "livetalk_remain_minutes"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "lock_wallpaper_provider_authority"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "clock_changed_time_"

    .local v0, "themeClockSettingPrefix":Ljava/lang/String;
    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1x2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2x2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2x4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "4x4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "com.xiaomi.market.enable_share_progress_status"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "com.miui.home.enable_share_progress_status"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "com.xiaomi.discover.enable_share_progress_status"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "com.xiaomi.mipicks.enable_share_progress_status"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "touch_assistant_enabled"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "touch_assistant_show_on_keyguard"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "frequent_phrases"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "ringtone_sound_slot_1"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "ringtone_sound_slot_2"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "updatable_system_app_count"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v2, "show_touches"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .end local v0    # "themeClockSettingPrefix":Ljava/lang/String;
    :cond_1
    move v1, v2

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto/16 :goto_1

    :cond_3
    move v3, v2

    goto/16 :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/provider/SystemSettings$System;-><init>()V

    return-void
.end method

.method private static flattenOrderToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getActivityResolveOrder(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "activity_resolve_order"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->unflattenOrderFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "disable_wifi_auto_connect_ssid"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .local v2, "ssidList":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .local v3, "ssidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "ssidArr":[Ljava/lang/String;
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/String;

    aget-object v5, v1, v0

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "ssidArr":[Ljava/lang/String;
    :cond_0
    return-object v3

    .restart local v0    # "i":I
    .restart local v1    # "ssidArr":[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static getDisplayWindowSizeInSmartCover()Landroid/graphics/Rect;
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/provider/MiuiSettings$System;->getSmallWindowMode()Landroid/provider/MiuiSettings$System$SmallWindowType;

    move-result-object v5

    .local v5, "type":Landroid/provider/MiuiSettings$System$SmallWindowType;
    new-array v0, v14, [I

    const v6, 0x1106000f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    aput v6, v0, v10

    const v6, 0x11060010

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    aput v6, v0, v11

    const v6, 0x11060011

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    aput v6, v0, v12

    const v6, 0x11060012

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    aput v6, v0, v13

    .local v0, "defaultSize":[I
    new-instance v3, Landroid/graphics/Rect;

    aget v6, v0, v10

    aget v7, v0, v11

    aget v8, v0, v12

    aget v9, v0, v13

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v3, "rect":Landroid/graphics/Rect;
    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-array v1, v14, [I

    const-string v6, "smartcover_smallwindow_left"

    aget v7, v0, v10

    invoke-static {v6, v7}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v10

    const-string v6, "smartcover_smallwindow_top"

    aget v7, v0, v11

    invoke-static {v6, v7}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v11

    const-string v6, "smartcover_smallwindow_right"

    aget v7, v0, v12

    invoke-static {v6, v7}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v12

    const-string v6, "smartcover_smallwindow_bottom"

    aget v7, v0, v13

    invoke-static {v6, v7}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v13

    .local v1, "displaySize":[I
    const-string v6, "support_multiple_small_win_cover"

    invoke-static {v6, v10}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "multi":Z
    if-eqz v2, :cond_2

    sget-object v6, Landroid/provider/MiuiSettings$1;->$SwitchMap$android$provider$MiuiSettings$System$SmallWindowType:[I

    invoke-virtual {v5}, Landroid/provider/MiuiSettings$System$SmallWindowType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    array-length v6, v1

    if-ne v6, v14, :cond_0

    aget v6, v1, v10

    aget v7, v1, v11

    aget v8, v1, v12

    aget v9, v1, v13

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_0
    const-string v6, "smartcover_smallwindow_x7_size"

    invoke-static {v6}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_1

    :pswitch_1
    const-string v6, "smartcover_smallwindow_a1_size"

    invoke-static {v6}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_1

    :pswitch_2
    const-string v6, "smartcover_smallwindow_a7_size"

    invoke-static {v6}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_1

    :pswitch_3
    const-string v6, "smartcover_smallwindow_b7_size"

    invoke-static {v6}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getHapticFeedbackLevel(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_level"

    sget v2, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    const/4 v3, -0x3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getHotSpotMacBlackSet(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hotspot_mac_black_set"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .local v3, "macList":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .local v2, "macBlackSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "mac":[Ljava/lang/String;
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/String;

    aget-object v5, v1, v0

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "mac":[Ljava/lang/String;
    :cond_0
    return-object v2

    .restart local v0    # "i":I
    .restart local v1    # "mac":[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static getHotSpotMaxStationNum(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .local v0, "num":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_max_station_num"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getHotSpotVendorSpecific(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hotspot_vendor_specific"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenKeyLongPressAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "none"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1108000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, "defaultActions":[Ljava/lang/String;
    const-string v2, "screen_key_long_press_menu"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .end local v1    # "defaultActions":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v1    # "defaultActions":[Ljava/lang/String;
    :cond_1
    const-string v2, "screen_key_long_press_home"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    aget-object v0, v1, v2

    goto :goto_0

    :cond_2
    const-string v2, "screen_key_long_press_back"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    aget-object v0, v1, v2

    goto :goto_0

    :cond_3
    const-string v2, "screen_key_long_press_app_switch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method public static getScreenKeyOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
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
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_key_order"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "keyList":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v5

    if-ge v1, v7, :cond_1

    :try_start_0
    aget-object v7, v5, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "id":I
    sget-object v7, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "id":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v5    # "keys":[Ljava/lang/String;
    :cond_1
    sget-object v7, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, "id":Ljava/lang/Integer;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "id":Ljava/lang/Integer;
    :cond_3
    return-object v6
.end method

.method public static getShowCustomCarrierDefault()I
    .locals 2

    .prologue
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1109001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSmallWindowMode()Landroid/provider/MiuiSettings$System$SmallWindowType;
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/16 v7, -0x63

    const/4 v6, 0x0

    const-string v5, "persist.sys.smallwin_type"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .local v4, "win":I
    if-ne v4, v7, :cond_3

    const-string v5, "support_multiple_small_win_cover"

    invoke-static {v5, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "multi":Z
    const/4 v3, 0x0

    .local v3, "typeArray":[I
    if-eqz v0, :cond_0

    const-string v5, "small_win_cover_type"

    invoke-static {v5}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    :goto_0
    if-nez v3, :cond_2

    const/4 v2, 0x0

    .end local v0    # "multi":Z
    .end local v3    # "typeArray":[I
    :goto_1
    return-object v2

    .restart local v0    # "multi":Z
    .restart local v3    # "typeArray":[I
    :cond_0
    const/4 v5, 0x1

    new-array v3, v5, [I

    const-string v5, "support_small_win_cover"

    invoke-static {v5, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "supportSmallWin":Z
    if-eqz v1, :cond_1

    const-string v5, "small_win_cover_type"

    invoke-static {v5, v8}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v6

    goto :goto_0

    :cond_1
    aput v8, v3, v6

    goto :goto_0

    .end local v1    # "supportSmallWin":Z
    :cond_2
    aget v4, v3, v6

    .end local v0    # "multi":Z
    .end local v3    # "typeArray":[I
    :cond_3
    const/4 v2, 0x0

    .local v2, "type":Landroid/provider/MiuiSettings$System$SmallWindowType;
    packed-switch v4, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_1

    :pswitch_0
    sget-object v2, Landroid/provider/MiuiSettings$System$SmallWindowType;->X7_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    goto :goto_1

    :pswitch_1
    sget-object v2, Landroid/provider/MiuiSettings$System$SmallWindowType;->A1_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    goto :goto_1

    :pswitch_2
    sget-object v2, Landroid/provider/MiuiSettings$System$SmallWindowType;->A7_LATTICE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    goto :goto_1

    :pswitch_3
    sget-object v2, Landroid/provider/MiuiSettings$System$SmallWindowType;->B7_FULL:Landroid/provider/MiuiSettings$System$SmallWindowType;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    const-class v1, Landroid/provider/MiuiSettings$System;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v0, p2

    :cond_0
    monitor-exit v1

    return-object v0

    .end local v0    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getT9IndexingKeyDefault()I
    .locals 1

    .prologue
    const-string v0, "TW"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCdmaPreciseAnswerStateEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cdma_precise_answer_state"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHapticFeedbackDisabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isInSmallWindowMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_small_window"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLinebreakingEnabled()Z
    .locals 2

    .prologue
    const-string v0, "persist.sys.line_breaking"

    sget-boolean v1, Landroid/provider/MiuiSettings$System;->DEFAULT_PERSIST_SYS_LINE_BREAKING:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMiDropEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_midrop_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMiuiPublicSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    sget-object v0, Landroid/provider/MiuiSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "SystemSettings"

    const-string v1, "Want to modify SystemSettings? See MiuiSettings.System.PUBLIC_SETTINGS"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimpleMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_0

    move v0, v1

    .local v0, "def":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "simple_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    :goto_1
    return v2

    .end local v0    # "def":I
    :cond_0
    move v0, v2

    goto :goto_0

    .restart local v0    # "def":I
    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method public static isTouchAssistantEnabledForUser(Landroid/content/Context;IZ)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "hasNavBar"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "touch_assistant_enabled"

    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .local v0, "result":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isTouchAssistantTemporaryForUser(Landroid/content/Context;IZ)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "hasNavBar"    # Z

    .prologue
    const/4 v3, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "touch_assistant_enabled"

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .local v0, "result":I
    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static putActivityResolveOrder(Landroid/content/ContentResolver;Ljava/util/List;)V
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const-string v0, "activity_resolve_order"

    invoke-static {p1}, Landroid/provider/MiuiSettings$System;->flattenOrderToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setDisableWifiAutoConnectSsid(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "ssidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "base64Ssid":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "ssid":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    .end local v2    # "ssid":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "disable_wifi_auto_connect_ssid"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static setHotSpotMacBlackSet(Landroid/content/Context;Ljava/util/Set;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "macSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    const-string v3, "^[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}$"

    .local v3, "patternMac":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "base64Mac":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "mac":Ljava/lang/String;
    :try_start_0
    const-string v4, "^[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}$"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    .end local v2    # "mac":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hotspot_mac_black_set"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .end local v0    # "base64Mac":Ljava/lang/StringBuilder;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "patternMac":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static setHotSpotMaxStationNum(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # I

    .prologue
    if-lez p1, :cond_0

    const/16 v0, 0x7d8

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hotspot_max_station_num"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setHotSpotVendorSpecific(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hotspot_vendor_specific"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static setSimpleMode(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSimpleMode"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "simple_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSmartCoverMode(Z)V
    .locals 5
    .param p0, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "support_hall_sensor"

    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "supportHallSensor":Z
    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const-string v2, "persist.sys.smartcover_mode"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/provider/MiuiSettings$System;->getSmallWindowMode()Landroid/provider/MiuiSettings$System$SmallWindowType;

    move-result-object v0

    .local v0, "coverType":Landroid/provider/MiuiSettings$System$SmallWindowType;
    if-nez v0, :cond_2

    const-string v2, "persist.sys.smartcover_mode"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/provider/MiuiSettings$1;->$SwitchMap$android$provider$MiuiSettings$System$SmallWindowType:[I

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$System$SmallWindowType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "persist.sys.smartcover_mode"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v2, "persist.sys.smartcover_mode"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v2, "persist.sys.smartcover_mode"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v2, "persist.sys.smartcover_mode"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setUseWordPhoto(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useWordPhoto"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "word_photo"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static unflattenOrderFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz p0, :cond_0

    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "split":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "split":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static updateScreenColor()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "1"

    const-string v4, "sys.boot_completed"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "support_screen_color_persist"

    invoke-static {v3, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .local v0, "TAG":Ljava/lang/String;
    .local v1, "currValue":I
    .local v2, "dfm":Lmiui/hareware/display/DisplayFeatureManager;
    :goto_0
    return-void

    .end local v0    # "TAG":Ljava/lang/String;
    .end local v1    # "currValue":I
    .end local v2    # "dfm":Lmiui/hareware/display/DisplayFeatureManager;
    :cond_0
    const-string v0, "DisplayFeatureManager"

    .restart local v0    # "TAG":Ljava/lang/String;
    const-string v3, "DisplayFeatureManager"

    const-string v4, "updateScreenColor begin"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getInstance()Lmiui/hareware/display/DisplayFeatureManager;

    move-result-object v2

    .restart local v2    # "dfm":Lmiui/hareware/display/DisplayFeatureManager;
    invoke-static {}, Landroid/provider/MiuiSettings$ScreenEffect;->isScreenPaperMode()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "DisplayFeatureManager"

    const-string v4, "setScreenPaperMode true"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Landroid/provider/MiuiSettings$ScreenEffect;->setScreenPaperMode(Z)V

    :cond_1
    :goto_1
    invoke-virtual {v2}, Lmiui/hareware/display/DisplayFeatureManager;->getScreenSaturation()I

    move-result v1

    .restart local v1    # "currValue":I
    const-string v3, "DisplayFeatureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setScreenSaturation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenSaturation(I)V

    const-string v3, "support_screen_optimize"

    invoke-static {v3, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lmiui/hareware/display/DisplayFeatureManager;->getScreenCabc()I

    move-result v1

    const-string v3, "DisplayFeatureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setScreenCabc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenCabc(I)V

    :cond_2
    const-string v3, "DisplayFeatureManager"

    const-string v4, "updateScreenColor end"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "currValue":I
    :cond_3
    invoke-virtual {v2}, Lmiui/hareware/display/DisplayFeatureManager;->getScreenGamut()I

    move-result v1

    .restart local v1    # "currValue":I
    const-string v3, "screen_standard_mode"

    invoke-static {v3, v6}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_4

    if-eqz v1, :cond_4

    const-string v3, "DisplayFeatureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setScreenGamut "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenGamut(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lmiui/hareware/display/DisplayFeatureManager;->getColorPrefer()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const-string v3, "DisplayFeatureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setColorPrefer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Lmiui/hareware/display/DisplayFeatureManager;->setColorPrefer(I)V

    goto/16 :goto_1
.end method

.method public static useWordPhoto(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "word_photo"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
