.class Lcom/android/internal/policy/impl/keyguard/MultiWaveView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 427
    const-string v0, "MultiWaveView"

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animator"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    #calls: Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->hideChevrons()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->access$100(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)V

    .line 422
    return-void
.end method
