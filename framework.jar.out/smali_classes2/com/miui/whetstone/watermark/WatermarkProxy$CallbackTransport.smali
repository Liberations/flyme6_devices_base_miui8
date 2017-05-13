.class Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;
.super Lcom/miui/whetstone/watermark/IWatermarkCallback$Stub;
.source "WatermarkProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/watermark/WatermarkProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackTransport"
.end annotation


# static fields
.field private static final TYPE_ON_DECODE:I = 0x2

.field private static final TYPE_ON_ENCODE:I = 0x1


# instance fields
.field private final mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

.field private final mCallbackHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/watermark/WatermarkCallback;Landroid/os/Looper;)V
    .locals 1
    .param p1, "callback"    # Lcom/miui/whetstone/watermark/WatermarkCallback;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/miui/whetstone/watermark/IWatermarkCallback$Stub;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

    .line 45
    if-nez p2, :cond_0

    .line 46
    new-instance v0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$1;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$1;-><init>(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;)V

    iput-object v0, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    .line 60
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$2;

    invoke-direct {v0, p0, p2}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$2;-><init>(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 93
    const-string v2, "WatermarkProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknow msg type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 84
    .local v0, "encodeBmp":Landroid/graphics/Bitmap;
    const-string v2, "WatermarkProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "watermark _handleMessage encode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

    invoke-interface {v2, v0}, Lcom/miui/whetstone/watermark/WatermarkCallback;->onEncodeWatermarkDone(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 88
    .end local v0    # "encodeBmp":Landroid/graphics/Bitmap;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 89
    .local v1, "watermark":Ljava/lang/String;
    const-string v2, "WatermarkProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "watermark _handleMessage decode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

    invoke-interface {v2, v1}, Lcom/miui/whetstone/watermark/WatermarkCallback;->onDecodeWatermarkDone(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onDecodeWatermark(Ljava/lang/String;)V
    .locals 3
    .param p1, "watermark"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v1, "WatermarkProxy"

    const-string/jumbo v2, "watermark CallbackTransport onDecodeWatermark"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 75
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 76
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    return-void
.end method

.method public onEncodeWatermark(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 64
    const-string v1, "WatermarkProxy"

    const-string/jumbo v2, "watermark CallbackTransport onEncodeWatermark"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 66
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 67
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    return-void
.end method
