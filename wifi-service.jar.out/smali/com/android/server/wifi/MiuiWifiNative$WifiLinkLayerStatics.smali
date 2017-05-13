.class public Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;
.super Ljava/lang/Object;
.source "MiuiWifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/MiuiWifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiLinkLayerStatics"
.end annotation


# instance fields
.field ack_fail_cnt:J

.field fail_cnt:J

.field frm_dup_cnt:J

.field multiple_retry_cnt:J

.field retry_cnt:J

.field rts_fail_cnt:J

.field rts_succ_cnt:J

.field rx_bc_byte_cnt:J

.field rx_byte_cnt:J

.field rx_discard_cnt:J

.field rx_error_cnt:J

.field rx_frm_cnt:J

.field rx_mc_byte_cnt:J

.field rx_rate:J

.field rx_uc_byte_cnt:J

.field final synthetic this$0:Lcom/android/server/wifi/MiuiWifiNative;

.field tx_bc_byte_cnt:J

.field tx_byte_cnt:J

.field tx_frm_cnt:J

.field tx_mc_byte_cnt:J

.field tx_rate:J

.field tx_uc_byte_cnt:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/MiuiWifiNative;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 106
    iput-object p1, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->this$0:Lcom/android/server/wifi/MiuiWifiNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->tx_frm_cnt:J

    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->multiple_retry_cnt:J

    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->retry_cnt:J

    .line 108
    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->fail_cnt:J

    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->frm_dup_cnt:J

    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->rx_frm_cnt:J

    .line 109
    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->rts_succ_cnt:J

    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->ack_fail_cnt:J

    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->rts_fail_cnt:J

    .line 110
    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->tx_byte_cnt:J

    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->rx_error_cnt:J

    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->rx_discard_cnt:J

    .line 111
    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->tx_rate:J

    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->rx_rate:J

    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->rx_byte_cnt:J

    .line 112
    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->rx_bc_byte_cnt:J

    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->rx_mc_byte_cnt:J

    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->rx_uc_byte_cnt:J

    .line 113
    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->tx_bc_byte_cnt:J

    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->tx_mc_byte_cnt:J

    iput-wide v0, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->tx_uc_byte_cnt:J

    .line 114
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->retry_cnt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_rty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->multiple_retry_cnt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tx_frm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->tx_frm_cnt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rx_frm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->rx_frm_cnt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frm_dup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->frm_dup_cnt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->fail_cnt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ack_fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->ack_fail_cnt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rx_discard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->rx_discard_cnt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rx_error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->rx_error_cnt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tx_byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->tx_byte_cnt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rx_byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;->rx_byte_cnt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
