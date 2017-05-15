.class final Lmiui/util/AudioOutputHelper$Result;
.super Ljava/lang/Object;
.source "AudioOutputHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/AudioOutputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Result"
.end annotation


# instance fields
.field public final mHandled:Z

.field public final mSkipped:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "handled"    # Z
    .param p2, "skipped"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lmiui/util/AudioOutputHelper$Result;->mHandled:Z

    iput-object p2, p0, Lmiui/util/AudioOutputHelper$Result;->mSkipped:Ljava/lang/String;

    return-void
.end method
