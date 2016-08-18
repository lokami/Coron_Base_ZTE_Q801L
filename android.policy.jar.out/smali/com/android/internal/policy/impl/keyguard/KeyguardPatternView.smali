.class public Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
.super Landroid/widget/LinearLayout;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "SecurityPatternView"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_FIRST_DOTS_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58


# instance fields
.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEcaView:Landroid/view/View;

.field private mEnableFallback:Z

.field private mForgotPatternButton:Landroid/widget/Button;

.field protected mIsSingleLeft:Z

.field protected mIsSingleOperation:Z

.field private mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

.field private final mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field protected mParent:Landroid/widget/ViewFlipper;

.field protected mPatternLeftButton:Landroid/view/View;

.field protected mPatternRightButton:Landroid/view/View;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mTempRect:Landroid/graphics/Rect;

.field protected mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 80
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 85
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 120
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsSingleOperation:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsSingleLeft:Z

    .line 108
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 109
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return p1
.end method

.method private displayDefaultSecurityMessage()V
    .locals 5

    .prologue
    const v4, 0x104034a

    const/4 v3, 0x1

    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, v4, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 297
    const-string v0, "KeyguardPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test debug voiceprint getMaxBiometricUnlockAttemptsReached test 000,mTopParent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->isVoicePrintUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x10405d3

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 300
    const-string v0, "KeyguardPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test debug voiceprint getMaxBiometricUnlockAttemptsReached test 111,mTopParent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, v4, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 303
    const-string v0, "KeyguardPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test debug voiceprint getMaxBiometricUnlockAttemptsReached test 222,mTopParent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x1040592

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 437
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 438
    .local v6, elapsedRealtime:J
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    if-eqz v0, :cond_0

    .line 439
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    .line 442
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 464
    return-void
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 382
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;)V

    .line 383
    .local v0, accountAnalyzer:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->start()V

    .line 384
    return-void
.end method

.method private updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/16 v2, 0x8

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 235
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardPatternView$FooterMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 238
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 242
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 246
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->cleanUp()V

    .line 320
    return-void
.end method

.method protected findParents()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mParent:Landroid/widget/ViewFlipper;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mParent:Landroid/widget/ViewFlipper;

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mParent:Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    if-nez v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mParent:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 135
    .local v0, parent:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    if-nez v1, :cond_1

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 138
    :cond_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    if-eqz v1, :cond_2

    .line 139
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    .end local v0           #parent:Landroid/view/View;
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    .line 142
    :cond_2
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 501
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findParents()V

    .line 130
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 147
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 148
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v3, :cond_3

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 151
    const v3, 0x10202e7

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 152
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 153
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 154
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;)V

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 157
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 160
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 162
    const v3, 0x10202bd

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    .line 164
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 165
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    const v6, 0x104058d

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_0
    invoke-virtual {p0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 175
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->maybeEnableFallback(Landroid/content/Context;)V

    .line 179
    const v3, 0x10202b6

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 180
    const v3, 0x10202bf

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, bouncerFrameView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 186
    :cond_1
    const v3, 0x10202e9

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternLeftButton:Landroid/view/View;

    .line 187
    const v3, 0x10202ea

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternRightButton:Landroid/view/View;

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "default_onehandoperation_on"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 189
    .local v1, onehand:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "default_onehandoperation_unlock_on"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 190
    .local v2, onehand_unlock:I
    const-string v3, "KeyguardPatternView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "test gesturelockscreen onFinishInflate Constructor,onehand="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",onehand_unlock="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-ne v1, v4, :cond_5

    if-ne v2, v4, :cond_5

    .line 192
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsSingleOperation:Z

    .line 193
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsSingleLeft:Z

    .line 197
    :goto_2
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsSingleOperation:Z

    .line 198
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternLeftButton:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternRightButton:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 199
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsSingleOperation:Z

    if-eqz v3, :cond_7

    .line 200
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsSingleLeft:Z

    if-eqz v3, :cond_6

    .line 201
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternLeftButton:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternRightButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 207
    :goto_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternLeftButton:Landroid/view/View;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternRightButton:Landroid/view/View;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_2
    :goto_4
    return-void

    .line 148
    .end local v0           #bouncerFrameView:Landroid/view/View;
    .end local v1           #onehand:I
    .end local v2           #onehand_unlock:I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0

    :cond_4
    move v3, v5

    .line 157
    goto/16 :goto_1

    .line 195
    .restart local v0       #bouncerFrameView:Landroid/view/View;
    .restart local v1       #onehand:I
    .restart local v2       #onehand_unlock:I
    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsSingleOperation:Z

    goto :goto_2

    .line 204
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternRightButton:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternLeftButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 223
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternLeftButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternRightButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsSingleOperation:Z

    goto :goto_4
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->onPause()V

    .line 478
    return-void
.end method

.method public onResume(I)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->reset()V

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->queryAndUpdateMissedNumber()V

    .line 484
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 255
    .local v2, result:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long v0, v4, v6

    .line 256
    .local v0, elapsed:J
    if-eqz v2, :cond_0

    const-wide/16 v4, 0x1af4

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 259
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 260
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 261
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 262
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 263
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 264
    return v2

    :cond_2
    move v2, v3

    .line 262
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 325
    if-eqz p1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->reset()V

    .line 329
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 270
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 271
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 274
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 275
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 276
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    .line 282
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->VerifyUnlocked:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    .line 292
    :goto_1
    return-void

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    goto :goto_0

    .line 284
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 287
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_1

    .line 289
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_1
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 114
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 118
    return-void
.end method

.method public setSecurityMessageDisplay(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;)V
    .locals 0
    .parameter "messageDisplay"

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 505
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 495
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method
