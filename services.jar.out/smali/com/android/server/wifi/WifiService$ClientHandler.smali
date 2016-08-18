.class Lcom/android/server/wifi/WifiService$ClientHandler;
.super Landroid/os/Handler;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    .line 153
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 154
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 158
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 222
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientHandler.handleMessage ignoring msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 160
    :sswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    .line 161
    const-string v2, "WifiService"

    const-string v3, "New client listening to asynchronous messages"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$100(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;->addClient(Landroid/os/Messenger;)V

    goto :goto_0

    .line 166
    :cond_1
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client connection failure, error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :sswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 172
    const-string v2, "WifiService"

    const-string v3, "Send failed, client connection lost"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$100(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;->removeClient(Landroid/os/Messenger;)V

    goto :goto_0

    .line 174
    :cond_2
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client connection lost with reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 180
    :sswitch_2
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 181
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v2, p0, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_0

    .line 192
    .end local v0           #ac:Lcom/android/internal/util/AsyncChannel;
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v2, v2, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 197
    :sswitch_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_2
    #setter for: Lcom/android/server/wifi/WifiService;->mEnableTrafficStatsSoftap:Z
    invoke-static {v5, v2}, Lcom/android/server/wifi/WifiService;->access$302(Lcom/android/server/wifi/WifiService;Z)Z

    .line 198
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    iget v5, p1, Landroid/os/Message;->arg2:I

    #setter for: Lcom/android/server/wifi/WifiService;->mTrafficStatsSoftapType:I
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiService;->access$402(Lcom/android/server/wifi/WifiService;I)I

    .line 199
    const-string v2, "WifiService"

    const-string v5, "wb CMD_ENABLE_TRAFFIC_STATS_SOFTAP"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v2, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wb mEnableTrafficStatsSoftap="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mEnableTrafficStatsSoftap:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$300(Lcom/android/server/wifi/WifiService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mEnableTrafficStatsSoftap:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$300(Lcom/android/server/wifi/WifiService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mTrafficStatsSoftapType:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$400(Lcom/android/server/wifi/WifiService;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 211
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    const-wide/16 v5, 0x0

    #setter for: Lcom/android/server/wifi/WifiService;->timer:J
    invoke-static {v2, v5, v6}, Lcom/android/server/wifi/WifiService;->access$502(Lcom/android/server/wifi/WifiService;J)J

    .line 213
    :goto_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.WifiManager.action.WIFI_AP_POWER_MODE"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 214
    .local v1, wifiApPowerModeIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    #setter for: Lcom/android/server/wifi/WifiService;->mWifiApPowerModeIntent:Landroid/app/PendingIntent;
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiService;->access$602(Lcom/android/server/wifi/WifiService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 216
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->timer:J
    invoke-static {v4}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)J

    move-result-wide v4

    #calls: Lcom/android/server/wifi/WifiService;->setApPowerModeAlarm(ZJ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiService;->access$700(Lcom/android/server/wifi/WifiService;ZJ)V

    goto/16 :goto_0

    .end local v1           #wifiApPowerModeIntent:Landroid/content/Intent;
    :cond_3
    move v2, v4

    .line 197
    goto :goto_2

    .line 205
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    const-wide/32 v5, 0x493e0

    #setter for: Lcom/android/server/wifi/WifiService;->timer:J
    invoke-static {v2, v5, v6}, Lcom/android/server/wifi/WifiService;->access$502(Lcom/android/server/wifi/WifiService;J)J

    goto :goto_3

    .line 208
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    const-wide/32 v5, 0xdbba0

    #setter for: Lcom/android/server/wifi/WifiService;->timer:J
    invoke-static {v2, v5, v6}, Lcom/android/server/wifi/WifiService;->access$502(Lcom/android/server/wifi/WifiService;J)J

    goto :goto_3

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_2
        0x11004 -> :sswitch_1
        0x25001 -> :sswitch_3
        0x25004 -> :sswitch_3
        0x25007 -> :sswitch_3
        0x2500a -> :sswitch_3
        0x2500e -> :sswitch_3
        0x25011 -> :sswitch_3
        0x25014 -> :sswitch_3
        0x25021 -> :sswitch_4
    .end sparse-switch

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
