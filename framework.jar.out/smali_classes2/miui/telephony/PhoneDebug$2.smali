.class final Lmiui/telephony/PhoneDebug$2;
.super Landroid/database/ContentObserver;
.source "PhoneDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/PhoneDebug;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 86
    iput-object p2, p0, Lmiui/telephony/PhoneDebug$2;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    iget-object v4, p0, Lmiui/telephony/PhoneDebug$2;->val$cr:Landroid/content/ContentResolver;

    const-string v5, "phone_debug_flag"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_0

    const-string v4, "debug.miui.phone"

    invoke-static {v4, v2}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    sput-boolean v2, Lmiui/telephony/PhoneDebug;->VDBG:Z

    .line 90
    sget-boolean v2, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v2, :cond_2

    const-string v2, "PhoneDebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange VDBG="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lmiui/telephony/PhoneDebug;->VDBG:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2
    # getter for: Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;
    invoke-static {}, Lmiui/telephony/PhoneDebug;->access$100()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 92
    # getter for: Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;
    invoke-static {}, Lmiui/telephony/PhoneDebug;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/PhoneDebug$Listener;

    .line 93
    .local v1, "l":Lmiui/telephony/PhoneDebug$Listener;
    invoke-interface {v1}, Lmiui/telephony/PhoneDebug$Listener;->onDebugChanged()V

    goto :goto_0

    .line 96
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lmiui/telephony/PhoneDebug$Listener;
    :cond_3
    return-void
.end method
