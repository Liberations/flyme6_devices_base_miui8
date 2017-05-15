.class public Lorg/apache/miui/commons/lang3/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;
    }
.end annotation


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field private static final PAD_LIMIT:I = 0x2000

.field private static final WHITESPACE_BLOCK:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/StringUtils;->WHITESPACE_BLOCK:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "maxWidth"    # I

    .prologue
    const/4 v3, 0x4

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-ge p2, v3, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minimum abbreviation width is 4"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v2, p2, -0x3

    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, -0x3

    sub-int p1, v1, v2

    :cond_4
    const-string v0, "..."

    .local v0, "abrevMarker":Ljava/lang/String;
    if-gt p1, v3, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    if-ge p2, v1, :cond_6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minimum abbreviation width with offset is 7"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p2, -0x3

    invoke-static {v2, v3}, Lorg/apache/miui/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, p2, -0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "middle"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-lt p2, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v3, p2, v4

    .local v3, "targetSting":I
    div-int/lit8 v4, v3, 0x2

    rem-int/lit8 v5, v3, 0x2

    add-int v2, v4, v5

    .local v2, "startOffset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v5, v3, 0x2

    sub-int v1, v4, v5

    .local v1, "endOffset":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "strLen":I
    if-nez v0, :cond_1

    .end local v0    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local v0    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .prologue
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "strLen":I
    sub-int v0, p1, v1

    .local v0, "pads":I
    if-lez v0, :cond_0

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-static {p0, v2, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p2, " "

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "strLen":I
    sub-int v0, p1, v1

    .local v0, "pads":I
    if-lez v0, :cond_0

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-static {p0, v2, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    const/16 v5, 0xd

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local p0    # "str":Ljava/lang/String;
    .local v1, "last":C
    .local v2, "lastIdx":I
    :cond_0
    :goto_0
    return-object p0

    .end local v1    # "last":C
    .end local v2    # "lastIdx":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    if-eq v0, v5, :cond_2

    if-ne v0, v7, :cond_0

    :cond_2
    const-string p0, ""

    goto :goto_0

    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "lastIdx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .restart local v1    # "last":C
    if-ne v1, v7, :cond_5

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4

    add-int/lit8 v2, v2, -0x1

    :cond_4
    :goto_1
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    if-eq v1, v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "strLen":I
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    const-string v2, ""

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v3, -0x1

    .local v1, "lastIdx":I
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "ret":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "last":C
    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static contains(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/CharSequence;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[C)Z
    .locals 11
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move v7, v8

    :cond_1
    :goto_0
    return v7

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, "csLength":I
    array-length v6, p1

    .local v6, "searchLength":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "csLast":I
    add-int/lit8 v5, v6, -0x1

    .local v5, "searchLast":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_4

    aget-char v9, p1, v4

    if-ne v9, v0, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eq v4, v5, :cond_1

    if-ge v3, v1, :cond_3

    add-int/lit8 v9, v4, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "ch":C
    .end local v4    # "j":I
    :cond_5
    move v7, v8

    goto :goto_0
.end method

.method public static containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 7
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .local v5, "len":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v6, v0, v5

    .local v6, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-gt v2, v6, :cond_0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "invalidChars"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsNone(Ljava/lang/CharSequence;[C)Z
    .locals 11
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v7, v8

    :cond_1
    :goto_0
    return v7

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, "csLen":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "csLast":I
    array-length v6, p1

    .local v6, "searchLen":I
    add-int/lit8 v5, v6, -0x1

    .local v5, "searchLast":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_4

    aget-char v9, p1, v4

    if-ne v9, v0, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eq v4, v5, :cond_1

    if-ge v3, v1, :cond_3

    add-int/lit8 v9, v4, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "ch":C
    .end local v4    # "j":I
    :cond_5
    move v7, v8

    goto :goto_0
.end method

.method public static containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "validChars"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->containsOnly(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsOnly(Ljava/lang/CharSequence;[C)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "valid"    # [C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    array-length v2, p1

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->indexOfAnyBut(Ljava/lang/CharSequence;[C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "seq"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "strLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "sub"    # Ljava/lang/CharSequence;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-static {p0, p1, v1}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultStr":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "defaultStr":Ljava/lang/CharSequence;, "TT;"
    :goto_0
    return-object p1

    .restart local p1    # "defaultStr":Ljava/lang/CharSequence;, "TT;"
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultStr":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "defaultStr":Ljava/lang/CharSequence;, "TT;"
    :goto_0
    return-object p1

    .restart local p1    # "defaultStr":Ljava/lang/CharSequence;, "TT;"
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultStr"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    .end local p1    # "defaultStr":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultStr":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "sz":I
    new-array v0, v4, [C

    .local v0, "chs":[C
    const/4 v1, 0x0

    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v2, v1

    .end local v1    # "count":I
    .local v2, "count":I
    :goto_1
    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v0, v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    :cond_2
    if-eq v2, v4, :cond_0

    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_3
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    .end local p1    # "str2":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "str2":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, "at":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string p1, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .prologue
    const/4 v4, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v2, v0, v1

    .local v2, "strOffset":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v4

    goto :goto_0
.end method

.method public static varargs endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/CharSequence;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "searchString":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lorg/apache/miui/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .prologue
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "str1"    # Ljava/lang/CharSequence;
    .param p1, "str2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    goto :goto_0
.end method

.method public static varargs getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->indexOfDifference([Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, "smallestIndexOfDiff":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    aget-object v1, p0, v2

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    aget-object v1, p0, v2

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    const-string v1, ""

    goto :goto_0

    :cond_4
    aget-object v1, p0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 13
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v10, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Strings must not be null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .local v6, "n":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .local v5, "m":I
    if-nez v6, :cond_2

    move v10, v5

    :goto_0
    return v10

    :cond_2
    if-nez v5, :cond_3

    move v10, v6

    goto :goto_0

    :cond_3
    if-le v6, v5, :cond_4

    move-object v9, p0

    .local v9, "tmp":Ljava/lang/CharSequence;
    move-object p0, p1

    move-object p1, v9

    move v6, v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .end local v9    # "tmp":Ljava/lang/CharSequence;
    :cond_4
    add-int/lit8 v11, v6, 0x1

    new-array v7, v11, [I

    .local v7, "p":[I
    add-int/lit8 v11, v6, 0x1

    new-array v2, v11, [I

    .local v2, "d":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-gt v3, v6, :cond_5

    aput v3, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_2
    if-gt v4, v5, :cond_8

    add-int/lit8 v11, v4, -0x1

    invoke-interface {p1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .local v8, "t_j":C
    aput v4, v2, v10

    const/4 v3, 0x1

    :goto_3
    if-gt v3, v6, :cond_7

    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_6

    move v1, v10

    .local v1, "cost":I
    :goto_4
    add-int/lit8 v11, v3, -0x1

    aget v11, v2, v11

    add-int/lit8 v11, v11, 0x1

    aget v12, v7, v3

    add-int/lit8 v12, v12, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/lit8 v12, v3, -0x1

    aget v12, v7, v12

    add-int/2addr v12, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v1    # "cost":I
    :cond_6
    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    move-object v0, v7

    .local v0, "_d":[I
    move-object v7, v2

    move-object v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "_d":[I
    .end local v8    # "t_j":C
    :cond_8
    aget v10, v7, v6

    goto :goto_0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 15
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;
    .param p2, "threshold"    # I

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Strings must not be null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1
    if-gez p2, :cond_2

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Threshold must not be negative"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .local v9, "n":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .local v6, "m":I
    if-nez v9, :cond_4

    move/from16 v0, p2

    if-gt v6, v0, :cond_3

    move v13, v6

    :goto_0
    return v13

    :cond_3
    const/4 v13, -0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_6

    move/from16 v0, p2

    if-gt v9, v0, :cond_5

    move v13, v9

    goto :goto_0

    :cond_5
    const/4 v13, -0x1

    goto :goto_0

    :cond_6
    if-le v9, v6, :cond_7

    move-object v12, p0

    .local v12, "tmp":Ljava/lang/CharSequence;
    move-object/from16 p0, p1

    move-object/from16 p1, v12

    move v9, v6

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .end local v12    # "tmp":Ljava/lang/CharSequence;
    :cond_7
    add-int/lit8 v13, v9, 0x1

    new-array v10, v13, [I

    .local v10, "p":[I
    add-int/lit8 v13, v9, 0x1

    new-array v3, v13, [I

    .local v3, "d":[I
    move/from16 v0, p2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v2, v13, 0x1

    .local v2, "boundary":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_8

    aput v4, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    array-length v13, v10

    const v14, 0x7fffffff

    invoke-static {v10, v2, v13, v14}, Ljava/util/Arrays;->fill([IIII)V

    const v13, 0x7fffffff

    invoke-static {v3, v13}, Ljava/util/Arrays;->fill([II)V

    const/4 v5, 0x1

    .local v5, "j":I
    :goto_2
    if-gt v5, v6, :cond_d

    add-int/lit8 v13, v5, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .local v11, "t_j":C
    const/4 v13, 0x0

    aput v5, v3, v13

    const/4 v13, 0x1

    sub-int v14, v5, p2

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .local v8, "min":I
    add-int v13, v5, p2

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    .local v7, "max":I
    if-le v8, v7, :cond_9

    const/4 v13, -0x1

    goto :goto_0

    :cond_9
    const/4 v13, 0x1

    if-le v8, v13, :cond_a

    add-int/lit8 v13, v8, -0x1

    const v14, 0x7fffffff

    aput v14, v3, v13

    :cond_a
    move v4, v8

    :goto_3
    if-gt v4, v7, :cond_c

    add-int/lit8 v13, v4, -0x1

    invoke-interface {p0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v13, v11, :cond_b

    add-int/lit8 v13, v4, -0x1

    aget v13, v10, v13

    aput v13, v3, v4

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    add-int/lit8 v13, v4, -0x1

    aget v13, v3, v13

    aget v14, v10, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v14, v4, -0x1

    aget v14, v10, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    aput v13, v3, v4

    goto :goto_4

    :cond_c
    move-object v1, v10

    .local v1, "_d":[I
    move-object v10, v3

    move-object v3, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v1    # "_d":[I
    .end local v7    # "max":I
    .end local v8    # "min":I
    .end local v11    # "t_j":C
    :cond_d
    aget v13, v10, v9

    move/from16 v0, p2

    if-gt v13, v0, :cond_e

    aget v13, v10, v9

    goto/16 :goto_0

    :cond_e
    const/4 v13, -0x1

    goto/16 :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "startPos"    # I

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->indexOfAny(Ljava/lang/CharSequence;[C)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[C)I
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .prologue
    const/4 v7, -0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move v3, v7

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, "csLen":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "csLast":I
    array-length v6, p1

    .local v6, "searchLen":I
    add-int/lit8 v5, v6, -0x1

    .local v5, "searchLast":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_4

    aget-char v8, p1, v4

    if-ne v8, v0, :cond_3

    if-ge v3, v1, :cond_1

    if-ge v4, v5, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v8, v4, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v3, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "ch":C
    .end local v4    # "j":I
    :cond_5
    move v3, v7

    goto :goto_0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 7
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStrs"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v5, -0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v5

    :cond_1
    :goto_0
    return v1

    :cond_2
    array-length v3, p1

    .local v3, "sz":I
    const v1, 0x7fffffff

    .local v1, "ret":I
    const/4 v4, 0x0

    .local v4, "tmp":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_5

    aget-object v2, p1, v0

    .local v2, "search":Ljava/lang/CharSequence;
    if-nez v2, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    invoke-static {p0, v2, v6}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    if-eq v4, v5, :cond_3

    if-ge v4, v1, :cond_3

    move v1, v4

    goto :goto_2

    .end local v2    # "search":Ljava/lang/CharSequence;
    :cond_5
    const v6, 0x7fffffff

    if-ne v1, v6, :cond_1

    move v1, v5

    goto :goto_0
.end method

.method public static indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 8
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v3, v5

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .local v4, "strLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_6

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    invoke-static {p1, v0, v6}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v7

    if-ltz v7, :cond_4

    const/4 v2, 0x1

    .local v2, "chFound":Z
    :goto_2
    add-int/lit8 v7, v3, 0x1

    if-ge v7, v4, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v7, v3, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .local v1, "ch2":C
    if-eqz v2, :cond_3

    invoke-static {p1, v1, v6}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v7

    if-ltz v7, :cond_1

    .end local v1    # "ch2":C
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "chFound":Z
    :cond_4
    move v2, v6

    goto :goto_2

    .restart local v2    # "chFound":Z
    :cond_5
    if-nez v2, :cond_3

    goto :goto_0

    .end local v0    # "ch":C
    .end local v2    # "chFound":Z
    :cond_6
    move v3, v5

    goto :goto_0
.end method

.method public static varargs indexOfAnyBut(Ljava/lang/CharSequence;[C)I
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .prologue
    const/4 v7, -0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move v3, v7

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, "csLen":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "csLast":I
    array-length v6, p1

    .local v6, "searchLen":I
    add-int/lit8 v5, v6, -0x1

    .local v5, "searchLast":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_1

    aget-char v8, p1, v4

    if-ne v8, v0, :cond_4

    if-ge v3, v1, :cond_3

    if-ge v4, v5, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v8, v4, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v3, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "ch":C
    .end local v4    # "j":I
    :cond_5
    move v3, v7

    goto :goto_0
.end method

.method public static indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, -0x1

    if-ne p0, p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_5

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static varargs indexOfDifference([Ljava/lang/CharSequence;)I
    .locals 14
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v10, 0x0

    const/4 v11, -0x1

    if-eqz p0, :cond_0

    array-length v12, p0

    const/4 v13, 0x1

    if-gt v12, v13, :cond_2

    :cond_0
    move v8, v11

    :cond_1
    :goto_0
    return v8

    :cond_2
    const/4 v1, 0x0

    .local v1, "anyStringNull":Z
    const/4 v0, 0x1

    .local v0, "allStringsNull":Z
    array-length v2, p0

    .local v2, "arrayLen":I
    const v8, 0x7fffffff

    .local v8, "shortestStrLen":I
    const/4 v7, 0x0

    .local v7, "longestStrLen":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_4

    aget-object v12, p0, v6

    if-nez v12, :cond_3

    const/4 v1, 0x1

    const/4 v8, 0x0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    aget-object v12, p0, v6

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    aget-object v12, p0, v6

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    if-nez v7, :cond_6

    if-nez v1, :cond_6

    :cond_5
    move v8, v11

    goto :goto_0

    :cond_6
    if-nez v8, :cond_7

    move v8, v10

    goto :goto_0

    :cond_7
    const/4 v5, -0x1

    .local v5, "firstDiff":I
    const/4 v9, 0x0

    .local v9, "stringPos":I
    :goto_3
    if-ge v9, v8, :cond_9

    aget-object v12, p0, v10

    invoke-interface {v12, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .local v4, "comparisonChar":C
    const/4 v3, 0x1

    .local v3, "arrayPos":I
    :goto_4
    if-ge v3, v2, :cond_8

    aget-object v12, p0, v3

    invoke-interface {v12, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-eq v12, v4, :cond_b

    move v5, v9

    :cond_8
    if-eq v5, v11, :cond_c

    .end local v3    # "arrayPos":I
    .end local v4    # "comparisonChar":C
    :cond_9
    if-ne v5, v11, :cond_a

    if-ne v8, v7, :cond_1

    :cond_a
    move v8, v5

    goto :goto_0

    .restart local v3    # "arrayPos":I
    .restart local v4    # "comparisonChar":C
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 8
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .prologue
    const/4 v7, -0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v7

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v6, v0, 0x1

    .local v6, "endLimit":I
    if-le p2, v6, :cond_4

    move v2, v7

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    move v2, p2

    goto :goto_0

    :cond_5
    move v2, p2

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_6

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v2, v7

    goto :goto_0
.end method

.method public static isAllLowerCase(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAllUpperCase(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAlpha(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAlphaSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAlphanumeric(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAlphanumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAsciiPrintable(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/miui/commons/lang3/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "strLen":I
    if-nez v1, :cond_1

    .end local v1    # "strLen":I
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "strLen":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isNumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lorg/apache/miui/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "buf":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v2    # "obj":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lorg/apache/miui/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "buf":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v2    # "obj":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static varargs join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    sub-int v2, p3, p2

    .local v2, "noOfItems":I
    if-gtz v2, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v2, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "buf":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_4

    if-le v1, p2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    aget-object v3, p0, v1

    if-eqz v3, :cond_3

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    sub-int v2, p3, p2

    .local v2, "noOfItems":I
    if-gtz v2, :cond_2

    const-string v3, ""

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v2, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "buf":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_5

    if-le v1, p2, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    aget-object v3, p0, v1

    if-eqz v3, :cond_4

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "startPos"    # I

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStrs"    # [Ljava/lang/CharSequence;

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v1, -0x1

    :cond_1
    return v1

    :cond_2
    array-length v3, p1

    .local v3, "sz":I
    const/4 v1, -0x1

    .local v1, "ret":I
    const/4 v4, 0x0

    .local v4, "tmp":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v2, p1, v0

    .local v2, "search":Ljava/lang/CharSequence;
    if-nez v2, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {p0, v2, v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    if-le v4, v1, :cond_3

    move v1, v4

    goto :goto_1
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 7
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .prologue
    const/4 v6, -0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v6

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int p2, v0, v1

    :cond_3
    if-gez p2, :cond_4

    move v2, v6

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    move v2, p2

    goto :goto_0

    :cond_5
    move v2, p2

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    move v2, v6

    goto :goto_0
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-gez p1, :cond_2

    const-string p0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .prologue
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    .local v0, "pads":I
    if-lez v0, :cond_0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string p2, " "

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "strLen":I
    sub-int v4, p1, v5

    .local v4, "pads":I
    if-lez v4, :cond_0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    const/16 v6, 0x2000

    if-gt v4, v6, :cond_3

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {p0, p1, v6}, Lorg/apache/miui/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    if-ne v4, v2, :cond_4

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    if-ge v4, v2, :cond_5

    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    new-array v3, v4, [C

    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .local v1, "padChars":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_6

    rem-int v6, v0, v2

    aget-char v6, v1, v6

    aput-char v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "len"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_2

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils;->WHITESPACE_BLOCK:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I
    .param p3, "lastIndex"    # Z

    .prologue
    const/4 v1, -0x1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .local v0, "found":I
    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "index":I
    :cond_4
    if-eqz p3, :cond_5

    add-int/lit8 v2, v1, -0x1

    invoke-static {p0, p1, v2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    :goto_2
    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p2, :cond_4

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_2
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "len":I
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    if-le p2, v0, :cond_3

    move p2, v0

    :cond_3
    if-gez p3, :cond_4

    const/4 p3, 0x0

    :cond_4
    if-le p3, v0, :cond_5

    move p3, v0

    :cond_5
    if-le p2, p3, :cond_6

    move v1, p2

    .local v1, "temp":I
    move p2, p3

    move p3, v1

    .end local v1    # "temp":I
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    add-int v3, v0, p2

    sub-int/2addr v3, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # C

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "chars":[C
    const/4 v2, 0x0

    .local v2, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    aget-char v4, v0, v1

    if-eq v4, p1, :cond_2

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    aget-char v4, v0, v1

    aput-char v4, v0, v2

    move v2, v3

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static removeAccentsJava6(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    # getter for: Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->access$000()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->access$400()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "java.text.Normalizer is not available"

    # getter for: Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->access$200()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    # getter for: Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->access$000()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    # getter for: Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->access$400()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "result":Ljava/lang/String;
    # getter for: Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6Pattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->access$500()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static removeAccentsSUN(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    # getter for: Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->access$100()Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "sun.text.Normalizer is not available"

    # getter for: Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->access$300()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    # getter for: Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->access$100()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "result":Ljava/lang/String;
    # getter for: Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->access$600()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static repeat(CI)Ljava/lang/String;
    .locals 3
    .param p0, "ch"    # C
    .param p1, "repeat"    # I

    .prologue
    new-array v0, p1, [C

    .local v0, "buf":[C
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    aput-char p0, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "repeat"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-gtz p1, :cond_2

    const-string p0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "inputLength":I
    if-eq p1, v9, :cond_0

    if-eqz v4, :cond_0

    if-ne v4, v9, :cond_3

    const/16 v7, 0x2000

    if-gt p1, v7, :cond_3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    mul-int v6, v4, p1

    .local v6, "outputLength":I
    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p1, :cond_5

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    :pswitch_0
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "ch0":C
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .local v2, "ch1":C
    new-array v5, v6, [C

    .local v5, "output2":[C
    mul-int/lit8 v7, p1, 0x2

    add-int/lit8 v3, v7, -0x2

    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_4

    aput-char v1, v5, v3

    add-int/lit8 v7, v3, 0x1

    aput-char v2, v5, v7

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    invoke-direct {p0, v5}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .end local v1    # "ch0":C
    .end local v2    # "ch1":C
    .end local v5    # "output2":[C
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local p0    # "str":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "repeat"    # I

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-static {p0, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I

    .prologue
    const/16 v5, 0x40

    const/4 v7, -0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .local v4, "start":I
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .local v1, "end":I
    if-eq v1, v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "replLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v2, v6, v3

    .local v2, "increase":I
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    if-gez p3, :cond_5

    const/16 v5, 0x10

    :cond_3
    :goto_1
    mul-int/2addr v2, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_2
    if-eq v1, v7, :cond_4

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v4, v1, v3

    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_6

    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_5
    if-gt p3, v5, :cond_3

    move v5, p3

    goto :goto_1

    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "replaceChar"    # C

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;
    .param p2, "replaceChars"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    const/4 v4, 0x0

    .local v4, "modified":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "replaceCharsLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "strLength":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "ch":C
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .local v3, "index":I
    if-ltz v3, :cond_4

    const/4 v4, 0x1

    if-ge v3, v5, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v1    # "ch":C
    .end local v3    # "index":I
    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 20
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;
    .param p3, "repeat"    # Z
    .param p4, "timeToLive"    # I

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_1

    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "text":Ljava/lang/String;
    :cond_1
    if-gez p4, :cond_2

    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Aborting to protect against StackOverflowError - output of one loop is the input of another"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_2
    move-object/from16 v0, p1

    array-length v12, v0

    .local v12, "searchLength":I
    move-object/from16 v0, p2

    array-length v10, v0

    .local v10, "replacementLength":I
    if-eq v12, v10, :cond_3

    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Search and Replace array lengths don\'t match: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " vs "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_3
    new-array v8, v12, [Z

    .local v8, "noMoreMatchesForReplIndex":[Z
    const/4 v15, -0x1

    .local v15, "textIndex":I
    const/4 v9, -0x1

    .local v9, "replaceIndex":I
    const/4 v14, -0x1

    .local v14, "tempIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v12, :cond_8

    aget-boolean v17, v8, v6

    if-nez v17, :cond_4

    aget-object v17, p1, v6

    if-eqz v17, :cond_4

    aget-object v17, p1, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_4

    aget-object v17, p2, v6

    if-nez v17, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    aget-object v17, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_6

    const/16 v17, 0x1

    aput-boolean v17, v8, v6

    goto :goto_2

    :cond_6
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_7

    if-ge v14, v15, :cond_4

    :cond_7
    move v15, v14

    move v9, v6

    goto :goto_2

    :cond_8
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_0

    const/4 v13, 0x0

    .local v13, "start":I
    const/4 v7, 0x0

    .local v7, "increase":I
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_b

    aget-object v17, p1, v6

    if-eqz v17, :cond_9

    aget-object v17, p2, v6

    if-nez v17, :cond_a

    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_a
    aget-object v17, p2, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    aget-object v18, p1, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v5, v17, v18

    .local v5, "greater":I
    if-lez v5, :cond_9

    mul-int/lit8 v17, v5, 0x3

    add-int v7, v7, v17

    goto :goto_4

    .end local v5    # "greater":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v17, v17, 0x5

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v7

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v4, "buf":Ljava/lang/StringBuilder;
    :cond_c
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_12

    move v6, v13

    :goto_5
    if-ge v6, v15, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_d
    aget-object v17, p2, v9

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v17, p1, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v13, v15, v17

    const/4 v15, -0x1

    const/4 v9, -0x1

    const/4 v14, -0x1

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v12, :cond_c

    aget-boolean v17, v8, v6

    if-nez v17, :cond_e

    aget-object v17, p1, v6

    if-eqz v17, :cond_e

    aget-object v17, p1, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_e

    aget-object v17, p2, v6

    if-nez v17, :cond_f

    :cond_e
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_f
    aget-object v17, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_10

    const/16 v17, 0x1

    aput-boolean v17, v8, v6

    goto :goto_7

    :cond_10
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_11

    if-ge v14, v15, :cond_e

    :cond_11
    move v15, v14

    move v9, v6

    goto :goto_7

    :cond_12
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    .local v16, "textLength":I
    move v6, v13

    :goto_8
    move/from16 v0, v16

    if-ge v6, v0, :cond_13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "result":Ljava/lang/String;
    if-nez p3, :cond_14

    move-object/from16 p0, v11

    goto/16 :goto_0

    :cond_14
    add-int/lit8 v17, p4, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v17

    invoke-static {v11, v0, v1, v2, v3}, Lorg/apache/miui/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .local v0, "timeToLive":I
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .end local v0    # "timeToLive":I
    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .local v0, "strs":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-gez p1, :cond_2

    const-string p0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .prologue
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    .local v0, "pads":I
    if-lez v0, :cond_0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string p2, " "

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "strLen":I
    sub-int v4, p1, v5

    .local v4, "pads":I
    if-lez v4, :cond_0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    const/16 v6, 0x2000

    if-gt v4, v6, :cond_3

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {p0, p1, v6}, Lorg/apache/miui/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    if-ne v4, v2, :cond_4

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    if-ge v4, v2, :cond_5

    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    new-array v3, v4, [C

    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .local v1, "padChars":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_6

    rem-int v6, v0, v2

    aget-char v6, v1, v6

    aput-char v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "camelCase"    # Z

    .prologue
    if-nez p0, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "c":[C
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "tokenStart":I
    aget-char v7, v0, v5

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v1

    .local v1, "currentType":I
    add-int/lit8 v4, v5, 0x1

    .local v4, "pos":I
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_5

    aget-char v7, v0, v4

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v6

    .local v6, "type":I
    if-ne v6, v1, :cond_2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const/4 v7, 0x1

    if-ne v1, v7, :cond_4

    add-int/lit8 v3, v4, -0x1

    .local v3, "newTokenStart":I
    if-eq v3, v5, :cond_3

    new-instance v7, Ljava/lang/String;

    sub-int v8, v3, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v3

    .end local v3    # "newTokenStart":I
    :cond_3
    :goto_3
    move v1, v6

    goto :goto_2

    :cond_4
    new-instance v7, Ljava/lang/String;

    sub-int v8, v4, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v4

    goto :goto_3

    .end local v6    # "type":I
    :cond_5
    new-instance v7, Ljava/lang/String;

    array-length v8, v0

    sub-int/2addr v8, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .prologue
    const/4 v6, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v6

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    if-nez v2, :cond_1

    sget-object v6, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    invoke-static {p0, v6, p2, p3}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "separatorLength":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "numberOfSubstrings":I
    const/4 v0, 0x0

    .local v0, "beg":I
    const/4 v1, 0x0

    .local v1, "end":I
    :goto_1
    if-ge v1, v2, :cond_9

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v6, -0x1

    if-le v1, v6, :cond_8

    if-le v1, v0, :cond_5

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p2, :cond_4

    move v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v0, v1, v4

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p2, :cond_7

    move v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int v0, v1, v4

    goto :goto_1

    :cond_7
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_1

    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C
    .param p2, "preserveAllTokens"    # Z

    .prologue
    if-nez p0, :cond_0

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    if-nez v2, :cond_1

    sget-object v6, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v5, 0x0

    .local v5, "start":I
    const/4 v4, 0x0

    .local v4, "match":Z
    const/4 v1, 0x0

    .local v1, "lastMatch":Z
    :goto_1
    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_4

    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v1, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v5, v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    if-eqz p2, :cond_7

    if-eqz v1, :cond_7

    :cond_6
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .prologue
    if-nez p0, :cond_0

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    if-nez v2, :cond_1

    sget-object v9, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .local v6, "sizePlus1":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v8, 0x0

    .local v8, "start":I
    const/4 v4, 0x0

    .local v4, "match":Z
    const/4 v1, 0x0

    .local v1, "lastMatch":Z
    if-nez p1, :cond_5

    move v7, v6

    .end local v6    # "sizePlus1":I
    .local v7, "sizePlus1":I
    :goto_1
    if-ge v0, v2, :cond_10

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez v4, :cond_2

    if-eqz p3, :cond_13

    :cond_2
    const/4 v1, 0x1

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    if-ne v7, p2, :cond_3

    move v0, v2

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .local v5, "sep":C
    move v7, v6

    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    :goto_3
    if-ge v0, v2, :cond_9

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_8

    if-nez v4, :cond_6

    if-eqz p3, :cond_11

    :cond_6
    const/4 v1, 0x1

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    if-ne v7, p2, :cond_7

    move v0, v2

    const/4 v1, 0x0

    :cond_7
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v6, v7

    .end local v5    # "sep":C
    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    :goto_5
    if-nez v4, :cond_a

    if-eqz p3, :cond_b

    if-eqz v1, :cond_b

    :cond_a
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    goto/16 :goto_0

    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    :goto_6
    if-ge v0, v2, :cond_10

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_e

    if-nez v4, :cond_c

    if-eqz p3, :cond_f

    :cond_c
    const/4 v1, 0x1

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    if-ne v7, p2, :cond_d

    move v0, v2

    const/4 v1, 0x0

    :cond_d
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_7
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto :goto_7

    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    :cond_10
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto :goto_5

    .end local v6    # "sizePlus1":I
    .restart local v5    # "sep":C
    .restart local v7    # "sizePlus1":I
    :cond_11
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto :goto_4

    .end local v5    # "sep":C
    :cond_12
    move v7, v6

    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_6

    :cond_13
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto/16 :goto_2
.end method

.method public static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .prologue
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v2

    goto :goto_0
.end method

.method public static varargs startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/CharSequence;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "searchString":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lorg/apache/miui/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    .local v2, "result":Ljava/lang/String;
    :try_start_0
    # getter for: Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->access$000()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->removeAccentsJava6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    # getter for: Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->access$100()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->removeAccentsSUN(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The stripAccents(CharSequence) method requires at least Java6, but got: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->access$200()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; or a Sun JVM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->access$300()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v0

    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "IllegalArgumentException occurred"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, "iae":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "IllegalAccessException occurred"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v0    # "iae":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .local v1, "ite":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "InvocationTargetException occurred"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v1    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v3

    .local v3, "se":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "SecurityException occurred"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static varargs stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    array-length v2, p0

    .local v2, "strsLen":I
    if-nez v2, :cond_2

    .end local v2    # "strsLen":I
    :cond_0
    move-object v1, p0

    :cond_1
    return-object v1

    .restart local v2    # "strsLen":I
    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    .local v1, "newArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    invoke-static {v3, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "end":I
    if-nez v0, :cond_1

    .end local v0    # "end":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local v0    # "end":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    :goto_1
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_2
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "strLen":I
    if-nez v1, :cond_1

    .end local v1    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local v1    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .local v0, "start":I
    if-nez p1, :cond_2

    :goto_1
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_2
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object p0, v0

    .end local p0    # "str":Ljava/lang/String;
    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-gez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-gez p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    :cond_1
    if-gez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_3
    if-le p1, p2, :cond_4

    const-string v0, ""

    goto :goto_0

    :cond_4
    if-gez p1, :cond_5

    const/4 p1, 0x0

    :cond_5
    if-gez p2, :cond_6

    const/4 p2, 0x0

    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string p0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    :cond_2
    const-string p0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    const-string p0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "start":I
    if-eq v1, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .local v0, "end":I
    if-eq v0, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p2}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "strLen":I
    if-nez v6, :cond_2

    sget-object v7, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "closeLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "openLen":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "pos":I
    :goto_1
    sub-int v8, v6, v0

    if-ge v4, v8, :cond_3

    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .local v5, "start":I
    if-gez v5, :cond_4

    .end local v5    # "start":I
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_0

    .restart local v5    # "start":I
    :cond_4
    add-int/2addr v5, v3

    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .local v1, "end":I
    if-ltz v1, :cond_3

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v4, v1, v0

    goto :goto_1
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_4

    aget-char v1, v0, v2

    .local v1, "ch":C
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v0, v2

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v0, v2

    goto :goto_2

    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v0, v2

    goto :goto_2

    .end local v1    # "ch":C
    :cond_4
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "ts":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "ts":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "strLen":I
    if-nez v0, :cond_1

    .end local v0    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local v0    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
