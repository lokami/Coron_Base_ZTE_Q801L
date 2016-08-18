.class Landroid/net/wifi/WifiMonitor$MonitorApThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorApThread"
.end annotation


# instance fields
.field private mStopFlag:I

.field final synthetic this$0:Landroid/net/wifi/WifiMonitor;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiMonitor;)V
    .locals 1
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorApThread;->this$0:Landroid/net/wifi/WifiMonitor;

    .line 403
    const-string v0, "SoftapMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiMonitor$MonitorApThread;->mStopFlag:I

    .line 404
    return-void
.end method

.method private connectToHostapd()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, connectTries:I
    :goto_0
    iget v3, p0, Landroid/net/wifi/WifiMonitor$MonitorApThread;->mStopFlag:I

    if-ne v3, v2, :cond_1

    .line 461
    const-string v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " wangzhaoxin mStopFlag =1, connectTries: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_1
    const/4 v2, 0x0

    :cond_0
    return v2

    .line 464
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorApThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiApNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->connectToSupplicant()Z

    move-result v3

    if-nez v3, :cond_0

    .line 467
    add-int/lit8 v1, v0, 0x1

    .end local v0           #connectTries:I
    .local v1, connectTries:I
    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    .line 468
    #calls: Landroid/net/wifi/WifiMonitor;->nap(I)V
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$200(I)V

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_0

    .end local v0           #connectTries:I
    .restart local v1       #connectTries:I
    :cond_2
    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_1
.end method

.method private handleAssocEvents(Ljava/lang/String;)V
    .locals 6
    .parameter "dataString"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 447
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, tokens:[Ljava/lang/String;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAssocEvents tokens[1]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    aget-object v1, v0, v4

    const-string v2, "ASSOC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorApThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x2402a

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    aget-object v1, v0, v4

    const-string v2, "DISASSOC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorApThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24029

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public StopRetry()V
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiMonitor$MonitorApThread;->mStopFlag:I

    .line 433
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 407
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorApThread;->connectToHostapd()Z

    move-result v2

    if-nez v2, :cond_2

    .line 408
    const-string v2, "WifiMonitor"

    const-string v3, " startMonitoring failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_0
    return-void

    .line 419
    .local v0, eventData:Ljava/lang/String;
    .local v1, eventStr:Ljava/lang/String;
    :cond_0
    const-string v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v2, "Event ASSOC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Event DISASSOC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 425
    :cond_1
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorApThread;->handleAssocEvents(Ljava/lang/String;)V

    .line 414
    .end local v0           #eventData:Ljava/lang/String;
    .end local v1           #eventStr:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorApThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiApNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v1

    .line 415
    .restart local v1       #eventStr:Ljava/lang/String;
    move-object v0, v1

    .line 416
    .restart local v0       #eventData:Ljava/lang/String;
    iget v2, p0, Landroid/net/wifi/WifiMonitor$MonitorApThread;->mStopFlag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0
.end method
