.class Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$6;
.super Ljava/lang/Object;
.source "WaveKeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$UserSwitcherCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->enableUserSelectorIfNecessary()V
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
    .line 1738
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideSecurityView(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$1700(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1742
    return-void
.end method

.method public showSecurityView()V
    .locals 2

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$1700(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1747
    return-void
.end method

.method public showUnlockHint()V
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$1800(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$1800(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->showUsabilityHint()V

    .line 1754
    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    .line 1761
    :cond_0
    return-void
.end method
