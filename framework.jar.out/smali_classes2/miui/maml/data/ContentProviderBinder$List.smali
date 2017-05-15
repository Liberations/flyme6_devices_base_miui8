.class Lmiui/maml/data/ContentProviderBinder$List;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "List"
.end annotation


# instance fields
.field private mList:Lmiui/maml/elements/ListScreenElement;

.field private mMaxCount:I

.field private mName:Ljava/lang/String;

.field private mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    const-string v0, "maxCount"

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    iput-object p2, p0, Lmiui/maml/data/ContentProviderBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-void
.end method


# virtual methods
.method public fill(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v11, :cond_2

    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v12, p0, Lmiui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v11

    check-cast v11, Lmiui/maml/elements/ListScreenElement;

    iput-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v11, :cond_2

    const-string v11, "ContentProviderBinder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fail to find list: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lmiui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v11}, Lmiui/maml/elements/ListScreenElement;->removeAllItems()V

    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v11}, Lmiui/maml/elements/ListScreenElement;->getColumnsInfo()Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "columnsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/elements/ListScreenElement$ColumnInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "size":I
    new-array v1, v9, [I

    .local v1, "column":[I
    new-array v8, v9, [Ljava/lang/Object;

    .local v8, "objects":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v11, v1

    if-ge v6, v11, :cond_3

    :try_start_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v11, v11, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    aput v11, v1, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v12, "ContentProviderBinder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "illegal column:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v11, v11, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .local v4, "count":I
    iget v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    if-le v4, v11, :cond_4

    iget v4, p0, Lmiui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_0

    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v9, :cond_6

    const/4 v11, 0x0

    aput-object v11, v8, v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    .local v2, "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    aget v0, v1, v7

    .local v0, "col":I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_5

    sget-object v11, Lmiui/maml/data/ContentProviderBinder$2;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    iget-object v12, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v12}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    sget-object v11, Lmiui/maml/data/ContentProviderBinder$2;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    iget-object v12, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v12}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_1

    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :pswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_4

    :pswitch_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .local v10, "valueBytes":[B
    if-eqz v10, :cond_5

    const/4 v11, 0x0

    array-length v12, v10

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_4

    .end local v10    # "valueBytes":[B
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_4

    :pswitch_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_4

    :pswitch_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_4

    :pswitch_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_4

    .end local v0    # "col":I
    .end local v2    # "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    :cond_6
    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v11, v8}, Lmiui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
