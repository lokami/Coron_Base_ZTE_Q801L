.class Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$1;
.super Ljava/lang/Object;
.source "VoicePrintMultiWaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 262
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 266
    return-void
.end method
