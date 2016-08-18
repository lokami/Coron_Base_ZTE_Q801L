.class Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;
.super Ljava/lang/Object;
.source "WaveKeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;


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
    .line 541
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showNextSecurityScreenOrFinish(Z)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$400(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;Z)V

    .line 551
    return-void
.end method

.method public getFailedAttempts()I
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$1100(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$500(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Z

    move-result v0

    return v0
.end method

.method public reportFailedUnlockAttempt()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$800(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$900(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportFailedBiometricUnlockAttempt()V

    .line 568
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->reportFailedUnlockAttempt()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$1000(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V

    goto :goto_0
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$600(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 559
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$700(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 560
    return-void
.end method

.method public setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$OnDismissAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$OnDismissAction;)V

    .line 582
    return-void
.end method

.method public showBackupSecurity()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showBackupSecurityScreen()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$1200(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V

    .line 577
    return-void
.end method

.method public userActivity(J)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity(J)V

    .line 547
    :cond_0
    return-void
.end method
