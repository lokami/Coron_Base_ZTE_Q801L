.class final Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$MobileDefaultState;
.super Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MobileDefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;


# direct methods
.method public constructor <init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V
    .locals 1
    .parameter

    .prologue
    .line 3454
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$MobileDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;-><init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V

    .line 3455
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    .line 3456
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    .line 3457
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 3461
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$MobileDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$MobileDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$8000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$8100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3462
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->runOnEnter()V

    .line 3463
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 3467
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$MobileDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$MobileDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$8300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3468
    return-void
.end method

.method protected transitionToOther()V
    .locals 3

    .prologue
    .line 3472
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$MobileDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$MobileDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$8400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transitionToOther"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$8500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3473
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$MobileDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$MobileDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mWifiDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$8600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 3474
    return-void
.end method