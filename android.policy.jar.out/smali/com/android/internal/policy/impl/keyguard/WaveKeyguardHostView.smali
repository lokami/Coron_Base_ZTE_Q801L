.class public Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
.source "WaveKeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$7;,
        Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;,
        Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$OnDismissAction;,
        Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$UserSwitcherCallback;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x4b455947

.field public static DEBUG:Z = false

.field public static DEBUGXPORT:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final MODE_FRAME:Ljava/lang/String; = "frame"

.field private static final MODE_WAVE:Ljava/lang/String; = "wave"

.field private static final TAG:Ljava/lang/String; = "WaveKeyguardHostView"

.field static final TRANSPORT_GONE:I = 0x0

.field static final TRANSPORT_INVISIBLE:I = 0x1

.field static final TRANSPORT_VISIBLE:I = 0x2


# instance fields
.field private final MAX_WIDGETS:I

.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppWidgetToShow:I

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field private mCheckAppWidgetConsistencyOnBootCompleted:Z

.field private mCleanupAppWidgetsOnBootCompleted:Z

.field protected mClientGeneration:I

.field private mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDisabledFeatures:I

.field protected mDismissAction:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$OnDismissAction;

.field private mEnableFallback:Z

.field protected mFailedAttempts:I

.field private mIsAddWaveCling:Z

.field private mIsVerifyUnlockOnly:Z

.field private mIsVoicePrint:Z

.field private mIsVoicePrintAniRight:Z

.field private mIsVoicePrintFromBackup:Z

.field private mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

.field private mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

.field private mKeyguardWaveView:Lcom/android/internal/policy/impl/keyguard/KeyguardWaveView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

.field private mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mSafeModeEnabled:Z

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

.field private mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

.field protected mShowSecurityWhenReturn:Z

.field mSwitchPageRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

.field private mTransportState:I

.field private mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserId:I

.field private mUserSetupCompleted:Z

.field private mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

.field private mZTELockMode:Ljava/lang/String;

