.class Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$2;
.super Landroid/animation/AnimatorListenerAdapter;
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
    .line 268
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 283
    const-string v0, "VoicePrintMultiWaveView"

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animator"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$OnTriggerListener;->onFinishAnimation()V

    .line 278
    :cond_0
    return-void
.end method
