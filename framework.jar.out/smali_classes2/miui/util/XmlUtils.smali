.class public Lmiui/util/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertValueToUnsignedInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
