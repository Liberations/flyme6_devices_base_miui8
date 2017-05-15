.class public Landroid/app/AppOpsManagerInjector;
.super Ljava/lang/Object;
.source "AppOpsManagerInjector.java"


# static fields
.field private static sAutoStartRestrictions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.fileexplorer"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.thememanager"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.soundrecorder"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.calculator2"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.quicksearchbox"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.providers.downloads.ui"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.mipub"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.video"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.cleanmaster"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.varcodescanner"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.compass"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.voiceassist"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.yellowpage"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.personalassistant"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.backup"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.translation.kingsoft"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.home.launcher.assistant"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.fm"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.mi.misupport"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.xiaomi.scanner"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.xiaomi.vip"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.xiaomi.pass"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.xiaomi.pricecheck"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.xiaomi.midrop"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.xiaomi.miplay"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.cleanmaster.sdk"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.securityadd"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.guardprovider"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.player"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAutoStartRestriction(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
