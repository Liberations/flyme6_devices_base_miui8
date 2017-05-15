.class public Lmiui/util/TypefaceUtils;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# static fields
.field private static final MIUI_TYPEFACE_FAMILY:Ljava/lang/String; = "miui"

.field private static mFontsWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCurrentTypefaces:[Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldTypeface"    # Landroid/graphics/Typeface;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, "newTypeface":Landroid/graphics/Typeface;
    invoke-static {p0}, Lmiui/util/TypefaceUtils;->usingMiuiFonts(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_0

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v3, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    sget-object v3, Lmiui/util/TypefaceUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    if-nez v3, :cond_2

    const-class v4, Lmiui/util/TypefaceUtils;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lmiui/util/TypefaceUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    if-nez v3, :cond_1

    const/4 v3, 0x4

    new-array v2, v3, [Landroid/graphics/Typeface;

    .local v2, "typefaces":[Landroid/graphics/Typeface;
    const/4 v3, 0x0

    const-string v5, "miui"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "miui"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "miui"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "miui"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v2, v3

    sput-object v2, Lmiui/util/TypefaceUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    .end local v2    # "typefaces":[Landroid/graphics/Typeface;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-nez p1, :cond_4

    .local v1, "style":I
    :goto_0
    sget-object v3, Lmiui/util/TypefaceUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    aget-object v0, v3, v1

    .end local v1    # "style":I
    :cond_3
    if-nez v0, :cond_5

    .end local p1    # "oldTypeface":Landroid/graphics/Typeface;
    :goto_1
    return-object p1

    .restart local p1    # "oldTypeface":Landroid/graphics/Typeface;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    goto :goto_0

    :cond_5
    move-object p1, v0

    goto :goto_1
.end method

.method public static usingMiuiFonts(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.UCMobile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qzone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sina.weibo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qvod.player"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qihoo360.mobilesafe"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.kugou.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.taobao.taobao"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.BaiduMap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.youku.phone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sds.android.ttpod"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qihoo.appstore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.pplive.androidphone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.minihd.qq"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "tv.pps.mobile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xiaomi.channel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.shuqi.controller"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.storm.smart"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.qbx"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.moji.mjweather"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.wandoujia.phoenix2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.renren.mobile.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.duokan.reader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.immomo.momo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.news"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.qqmusic"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qiyi.video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.WBlog"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "qsbk.app"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.netease.newsreader.activity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sohu.newsclient"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.mtt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.tieba"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.wochacha"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.qqpimsecure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xiaomi.shop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mt.mtxx.mtxx"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qihoo360.mobilesafe.opti.powerctl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.dragon.android.pandaspace"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.etouch.ecalendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.changba"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xiaomi.xmsf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.qqlive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.chaozh.iReaderFree"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.snda.wifilocating"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ijinshan.kbatterydoctor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.duowan.mobile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.hiapk.marketpho"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qihoo360.launcher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qihoo360.mobilesafe.opti"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.com.fetion"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.nd.android.pandahome2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.youdao.dict"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.kuwo.player"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.wps.moffice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.alibaba.mobileim"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.letv.android.client"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.searchbox"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.funshion.video.mobile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.gau.go.launcherex"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.opda.a.phonoalbumshoushou"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qq.reader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.duomi.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qihoo.browser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.meitu.meiyancamera"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.nd.android.pandareader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.kingsoft"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.cleanmaster.mguard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sohu.sohuvideo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.jingdong.app.mall"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "bubei.tingshu"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.alipay.android.app"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "vStudio.Android.Camera360"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.androidesk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ss.android.article.news"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "org.funship.findsomething.withRK"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mybook66"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.token"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tmall.wireless"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.qqgame.qqlordwvga"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.budejie.www"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sankuai.meituan"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.apps.maps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.kascend.video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.android.pad"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.muzhiwan.market"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mymoney"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.browser.apps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.geili.koudai"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.news"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.androidqqmail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.myzaker.ZAKER_Phone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ifeng.news2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.handsgo.jiakao.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.hexin.plat.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.qqphonebook"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "my.beautyCamera"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.autonavi.minimap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.cubic.autohome"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.clov4r.android.nil"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.yangzhibin.chengrenxiaohua"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.dianxinos.powermanager"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ijinshan.duba"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.wuba"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "sina.mobile.tianqitong"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mandi.lol"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.duowan.lolbox"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.android.chrome"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.chinamworld.main"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ss.android.essay.joke"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "air.com.tencent.qqpasture"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.kingreader.framework"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.ibuka.manga.ui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ting.mp3.qianqian.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.jiubang.goscreenlock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.shoujiduoduo.ringtone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.lbe.security"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.snda.youni"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.jiasoft.swreader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.anyview"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.appsearch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sohu.inputmethod.sogou"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mxtech.videoplayer.ad"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.zdworks.android.zdclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.antutu.ABenchMark"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "dopool.player"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.uc.browser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ijinshan.mguard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "bdmobile.android.app"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.alensw.PicFolder"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xiaomi.topic"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.oupeng.mini.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qihoo360.launcher.screenlock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.meilishuo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.qidian.QDReader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.research.drop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.android.bluetooth"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sinovatech.unicom.ui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.dianping.v1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.yx"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.dianxinos.dxhome"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.yiche.price"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.iBookStar.activity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.android.dazhihui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.wps.moffice_eng"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.taobao.wwseller"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.icbc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.chinabus.main"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ganji.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ting.mp3.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.hy.minifetion"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mogujie"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baozoumanhua.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.calendar.UI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.wacai365"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.cnvcs.junqi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.cntv"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xunlei.kankan"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xikang.android.slimcoach"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.thunder.ktvdaren"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.goapk.market"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.htjyb.reader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sec.android.app.camera"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.blovestorm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "me.papa"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.when.android.calendar365"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.android.wallpaper.livepicker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.vancl.activity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "jp.naver.line.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.netease.mkey"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.youba.barcode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.hupu.games"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.kandian.vodapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.dewmobile.kuaiya"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.anguanjia.safe"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tudou.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cmb.pb"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.weico.sinaweibo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.ireadercity.b2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cn.wps.livespace"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.estrongs.android.pop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.facebook.katana"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.disney.WMW"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tuan800.tao800"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.byread.reader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "me.imid.fuubo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.lingdong.client.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mop.activity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sina.mfweibo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "cld.navi.mainframe"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mappn.gfan"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.pengyou"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xunlei.downloadprovider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.tencent.android.qqdownloader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.whatsapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.mx.browser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xiaomi.jr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.xiaomi.smarthome"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.miui.backup.transfer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.input_miv6"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.baidu.input_mi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.wali.live"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.miui.hybrid"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    const-string v1, "com.miui.hybrid.loader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, Lmiui/util/TypefaceUtils;->mFontsWhiteList:Ljava/util/Set;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method
