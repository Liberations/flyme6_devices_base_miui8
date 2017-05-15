.class public Lmiui/push/Message;
.super Lmiui/push/Packet;
.source "Message.java"


# static fields
.field public static final MSG_TYPE_CHAT:Ljava/lang/String; = "chat"

.field public static final MSG_TYPE_ERROR:Ljava/lang/String; = "error"

.field public static final MSG_TYPE_GROUPCHAT:Ljava/lang/String; = "groupchat"

.field public static final MSG_TYPE_HEADLINE:Ljava/lang/String; = "hearline"

.field public static final MSG_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field public static final MSG_TYPE_PPL:Ljava/lang/String; = "ppl"


# instance fields
.field private fseq:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mBody:Ljava/lang/String;

.field private mBodyEncoding:Ljava/lang/String;

.field private mEncrypted:Z

.field private mSubject:Ljava/lang/String;

.field private mTransient:Z

.field private mseq:Ljava/lang/String;

.field private seq:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private thread:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lmiui/push/Packet;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    const-string v0, "ext_msg_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    const-string v0, "ext_msg_lang"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    const-string v0, "ext_msg_thread"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    const-string v0, "ext_msg_sub"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    const-string v0, "ext_msg_body"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    const-string v0, "ext_body_encode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    const-string v0, "ext_msg_appid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    const-string v0, "ext_msg_trans"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/push/Message;->mTransient:Z

    const-string v0, "ext_msg_seq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    const-string v0, "ext_msg_mseq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    const-string v0, "ext_msg_fseq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    const-string v0, "ext_msg_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    invoke-virtual {p0, p1}, Lmiui/push/Message;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    invoke-virtual {p0, p1}, Lmiui/push/Message;->setTo(Ljava/lang/String;)V

    iput-object p2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    check-cast v0, Lmiui/push/Message;

    .local v0, "message":Lmiui/push/Message;
    invoke-super {p0, v0}, Lmiui/push/Packet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iget-object v3, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->type:Ljava/lang/String;

    if-ne v3, v4, :cond_a

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_6
    iget-object v3, v0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_7
    iget-object v3, v0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_8
    iget-object v3, v0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_9
    iget-object v3, v0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_a
    move v1, v2

    goto :goto_1
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncrypted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/push/Message;->mEncrypted:Z

    return v0
.end method

.method public getFSeq()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMSeq()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getThread()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    return-void
.end method

.method public setBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    iput-object p2, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0
    .param p1, "encrypted"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/push/Message;->mEncrypted:Z

    return-void
.end method

.method public setFSeq(Ljava/lang/String;)V
    .locals 0
    .param p1, "fseq"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    return-void
.end method

.method public setIsTransient(Z)V
    .locals 0
    .param p1, "isTransient"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/push/Message;->mTransient:Z

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    return-void
.end method

.method public setMSeq(Ljava/lang/String;)V
    .locals 0
    .param p1, "mseq"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    return-void
.end method

.method public setSeq(Ljava/lang/String;)V
    .locals 0
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    return-void
.end method

.method public setThread(Ljava/lang/String;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    invoke-super {p0}, Lmiui/push/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ext_msg_type"

    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "ext_msg_lang"

    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "ext_msg_sub"

    iget-object v2, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "ext_msg_body"

    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ext_body_encode"

    iget-object v2, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "ext_msg_thread"

    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "ext_msg_appid"

    iget-object v2, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    if-eqz v1, :cond_7

    const-string v1, "ext_msg_trans"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    iget-object v1, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ext_msg_seq"

    iget-object v2, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "ext_msg_mseq"

    iget-object v2, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "ext_msg_fseq"

    iget-object v2, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "ext_msg_status"

    iget-object v2, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v2, "<message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/Message;->getXmlns()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, " xmlns=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getXmlns()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, " xml:lang=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lmiui/push/Message;->getPacketID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, " id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lmiui/push/Message;->getTo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, " to=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lmiui/push/Message;->getSeq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, " seq=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lmiui/push/Message;->getMSeq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, " mseq=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getMSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lmiui/push/Message;->getFSeq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, " fseq=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getFSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lmiui/push/Message;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, " status=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lmiui/push/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, " from=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lmiui/push/Message;->getChannelId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v2, " chid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-boolean v2, p0, Lmiui/push/Message;->mTransient:Z

    if-eqz v2, :cond_a

    const-string v2, " transient=\"true\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v2, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, " appid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, " type=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-boolean v2, p0, Lmiui/push/Message;->mEncrypted:Z

    if-eqz v2, :cond_d

    const-string v2, " s=\"1\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_e

    const-string v2, "<subject>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</subject>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_10

    const-string v2, "<body"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, " encode=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</body>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v2, :cond_11

    const-string v2, "<thread>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</thread>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v2, "error"

    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lmiui/push/Message;->getError()Lmiui/push/XMPPError;

    move-result-object v1

    .local v1, "error":Lmiui/push/XMPPError;
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lmiui/push/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1    # "error":Lmiui/push/XMPPError;
    :cond_12
    invoke-virtual {p0}, Lmiui/push/Message;->getExtensionsXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</message>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
