.class public Lorg/apache/miui/commons/lang3/mutable/MutableInt;
.super Ljava/lang/Number;
.source "MutableInt.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/miui/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/miui/commons/lang3/mutable/MutableInt;",
        ">;",
        "Lorg/apache/miui/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x77401786b8L


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

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
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "operand"    # I

    .prologue
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableInt;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableInt;)I
    .locals 2
    .param p1, "other"    # Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .prologue
    iget v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    .local v0, "anotherVal":I
    iget v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    if-ge v1, v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

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
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    check-cast p1, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public increment()V
    .locals 1

    .prologue
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public intValue()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(I)V
    .locals 1
    .param p1, "operand"    # I

    .prologue
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public toInteger()Ljava/lang/Integer;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
