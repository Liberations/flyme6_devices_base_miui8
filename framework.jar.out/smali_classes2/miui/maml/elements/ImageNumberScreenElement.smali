.class public Lmiui/maml/elements/ImageNumberScreenElement;
.super Lmiui/maml/elements/ImageScreenElement;
.source "ImageNumberScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ImageNumberScreenElement$CharName;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ImageNumber"

.field public static final TAG_NAME1:Ljava/lang/String; = "ImageChars"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mBmpHeight:I

.field private mBmpWidth:I

.field private mCachedBmp:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field private mNameMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ImageNumberScreenElement$CharName;",
            ">;"
        }
    .end annotation
.end field

.field private mNumExpression:Lmiui/maml/data/Expression;

.field private mOldSrc:Ljava/lang/String;

.field private mPreNumber:D

.field private mPreStr:Ljava/lang/String;

.field private mSpace:I

.field private mSpaceExpression:Lmiui/maml/data/Expression;

.field private mStrExpression:Lmiui/maml/data/Expression;

.field private mStrValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 10
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const-string v6, "ImageNumberScreenElement"

    iput-object v6, p0, Lmiui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v6, 0x1

    iput-wide v6, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    const-string v7, "number"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    iput-object v6, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    const-string v7, "string"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    iput-object v6, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    const-string v7, "space"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    iput-object v6, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpaceExpression:Lmiui/maml/data/Expression;

    const-string v6, "charNameMap"

    invoke-virtual {p0, p1, v6}, Lmiui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "tmp":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "chars":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .local v4, "s":Ljava/lang/String;
    iget-object v6, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    new-instance v7, Lmiui/maml/elements/ImageNumberScreenElement$CharName;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v9}, Lmiui/maml/elements/ImageNumberScreenElement$CharName;-><init>(Lmiui/maml/elements/ImageNumberScreenElement;CLjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "chars":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private charToStr(C)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # C

    .prologue
    iget-object v2, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ImageNumberScreenElement$CharName;

    .local v0, "cn":Lmiui/maml/elements/ImageNumberScreenElement$CharName;
    iget-char v2, v0, Lmiui/maml/elements/ImageNumberScreenElement$CharName;->ch:C

    if-ne v2, p1, :cond_0

    iget-object v2, v0, Lmiui/maml/elements/ImageNumberScreenElement$CharName;->name:Ljava/lang/String;

    .end local v0    # "cn":Lmiui/maml/elements/ImageNumberScreenElement$CharName;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v2

    :cond_1
    const/16 v2, 0x2e

    if-ne p1, v2, :cond_2

    const-string v2, "dot"

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getNumberBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "c"    # Ljava/lang/String;

    .prologue
    invoke-static {p1, p2}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v1, v0}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected doTick(J)V
    .locals 23
    .param p1, "currentTime"    # J

    .prologue
    invoke-super/range {p0 .. p2}, Lmiui/maml/elements/ImageScreenElement;->doTick(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lmiui/maml/data/Expression;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageNumberScreenElement;->updateBitmapVars()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v10, 0x0

    .local v10, "numStr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v15

    .local v15, "src":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mOldSrc:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    const/16 v16, 0x1

    .local v16, "srcChanged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ImageNumberScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v12

    .local v12, "number":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    move-wide/from16 v18, v0

    cmpl-double v18, v12, v18

    if-nez v18, :cond_2

    if-eqz v16, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    invoke-static {v12, v13}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v10

    .end local v12    # "number":D
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_4
    move-object/from16 v0, p0

    iput-object v15, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mOldSrc:Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .local v9, "length":I
    :goto_3
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    if-ge v8, v9, :cond_13

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lmiui/maml/elements/ImageNumberScreenElement;->charToStr(C)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lmiui/maml/elements/ImageNumberScreenElement;->getNumberBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "bmp":Landroid/graphics/Bitmap;
    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Fail to get bitmap for number "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "i":I
    .end local v9    # "length":I
    .end local v16    # "srcChanged":Z
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_1

    .restart local v16    # "srcChanged":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lmiui/maml/data/Expression;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    if-eqz v16, :cond_0

    :cond_8
    move-object/from16 v0, p0

    iput-object v10, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lmiui/maml/data/Expression;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ImageNumberScreenElement;->evaluateStr(Lmiui/maml/data/Expression;)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_3

    .restart local v4    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "i":I
    .restart local v9    # "length":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    move/from16 v18, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    add-int v17, v18, v19

    .local v17, "width":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .local v7, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-nez v18, :cond_10

    const/4 v6, 0x0

    .local v6, "cachedBmpWidth":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-nez v18, :cond_11

    const/4 v5, 0x0

    .local v5, "cachedBmpHeight":I
    :goto_7
    move/from16 v0, v17

    if-gt v0, v6, :cond_c

    if-le v7, v5, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .local v11, "oldBmp":Landroid/graphics/Bitmap;
    move/from16 v0, v17

    if-le v0, v6, :cond_12

    sub-int v14, v9, v8

    .local v14, "remains":I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    move/from16 v18, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    mul-int v19, v19, v14

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpace:I

    move/from16 v19, v0

    add-int/lit8 v20, v14, -0x1

    mul-int v19, v19, v20

    add-int v17, v18, v19

    .end local v14    # "remains":I
    :goto_8
    if-gt v7, v5, :cond_d

    move v7, v5

    :cond_d
    move-object/from16 v0, p0

    iput v7, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Bitmap;->setDensity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .end local v11    # "oldBmp":Landroid/graphics/Bitmap;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    move/from16 v18, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    add-int/lit8 v18, v9, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpace:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .end local v5    # "cachedBmpHeight":I
    .end local v6    # "cachedBmpWidth":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    goto/16 :goto_6

    .restart local v6    # "cachedBmpWidth":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    goto/16 :goto_7

    .restart local v5    # "cachedBmpHeight":I
    .restart local v11    # "oldBmp":Landroid/graphics/Bitmap;
    :cond_12
    move/from16 v17, v6

    goto/16 :goto_8

    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    .end local v5    # "cachedBmpHeight":I
    .end local v6    # "cachedBmpWidth":I
    .end local v7    # "height":I
    .end local v11    # "oldBmp":Landroid/graphics/Bitmap;
    .end local v17    # "width":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageNumberScreenElement;->updateBitmapVars()V

    goto/16 :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/ImageScreenElement;->finish()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    return-void
.end method

.method protected getBitmapHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    return v0
.end method

.method protected getBitmapWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/ImageScreenElement;->init()V

    iget-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpaceExpression:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpace:I

    iget-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpaceExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ImageNumberScreenElement;->scale(D)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    invoke-static {p1, p2}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ImageNumberScreenElement;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->requestUpdate()V

    return-void
.end method

.method protected updateBitmap(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->updateBitmapVars()V

    return-void
.end method
