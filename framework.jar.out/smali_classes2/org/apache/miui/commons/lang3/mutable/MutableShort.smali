.class public Lorg/apache/miui/commons/lang3/mutable/MutableShort;
.super Ljava/lang/Number;
.source "MutableShort.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/miui/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/miui/commons/lang3/mutable/MutableShort;",
        ">;",
        "Lorg/apache/miui/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7f4d983fL


# instance fields
.field private value:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    .line 79
    return-void
.end method

.method public constructor <init>(S)V
    .locals 0
    .param p1, "value"    # S

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-short p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    .line 56
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 148
    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    .line 149
    return-void
.end method

.method public add(S)V
    .locals 1
    .param p1, "operand"    # S

    .prologue
    .line 137
    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    .line 138
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Lorg/apache/miui/commons/lang3/mutable/MutableShort;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableShort;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableShort;)I
    .locals 2
    .param p1, "other"    # Lorg/apache/miui/commons/lang3/mutable/MutableShort;

    .prologue
    .line 269
    iget-short v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    .line 270
    .local v0, "anotherVal":S
    iget-short v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    if-ge v1, v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget-short v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public decrement()V
    .locals 1

    .prologue
    .line 126
    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    .line 127
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 221
    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 245
    instance-of v1, p1, Lorg/apache/miui/commons/lang3/mutable/MutableShort;

    if-eqz v1, :cond_0

    .line 246
    iget-short v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    check-cast p1, Lorg/apache/miui/commons/lang3/mutable/MutableShort;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->shortValue()S

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 248
    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 211
    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    int-to-float v0, v0

    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->getValue()Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Short;
    .locals 1

    .prologue
    .line 88
    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 258
    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public increment()V
    .locals 1

    .prologue
    .line 117
    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    .line 118
    return-void
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 191
    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 201
    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    .line 108
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public setValue(S)V
    .locals 0
    .param p1, "value"    # S

    .prologue
    .line 97
    iput-short p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    .line 98
    return-void
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 181
    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 169
    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    .line 170
    return-void
.end method

.method public subtract(S)V
    .locals 1
    .param p1, "operand"    # S

    .prologue
    .line 158
    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    .line 159
    return-void
.end method

.method public toShort()Ljava/lang/Short;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
