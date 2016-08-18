.class public Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x4b455947

.field public static DEBUG:Z = false

.field public static DEBUGXPORT:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final TAG:Ljava/lang/String; = "KeyguardHostView"

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

.field private final mCameraWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

.field private mCheckAppWidgetConsistencyOnBootCompleted:Z

.field private mCleanupAppWidgetsOnBootCompleted:Z

.field protected mClientGeneration:I

.field private mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDisabledFeatures:I

.field protected mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

.field private mEnableFallback:Z

.field protected mFailedAttempts:I

.field private mIsVerifyUnlockOnly:Z

.field private mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

.field private mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mSafeModeEnabled:Z

.field private mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

.field private mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

.field protected mShowSecurityWhenReturn:Z

.field private mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

.field mSwitchPageRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

.field private mTransportState:I

.field private mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserId:I

.field private mUserSetupCompleted:Z

.field private mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

.field private mWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 81
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    .line 82
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    .line 87
    const/4 v5, 0x5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->MAX_WIDGETS:I

    .line 97
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 100
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    .line 101
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    .line 111
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    .line 253
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 476
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    .line 803
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 1164
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    .line 1194
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 1390
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$7;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    .line 148
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "KeyguardHostView"

    const-string v6, "KeyguardHostView()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 156
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserId:I

    .line 158
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 160
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    .line 162
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraDisabled:Z

    .line 165
    :cond_1
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isSafeModeEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    .line 168
    const/4 v3, 0x0

    .line 170
    .local v3, userContext:Landroid/content/Context;
    :try_start_0
    const-string v2, "system"

    .line 171
    .local v2, packageName:Ljava/lang/String;
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "system"

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserId:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 180
    .end local v2           #packageName:Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/appwidget/AppWidgetHost;

    const v6, 0x4b455947

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v5, v3, v6, v7, v8}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 183
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cleanupAppWidgetIds()V

    .line 185
    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 187
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-direct {v5, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 191
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
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getInitialTransportState()V

    .line 197
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-eqz v4, :cond_3

    .line 198
    const-string v4, "KeyguardHostView"

    const-string v5, "Keyguard widgets disabled by safe mode"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 201
    const-string v4, "KeyguardHostView"

    const-string v5, "Keyguard widgets disabled by DPM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_4
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 204
    const-string v4, "KeyguardHostView"

    const-string v5, "Keyguard secure camera disabled by DPM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_5
    return-void

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    move-object v3, p1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAppropriateWidgetPage()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cleanupAppWidgetIds()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    return p1
.end method

.method static synthetic access$500(I)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/appwidget/AppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    return-object v0
.end method

.method private addDefaultStatusWidget(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 1278
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1279
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090072

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1280
    .local v1, statusWidget:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1281
    return-void
.end method

.method private addDefaultWidgets()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1223
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1224
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090074

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1225
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1226
    const v4, 0x1090054

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1227
    .local v0, addWidget:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1228
    const v4, 0x10202b4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1229
    .local v1, addWidgetButton:Landroid/view/View;
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1241
    .end local v0           #addWidget:Landroid/view/View;
    .end local v1           #addWidgetButton:Landroid/view/View;
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cameraDisabledByDpm()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x111

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1243
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->create(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    move-result-object v2

    .line 1245
    .local v2, cameraWidget:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1246
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;)V

    .line 1250
    .end local v2           #cameraWidget:Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V

    .line 1251
    return-void
.end method

.method private addWidget(IIZ)Z
    .locals 5
    .parameter "appId"
    .parameter "pageIndex"
    .parameter "updateDbIfFailed"

    .prologue
    .line 1148
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1149
    .local v0, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 1150
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    .line 1151
    .local v1, view:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(Landroid/appwidget/AppWidgetHostView;I)V

    .line 1152
    const/4 v2, 0x1

    .line 1160
    .end local v1           #view:Landroid/appwidget/AppWidgetHostView;
    :goto_0
    return v2

    .line 1154
    :cond_0
    if-eqz p3, :cond_1

    .line 1155
    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** AppWidgetInfo for app widget id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  was null for user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deleting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1158
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeAppWidget(I)Z

    .line 1160
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addWidgetsFromSettings()V
    .locals 5

    .prologue
    .line 1284
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v1

    .line 1291
    .local v1, insertionIndex:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    .line 1293
    .local v2, widgets:[I
    if-nez v2, :cond_2

    .line 1294
    const-string v3, "KeyguardHostView"

    const-string v4, "Problem reading widgets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1296
    :cond_2
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 1297
    aget v3, v2, v0

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3

    .line 1298
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 1296
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1303
    :cond_3
    aget v3, v2, v0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    goto :goto_2
.end method

.method private allocateIdForDefaultAppWidget()I
    .locals 7

    .prologue
    .line 1311
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1312
    .local v3, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/content/ComponentName;

    const v4, 0x104004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x104004c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    .local v1, defaultAppWidget:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1320
    .local v0, appWidgetId:I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :goto_0
    return v0

    .line 1322
    :catch_0
    move-exception v2

    .line 1323
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when trying to bind default AppWidget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1325
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cameraDisabledByDpm()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupAppWidgetIds()V
    .locals 7

    .prologue
    .line 221
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    .line 242
    :cond_0
    return-void

    .line 225
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    .line 232
    .local v2, appWidgetIdsInKeyguardSettings:[I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v1

    .line 233
    .local v1, appWidgetIdsBoundToHost:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 234
    aget v0, v1, v3

    .line 235
    .local v0, appWidgetId:I
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->contains([II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 236
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found a appWidgetId that\'s not being used by keyguard, deleting id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 233
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static contains([II)Z
    .locals 5
    .parameter "array"
    .parameter "target"

    .prologue
    .line 245
    move-object v0, p0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 246
    .local v3, value:I
    if-ne v3, p1, :cond_0

    .line 247
    const/4 v4, 0x1

    .line 250
    .end local v3           #value:I
    :goto_1
    return v4

    .line 245
    .restart local v3       #value:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v3           #value:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private enableUserSelectorIfNecessary()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1562
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1631
    :cond_0
    :goto_0
    return-void

    .line 1565
    :cond_1
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1566
    .local v3, um:Landroid/os/UserManager;
    if-nez v3, :cond_2

    .line 1567
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1568
    .local v2, t:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1569
    const-string v5, "KeyguardHostView"

    const-string v6, "user service is null."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1574
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v3, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1575
    .local v4, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v4, :cond_3

    .line 1576
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1577
    .restart local v2       #t:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1578
    const-string v5, "KeyguardHostView"

    const-string v6, "list of users is null."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1582
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_3
    const v5, 0x10202e0

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1583
    .local v1, multiUserView:Landroid/view/View;
    if-nez v1, :cond_4

    .line 1584
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1585
    .restart local v2       #t:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1586
    const-string v5, "KeyguardHostView"

    const-string v6, "can\'t find user_selector in layout."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1590
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 1591
    instance-of v5, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v5, :cond_5

    .line 1592
    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    .end local v1           #multiUserView:Landroid/view/View;
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    .line 1593
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1594
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v5, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->addUsers(Ljava/util/Collection;)V

    .line 1595
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    .line 1620
    .local v0, callback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v5, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;)V

    goto :goto_0

    .line 1622
    .end local v0           #callback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;
    .restart local v1       #multiUserView:Landroid/view/View;
    :cond_5
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1623
    .restart local v2       #t:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1624
    if-nez v1, :cond_6

    .line 1625
    const-string v5, "KeyguardHostView"

    const-string v6, "could not find the user_selector."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1627
    :cond_6
    const-string v5, "KeyguardHostView"

    const-string v6, "user_selector is the wrong type."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private ensureTransportPresentOrRemoved(I)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1501
    const v6, 0x1020313

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    move v3, v2

    .line 1502
    .local v3, showing:Z
    :goto_0
    const/4 v6, 0x2

    if-ne p1, v6, :cond_5

    move v4, v2

    .line 1503
    .local v4, visible:Z
    :goto_1
    if-ne p1, v2, :cond_6

    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1504
    .local v2, shouldBeVisible:Z
    :goto_2
    if-nez v3, :cond_8

    if-nez v4, :cond_0

    if-eqz v2, :cond_8

    .line 1505
    :cond_0
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v5, :cond_1

    const-string v5, "KeyguardHostView"

    const-string v6, "add transport"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 1508
    .local v0, lastWidget:I
    const/4 v1, 0x0

    .line 1509
    .local v1, position:I
    if-ltz v0, :cond_2

    .line 1510
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v5

    if-eqz v5, :cond_7

    move v1, v0

    .line 1513
    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1519
    .end local v0           #lastWidget:I
    .end local v1           #position:I
    :cond_3
    :goto_4
    return-void

    .end local v2           #shouldBeVisible:Z
    .end local v3           #showing:Z
    .end local v4           #visible:Z
    :cond_4
    move v3, v5

    .line 1501
    goto :goto_0

    .restart local v3       #showing:Z
    :cond_5
    move v4, v5

    .line 1502
    goto :goto_1

    .restart local v4       #visible:Z
    :cond_6
    move v2, v5

    .line 1503
    goto :goto_2

    .line 1510
    .restart local v0       #lastWidget:I
    .restart local v1       #position:I
    .restart local v2       #shouldBeVisible:Z
    :cond_7
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    .line 1514
    .end local v0           #lastWidget:I
    .end local v1           #position:I
    :cond_8
    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    .line 1515
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v5, :cond_9

    const-string v5, "KeyguardHostView"

    const-string v6, "remove transport"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_9
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeWidget(Landroid/view/View;)V

    .line 1517
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    goto :goto_4
.end method

.method private findCameraPage()Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    .locals 2

    .prologue
    .line 1522
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1523
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1524
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    .line 1527
    :goto_1
    return-object v1

    .line 1522
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1527
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAppropriateWidgetPage(I)I
    .locals 6
    .parameter "musicTransportState"

    .prologue
    .line 1536
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-eqz v3, :cond_2

    .line 1537
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1538
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1539
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-ne v3, v4, :cond_0

    .line 1558
    .end local v0           #childCount:I
    .end local v1           #i:I
    :goto_1
    return v1

    .line 1538
    .restart local v0       #childCount:I
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1544
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1547
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 1548
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "KeyguardHostView"

    const-string v4, "Music playing, show transport"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v1

    goto :goto_1

    .line 1553
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1554
    .local v2, rightMost:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1555
    add-int/lit8 v2, v2, -0x1

    .line 1557
    :cond_5
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Show right-most page "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v1, v2

    .line 1558
    goto :goto_1
.end method

.method private getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I
    .locals 3
    .parameter "dpm"

    .prologue
    .line 413
    const/4 v1, 0x0

    .line 414
    .local v1, disabledFeatures:I
    if-eqz p1, :cond_0

    .line 415
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 416
    .local v0, currentUser:I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 418
    .end local v0           #currentUser:I
    :cond_0
    return v1
.end method

.method private getInitialTransportState()V
    .locals 4

    .prologue
    .line 209
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getCachedDisplayClientState()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    move-result-object v0

    .line 211
    .local v0, dcs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    iget-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->clearing:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    .line 214
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial transport state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

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

    .line 216
    :cond_0
    return-void

    .line 211
    :cond_1
    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getInsertPageIndex()I
    .locals 4

    .prologue
    .line 1267
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const v3, 0x10202b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1268
    .local v0, addWidget:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1269
    .local v1, insertionIndex:I
    if-gez v1, :cond_0

    .line 1270
    const/4 v1, 0x0

    .line 1274
    :goto_0
    return v1

    .line 1272
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getLayoutIdFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .parameter "securityMode"

    .prologue
    .line 1125
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1143
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1126
    :pswitch_0
    const v0, 0x109006b

    goto :goto_0

    .line 1127
    :pswitch_1
    const v0, 0x1090067

    goto :goto_0

    .line 1128
    :pswitch_2
    const v0, 0x1090069

    goto :goto_0

    .line 1129
    :pswitch_3
    const v0, 0x1090066

    goto :goto_0

    .line 1130
    :pswitch_4
    const v0, 0x1090058

    goto :goto_0

    .line 1131
    :pswitch_5
    const v0, 0x1090053

    goto :goto_0

    .line 1133
    :pswitch_6
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_0

    .line 1134
    const v0, 0x109008e

    goto :goto_0

    .line 1136
    :cond_0
    const v0, 0x109006c

    goto :goto_0

    .line 1138
    :pswitch_7
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_1

    .line 1139
    const v0, 0x109008f

    goto :goto_0

    .line 1141
    :cond_1
    const v0, 0x109006f

    goto :goto_0

    .line 1125
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
    .line 1258
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    if-nez v1, :cond_0

    .line 1259
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1260
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    .line 1263
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    return-object v1
.end method

.method private getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    .locals 13
    .parameter "securityMode"

    .prologue
    .line 900
    const-string v10, "KeyguardHostView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSecurityView("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v5

    .line 902
    .local v5, securityViewIdForMode:I
    const/4 v9, 0x0

    .line 903
    .local v9, view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 904
    .local v2, children:I
    const/4 v1, 0x0

    .local v1, child:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 905
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v10, v5, :cond_5

    .line 906
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    check-cast v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 910
    .restart local v9       #view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getLayoutIdFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 911
    .local v4, layoutId:I
    if-nez v9, :cond_3

    if-eqz v4, :cond_3

    .line 912
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 913
    .local v3, inflater:Landroid/view/LayoutInflater;
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "KeyguardHostView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inflating id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    const/4 v11, 0x0

    invoke-virtual {v3, v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 915
    .local v7, v:Landroid/view/View;
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v10, :cond_2

    .line 916
    const v10, 0x10202b9

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewStub;

    move-object v8, v10

    check-cast v8, Landroid/view/ViewStub;

    .line 917
    .local v8, vStub:Landroid/view/ViewStub;
    if-eqz v8, :cond_2

    .line 918
    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 921
    .end local v8           #vStub:Landroid/view/ViewStub;
    :cond_2
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 922
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    move-object v9, v7

    .line 923
    check-cast v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 926
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #v:Landroid/view/View;
    :cond_3
    instance-of v10, v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-eqz v10, :cond_4

    move-object v6, v9

    .line 927
    check-cast v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 928
    .local v6, selectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    const v10, 0x10202b6

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 929
    .local v0, carrierText:Landroid/view/View;
    invoke-virtual {v6, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->setCarrierArea(Landroid/view/View;)V

    .line 932
    .end local v0           #carrierText:Landroid/view/View;
    .end local v6           #selectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    :cond_4
    return-object v9

    .line 904
    .end local v4           #layoutId:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .parameter "securityMode"

    .prologue
    .line 1103
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1121
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1104
    :pswitch_0
    const v0, 0x10202fc

    goto :goto_0

    .line 1105
    :pswitch_1
    const v0, 0x10202e6

    goto :goto_0

    .line 1106
    :pswitch_2
    const v0, 0x10202eb

    goto :goto_0

    .line 1107
    :pswitch_3
    const v0, 0x10202e3

    goto :goto_0

    .line 1108
    :pswitch_4
    const v0, 0x10202be

    goto :goto_0

    .line 1109
    :pswitch_5
    const v0, 0x10202af

    goto :goto_0

    .line 1111
    :pswitch_6
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_0

    .line 1112
    const v0, 0x1020344

    goto :goto_0

    .line 1114
    :cond_0
    const v0, 0x10202fe

    goto :goto_0

    .line 1116
    :pswitch_7
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_1

    .line 1117
    const v0, 0x1020345

    goto :goto_0

    .line 1119
    :cond_1
    const v0, 0x1020300

    goto :goto_0

    .line 1103
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

.method private getWidgetPosition(I)I
    .locals 7
    .parameter "id"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .line 343
    .local v0, appWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 344
    .local v1, children:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 345
    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v2

    .line 346
    .local v2, content:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 353
    .end local v2           #content:Landroid/view/View;
    .end local v3           #i:I
    :goto_1
    return v3

    .line 348
    .restart local v2       #content:Landroid/view/View;
    .restart local v3       #i:I
    :cond_0
    if-nez v2, :cond_1

    .line 350
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** Null content at i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",N="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 353
    .end local v2           #content:Landroid/view/View;
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private static final isMusicPlaying(I)Z
    .locals 1
    .parameter "playbackState"

    .prologue
    .line 307
    packed-switch p0, :pswitch_data_0

    .line 316
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 314
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 307
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
    .line 1049
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1050
    .local v0, mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1063
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

    .line 1052
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    .line 1061
    :goto_0
    return v1

    .line 1055
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    goto :goto_0

    .line 1059
    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    .line 1061
    :pswitch_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1050
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

.method private numWidgets()I
    .locals 4

    .prologue
    .line 1212
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1213
    .local v0, childCount:I
    const/4 v2, 0x0

    .line 1214
    .local v2, widgetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1215
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1216
    add-int/lit8 v2, v2, 0x1

    .line 1214
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1219
    :cond_1
    return v2
.end method

.method private reportFailedUnlockAttempt()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 645
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 646
    .local v4, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v10

    add-int/lit8 v1, v10, 0x1

    .line 648
    .local v1, failedAttempts:I
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "KeyguardHostView"

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

    .line 650
    :cond_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 651
    .local v3, mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v10, :cond_3

    move v7, v8

    .line 653
    .local v7, usingPattern:Z
    :goto_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v2

    .line 656
    .local v2, failedAttemptsBeforeWipe:I
    const/16 v0, 0xf

    .line 659
    .local v0, failedAttemptWarning:I
    if-lez v2, :cond_4

    sub-int v5, v2, v1

    .line 663
    .local v5, remainingBeforeWipe:I
    :goto_1
    const/4 v6, 0x0

    .line 664
    .local v6, showTimeout:Z
    const/4 v10, 0x5

    if-ge v5, v10, :cond_6

    .line 669
    if-lez v5, :cond_5

    .line 670
    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAlmostAtWipeDialog(II)V

    .line 691
    :cond_1
    :goto_2
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    .line 692
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 693
    if-eqz v6, :cond_2

    .line 694
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showTimeoutDialog()V

    .line 696
    :cond_2
    return-void

    .end local v0           #failedAttemptWarning:I
    .end local v2           #failedAttemptsBeforeWipe:I
    .end local v5           #remainingBeforeWipe:I
    .end local v6           #showTimeout:Z
    .end local v7           #usingPattern:Z
    :cond_3
    move v7, v9

    .line 651
    goto :goto_0

    .line 659
    .restart local v0       #failedAttemptWarning:I
    .restart local v2       #failedAttemptsBeforeWipe:I
    .restart local v7       #usingPattern:Z
    :cond_4
    const v5, 0x7fffffff

    goto :goto_1

    .line 673
    .restart local v5       #remainingBeforeWipe:I
    .restart local v6       #showTimeout:Z
    :cond_5
    const-string v8, "KeyguardHostView"

    const-string v9, "Too many unlock attempts; device will be wiped!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showWipeDialog(I)V

    goto :goto_2

    .line 677
    :cond_6
    rem-int/lit8 v10, v1, 0x5

    if-nez v10, :cond_7

    move v6, v8

    .line 679
    :goto_3
    if-eqz v7, :cond_1

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mEnableFallback:Z

    if-eqz v9, :cond_1

    .line 680
    const/16 v9, 0xf

    if-ne v1, v9, :cond_8

    .line 681
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAlmostAtAccountLoginDialog()V

    .line 682
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    move v6, v9

    .line 677
    goto :goto_3

    .line 683
    :cond_8
    const/16 v9, 0x14

    if-lt v1, v9, :cond_1

    .line 684
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v8}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 685
    sget-object v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 687
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private setBackButtonEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 403
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

.method private shouldEnableAddWidget()Z
    .locals 2

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->numWidgets()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 1653
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1654
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x1110024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1656
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 1657
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1658
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
    .line 636
    const/16 v2, 0x1e

    .line 637
    .local v2, timeoutInSeconds:I
    const/16 v0, 0xf

    .line 639
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

    .line 641
    .local v1, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method private showAlmostAtWipeDialog(II)V
    .locals 7
    .parameter "attempts"
    .parameter "remaining"

    .prologue
    .line 624
    const/16 v1, 0x1e

    .line 625
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

    .line 627
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method private showAppropriateWidgetPage()V
    .locals 3

    .prologue
    .line 1473
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    .line 1474
    .local v1, state:I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->ensureTransportPresentOrRemoved(I)V

    .line 1475
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getAppropriateWidgetPage(I)I

    move-result v0

    .line 1476
    .local v0, pageToShow:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 1477
    return-void
.end method

.method private showBackupSecurityScreen()V
    .locals 3

    .prologue
    .line 721
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    const-string v2, "showBackupSecurity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getBackupSecurityMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 723
    .local v0, backup:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 724
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 588
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

    .line 593
    .local v0, dialog:Landroid/app/AlertDialog;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 594
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 596
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 597
    return-void
.end method

.method private showNextSecurityScreenOrFinish(Z)V
    .locals 8
    .parameter "authenticated"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 739
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KeyguardHostView"

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

    .line 740
    :cond_0
    const/4 v1, 0x0

    .line 741
    .local v1, finish:Z
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_4

    .line 742
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 744
    .local v2, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 745
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v2, :cond_3

    .line 746
    const/4 v1, 0x1

    .line 779
    .end local v2           #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :goto_0
    if-eqz v1, :cond_8

    .line 782
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, deferKeyguardDone:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v3, :cond_1

    .line 788
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    move-result v0

    .line 789
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    .line 791
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v3, :cond_2

    .line 792
    if-eqz v0, :cond_7

    .line 793
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDonePending()V

    .line 801
    .end local v0           #deferKeyguardDone:Z
    :cond_2
    :goto_1
    return-void

    .line 748
    .restart local v2       #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 750
    .end local v2           #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_4
    if-eqz p1, :cond_6

    .line 751
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 772
    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad security screen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fail safe"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 757
    :pswitch_0
    const/4 v1, 0x1

    .line 758
    goto :goto_0

    .line 763
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 764
    .restart local v2       #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_5

    .line 765
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 767
    :cond_5
    const/4 v1, 0x1

    .line 769
    goto :goto_0

    .line 777
    .end local v2           #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 795
    .restart local v0       #deferKeyguardDone:Z
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_1

    .line 799
    .end local v0           #deferKeyguardDone:Z
    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    goto :goto_1

    .line 751
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
    .locals 13
    .parameter "securityMode"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 942
    const-string v10, "KeyguardHostView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showSecurityScreen("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v10, :cond_0

    .line 999
    :goto_0
    return-void

    .line 946
    :cond_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v6

    .line 947
    .local v6, oldView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v5

    .line 950
    .local v5, newView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x111000c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 952
    .local v1, fullScreenEnabled:Z
    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v10, :cond_1

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v10, :cond_1

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v10, :cond_9

    :cond_1
    move v3, v9

    .line 955
    .local v3, isSimOrAccount:Z
    :goto_1
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    const/16 v10, 0x8

    :goto_2
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 958
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v10, :cond_3

    .line 959
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-nez v1, :cond_2

    move v8, v9

    :cond_2
    invoke-virtual {v10, v8}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 963
    :cond_3
    if-eqz v6, :cond_4

    .line 964
    invoke-interface {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 965
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 967
    :cond_4
    const/4 v8, 0x2

    invoke-interface {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 968
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 970
    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v4

    .line 971
    .local v4, needsInput:Z
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v8, :cond_5

    .line 972
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v8, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    .line 976
    :cond_5
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 978
    .local v0, childCount:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v11, 0x10a002b

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 980
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v11, 0x10a002c

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 982
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v7

    .line 983
    .local v7, securityViewIdForMode:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v0, :cond_6

    .line 984
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v8, v7, :cond_b

    .line 985
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 990
    :cond_6
    sget-object v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v8, :cond_7

    .line 992
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 994
    :cond_7
    sget-object v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v8

    if-nez v8, :cond_8

    .line 996
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setBackButtonEnabled(Z)V

    .line 998
    :cond_8
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_0

    .end local v0           #childCount:I
    .end local v2           #i:I
    .end local v3           #isSimOrAccount:Z
    .end local v4           #needsInput:Z
    .end local v7           #securityViewIdForMode:I
    :cond_9
    move v3, v8

    .line 952
    goto/16 :goto_1

    .restart local v3       #isSimOrAccount:Z
    :cond_a
    move v10, v8

    .line 955
    goto/16 :goto_2

    .line 983
    .restart local v0       #childCount:I
    .restart local v2       #i:I
    .restart local v4       #needsInput:Z
    .restart local v7       #securityViewIdForMode:I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private showTimeoutDialog()V
    .locals 7

    .prologue
    .line 600
    const/16 v2, 0x1e

    .line 601
    .local v2, timeoutInSeconds:I
    const/4 v1, 0x0

    .line 603
    .local v1, messageId:I
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 615
    :goto_0
    if-eqz v1, :cond_0

    .line 616
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

    .line 619
    .local v0, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    return-void

    .line 605
    :pswitch_0
    const v1, 0x10405a9

    .line 606
    goto :goto_0

    .line 608
    :pswitch_1
    const v1, 0x10405a7

    .line 609
    goto :goto_0

    .line 611
    :pswitch_2
    const v1, 0x10405a8

    goto :goto_0

    .line 603
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
    .line 631
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

    .line 632
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method private updateSecurityView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 438
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 439
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 440
    .local v0, ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 441
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 442
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isBouncing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->showBouncer(I)V

    .line 450
    .end local v0           #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :goto_0
    return-void

    .line 445
    .restart local v0       #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_0
    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    goto :goto_0

    .line 448
    .end local v0           #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_1
    const-string v1, "KeyguardHostView"

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
    .line 431
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 432
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 433
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_0
    return-void
.end method

.method private widgetsDisabledByDpm()Z
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addWidget(Landroid/appwidget/AppWidgetHostView;I)V
    .locals 1
    .parameter "view"
    .parameter "pageIndex"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 474
    return-void
.end method

.method public checkAppWidgetConsistency()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1332
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1333
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1337
    .local v2, childCount:I
    const/4 v6, 0x0

    .line 1338
    .local v6, widgetPageExists:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1339
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v9, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1340
    const/4 v6, 0x1

    .line 1344
    :cond_2
    if-nez v6, :cond_0

    .line 1345
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v4

    .line 1347
    .local v4, insertPageIndex:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v9

    if-nez v9, :cond_6

    move v5, v7

    .line 1348
    .local v5, userAddedWidgetsEnabled:Z
    :goto_2
    const/4 v0, 0x0

    .line 1350
    .local v0, addedDefaultAppWidget:Z
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v9, :cond_3

    .line 1351
    if-eqz v5, :cond_7

    .line 1352
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 1353
    .local v1, appWidgetId:I
    if-eqz v1, :cond_3

    .line 1354
    invoke-direct {p0, v1, v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 1378
    .end local v1           #appWidgetId:I
    :cond_3
    :goto_3
    if-nez v0, :cond_4

    .line 1379
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 1383
    :cond_4
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v7, :cond_0

    if-eqz v5, :cond_0

    .line 1384
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onAddView(Landroid/view/View;I)V

    goto :goto_0

    .line 1338
    .end local v0           #addedDefaultAppWidget:Z
    .end local v4           #insertPageIndex:I
    .end local v5           #userAddedWidgetsEnabled:Z
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .restart local v4       #insertPageIndex:I
    :cond_6
    move v5, v8

    .line 1347
    goto :goto_2

    .line 1359
    .restart local v0       #addedDefaultAppWidget:Z
    .restart local v5       #userAddedWidgetsEnabled:Z
    :cond_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getFallbackAppWidgetId()I

    move-result v1

    .line 1360
    .restart local v1       #appWidgetId:I
    if-nez v1, :cond_8

    .line 1361
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 1362
    if-eqz v1, :cond_8

    .line 1363
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    .line 1366
    :cond_8
    if-eqz v1, :cond_3

    .line 1367
    invoke-direct {p0, v1, v4, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 1368
    if-nez v0, :cond_3

    .line 1369
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1370
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    goto :goto_3
.end method

.method public cleanUp()V
    .locals 4

    .prologue
    .line 1637
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1638
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1639
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 1640
    .local v1, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1638
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1642
    .end local v1           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_0
    return-void
.end method

.method public clearAppWidgetToShow()V
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1040
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1697
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    .line 1698
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 335
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDoneDrawing()V

    .line 339
    :cond_0
    return-void
.end method

.method public getUserActivityTimeout()J
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getUserActivityTimeout()J

    move-result-wide v0

    .line 539
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public goToUserSwitcher()V
    .locals 2

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const v1, 0x10202e2

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 1663
    return-void
.end method

.method public goToWidget(I)V
    .locals 1
    .parameter "appWidgetId"

    .prologue
    .line 1666
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1667
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1668
    return-void
.end method

.method public handleBackKey()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1680
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_0

    .line 1682
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setBackButtonEnabled(Z)V

    .line 1683
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1690
    :goto_0
    return v0

    .line 1686
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_1

    .line 1687
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1690
    goto :goto_0
.end method

.method public handleMenuKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1672
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->shouldEnableMenuKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1673
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    .line 1674
    const/4 v0, 0x1

    .line 1676
    :cond_0
    return v0
.end method

.method public initializeSwitchingUserState(Z)V
    .locals 2
    .parameter "switching"

    .prologue
    .line 515
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V

    .line 518
    :cond_0
    return-void
.end method

.method isMusicPage(I)Z
    .locals 1
    .parameter "pageIndex"

    .prologue
    .line 1531
    if-ltz p1, :cond_0

    const v0, 0x1020313

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 460
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 461
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    .line 462
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 463
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 467
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 469
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 470
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 360
    const v2, 0x10202cc

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 361
    .local v1, deleteDropTarget:Landroid/view/View;
    const v2, 0x10202cd

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .line 362
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;)V

    .line 364
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setDeleteDropTarget(Landroid/view/View;)V

    .line 365
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const/high16 v3, 0x3f00

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setMinScale(F)V

    .line 367
    const v2, 0x10202d0

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 368
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setOnChallengeScrolledListener(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;)V

    .line 371
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setViewStateManager(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V

    .line 372
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 374
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 376
    .local v0, challenge:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->setOnBouncerStateChangedListener(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V

    .line 377
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->getBouncerAnimationDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setBouncerAnimationDuration(I)V

    .line 378
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setPagedView(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V

    .line 379
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setChallengeLayout(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;)V

    .line 380
    const v2, 0x10202cf

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    .line 381
    const v2, 0x10202fc

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 382
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setSecurityViewContainer(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    .line 384
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setBackButtonEnabled(Z)V

    .line 386
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addDefaultWidgets()V

    .line 388
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidgetsFromSettings()V

    .line 389
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v2

    if-nez v2, :cond_1

    .line 390
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setAddWidgetEnabled(Z)V

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 393
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 395
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 397
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 398
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityViews()V

    .line 399
    return-void

    .line 374
    .end local v0           #challenge:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;
    :cond_2
    const v2, 0x10202cb

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    move-object v0, v2

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1445
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;

    if-nez v1, :cond_0

    .line 1446
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1455
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1449
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;

    .line 1450
    .local v0, ss:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1451
    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->transportState:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    .line 1452
    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1453
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestoreInstanceState, transport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 1432
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSaveInstanceState, tstate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 1434
    .local v2, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1436
    .local v1, ss:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v0, 0x1

    .line 1438
    .local v0, showing:Z
    :goto_0
    if-eqz v0, :cond_2

    const/4 v3, 0x2

    :goto_1
    iput v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->transportState:I

    .line 1439
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    iput v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    .line 1440
    return-object v1

    .line 1436
    .end local v0           #showing:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1438
    .restart local v0       #showing:Z
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    goto :goto_1
.end method

.method public onScreenTurnedOff()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1020
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    const-string v2, "screen off, instance %s at %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 1027
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    .line 1028
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 1029
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1030
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 1031
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findCameraPage()Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    move-result-object v0

    .line 1032
    .local v0, cameraPage:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    if-eqz v0, :cond_1

    .line 1033
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onScreenTurnedOff()V

    .line 1035
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 1036
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .prologue
    .line 1003
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardHostView"

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

    .line 1004
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1005
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 1010
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1012
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 1015
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1016
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 325
    .local v0, result:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 326
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 327
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 328
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 329
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 330
    return v0

    :cond_1
    move v0, v1

    .line 328
    goto :goto_0
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    .line 530
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasWindowFocus"

    .prologue
    .line 1459
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 1460
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v2, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_3

    const-string v1, "focused"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    if-eqz v1, :cond_2

    .line 1462
    const v1, 0x10202d0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 1464
    .local v0, slider:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    if-eqz v0, :cond_1

    .line 1465
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setHandleAlpha(F)V

    .line 1466
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 1468
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    .line 1470
    .end local v0           #slider:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    :cond_2
    return-void

    .line 1460
    :cond_3
    const-string v1, "unfocused"

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    .line 888
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const v1, 0x102030c

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 889
    return-void
.end method

.method setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .parameter "utils"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 454
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 455
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityViews()V

    .line 456
    return-void
.end method

.method protected setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 896
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    .line 897
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1044
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardHostView"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1046
    return-void
.end method

.method public showAssistant()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1701
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

    .line 1704
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 1714
    :goto_0
    return-void

    .line 1706
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x10a0027

    const v3, 0x10a0028

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v0, v2, v3, v5, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 1710
    .local v6, opts:Landroid/app/ActivityOptions;
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1712
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

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
    .line 727
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 729
    .local v0, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 730
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v0, :cond_0

    .line 731
    const/4 v1, 0x0

    .line 734
    :goto_0
    return v1

    .line 733
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 734
    const/4 v1, 0x1

    goto :goto_0
.end method

.method showPrimarySecurityScreen(Z)V
    .locals 4
    .parameter "turningOff"

    .prologue
    .line 704
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 705
    .local v0, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

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
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 710
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 712
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 713
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    .line 524
    :cond_0
    return-void
.end method

.method public verifyUnlock()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1083
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1084
    .local v0, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 1085
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    .line 1092
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 1093
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 1097
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    .line 1098
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0
.end method

.method public wakeWhenReadyTq(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 1069
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardHostView"

    const-string v1, "onWakeKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1071
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardHostView"

    const-string v1, "switching screens to unlock screen because wake key was MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1076
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_3

    .line 1077
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->wakeUp()V

    .line 1079
    :cond_3
    return-void

    .line 1074
    :cond_4
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "KeyguardHostView"

    const-string v1, "poking wake lock immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
