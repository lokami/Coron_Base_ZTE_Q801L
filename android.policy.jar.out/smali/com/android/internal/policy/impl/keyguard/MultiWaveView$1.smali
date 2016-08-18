.class Lcom/android/internal/policy/impl/keyguard/MultiWaveView$1;
.super Ljava/lang/Object;
.source "MultiWaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 411
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 415
    return-void
.end method
