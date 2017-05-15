.class public final Lmiui/log/MiuiLog;
.super Ljava/lang/Object;
.source "MiuiLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static d(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static e(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static i(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static i(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isLoggable(Lmiui/log/MiuiTag;I)Z
    .locals 1
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "level"    # I

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static println(ILjava/lang/Object;ILjava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tagID"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p2}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lmiui/log/MiuiLog;->println(ILjava/lang/Object;Lmiui/log/MiuiTag;Ljava/lang/String;)V

    return-void
.end method

.method public static println(ILjava/lang/Object;Lmiui/log/MiuiTag;Ljava/lang/String;)V
    .locals 5
    .param p0, "priority"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tag"    # Lmiui/log/MiuiTag;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p2}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p2, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {p0, v0, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static v(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static w(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtf(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static wtf(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiLog;->wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wtf(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtfStack(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagID"    # I
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiLog;->wtfStack(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static wtfStack(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Lmiui/log/MiuiTag;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