.field private mZTEScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 82
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    .line 83
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUGXPORT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportState:I

    .line 88
    const/4 v5, 0x5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->MAX_WIDGETS:I

    .line 98
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsAddWaveCling:Z

    .line 103
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 106
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    .line 107
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    .line 118
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    .line 129
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrintFromBackup:Z

    .line 130
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrintAniRight:Z

    .line 243
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 541
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 858
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 1315
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 1530
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$5;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    .line 174
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "WaveKeyguardHostView"

    const-string v6, "KeyguardHostView()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 182
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mUserId:I

    .line 183
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 185
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1

    .line 186
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mDisabledFeatures:I

    .line 187
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCameraDisabled:Z

    .line 190
    :cond_1
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isSafeModeEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSafeModeEnabled:Z

    .line 192
    const/4 v3, 0x0

    .line 194
    .local v3, userContext:Landroid/content/Context;
    :try_start_0
    const-string v2, "system"

    .line 195
    .local v2, packageName:Ljava/lang/String;
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "system"

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mUserId:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 211
    .end local v2           #packageName:Ljava/lang/String;
    :goto_0
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-direct {v5, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 213
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;-><init>(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    .line 215
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_setup_complete"

    const/4 v7, -0x2

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mUserSetupCompleted:Z

    .line 219
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->getInitialTransportState()V

    .line 221
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSafeModeEnabled:Z

    if-eqz v4, :cond_3

    .line 222
    const-string v4, "WaveKeyguardHostView"

    const-string v5, "Keyguard widgets disabled by safe mode"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 225
    const-string v4, "WaveKeyguardHostView"

    const-string v5, "Keyguard widgets disabled by DPM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_4
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 228
    const-string v4, "WaveKeyguardHostView"

    const-string v5, "Keyguard secure camera disabled by DPM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mZTELockMode:Ljava/lang/String;

    .line 231
    return-void

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 201
    move-object v3, p1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->reportFailedUnlockAttempt()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showBackupSecurityScreen()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showAppropriateWidgetPage()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportState:I

    return p1
.end method

.method static synthetic access$300(I)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->isMusicPlaying(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addDefaultStatusWidget(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1409
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mZTEScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    if-nez v1, :cond_0

    .line 1414
    const v1, 0x10202d1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1415
    .local v0, statusWidget:Landroid/view/View;
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    invoke-direct {v1, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mZTEScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    .line 1419
    .end local v0           #statusWidget:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private addDefaultWidgets()V
    .locals 0

    .prologue
    .line 1381
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->enableUserSelectorIfNecessary()V

    .line 1382
    return-void
.end method

.method private enableUserSelectorIfNecessary()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1705
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1774
    :cond_0
    :goto_0
    return-void

    .line 1708
    :cond_1
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1709
    .local v3, um:Landroid/os/UserManager;
    if-nez v3, :cond_2

    .line 1710
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1711
    .local v2, t:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1712
    const-string v5, "WaveKeyguardHostView"

    const-string v6, "user service is null."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1717
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v3, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1718
    .local v4, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v4, :cond_3

    .line 1719
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1720
    .restart local v2       #t:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1721
    const-string v5, "WaveKeyguardHostView"

    const-string v6, "list of users is null."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1725
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_3
    const v5, 0x10202e0

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1726
    .local v1, multiUserView:Landroid/view/View;
    if-nez v1, :cond_4

    .line 1727
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1728
    .restart local v2       #t:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1729
    const-string v5, "WaveKeyguardHostView"

    const-string v6, "can\'t find user_selector in layout."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1733
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 1734
    instance-of v5, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v5, :cond_5

    .line 1735
    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    .end local v1           #multiUserView:Landroid/view/View;
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    .line 1736
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1737
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v5, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->addUsers(Ljava/util/Collection;)V

    .line 1738
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V

    .line 1763
    .local v0, callback:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$UserSwitcherCallback;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v5, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setCallback(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$UserSwitcherCallback;)V

    goto :goto_0

    .line 1765
    .end local v0           #callback:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$UserSwitcherCallback;
    .restart local v1       #multiUserView:Landroid/view/View;
    :cond_5
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1766
    .restart local v2       #t:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1767
    if-nez v1, :cond_6

    .line 1768
    const-string v5, "WaveKeyguardHostView"

    const-string v6, "could not find the user_selector."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1770
    :cond_6
    const-string v5, "WaveKeyguardHostView"

    const-string v6, "user_selector is the wrong type."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private ensureTransportPresentOrRemoved(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1642
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mZTEScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    const v5, 0x1020313

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->getTransportControl(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    move v1, v0

    .line 1643
    .local v1, showing:Z
    :goto_0
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    move v2, v0

    .line 1644
    .local v2, visible:Z
    :goto_1
    if-ne p1, v0, :cond_5

    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->isMusicPlaying(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1645
    .local v0, shouldBeVisible:Z
    :goto_2
    if-nez v1, :cond_6

    if-nez v2, :cond_0

    if-eqz v0, :cond_6

    .line 1646
    :cond_0
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUGXPORT:Z

    if-eqz v3, :cond_1

    const-string v3, "WaveKeyguardHostView"

    const-string v4, "add transport"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mZTEScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->getOrCreateTransportControl()Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->addTransportControl(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)V

    .line 1662
    :cond_2
    :goto_3
    return-void

    .end local v0           #shouldBeVisible:Z
    .end local v1           #showing:Z
    .end local v2           #visible:Z
    :cond_3
    move v1, v3

    .line 1642
    goto :goto_0

    .restart local v1       #showing:Z
    :cond_4
    move v2, v3

    .line 1643
    goto :goto_1

    .restart local v2       #visible:Z
    :cond_5
    move v0, v3

    .line 1644
    goto :goto_2

    .line 1656
    .restart local v0       #shouldBeVisible:Z
    :cond_6
    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 1657
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUGXPORT:Z

    if-eqz v3, :cond_7

    const-string v3, "WaveKeyguardHostView"

    const-string v4, "remove transport"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mZTEScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->getOrCreateTransportControl()Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->removeTransportControl(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)V

    .line 1660
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    goto :goto_3
.end method

.method private getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I
    .locals 3
    .parameter "dpm"

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, disabledFeatures:I
    if-eqz p1, :cond_0

    .line 420
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 421
    .local v0, currentUser:I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 423
    .end local v0           #currentUser:I
    :cond_0
    return v1
.end method

.method private getInitialTransportState()V
    .locals 4

    .prologue
    .line 234
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getCachedDisplayClientState()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    move-result-object v0

    .line 236
    .local v0, dcs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    iget-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->clearing:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportState:I

    .line 239
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WaveKeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial transport state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pbstate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    return-void

    .line 236
    :cond_1
    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->isMusicPlaying(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getLayoutIdFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 7
    .parameter "securityMode"

    .prologue
    const/4 v6, 0x1

    .line 1211
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$7;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1265
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 1215
    :pswitch_0
    const-string v4, "frame"

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mZTELockMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1216
    const v4, 0x1090059

    goto :goto_0

    .line 1218
    :cond_0
    const v4, 0x1090077

    goto :goto_0

    .line 1221
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "default_onehandoperation_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1222
    .local v0, onehandpattern:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "default_onehandoperation_unlock_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1229
    .local v1, onehandpattern_unlock:I
    const v4, 0x1090067

    goto :goto_0

    .line 1232
    .end local v0           #onehandpattern:I
    .end local v1           #onehandpattern_unlock:I
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "default_onehandoperation_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1233
    .local v2, onehandpin:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "default_onehandoperation_unlock_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1240
    .local v3, onehandpin_unlock:I
    const v4, 0x1090069

    goto :goto_0

    .line 1244
    .end local v2           #onehandpin:I
    .end local v3           #onehandpin_unlock:I
    :pswitch_3
    const v4, 0x1090066

    goto :goto_0

    .line 1247
    :pswitch_4
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrint:Z

    if-eqz v4, :cond_1

    .line 1248
    const-string v4, "WaveKeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "test debug voiceunlock getLayoutIdFor using voiceprint securityMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mIsVoicePrint="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrint:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const v4, 0x1090075

    goto/16 :goto_0

    .line 1252
    :cond_1
    const v4, 0x1090058

    goto/16 :goto_0

    .line 1253
    :pswitch_5
    const v4, 0x1090053

    goto/16 :goto_0

    .line 1255
    :pswitch_6
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v4, :cond_2

    .line 1256
    const v4, 0x109008e

    goto/16 :goto_0

    .line 1258
    :cond_2
    const v4, 0x109006c

    goto/16 :goto_0

    .line 1260
    :pswitch_7
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v4, :cond_3

    .line 1261
    const v4, 0x109008f

    goto/16 :goto_0

    .line 1263
    :cond_3
    const v4, 0x109006f

    goto/16 :goto_0

    .line 1211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private getOrCreateTransportControl()Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
    .locals 3

    .prologue
    .line 1389
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    if-nez v1, :cond_0

    .line 1390
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1391
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    .line 1394
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    return-object v1
.end method

.method private getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    .locals 20
    .parameter "securityMode"

    .prologue
    .line 912
    sget-boolean v17, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v17, :cond_0

    const-string v17, "WaveKeyguardHostView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getSecurityView("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v12

    .line 914
    .local v12, securityViewIdForMode:I
    const/16 v16, 0x0

    .line 915
    .local v16, view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 916
    .local v5, children:I
    const/4 v4, 0x0

    .local v4, child:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getId()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v12, :cond_7

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .end local v16           #view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    check-cast v16, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 924
    .restart local v16       #view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->getLayoutIdFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v10

    .line 925
    .local v10, layoutId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 926
    .local v7, inflater:Landroid/view/LayoutInflater;
    if-nez v16, :cond_5

    if-eqz v10, :cond_5

    .line 927
    sget-boolean v17, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v17, :cond_2

    const-string v17, "WaveKeyguardHostView"

    const-string v18, "new view is null, will inflating.."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_2
    sget-boolean v17, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v17, :cond_3

    const-string v17, "WaveKeyguardHostView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "inflating id = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 930
    .local v14, v:Landroid/view/View;
    sget-boolean v17, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v17, :cond_4

    .line 931
    const v17, 0x10202b9

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    move-object/from16 v15, v17

    check-cast v15, Landroid/view/ViewStub;

    .line 932
    .local v15, vStub:Landroid/view/ViewStub;
    if-eqz v15, :cond_4

    .line 933
    invoke-virtual {v15}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 936
    .end local v15           #vStub:Landroid/view/ViewStub;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 937
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    move-object/from16 v16, v14

    .line 938
    check-cast v16, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 941
    .end local v14           #v:Landroid/view/View;
    :cond_5
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v13, v16

    .line 942
    check-cast v13, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 943
    .local v13, selectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    const v17, 0x10202b6

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 944
    .local v3, carrierText:Landroid/view/View;
    invoke-virtual {v13, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->setCarrierArea(Landroid/view/View;)V

    .line 972
    .end local v3           #carrierText:Landroid/view/View;
    .end local v13           #selectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    :cond_6
    :goto_1
    return-object v16

    .line 921
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    .end local v10           #layoutId:I
    :cond_7
    sget-boolean v17, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v17, :cond_8

    const-string v17, "WaveKeyguardHostView"

    const-string v18, "this view is not contain in  mSecurityViewContainer"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 945
    .restart local v7       #inflater:Landroid/view/LayoutInflater;
    .restart local v10       #layoutId:I
    :cond_9
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v11, v16

    .line 946
    check-cast v11, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .line 947
    .local v11, patternView:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->setSecurityMessageDisplay(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;)V

    goto :goto_1

    .line 949
    .end local v11           #patternView:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
    :cond_a
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v8, v16

    .line 950
    check-cast v8, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    .line 951
    .local v8, inputView:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->setSecurityMessageDisplay(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;)V

    goto :goto_1

    .line 952
    .end local v8           #inputView:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
    :cond_b
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v6, v16

    .line 953
    check-cast v6, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    .line 954
    .local v6, faceUnlockView:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->setSecurityMessageDisplay(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;)V

    goto :goto_1

    .line 955
    .end local v6           #faceUnlockView:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;
    :cond_c
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWaveView;

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardFrameView;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 956
    :cond_d
    const-string v17, "WaveKeyguardHostView"

    const-string v18, "is show"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "key_lockscreen_wave_cling"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 959
    .local v9, isShow:Ljava/lang/String;
    const-string v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsAddWaveCling:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    .line 960
    const v17, 0x109007c

    const/16 v18, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v7, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 961
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsAddWaveCling:Z

    .line 964
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mZTEScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mZTEScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    goto/16 :goto_1
.end method

.method private getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 3
    .parameter "securityMode"

    .prologue
    .line 1174
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$7;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1207
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1178
    :pswitch_0
    const-string v0, "frame"

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mZTELockMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    const v0, 0x10202c3

    goto :goto_0

    .line 1181
    :cond_0
    const v0, 0x102031f

    goto :goto_0

    .line 1184
    :pswitch_1
    const v0, 0x10202e6

    goto :goto_0

    .line 1185
    :pswitch_2
    const v0, 0x10202eb

    goto :goto_0

    .line 1186
    :pswitch_3
    const v0, 0x10202e3

    goto :goto_0

    .line 1189
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrint:Z

    if-eqz v0, :cond_1

    .line 1190
    const-string v0, "WaveKeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test debug voiceunlock getSecurityViewIdForMode using voiceprint securityMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mIsVoicePrint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrint:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const v0, 0x1020314

    goto :goto_0

    .line 1194
    :cond_1
    const v0, 0x10202be

    goto :goto_0

    .line 1195
    :pswitch_5
    const v0, 0x10202af

    goto :goto_0

    .line 1197
    :pswitch_6
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_2

    .line 1198
    const v0, 0x1020344

    goto :goto_0

    .line 1200
    :cond_2
    const v0, 0x10202fe

    goto :goto_0

    .line 1202
    :pswitch_7
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_3

    .line 1203
    const v0, 0x1020345

    goto :goto_0

    .line 1205
    :cond_3
    const v0, 0x1020300

    goto :goto_0

    .line 1174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private static final isMusicPlaying(I)Z
    .locals 1
    .parameter "playbackState"

    .prologue
    .line 306
    packed-switch p0, :pswitch_data_0

    .line 315
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 313
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isSecure()Z
    .locals 4

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1111
    .local v0, mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$7;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1124
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown security mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1113
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    .line 1122
    :goto_0
    return v1

    .line 1116
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    goto :goto_0

    .line 1120
    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    .line 1122
    :pswitch_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportFailedUnlockAttempt()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 644
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 645
    .local v4, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v10

    add-int/lit8 v1, v10, 0x1

    .line 647
    .local v1, failedAttempts:I
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "WaveKeyguardHostView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reportFailedPatternAttempt: #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 650
    .local v3, mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v10, :cond_3

    move v7, v8

    .line 652
    .local v7, usingPattern:Z
    :goto_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v2

    .line 655
    .local v2, failedAttemptsBeforeWipe:I
    const/16 v0, 0xf

    .line 658
    .local v0, failedAttemptWarning:I
    if-lez v2, :cond_4

    sub-int v5, v2, v1

    .line 662
    .local v5, remainingBeforeWipe:I
    :goto_1
    const/4 v6, 0x0

    .line 663
    .local v6, showTimeout:Z
    const/4 v10, 0x5

    if-ge v5, v10, :cond_6

    .line 668
    if-lez v5, :cond_5

    .line 669
    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showAlmostAtWipeDialog(II)V

    .line 690
    :cond_1
    :goto_2
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    .line 691
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 692
    if-eqz v6, :cond_2

    .line 693
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showTimeoutDialog()V

    .line 695
    :cond_2
    return-void

    .end local v0           #failedAttemptWarning:I
    .end local v2           #failedAttemptsBeforeWipe:I
    .end local v5           #remainingBeforeWipe:I
    .end local v6           #showTimeout:Z
    .end local v7           #usingPattern:Z
    :cond_3
    move v7, v9

    .line 650
    goto :goto_0

    .line 658
    .restart local v0       #failedAttemptWarning:I
    .restart local v2       #failedAttemptsBeforeWipe:I
    .restart local v7       #usingPattern:Z
    :cond_4
    const v5, 0x7fffffff

    goto :goto_1

    .line 672
    .restart local v5       #remainingBeforeWipe:I
    .restart local v6       #showTimeout:Z
    :cond_5
    const-string v8, "WaveKeyguardHostView"

    const-string v9, "Too many unlock attempts; device will be wiped!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showWipeDialog(I)V

    goto :goto_2

    .line 676
    :cond_6
    rem-int/lit8 v10, v1, 0x5

    if-nez v10, :cond_7

    move v6, v8

    .line 678
    :goto_3
    if-eqz v7, :cond_1

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mEnableFallback:Z

    if-eqz v9, :cond_1

    .line 679
    const/16 v9, 0xf

    if-ne v1, v9, :cond_8

    .line 680
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showAlmostAtAccountLoginDialog()V

    .line 681
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    move v6, v9

    .line 676
    goto :goto_3

    .line 682
    :cond_8
    const/16 v9, 0x14

    if-lt v1, v9, :cond_1

    .line 683
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v8}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 684
    sget-object v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 686
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private setBackButtonEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 410
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 411
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const v1, -0x400001

    and-int/2addr v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    goto :goto_1
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 1800
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1801
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x1110024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1803
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 1804
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1805
    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showAlmostAtAccountLoginDialog()V
    .locals 8

    .prologue
    .line 635
    const/16 v2, 0x1e

    .line 636
    .local v2, timeoutInSeconds:I
    const/16 v0, 0xf

    .line 638
    .local v0, count:I
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x10405ac

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method private showAlmostAtWipeDialog(II)V
    .locals 7
    .parameter "attempts"
    .parameter "remaining"

    .prologue
    .line 623
    const/16 v1, 0x1e

    .line 624
    .local v1, timeoutInSeconds:I
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x10405aa

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method private showAppropriateWidgetPage()V
    .locals 1

    .prologue
    .line 1613
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportState:I

    .line 1614
    .local v0, state:I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->ensureTransportPresentOrRemoved(I)V

    .line 1617
    return-void
.end method

.method private showBackupSecurityScreen()V
    .locals 3

    .prologue
    .line 731
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WaveKeyguardHostView"

    const-string v2, "showBackupSecurity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getBackupSecurityMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 734
    .local v0, backup:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrintFromBackup:Z

    .line 736
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 737
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 587
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 592
    .local v0, dialog:Landroid/app/AlertDialog;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 593
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 595
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 596
    return-void
.end method

.method private showNextSecurityScreenOrFinish(Z)V
    .locals 8
    .parameter "authenticated"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 752
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "WaveKeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showNextSecurityScreenOrFinish("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    const/4 v1, 0x0

    .line 754
    .local v1, finish:Z
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_4

    .line 755
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 757
    .local v2, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 758
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v2, :cond_3

    .line 759
    const/4 v1, 0x1

    .line 792
    .end local v2           #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :goto_0
    if-eqz v1, :cond_8

    .line 795
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, deferKeyguardDone:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$OnDismissAction;

    if-eqz v3, :cond_1

    .line 801
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$OnDismissAction;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$OnDismissAction;->onDismiss()Z

    move-result v0

    .line 802
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$OnDismissAction;

    .line 804
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v3, :cond_2

    .line 805
    if-eqz v0, :cond_7

    .line 806
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDonePending()V

    .line 814
    .end local v0           #deferKeyguardDone:Z
    :cond_2
    :goto_1
    return-void

    .line 761
    .restart local v2       #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 763
    .end local v2           #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_4
    if-eqz p1, :cond_6

    .line 764
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$7;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 785
    const-string v3, "WaveKeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad security screen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fail safe"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 770
    :pswitch_0
    const/4 v1, 0x1

    .line 771
    goto :goto_0

    .line 776
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 777
    .restart local v2       #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_5

    .line 778
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 780
    :cond_5
    const/4 v1, 0x1

    .line 782
    goto :goto_0

    .line 790
    .end local v2           #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 808
    .restart local v0       #deferKeyguardDone:Z
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_1

    .line 812
    .end local v0           #deferKeyguardDone:Z
    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    goto :goto_1

    .line 764
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 12
    .parameter "securityMode"

    .prologue
    const/4 v8, 0x0

    .line 982
    sget-boolean v9, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "WaveKeyguardHostView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showSecurityScreen("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_0
    const-string v9, "WaveKeyguardHostView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showSecurityScreen, mCurrentSecuritySelection is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v9, :cond_2

    .line 1053
    :cond_1
    :goto_0
    return-void

    .line 986
    :cond_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v6

    .line 987
    .local v6, oldView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v5

    .line 988
    .local v5, newView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 991
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x111000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 993
    .local v1, fullScreenEnabled:Z
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v9, :cond_3

    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v9, :cond_3

    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v9, :cond_7

    :cond_3
    const/4 v3, 0x1

    .line 1004
    .local v3, isSimOrAccount:Z
    :goto_1
    if-eqz v6, :cond_4

    .line 1005
    invoke-interface {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 1006
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 1008
    :cond_4
    const/4 v9, 0x2

    invoke-interface {v5, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 1009
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 1011
    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v4

    .line 1012
    .local v4, needsInput:Z
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v9, :cond_5

    .line 1013
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v9, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    .line 1017
    :cond_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1019
    .local v0, childCount:I
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrint:Z

    if-eqz v9, :cond_9

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrintFromBackup:Z

    if-eqz v9, :cond_9

    .line 1020
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrintAniRight:Z

    if-eqz v9, :cond_8

    .line 1021
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v11, 0x10a0069

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1023
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v11, 0x10a006c

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1032
    :goto_2
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrintFromBackup:Z

    .line 1041
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v7

    .line 1042
    .local v7, securityViewIdForMode:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    if-ge v2, v0, :cond_6

    .line 1043
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v8, v7, :cond_a

    .line 1044
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 1049
    :cond_6
    sget-object v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v8, :cond_1

    .line 1051
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$OnDismissAction;)V

    goto/16 :goto_0

    .end local v0           #childCount:I
    .end local v2           #i:I
    .end local v3           #isSimOrAccount:Z
    .end local v4           #needsInput:Z
    .end local v7           #securityViewIdForMode:I
    :cond_7
    move v3, v8

    .line 993
    goto :goto_1

    .line 1026
    .restart local v0       #childCount:I
    .restart local v3       #isSimOrAccount:Z
    .restart local v4       #needsInput:Z
    :cond_8
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v11, 0x10a006b

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1028
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v11, 0x10a006a

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 1034
    :cond_9
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v10, 0x10a002b

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1036
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v10, 0x10a002c

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 1042
    .restart local v2       #i:I
    .restart local v7       #securityViewIdForMode:I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private showTimeoutDialog()V
    .locals 7

    .prologue
    .line 599
    const/16 v2, 0x1e

    .line 600
    .local v2, timeoutInSeconds:I
    const/4 v1, 0x0

    .line 602
    .local v1, messageId:I
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$7;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 614
    :goto_0
    if-eqz v1, :cond_0

    .line 615
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    return-void

    .line 604
    :pswitch_0
    const v1, 0x10405a9

    .line 605
    goto :goto_0

    .line 607
    :pswitch_1
    const v1, 0x10405a7

    .line 608
    goto :goto_0

    .line 610
    :pswitch_2
    const v1, 0x10405a8

    goto :goto_0

    .line 602
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showWipeDialog(I)V
    .locals 6
    .parameter "attempts"

    .prologue
    .line 630
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x10405ab

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method private updateSecurityView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 444
    const-string v1, "WaveKeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSecurityView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 446
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 447
    .local v0, ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 448
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 449
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isBouncing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    invoke-interface {v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->showBouncer(I)V

    .line 457
    .end local v0           #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :goto_0
    return-void

    .line 452
    .restart local v0       #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_0
    invoke-interface {v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    goto :goto_0

    .line 455
    .end local v0           #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_1
    const-string v1, "WaveKeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a KeyguardSecurityView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSecurityViews()V
    .locals 3

    .prologue
    .line 437
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 438
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 439
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_0
    return-void
.end method

.method private verifyAlarming()V
    .locals 2

    .prologue
    .line 1168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.alarmclock.stopalarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1169
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1170
    return-void
.end method


# virtual methods
.method public checkAppWidgetConsistency()V
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    .line 1528
    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    .line 1778
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 1779
    .local v0, view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 1780
    const-string v1, "WaveKeyguardHostView"

    const-string v2, "KeyguardWaveView cleanUp "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->cleanUp()V

    .line 1784
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_1

    .line 1785
    const-string v1, "WaveKeyguardHostView"

    const-string v2, "KeyguardWaveView mMessageArea cleanup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->cleanUp()V

    .line 1789
    :cond_1
    return-void
.end method

.method public clearAppWidgetToShow()V
    .locals 1

    .prologue
    .line 1095
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mAppWidgetToShow:I

    .line 1096
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1840
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    .line 1841
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 335
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 336
    const-string v0, "WaveKeyguardHostView"

    const-string v1, "dispatchDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDoneDrawing()V

    .line 340
    :cond_0
    return-void
.end method

.method public getUserActivityTimeout()J
    .locals 2

    .prologue
    .line 538
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public handleBackKey()Z
    .locals 1

    .prologue
    .line 1833
    const/4 v0, 0x0

    return v0
.end method

.method public handleMenuKey()Z
    .locals 1

    .prologue
    .line 1825
    const/4 v0, 0x0

    return v0
.end method

.method public initializeSwitchingUserState(Z)V
    .locals 2
    .parameter "switching"

    .prologue
    .line 515
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V

    .line 518
    :cond_0
    return-void
.end method

.method public isVoicePrintUnlockEnabled()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isVoicePrintUnlockEnabled()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 467
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 469
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 470
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 474
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 476
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 477
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 381
    const v0, 0x10202cf

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    .line 382
    const v0, 0x10202fc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setSecurityViewContainer(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    .line 384
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 386
    const v0, 0x102028e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    .line 388
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 391
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->setBackButtonEnabled(Z)V

    .line 393
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->addDefaultStatusWidget(I)V

    .line 394
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->addDefaultWidgets()V

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->checkAppWidgetConsistency()V

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 405
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 406
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->updateSecurityViews()V

    .line 407
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 296
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    and-int/2addr v1, v0

    packed-switch v1, :pswitch_data_0

    .line 301
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 298
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1584
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WaveKeyguardHostView"

    const-string v2, "onRestoreInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_0
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;

    if-nez v1, :cond_1

    .line 1586
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1595
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1589
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;

    .line 1590
    .local v0, ss:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1591
    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;->transportState:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportState:I

    .line 1592
    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;->appWidgetToShow:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mAppWidgetToShow:I

    .line 1593
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "WaveKeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestoreInstanceState, transport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 1572
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "WaveKeyguardHostView"

    const-string v4, "onSaveInstanceState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 1574
    .local v2, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1576
    .local v1, ss:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 1577
    .local v0, showing:Z
    :goto_0
    if-eqz v0, :cond_2

    const/4 v3, 0x2

    :goto_1
    iput v3, v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;->transportState:I

    .line 1578
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mAppWidgetToShow:I

    iput v3, v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;->appWidgetToShow:I

    .line 1579
    return-object v1

    .line 1576
    .end local v0           #showing:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1577
    .restart local v0       #showing:Z
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTransportState:I

    goto :goto_1
.end method

.method public onScreenTurnedOff()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1076
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WaveKeyguardHostView"

    const-string v1, "screen off, instance %s at %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 1084
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->checkAppWidgetConsistency()V

    .line 1085
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1086
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 1091
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 1092
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .prologue
    .line 1057
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WaveKeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen on, instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1059
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 1060
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mZTEScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mZTEScrollerManager:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->startOnResumeSnapScreen()V

    .line 1066
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1068
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_2

    .line 1069
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 1071
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1072
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 321
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 323
    .local v0, result:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 324
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 325
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 326
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 327
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 329
    return v0

    :cond_1
    move v0, v1

    .line 326
    goto :goto_0
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    .line 529
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 1599
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 1610
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVerifyUnlockOnly:Z

    .line 901
    return-void
.end method

.method public setIsVoicePrintAniRight(Z)V
    .locals 0
    .parameter "isAniRight"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrintAniRight:Z

    .line 139
    return-void
.end method

.method setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .parameter "utils"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 461
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 462
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->updateSecurityViews()V

    .line 463
    return-void
.end method

.method protected setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$OnDismissAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 908
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$OnDismissAction;

    .line 909
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1100
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WaveKeyguardHostView"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrint:Z

    .line 1103
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrintAniRight:Z

    .line 1104
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrintFromBackup:Z

    .line 1106
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1107
    return-void
.end method

.method public showAssistant()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1844
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v5, -0x2

    invoke-virtual {v0, v2, v3, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 1847
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 1857
    :goto_0
    return-void

    .line 1849
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x10a0027

    const v3, 0x10a0028

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v0, v2, v3, v5, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 1853
    .local v6, opts:Landroid/app/ActivityOptions;
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1855
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    const/4 v2, 0x0

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivityWithAnimation(Landroid/content/Intent;ZLandroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showNextSecurityScreenIfPresent()Z
    .locals 2

    .prologue
    .line 740
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 742
    .local v0, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 743
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v0, :cond_0

    .line 744
    const/4 v1, 0x0

    .line 747
    :goto_0
    return v1

    .line 746
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 747
    const/4 v1, 0x1

    goto :goto_0
.end method

.method showPrimarySecurityScreen(Z)V
    .locals 4
    .parameter "turningOff"

    .prologue
    .line 703
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 704
    .local v0, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WaveKeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPrimarySecurityScreen, securityMode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "WaveKeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_1
    if-nez p1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 711
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateForVoicePrint(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 712
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v0, :cond_3

    .line 713
    const-string v1, "WaveKeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test debug voiceunlock showPrimarySecurityScreen 000  is VoicePrint!!!,securityMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mIsVoicePrint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrint:Z

    .line 722
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 723
    return-void

    .line 716
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 717
    const-string v1, "WaveKeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test debug voiceunlock showPrimarySecurityScreen 111 is Not VoicePrint!!!, securityMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mIsVoicePrint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVoicePrint:Z

    goto :goto_0
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    .line 523
    :cond_0
    return-void
.end method

.method public verifyUnlock()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1144
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1145
    .local v0, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 1146
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    .line 1153
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 1159
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->verifyAlarming()V

    .line 1161
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mIsVerifyUnlockOnly:Z

    .line 1162
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0
.end method

.method public wakeWhenReadyTq(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 1130
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WaveKeyguardHostView"

    const-string v1, "onWakeKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1132
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "WaveKeyguardHostView"

    const-string v1, "switching screens to unlock screen because wake key was MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1137
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_3

    .line 1138
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->wakeUp()V

    .line 1140
    :cond_3
    return-void

    .line 1135
    :cond_4
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "WaveKeyguardHostView"

    const-string v1, "poking wake lock immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
