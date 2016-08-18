.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardUnlockView"


# instance fields
.field private isUpdateIcon:Z

.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field private mFadeView:Landroid/view/View;

.field private mGestureView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsBouncing:Z

.field private mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMultiWaveView:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

.field private mSearchDisabled:Z

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mUnlockPrompt:Landroid/widget/TextView;

.field private mZTEWaveScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 85
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 109
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 110
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->updateTargets()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateTargets()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "KeyguardUnlockView"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mZTEWaveScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->cleanUp()V

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->cleanUp()V

    .line 183
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public gotoUnlock()V
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_lockscreen_wave_cling"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 204
    :cond_0
    return-void
.end method

.method public hideBouncer(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mIsBouncing:Z

    .line 200
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public onFinishAnimation()V
    .locals 0

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->gotoUnlock()V

    .line 211
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 117
    const v1, 0x10202c8

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mUnlockPrompt:Landroid/widget/TextView;

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_lockscreen_wave_cling"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, isShowUnlockPrompt:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mUnlockPrompt:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_0
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mZTEWaveScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;

    .line 123
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->updateTargets()V

    .line 125
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->onPause()V

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mZTEWaveScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->onPause()V

    .line 165
    return-void
.end method

.method public onResume(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->queryAndUpdateMissedNumber()V

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    move-result-object v0

    .line 173
    .local v0, mIntelligentReminder:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->configTimeReminder()V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->configReminder(I)V

    .line 175
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->performReminder()V

    .line 177
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mZTEWaveScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->onResume()V

    .line 178
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 208
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 153
    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .locals 0
    .parameter "carrierArea"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    .line 129
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mZTEWaveScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V

    .line 144
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 148
    return-void
.end method

.method public showBouncer(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mIsBouncing:Z

    .line 194
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method
