.class public Lmiui/push/CommonPacketExtension;
.super Ljava/lang/Object;
.source "CommonPacketExtension.java"

# interfaces
.implements Lmiui/push/PacketExtension;


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "attributes"

.field public static final CHILDREN_NAME:Ljava/lang/String; = "children"


# instance fields
.field private mAttributeNames:[Ljava/lang/String;

.field private mAttributeValues:[Ljava/lang/String;

.field private mChildrenEles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private mExtensionElementName:Ljava/lang/String;

.field private mNamespace:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "extensionElementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "attributeName"    # Ljava/lang/String;
    .param p4, "attributeValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    aput-object p3, v0, v1

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    aput-object p4, v0, v1

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "extensionElementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "attributeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "attributeValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "extensionElementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "attributeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "attributeValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "children":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    iput-object p5, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    iput-object p6, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "extensionElementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "attributeNames"    # [Ljava/lang/String;
    .param p4, "attributeValues"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    iput-object p3, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    iput-object p4, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "extensionElementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "attributeNames"    # [Ljava/lang/String;
    .param p4, "attributeValues"    # [Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "children":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    iput-object p3, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    iput-object p4, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    iput-object p5, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    iput-object p6, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    return-void
.end method

.method public static getArray([Landroid/os/Parcelable;)[Lmiui/push/CommonPacketExtension;
    .locals 3
    .param p0, "parcelables"    # [Landroid/os/Parcelable;

    .prologue
    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    new-array v0, v2, [Lmiui/push/CommonPacketExtension;

    .local v0, "extensions":[Lmiui/push/CommonPacketExtension;
    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Lmiui/push/CommonPacketExtension;->parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "extensions":[Lmiui/push/CommonPacketExtension;
    .end local v1    # "i":I
    :cond_0
    array-length v2, p0

    goto :goto_0

    .restart local v0    # "extensions":[Lmiui/push/CommonPacketExtension;
    :cond_1
    return-object v0
.end method

.method public static parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;
    .locals 18
    .param p0, "b"    # Landroid/os/Bundle;

    .prologue
    const-string v1, "ext_ele_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "extensionElement":Ljava/lang/String;
    const-string v1, "ext_ns"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "extensionNamespace":Ljava/lang/String;
    const-string v1, "ext_text"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "text":Ljava/lang/String;
    const-string v1, "attributes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .local v11, "attributesBundle":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    .local v10, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    .local v4, "attributeNames":[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .local v5, "attributeValues":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "childrenEles":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    const/16 v16, 0x0

    .local v16, "index":I
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "attr":Ljava/lang/String;
    aput-object v9, v4, v16

    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .end local v9    # "attr":Ljava/lang/String;
    :cond_0
    const-string v1, "children"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "children"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v14

    .local v14, "children":[Landroid/os/Parcelable;
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "childrenEles":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    array-length v1, v14

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v7    # "childrenEles":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    move-object v8, v14

    .local v8, "arr$":[Landroid/os/Parcelable;
    array-length v0, v8

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_1

    aget-object v12, v8, v15

    .local v12, "child":Landroid/os/Parcelable;
    check-cast v12, Landroid/os/Bundle;

    .end local v12    # "child":Landroid/os/Parcelable;
    invoke-static {v12}, Lmiui/push/CommonPacketExtension;->parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;

    move-result-object v13

    .local v13, "childExt":Lmiui/push/CommonPacketExtension;
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .end local v8    # "arr$":[Landroid/os/Parcelable;
    .end local v13    # "childExt":Lmiui/push/CommonPacketExtension;
    .end local v14    # "children":[Landroid/os/Parcelable;
    .end local v15    # "i$":I
    .end local v17    # "len$":I
    :cond_1
    new-instance v1, Lmiui/push/CommonPacketExtension;

    invoke-direct/range {v1 .. v7}, Lmiui/push/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public static toParcelableArray(Ljava/util/List;)[Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)[",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .local p0, "extensions":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lmiui/push/CommonPacketExtension;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/push/CommonPacketExtension;

    invoke-static {v0}, Lmiui/push/CommonPacketExtension;->toParcelableArray([Lmiui/push/CommonPacketExtension;)[Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public static toParcelableArray([Lmiui/push/CommonPacketExtension;)[Landroid/os/Parcelable;
    .locals 3
    .param p0, "extensions"    # [Lmiui/push/CommonPacketExtension;

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    array-length v2, p0

    new-array v1, v2, [Landroid/os/Parcelable;

    .local v1, "parcelables":[Landroid/os/Parcelable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lmiui/push/CommonPacketExtension;->toParcelable()Landroid/os/Parcelable;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public appendChild(Lmiui/push/CommonPacketExtension;)V
    .locals 1
    .param p1, "child"    # Lmiui/push/CommonPacketExtension;

    .prologue
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    .end local v0    # "i":I
    :goto_1
    return-object v1

    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildByName(Ljava/lang/String;)Lmiui/push/CommonPacketExtension;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    :goto_0
    return-object v1

    :cond_1
    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/push/CommonPacketExtension;

    .local v1, "temp":Lmiui/push/CommonPacketExtension;
    iget-object v3, v1, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v1    # "temp":Lmiui/push/CommonPacketExtension;
    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method public getChildrenByName(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/push/CommonPacketExtension;

    .local v2, "temp":Lmiui/push/CommonPacketExtension;
    iget-object v3, v2, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getChildrenExt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    invoke-static {v0}, Lmiui/push/StringUtils;->unescapeFromXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .prologue
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "b":Landroid/os/Bundle;
    const-string v3, "ext_ele_name"

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ext_ns"

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ext_text"

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "attributesBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "n":I
    :cond_0
    const-string v3, "attributes"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "children"

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-static {v4}, Lmiui/push/CommonPacketExtension;->toParcelableArray(Ljava/util/List;)[Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_1
    return-object v1
.end method

.method public toParcelable()Landroid/os/Parcelable;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lmiui/push/CommonPacketExtension;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lmiui/push/CommonPacketExtension;->toXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xmlns="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_2

    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "n":I
    :cond_2
    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3
    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/push/CommonPacketExtension;

    .local v0, "cmmnPktExt":Lmiui/push/CommonPacketExtension;
    invoke-virtual {v0}, Lmiui/push/CommonPacketExtension;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v0    # "cmmnPktExt":Lmiui/push/CommonPacketExtension;
    :cond_4
    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string v4, "/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
