.class public Lorg/apache/miui/commons/lang3/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v1, [J

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    new-array v0, v1, [I

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    new-array v0, v1, [S

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    new-array v0, v1, [Ljava/lang/Short;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    new-array v0, v1, [B

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    new-array v0, v1, [Ljava/lang/Byte;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    new-array v0, v1, [D

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    new-array v0, v1, [F

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    new-array v0, v1, [Z

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    new-array v0, v1, [C

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    new-array v0, v1, [Ljava/lang/Character;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p3, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Length: 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v3, 0x1

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "joinedArray":Ljava/lang/Object;
    invoke-static {v0, v4, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .end local v0    # "joinedArray":Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .local v1, "length":I
    if-gt p1, v1, :cond_2

    if-gez p1, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    add-int/lit8 v3, v1, 0x1

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .local v2, "result":Ljava/lang/Object;
    invoke-static {p0, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    if-ge p1, v1, :cond_4

    add-int/lit8 v3, p1, 0x1

    sub-int v4, v1, p1

    invoke-static {p0, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method public static add([BB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .prologue
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .local v0, "newArray":[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    return-object v0
.end method

.method public static add([BIB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "element"    # B

    .prologue
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static add([CC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .prologue
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    move-object v0, v1

    check-cast v0, [C

    .local v0, "newArray":[C
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    return-object v0
.end method

.method public static add([CIC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "index"    # I
    .param p2, "element"    # C

    .prologue
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static add([DD)[D
    .locals 3
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .prologue
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    move-object v0, v1

    check-cast v0, [D

    .local v0, "newArray":[D
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    return-object v0
.end method

.method public static add([DID)[D
    .locals 2
    .param p0, "array"    # [D
    .param p1, "index"    # I
    .param p2, "element"    # D

    .prologue
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static add([FF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .prologue
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    move-object v0, v1

    check-cast v0, [F

    .local v0, "newArray":[F
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-object v0
.end method

.method public static add([FIF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "index"    # I
    .param p2, "element"    # F

    .prologue
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static add([II)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .prologue
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .local v0, "newArray":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-object v0
.end method

.method public static add([III)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "index"    # I
    .param p2, "element"    # I

    .prologue
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static add([JIJ)[J
    .locals 2
    .param p0, "array"    # [J
    .param p1, "index"    # I
    .param p2, "element"    # J

    .prologue
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JJ)[J
    .locals 3
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .prologue
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    move-object v0, v1

    check-cast v0, [J

    .local v0, "newArray":[J
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    return-object v0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    return-object v1

    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array and element cannot both be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v0, v2

    return-object v0

    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Arguments cannot both be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static add([SIS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "index"    # I
    .param p2, "element"    # S

    .prologue
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .prologue
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    move-object v0, v1

    check-cast v0, [S

    .local v0, "newArray":[S
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-short p1, v0, v1

    return-object v0
.end method

.method public static add([ZIZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "index"    # I
    .param p2, "element"    # Z

    .prologue
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .prologue
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    move-object v0, v1

    check-cast v0, [Z

    .local v0, "newArray":[Z
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-boolean p1, v0, v1

    return-object v0
.end method

.method public static varargs addAll([B[B)[B
    .locals 4
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .prologue
    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .local v0, "joinedArray":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public static varargs addAll([C[C)[C
    .locals 4
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .prologue
    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [C

    .local v0, "joinedArray":[C
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0
.end method

.method public static varargs addAll([D[D)[D
    .locals 4
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .prologue
    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [D

    .local v0, "joinedArray":[D
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([DI[DII)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([DI[DII)V

    goto :goto_0
.end method

.method public static varargs addAll([F[F)[F
    .locals 4
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .prologue
    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [F

    .local v0, "joinedArray":[F
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    goto :goto_0
.end method

.method public static varargs addAll([I[I)[I
    .locals 4
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .prologue
    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .local v0, "joinedArray":[I
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([II[III)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0
.end method

.method public static varargs addAll([J[J)[J
    .locals 4
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .prologue
    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [J

    .local v0, "joinedArray":[J
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    goto :goto_0
.end method

.method public static varargs addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array1":[Ljava/lang/Object;, "[TT;"
    .local p1, "array2":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .local v2, "type1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v4, p0

    array-length v5, p1

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, [Ljava/lang/Object;

    .local v1, "joinedArray":[Ljava/lang/Object;, "[TT;"
    array-length v4, p0

    invoke-static {p0, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    :try_start_0
    array-length v5, p0

    array-length v6, p1

    invoke-static {p1, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ase":Ljava/lang/ArrayStoreException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .local v3, "type2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot store "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in an array of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_2
    throw v0
.end method

.method public static varargs addAll([S[S)[S
    .locals 4
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .prologue
    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [S

    .local v0, "joinedArray":[S
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([SI[SII)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([SI[SII)V

    goto :goto_0
.end method

.method public static varargs addAll([Z[Z)[Z
    .locals 4
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .prologue
    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Z

    .local v0, "joinedArray":[Z
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    goto :goto_0
.end method

.method public static clone([B)[B
    .locals 1
    .param p0, "array"    # [B

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public static clone([C)[C
    .locals 1
    .param p0, "array"    # [C

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_0
.end method

.method public static clone([D)[D
    .locals 1
    .param p0, "array"    # [D

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method public static clone([F)[F
    .locals 1
    .param p0, "array"    # [F

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_0
.end method

.method public static clone([I)[I
    .locals 1
    .param p0, "array"    # [I

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public static clone([J)[J
    .locals 1
    .param p0, "array"    # [J

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static clone([S)[S
    .locals 1
    .param p0, "array"    # [S

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    goto :goto_0
.end method

.method public static clone([Z)[Z
    .locals 1
    .param p0, "array"    # [Z

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0
.end method

.method public static contains([BB)Z
    .locals 2
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([CC)Z
    .locals 2
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DD)Z
    .locals 3
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .prologue
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DDD)Z
    .locals 7
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static contains([FF)Z
    .locals 2
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([JJ)Z
    .locals 3
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .prologue
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([SS)Z
    .locals 2
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([ZZ)Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "newArrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .local v0, "arrayLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "newArray":Ljava/lang/Object;
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v0    # "arrayLength":I
    .end local v1    # "newArray":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x1

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private static extractIndices(Ljava/util/HashSet;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p0, "coll":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v4, v5, [I

    .local v4, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, "index":Ljava/lang/Integer;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .end local v3    # "index":Ljava/lang/Integer;
    :cond_0
    return-object v4
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([BB)I
    .locals 1
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static indexOf([BBI)I
    .locals 3
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-byte v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([CC)I
    .locals 1
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static indexOf([CCI)I
    .locals 3
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-char v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([DD)I
    .locals 1
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDD)I
    .locals 7
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDI)I
    .locals 5
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p3, :cond_2

    const/4 p3, 0x0

    :cond_2
    move v0, p3

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-wide v2, p0, v0

    cmpl-double v2, p1, v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([DDID)I
    .locals 8
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I
    .param p4, "tolerance"    # D

    .prologue
    const/4 v1, -0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p3, :cond_2

    const/4 p3, 0x0

    :cond_2
    sub-double v4, p1, p4

    .local v4, "min":D
    add-double v2, p1, p4

    .local v2, "max":D
    move v0, p3

    .local v0, "i":I
    :goto_1
    array-length v6, p0

    if-ge v0, v6, :cond_4

    aget-wide v6, p0, v0

    cmpl-double v6, v6, v4

    if-ltz v6, :cond_3

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v2

    if-lez v6, :cond_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([FF)I
    .locals 1
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static indexOf([FFI)I
    .locals 3
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([II)I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([JJ)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static indexOf([JJI)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J
    .param p3, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p3, :cond_2

    const/4 p3, 0x0

    :cond_2
    move v0, p3

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-wide v2, p0, v0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    if-nez p1, :cond_3

    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_4

    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, p2

    .restart local v0    # "i":I
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_4

    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([SS)I
    .locals 1
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static indexOf([SSI)I
    .locals 3
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-short v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static indexOf([ZZ)I
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-boolean v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([C)Z
    .locals 1
    .param p0, "array"    # [C

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([D)Z
    .locals 1
    .param p0, "array"    # [D

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([F)Z
    .locals 1
    .param p0, "array"    # [F

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([I)Z
    .locals 1
    .param p0, "array"    # [I

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([J)Z
    .locals 1
    .param p0, "array"    # [J

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([S)Z
    .locals 1
    .param p0, "array"    # [S

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Z)Z
    .locals 1
    .param p0, "array"    # [Z

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array1"    # Ljava/lang/Object;
    .param p1, "array2"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0
.end method

.method public static isNotEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([C)Z
    .locals 1
    .param p0, "array"    # [C

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([D)Z
    .locals 1
    .param p0, "array"    # [D

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([F)Z
    .locals 1
    .param p0, "array"    # [F

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([I)Z
    .locals 1
    .param p0, "array"    # [I

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([J)Z
    .locals 1
    .param p0, "array"    # [J

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([S)Z
    .locals 1
    .param p0, "array"    # [S

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([Z)Z
    .locals 1
    .param p0, "array"    # [Z

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([B[B)Z
    .locals 2
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .prologue
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([C[C)Z
    .locals 2
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .prologue
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([D[D)Z
    .locals 2
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .prologue
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([F[F)Z
    .locals 2
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .prologue
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([I[I)Z
    .locals 2
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .prologue
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([J[J)Z
    .locals 2
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .prologue
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .prologue
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([S[S)Z
    .locals 2
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .prologue
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([Z[Z)Z
    .locals 2
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .prologue
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array1"    # Ljava/lang/Object;
    .param p1, "array2"    # Ljava/lang/Object;

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BB)I
    .locals 1
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .prologue
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BBI)I
    .locals 3
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    aget-byte v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([CC)I
    .locals 1
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .prologue
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([CCI)I
    .locals 3
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    aget-char v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([DD)I
    .locals 1
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .prologue
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDD)I
    .locals 7
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .prologue
    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDI)I
    .locals 5
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p3, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p3, v2, -0x1

    :cond_3
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    aget-wide v2, p0, v0

    cmpl-double v2, p1, v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([DDID)I
    .locals 8
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I
    .param p4, "tolerance"    # D

    .prologue
    const/4 v1, -0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v6, p0

    if-lt p3, v6, :cond_3

    array-length v6, p0

    add-int/lit8 p3, v6, -0x1

    :cond_3
    sub-double v4, p1, p4

    .local v4, "min":D
    add-double v2, p1, p4

    .local v2, "max":D
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    aget-wide v6, p0, v0

    cmpl-double v6, v6, v4

    if-ltz v6, :cond_4

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v2

    if-lez v6, :cond_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([FF)I
    .locals 1
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .prologue
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([FFI)I
    .locals 3
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([II)I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .prologue
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([III)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([III)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    aget v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([JJ)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .prologue
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([JJI)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J
    .param p3, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p3, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p3, v2, -0x1

    :cond_3
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    aget-wide v2, p0, v0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .prologue
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    :cond_3
    if-nez p1, :cond_4

    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, p2

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_5

    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([SS)I
    .locals 1
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .prologue
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([SSI)I
    .locals 3
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    aget-short v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static lastIndexOf([ZZ)I
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .prologue
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([ZZI)I
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    aget-boolean v2, p0, v0

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static nullToEmpty([B)[B
    .locals 1
    .param p0, "array"    # [B

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .end local p0    # "array":[B
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([C)[C
    .locals 1
    .param p0, "array"    # [C

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .end local p0    # "array":[C
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([D)[D
    .locals 1
    .param p0, "array"    # [D

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .end local p0    # "array":[D
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([F)[F
    .locals 1
    .param p0, "array"    # [F

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .end local p0    # "array":[F
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([I)[I
    .locals 1
    .param p0, "array"    # [I

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .end local p0    # "array":[I
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([J)[J
    .locals 1
    .param p0, "array"    # [J

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .end local p0    # "array":[J
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Boolean;

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .end local p0    # "array":[Ljava/lang/Boolean;
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Byte;)[Ljava/lang/Byte;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Byte;

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .end local p0    # "array":[Ljava/lang/Byte;
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Character;)[Ljava/lang/Character;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Character;

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    .end local p0    # "array":[Ljava/lang/Character;
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Double;)[Ljava/lang/Double;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Double;

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .end local p0    # "array":[Ljava/lang/Double;
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Float;)[Ljava/lang/Float;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Float;

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .end local p0    # "array":[Ljava/lang/Float;
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Integer;

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .end local p0    # "array":[Ljava/lang/Integer;
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Long;)[Ljava/lang/Long;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Long;

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .end local p0    # "array":[Ljava/lang/Long;
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .end local p0    # "array":[Ljava/lang/Object;
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Short;)[Ljava/lang/Short;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Short;

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .end local p0    # "array":[Ljava/lang/Short;
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .end local p0    # "array":[Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([S)[S
    .locals 1
    .param p0, "array"    # [S

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .end local p0    # "array":[S
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Z)[Z
    .locals 1
    .param p0, "array"    # [Z

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .end local p0    # "array":[Z
    :cond_1
    return-object p0
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .local v0, "length":I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "result":Ljava/lang/Object;
    invoke-static {p0, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_2

    add-int/lit8 v2, p1, 0x1

    sub-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object v1
.end method

.method public static remove([BI)[B
    .locals 1
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static remove([CI)[C
    .locals 1
    .param p0, "array"    # [C
    .param p1, "index"    # I

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static remove([DI)[D
    .locals 1
    .param p0, "array"    # [D
    .param p1, "index"    # I

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static remove([FI)[F
    .locals 1
    .param p0, "array"    # [F
    .param p1, "index"    # I

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static remove([II)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "index"    # I

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static remove([JI)[J
    .locals 1
    .param p0, "array"    # [J
    .param p1, "index"    # I

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static remove([SI)[S
    .locals 1
    .param p0, "array"    # [S
    .param p1, "index"    # I

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static remove([ZI)[Z
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "index"    # I

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method private static varargs removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;
    .locals 12
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "indices"    # [I

    .prologue
    const/4 v11, 0x0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v6

    .local v6, "length":I
    const/4 v2, 0x0

    .local v2, "diff":I
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isNotEmpty([I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    array-length v4, p1

    .local v4, "i":I
    move v7, v6

    .local v7, "prevIndex":I
    :cond_0
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    aget v5, p1, v4

    .local v5, "index":I
    if-ltz v5, :cond_1

    if-lt v5, v6, :cond_2

    :cond_1
    new-instance v9, Ljava/lang/IndexOutOfBoundsException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    if-ge v5, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v7, v5

    goto :goto_0

    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v7    # "prevIndex":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    sub-int v10, v6, v2

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    .local v8, "result":Ljava/lang/Object;
    if-ge v2, v6, :cond_6

    move v3, v6

    .local v3, "end":I
    sub-int v1, v6, v2

    .local v1, "dest":I
    array-length v9, p1

    add-int/lit8 v4, v9, -0x1

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_5

    aget v5, p1, v4

    .restart local v5    # "index":I
    sub-int v9, v3, v5

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    sub-int v9, v3, v5

    add-int/lit8 v0, v9, -0x1

    .local v0, "cp":I
    sub-int/2addr v1, v0

    add-int/lit8 v9, v5, 0x1

    invoke-static {p0, v9, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v0    # "cp":I
    :cond_4
    move v3, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .end local v5    # "index":I
    :cond_5
    if-lez v3, :cond_6

    invoke-static {p0, v11, v8, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v1    # "dest":I
    .end local v3    # "end":I
    .end local v4    # "i":I
    :cond_6
    return-object v8
.end method

.method public static varargs removeAll([B[I)[B
    .locals 1
    .param p0, "array"    # [B
    .param p1, "indices"    # [I

    .prologue
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static varargs removeAll([C[I)[C
    .locals 1
    .param p0, "array"    # [C
    .param p1, "indices"    # [I

    .prologue
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static varargs removeAll([D[I)[D
    .locals 1
    .param p0, "array"    # [D
    .param p1, "indices"    # [I

    .prologue
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static varargs removeAll([F[I)[F
    .locals 1
    .param p0, "array"    # [F
    .param p1, "indices"    # [I

    .prologue
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static varargs removeAll([I[I)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "indices"    # [I

    .prologue
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static varargs removeAll([J[I)[J
    .locals 1
    .param p0, "array"    # [J
    .param p1, "indices"    # [I

    .prologue
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 1
    .param p1, "indices"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs removeAll([S[I)[S
    .locals 1
    .param p0, "array"    # [S
    .param p1, "indices"    # [I

    .prologue
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static varargs removeAll([Z[I)[Z
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "indices"    # [I

    .prologue
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeElement([BB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([BI)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([CC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([CI)[C

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([DD)[D
    .locals 3
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .prologue
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([DI)[D

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([FF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([FI)[F

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([II)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([II)[I

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([JJ)[J
    .locals 3
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .prologue
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([JI)[J

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([SS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([SI)[S

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([ZZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([ZI)[Z

    move-result-object v1

    goto :goto_0
.end method

.method public static varargs removeElements([B[B)[B
    .locals 16
    .param p0, "array"    # [B
    .param p1, "values"    # [B

    .prologue
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v14

    :goto_0
    return-object v14

    :cond_1
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v11, v14}, Ljava/util/HashMap;-><init>(I)V

    .local v11, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Byte;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    move-object/from16 v1, p1

    .local v1, "arr$":[B
    array-length v10, v1

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_3

    aget-byte v13, v1, v9

    .local v13, "v":B
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .local v2, "boxed":Ljava/lang/Byte;
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .local v3, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v3, :cond_2

    new-instance v14, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v11, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .end local v2    # "boxed":Ljava/lang/Byte;
    .end local v3    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v13    # "v":B
    :cond_3
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .local v12, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    .local v13, "v":Ljava/lang/Byte;
    const/4 v6, 0x0

    .local v6, "found":I
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v14}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v4

    .local v4, "ct":I
    :goto_3
    if-ge v8, v4, :cond_4

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v6}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v6

    if-ltz v6, :cond_4

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "found":I
    .local v7, "found":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .end local v7    # "found":I
    .restart local v6    # "found":I
    goto :goto_3

    .end local v4    # "ct":I
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v6    # "found":I
    .end local v8    # "i":I
    .end local v13    # "v":Ljava/lang/Byte;
    :cond_5
    invoke-static {v12}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([B[I)[B

    move-result-object v14

    goto :goto_0
.end method

.method public static varargs removeElements([C[C)[C
    .locals 16
    .param p0, "array"    # [C
    .param p1, "values"    # [C

    .prologue
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v14

    :goto_0
    return-object v14

    :cond_1
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v11, v14}, Ljava/util/HashMap;-><init>(I)V

    .local v11, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    move-object/from16 v1, p1

    .local v1, "arr$":[C
    array-length v10, v1

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_3

    aget-char v13, v1, v9

    .local v13, "v":C
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .local v2, "boxed":Ljava/lang/Character;
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .local v3, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v3, :cond_2

    new-instance v14, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v11, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .end local v2    # "boxed":Ljava/lang/Character;
    .end local v3    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v13    # "v":C
    :cond_3
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .local v12, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Character;

    .local v13, "v":Ljava/lang/Character;
    const/4 v6, 0x0

    .local v6, "found":I
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v14}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v4

    .local v4, "ct":I
    :goto_3
    if-ge v8, v4, :cond_4

    invoke-virtual {v13}, Ljava/lang/Character;->charValue()C

    move-result v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v6}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v6

    if-ltz v6, :cond_4

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "found":I
    .local v7, "found":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .end local v7    # "found":I
    .restart local v6    # "found":I
    goto :goto_3

    .end local v4    # "ct":I
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v6    # "found":I
    .end local v8    # "i":I
    .end local v13    # "v":Ljava/lang/Character;
    :cond_5
    invoke-static {v12}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([C[I)[C

    move-result-object v14

    goto :goto_0
.end method

.method public static varargs removeElements([D[D)[D
    .locals 20
    .param p0, "array"    # [D
    .param p1, "values"    # [D

    .prologue
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v18

    if-eqz v18, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v18

    :goto_0
    return-object v18

    :cond_1
    new-instance v14, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/util/HashMap;-><init>(I)V

    .local v14, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    move-object/from16 v4, p1

    .local v4, "arr$":[D
    array-length v13, v4

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_3

    aget-wide v16, v4, v12

    .local v16, "v":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .local v5, "boxed":Ljava/lang/Double;
    invoke-virtual {v14, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .local v6, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v6, :cond_2

    new-instance v18, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .end local v5    # "boxed":Ljava/lang/Double;
    .end local v6    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v16    # "v":D
    :cond_3
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .local v15, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    .local v16, "v":Ljava/lang/Double;
    const/4 v9, 0x0

    .local v9, "found":I
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    .local v7, "ct":I
    :goto_3
    if-ge v11, v7, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v9}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v9

    if-ltz v9, :cond_4

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "found":I
    .local v10, "found":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move v9, v10

    .end local v10    # "found":I
    .restart local v9    # "found":I
    goto :goto_3

    .end local v7    # "ct":I
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v9    # "found":I
    .end local v11    # "i":I
    .end local v16    # "v":Ljava/lang/Double;
    :cond_5
    invoke-static {v15}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([D[I)[D

    move-result-object v18

    goto/16 :goto_0
.end method

.method public static varargs removeElements([F[F)[F
    .locals 16
    .param p0, "array"    # [F
    .param p1, "values"    # [F

    .prologue
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v14

    :goto_0
    return-object v14

    :cond_1
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v11, v14}, Ljava/util/HashMap;-><init>(I)V

    .local v11, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Float;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    move-object/from16 v1, p1

    .local v1, "arr$":[F
    array-length v10, v1

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_3

    aget v13, v1, v9

    .local v13, "v":F
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .local v2, "boxed":Ljava/lang/Float;
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .local v3, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v3, :cond_2

    new-instance v14, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v11, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .end local v2    # "boxed":Ljava/lang/Float;
    .end local v3    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v13    # "v":F
    :cond_3
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .local v12, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    .local v13, "v":Ljava/lang/Float;
    const/4 v6, 0x0

    .local v6, "found":I
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v14}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v4

    .local v4, "ct":I
    :goto_3
    if-ge v8, v4, :cond_4

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v6}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v6

    if-ltz v6, :cond_4

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "found":I
    .local v7, "found":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .end local v7    # "found":I
    .restart local v6    # "found":I
    goto :goto_3

    .end local v4    # "ct":I
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v6    # "found":I
    .end local v8    # "i":I
    .end local v13    # "v":Ljava/lang/Float;
    :cond_5
    invoke-static {v12}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([F[I)[F

    move-result-object v14

    goto :goto_0
.end method

.method public static varargs removeElements([I[I)[I
    .locals 16
    .param p0, "array"    # [I
    .param p1, "values"    # [I

    .prologue
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v14

    :goto_0
    return-object v14

    :cond_1
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v11, v14}, Ljava/util/HashMap;-><init>(I)V

    .local v11, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    move-object/from16 v1, p1

    .local v1, "arr$":[I
    array-length v10, v1

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_3

    aget v13, v1, v9

    .local v13, "v":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, "boxed":Ljava/lang/Integer;
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .local v3, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v3, :cond_2

    new-instance v14, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v11, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .end local v2    # "boxed":Ljava/lang/Integer;
    .end local v3    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v13    # "v":I
    :cond_3
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .local v12, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .local v13, "v":Ljava/lang/Integer;
    const/4 v6, 0x0

    .local v6, "found":I
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v14}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v4

    .local v4, "ct":I
    :goto_3
    if-ge v8, v4, :cond_4

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v6}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v6

    if-ltz v6, :cond_4

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "found":I
    .local v7, "found":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .end local v7    # "found":I
    .restart local v6    # "found":I
    goto :goto_3

    .end local v4    # "ct":I
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v6    # "found":I
    .end local v8    # "i":I
    .end local v13    # "v":Ljava/lang/Integer;
    :cond_5
    invoke-static {v12}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([I[I)[I

    move-result-object v14

    goto :goto_0
.end method

.method public static varargs removeElements([J[J)[J
    .locals 20
    .param p0, "array"    # [J
    .param p1, "values"    # [J

    .prologue
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v18

    if-eqz v18, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v18

    :goto_0
    return-object v18

    :cond_1
    new-instance v14, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/util/HashMap;-><init>(I)V

    .local v14, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    move-object/from16 v4, p1

    .local v4, "arr$":[J
    array-length v13, v4

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_3

    aget-wide v16, v4, v12

    .local v16, "v":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .local v5, "boxed":Ljava/lang/Long;
    invoke-virtual {v14, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .local v6, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v6, :cond_2

    new-instance v18, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .end local v5    # "boxed":Ljava/lang/Long;
    .end local v6    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v16    # "v":J
    :cond_3
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .local v15, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .local v16, "v":Ljava/lang/Long;
    const/4 v9, 0x0

    .local v9, "found":I
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v7

    .local v7, "ct":I
    :goto_3
    if-ge v11, v7, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v9}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v9

    if-ltz v9, :cond_4

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "found":I
    .local v10, "found":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move v9, v10

    .end local v10    # "found":I
    .restart local v9    # "found":I
    goto :goto_3

    .end local v7    # "ct":I
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v9    # "found":I
    .end local v11    # "i":I
    .end local v16    # "v":Ljava/lang/Long;
    :cond_5
    invoke-static {v15}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([J[I)[J

    move-result-object v18

    goto/16 :goto_0
.end method

.method public static varargs removeElements([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    :goto_0
    return-object v12

    :cond_1
    new-instance v9, Ljava/util/HashMap;

    array-length v12, p1

    invoke-direct {v9, v12}, Ljava/util/HashMap;-><init>(I)V

    .local v9, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v11, v0, v7

    .local v11, "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .local v1, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_2

    new-instance v12, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .end local v1    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v11    # "v":Ljava/lang/Object;, "TT;"
    :cond_3
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .local v10, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "v":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .local v4, "found":I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v12}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v2

    .local v2, "ct":I
    :goto_3
    if-ge v6, v2, :cond_4

    invoke-static {p0, v11, v4}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v4

    if-ltz v4, :cond_4

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "found":I
    .local v5, "found":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v4, v5

    .end local v5    # "found":I
    .restart local v4    # "found":I
    goto :goto_3

    .end local v2    # "ct":I
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v4    # "found":I
    .end local v6    # "i":I
    .end local v11    # "v":Ljava/lang/Object;, "TT;"
    :cond_5
    invoke-static {v10}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v12

    invoke-static {p0, v12}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v12

    goto :goto_0
.end method

.method public static varargs removeElements([S[S)[S
    .locals 16
    .param p0, "array"    # [S
    .param p1, "values"    # [S

    .prologue
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v14

    :goto_0
    return-object v14

    :cond_1
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v11, v14}, Ljava/util/HashMap;-><init>(I)V

    .local v11, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Short;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    move-object/from16 v1, p1

    .local v1, "arr$":[S
    array-length v10, v1

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_3

    aget-short v13, v1, v9

    .local v13, "v":S
    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    .local v2, "boxed":Ljava/lang/Short;
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .local v3, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v3, :cond_2

    new-instance v14, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v11, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .end local v2    # "boxed":Ljava/lang/Short;
    .end local v3    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v13    # "v":S
    :cond_3
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .local v12, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Short;

    .local v13, "v":Ljava/lang/Short;
    const/4 v6, 0x0

    .local v6, "found":I
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v14}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v4

    .local v4, "ct":I
    :goto_3
    if-ge v8, v4, :cond_4

    invoke-virtual {v13}, Ljava/lang/Short;->shortValue()S

    move-result v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v6}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v6

    if-ltz v6, :cond_4

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "found":I
    .local v7, "found":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .end local v7    # "found":I
    .restart local v6    # "found":I
    goto :goto_3

    .end local v4    # "ct":I
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v6    # "found":I
    .end local v8    # "i":I
    .end local v13    # "v":Ljava/lang/Short;
    :cond_5
    invoke-static {v12}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([S[I)[S

    move-result-object v14

    goto :goto_0
.end method

.method public static varargs removeElements([Z[Z)[Z
    .locals 16
    .param p0, "array"    # [Z
    .param p1, "values"    # [Z

    .prologue
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v14

    :goto_0
    return-object v14

    :cond_1
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v11, v14}, Ljava/util/HashMap;-><init>(I)V

    .local v11, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Boolean;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    move-object/from16 v1, p1

    .local v1, "arr$":[Z
    array-length v10, v1

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_3

    aget-boolean v13, v1, v9

    .local v13, "v":Z
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "boxed":Ljava/lang/Boolean;
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .local v3, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v3, :cond_2

    new-instance v14, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v11, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .end local v2    # "boxed":Ljava/lang/Boolean;
    .end local v3    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v13    # "v":Z
    :cond_3
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .local v12, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Boolean;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    .local v13, "v":Ljava/lang/Boolean;
    const/4 v6, 0x0

    .local v6, "found":I
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v14}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v4

    .local v4, "ct":I
    :goto_3
    if-ge v8, v4, :cond_4

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v6}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v6

    if-ltz v6, :cond_4

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "found":I
    .local v7, "found":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .end local v7    # "found":I
    .restart local v6    # "found":I
    goto :goto_3

    .end local v4    # "ct":I
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Boolean;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v6    # "found":I
    .end local v8    # "i":I
    .end local v13    # "v":Ljava/lang/Boolean;
    :cond_5
    invoke-static {v12}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([Z[I)[Z

    move-result-object v14

    goto :goto_0
.end method

.method public static reverse([B)V
    .locals 4
    .param p0, "array"    # [B

    .prologue
    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    aget-byte v2, p0, v1

    .local v2, "tmp":B
    aget-byte v3, p0, v0

    aput-byte v3, p0, v1

    aput-byte v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([C)V
    .locals 4
    .param p0, "array"    # [C

    .prologue
    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    aget-char v2, p0, v1

    .local v2, "tmp":C
    aget-char v3, p0, v0

    aput-char v3, p0, v1

    aput-char v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([D)V
    .locals 6
    .param p0, "array"    # [D

    .prologue
    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    aget-wide v2, p0, v1

    .local v2, "tmp":D
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    aput-wide v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([F)V
    .locals 4
    .param p0, "array"    # [F

    .prologue
    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    aget v2, p0, v1

    .local v2, "tmp":F
    aget v3, p0, v0

    aput v3, p0, v1

    aput v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([I)V
    .locals 4
    .param p0, "array"    # [I

    .prologue
    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    aget v2, p0, v1

    .local v2, "tmp":I
    aget v3, p0, v0

    aput v3, p0, v1

    aput v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([J)V
    .locals 6
    .param p0, "array"    # [J

    .prologue
    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    aget-wide v2, p0, v1

    .local v2, "tmp":J
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    aput-wide v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([Ljava/lang/Object;)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    aget-object v2, p0, v1

    .local v2, "tmp":Ljava/lang/Object;
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    aput-object v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([S)V
    .locals 4
    .param p0, "array"    # [S

    .prologue
    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    aget-short v2, p0, v1

    .local v2, "tmp":S
    aget-short v3, p0, v0

    aput-short v3, p0, v1

    aput-short v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([Z)V
    .locals 4
    .param p0, "array"    # [Z

    .prologue
    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    aget-boolean v2, p0, v1

    .local v2, "tmp":Z
    aget-boolean v3, p0, v0

    aput-boolean v3, p0, v1

    aput-boolean v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static subarray([BII)[B
    .locals 3
    .param p0, "array"    # [B
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    .local v0, "newSize":I
    if-gtz v0, :cond_3

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_3
    new-array v1, v0, [B

    .local v1, "subarray":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public static subarray([CII)[C
    .locals 3
    .param p0, "array"    # [C
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    .local v0, "newSize":I
    if-gtz v0, :cond_3

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    :cond_3
    new-array v1, v0, [C

    .local v1, "subarray":[C
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0
.end method

.method public static subarray([DII)[D
    .locals 3
    .param p0, "array"    # [D
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    .local v0, "newSize":I
    if-gtz v0, :cond_3

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    :cond_3
    new-array v1, v0, [D

    .local v1, "subarray":[D
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy([DI[DII)V

    goto :goto_0
.end method

.method public static subarray([FII)[F
    .locals 3
    .param p0, "array"    # [F
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    .local v0, "newSize":I
    if-gtz v0, :cond_3

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    :cond_3
    new-array v1, v0, [F

    .local v1, "subarray":[F
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    goto :goto_0
.end method

.method public static subarray([III)[I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    .local v0, "newSize":I
    if-gtz v0, :cond_3

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    :cond_3
    new-array v1, v0, [I

    .local v1, "subarray":[I
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0
.end method

.method public static subarray([JII)[J
    .locals 3
    .param p0, "array"    # [J
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    .local v0, "newSize":I
    if-gtz v0, :cond_3

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    :cond_3
    new-array v1, v0, [J

    .local v1, "subarray":[J
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    goto :goto_0
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 6
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v5, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v4, p0

    if-le p2, v4, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v1, p2, p1

    .local v1, "newSize":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-gtz v1, :cond_3

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    .local v0, "emptyArray":[Ljava/lang/Object;, "[TT;"
    goto :goto_0

    .end local v0    # "emptyArray":[Ljava/lang/Object;, "[TT;"
    :cond_3
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .local v2, "subarray":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static subarray([SII)[S
    .locals 3
    .param p0, "array"    # [S
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    .local v0, "newSize":I
    if-gtz v0, :cond_3

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    :cond_3
    new-array v1, v0, [S

    .local v1, "subarray":[S
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy([SI[SII)V

    goto :goto_0
.end method

.method public static subarray([ZII)[Z
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    array-length p2, p0

    :cond_2
    sub-int v0, p2, p1

    .local v0, "newSize":I
    if-gtz v0, :cond_3

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    :cond_3
    new-array v1, v0, [Z

    .local v1, "subarray":[Z
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    goto :goto_0
.end method

.method public static varargs toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    return-object p0
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .locals 10
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    if-nez p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v5, p0

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_0

    aget-object v4, p0, v2

    .local v4, "object":Ljava/lang/Object;
    instance-of v5, v4, Ljava/util/Map$Entry;

    if-eqz v5, :cond_2

    move-object v1, v4

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    .local v0, "entry":[Ljava/lang/Object;
    array-length v5, v0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Array element "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', has a length less than 2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    const/4 v5, 0x0

    aget-object v5, v0, v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "entry":[Ljava/lang/Object;
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Array element "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', is neither of type Map.Entry nor an Array"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .locals 3
    .param p0, "array"    # [Z

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Boolean;

    .local v1, "result":[Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-boolean v2, p0, v0

    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .locals 3
    .param p0, "array"    # [B

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Byte;

    .local v1, "result":[Ljava/lang/Byte;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .locals 3
    .param p0, "array"    # [C

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Character;

    .local v1, "result":[Ljava/lang/Character;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-char v2, p0, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .locals 4
    .param p0, "array"    # [D

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Double;

    .local v1, "result":[Ljava/lang/Double;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .locals 3
    .param p0, "array"    # [F

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Float;

    .local v1, "result":[Ljava/lang/Float;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .locals 3
    .param p0, "array"    # [I

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Integer;

    .local v1, "result":[Ljava/lang/Integer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .locals 4
    .param p0, "array"    # [J

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Long;

    .local v1, "result":[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .locals 3
    .param p0, "array"    # [S

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Short;

    .local v1, "result":[Ljava/lang/Short;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-short v2, p0, v0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3
    .param p0, "array"    # [Ljava/lang/Byte;

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [B

    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .locals 4
    .param p0, "array"    # [Ljava/lang/Byte;
    .param p1, "valueForNull"    # B

    .prologue
    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [B

    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    .local v0, "b":Ljava/lang/Byte;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .locals 3
    .param p0, "array"    # [Ljava/lang/Character;

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [C

    .local v1, "result":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .locals 4
    .param p0, "array"    # [Ljava/lang/Character;
    .param p1, "valueForNull"    # C

    .prologue
    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [C

    .local v2, "result":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    .local v0, "b":Ljava/lang/Character;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .locals 4
    .param p0, "array"    # [Ljava/lang/Double;

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [D

    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .locals 7
    .param p0, "array"    # [Ljava/lang/Double;
    .param p1, "valueForNull"    # D

    .prologue
    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [D

    .local v2, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    .local v0, "b":Ljava/lang/Double;
    if-nez v0, :cond_3

    move-wide v4, p1

    :goto_2
    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .locals 3
    .param p0, "array"    # [Ljava/lang/Float;

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [F

    .local v1, "result":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .locals 4
    .param p0, "array"    # [Ljava/lang/Float;
    .param p1, "valueForNull"    # F

    .prologue
    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [F

    .local v2, "result":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    .local v0, "b":Ljava/lang/Float;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Integer;

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [I

    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .locals 4
    .param p0, "array"    # [Ljava/lang/Integer;
    .param p1, "valueForNull"    # I

    .prologue
    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [I

    .local v2, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    .local v0, "b":Ljava/lang/Integer;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .locals 4
    .param p0, "array"    # [Ljava/lang/Long;

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [J

    .local v1, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .locals 7
    .param p0, "array"    # [Ljava/lang/Long;
    .param p1, "valueForNull"    # J

    .prologue
    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [J

    .local v2, "result":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    .local v0, "b":Ljava/lang/Long;
    if-nez v0, :cond_3

    move-wide v4, p1

    :goto_2
    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .locals 3
    .param p0, "array"    # [Ljava/lang/Short;

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [S

    .local v1, "result":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .locals 4
    .param p0, "array"    # [Ljava/lang/Short;
    .param p1, "valueForNull"    # S

    .prologue
    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [S

    .local v2, "result":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    .local v0, "b":Ljava/lang/Short;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .locals 3
    .param p0, "array"    # [Ljava/lang/Boolean;

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v1, v2, [Z

    .local v1, "result":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .locals 4
    .param p0, "array"    # [Ljava/lang/Boolean;
    .param p1, "valueForNull"    # Z

    .prologue
    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    :cond_2
    array-length v3, p0

    new-array v2, v3, [Z

    .local v2, "result":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_2
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    const-string v0, "{}"

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "stringIfNull"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    .end local p1    # "stringIfNull":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "stringIfNull":Ljava/lang/String;
    :cond_0
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;

    sget-object v1, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)V

    invoke-virtual {v0, p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
