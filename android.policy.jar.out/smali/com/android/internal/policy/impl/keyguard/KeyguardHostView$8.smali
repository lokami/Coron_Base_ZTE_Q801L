.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideSecurityView(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1599
    return-void
.end method

.method public showSecurityView()V
    .locals 2

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1604
    return-void
.end method

.method public showUnlockHint()V
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->showUsabilityHint()V

    .line 1611
    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    .line 1618
    :cond_0
    return-void
.end method
