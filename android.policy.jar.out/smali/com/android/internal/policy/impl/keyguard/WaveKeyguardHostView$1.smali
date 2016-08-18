.class Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "WaveKeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$000(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->checkAppWidgetConsistency()V

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$002(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;Z)Z

    .line 252
    :cond_0
    return-void
.end method

.method onMusicClientIdChanged(IZLandroid/app/PendingIntent;)V
    .locals 4
    .parameter "clientGeneration"
    .parameter "clearing"
    .parameter "intent"

    .prologue
    const/4 v0, 0x2

    .line 263
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    iget v1, v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mClientGeneration:I

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_1

    .line 264
    :cond_0
    const-string v2, "WaveKeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_5

    const-string v1, "hide"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " transport, gen:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    iput p1, v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mClientGeneration:I

    .line 267
    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 270
    .local v0, newState:I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$200(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportState:I
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$202(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;I)I

    .line 272
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_3

    const-string v1, "WaveKeyguardHostView"

    const-string v2, "update widget: transport state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 275
    :cond_4
    return-void

    .line 264
    .end local v0           #newState:I
    :cond_5
    const-string v1, "show"

    goto :goto_0

    .line 267
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$200(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)I

    move-result v1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onMusicPlaybackStateChanged(IJ)V
    .locals 4
    .parameter "playbackState"
    .parameter "eventTime"

    .prologue
    .line 278
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_0

    const-string v1, "WaveKeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$200(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    #calls: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->isMusicPlaying(I)Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$300(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    .line 282
    .local v0, newState:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$200(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportState:I
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$202(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;I)I

    .line 284
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_1

    const-string v1, "WaveKeyguardHostView"

    const-string v2, "update widget: play state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 288
    .end local v0           #newState:I
    :cond_2
    return-void

    .line 280
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$100(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$100(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V

    .line 258
    :cond_0
    return-void
.end method
