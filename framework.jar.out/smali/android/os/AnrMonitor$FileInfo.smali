.class public Landroid/os/AnrMonitor$FileInfo;
.super Ljava/lang/Object;
.source "AnrMonitor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AnrMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/os/AnrMonitor$FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFile:Ljava/io/File;

.field private mModifiedTime:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "modifiedTime"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/AnrMonitor$FileInfo;->mFile:Ljava/io/File;

    iput-wide p2, p0, Landroid/os/AnrMonitor$FileInfo;->mModifiedTime:J

    return-void
.end method


# virtual methods
.method public compareTo(JJ)I
    .locals 1
    .param p1, "x"    # J
    .param p3, "y"    # J

    .prologue
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public compareTo(Landroid/os/AnrMonitor$FileInfo;)I
    .locals 4
    .param p1, "another"    # Landroid/os/AnrMonitor$FileInfo;

    .prologue
    invoke-virtual {p1}, Landroid/os/AnrMonitor$FileInfo;->getModifiedTime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/AnrMonitor$FileInfo;->mModifiedTime:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/AnrMonitor$FileInfo;->compareTo(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/os/AnrMonitor$FileInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/AnrMonitor$FileInfo;->compareTo(Landroid/os/AnrMonitor$FileInfo;)I

    move-result v0

    return v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/AnrMonitor$FileInfo;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/os/AnrMonitor$FileInfo;->mModifiedTime:J

    return-wide v0
.end method
