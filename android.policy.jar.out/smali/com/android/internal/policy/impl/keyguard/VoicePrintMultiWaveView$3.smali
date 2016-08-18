.class Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$3;
.super Landroid/os/Handler;
.source "VoicePrintMultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 290
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 297
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 298
    return-void

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->isStartOnLongClick:Z

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$OnTriggerListener;->onFinishAnimation()V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method
