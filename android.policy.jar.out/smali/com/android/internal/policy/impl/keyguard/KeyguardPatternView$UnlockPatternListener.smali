.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x1b58

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v4, 0x1

    .line 352
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 354
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 355
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 376
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 358
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    const-wide/16 v6, 0x1b58

    invoke-interface {v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 360
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 361
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_3

    move v3, v4

    .line 363
    .local v3, registeredAttempt:Z
    :goto_1
    if-eqz v3, :cond_2

    .line 364
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 366
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 367
    .local v0, attempts:I
    if-eqz v3, :cond_4

    rem-int/lit8 v5, v0, 0x5

    if-nez v5, :cond_4

    .line 369
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v1

    .line 370
    .local v1, deadline:J
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V
    invoke-static {v4, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;J)V

    goto :goto_0

    .line 361
    .end local v0           #attempts:I
    .end local v1           #deadline:J
    .end local v3           #registeredAttempt:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 372
    .restart local v0       #attempts:I
    .restart local v3       #registeredAttempt:Z
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    move-result-object v5

    const v6, 0x104058e

    invoke-interface {v5, v6, v4}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 373
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method
