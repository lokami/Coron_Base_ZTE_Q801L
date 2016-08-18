.class public Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;
.super Landroid/widget/FrameLayout;
.source "UnlockViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$TweenAnimationCallback;


# static fields
.field protected static final GESTURE_MOVE_THREHOLD:I = 0xa

.field private static final MSG_ONLONGCLICK:I = 0x66

.field private static final MSG_TWEEN_ANIM:I = 0x64

.field private static final MSG_UNLOCK:I = 0x65

.field private static final TAG:Ljava/lang/String; = "UnlockViewManager"

.field private static final VIBRATE_DURATION_TIME:I = 0x14


# instance fields
.field handler:Landroid/os/Handler;

.field private isFirstLayout:Z

.field protected isReMoveLongClick:Z

.field private isStartParticleAnimation:Z

.field private mAniParticles:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field protected mCurrX:F

.field protected mCurrY:F

.field protected mDistance:F

.field private mFrameAnimationView:Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;

.field protected mLastX:F

.field protected mLastY:F

.field private mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;

.field private mRotateView:Landroid/widget/ImageView;

.field private mScaleView:Landroid/widget/ImageView;

.field private mSourceHight:I

.field private mSourceWidth:I

.field private mTweenAnimationView:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;

.field private mVibrator:Landroid/os/Vibrator;

.field protected mZTEGestureOverlayView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

.field private startX:F

.field private startY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isFirstLayout:Z

    .line 221
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->handler:Landroid/os/Handler;

    .line 59
    const-string v0, "UnlockViewManager"

    const-string v1, "UnlockViewManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mFrameAnimationView:Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;

    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mFrameAnimationView:Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->loadBitmap()V

    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mFrameAnimationView:Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->getmAniParticles()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/Drawable;

    .line 64
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mTweenAnimationView:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;

    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mTweenAnimationView:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->setTweenAnimationCallback(Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$TweenAnimationCallback;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mSourceWidth:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mSourceHight:I

    .line 68
    const-string v0, "UnlockViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSourceWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mSourceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mSourceHight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mSourceHight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mVibrator:Landroid/os/Vibrator;

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mScaleView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mRotateView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mTweenAnimationView:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->updateSourcePositions(FF)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startParticleAnimation()V

    return-void
.end method

.method private setupView()V
    .locals 4

    .prologue
    .line 75
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mRotateView:Landroid/widget/ImageView;

    .line 76
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mScaleView:Landroid/widget/ImageView;

    .line 77
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mRotateView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mScaleView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mSourceWidth:I

    .line 81
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mSourceHight:I

    .line 82
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mScaleView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mTweenAnimationView:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mScaleView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->setView(Landroid/view/View;)V

    .line 84
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mTweenAnimationView:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->createAnimation()V

    .line 85
    const-string v1, "UnlockViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSourceWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mSourceWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mSourceHight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mSourceHight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method private startParticleAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 212
    const-string v1, "UnlockViewManager"

    const-string v2, "startParticleAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    .line 214
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mScaleView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mRotateView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 217
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 218
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 219
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 220
    return-void
.end method

.method private stopParticleAnimation()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "UnlockViewManager"

    const-string v1, "stopParticleAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mRotateView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    return-void
.end method

.method private updateSourcePositions(FF)V
    .locals 3
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 192
    const-string v0, "UnlockViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSourcePositions centerX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "centerY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 203
    return-void
.end method

.method private vibrate()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 104
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    .local v0, hapticEnabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 110
    :cond_0
    return-void

    .line 104
    .end local v0           #hapticEnabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mZTEGestureOverlayView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->isGestureViewEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mZTEGestureOverlayView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    invoke-virtual {v0, p1}, Landroid/gesture/GestureOverlayView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 186
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->vibrate()V

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;->onFinishAnimation()V

    .line 251
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 92
    const v1, 0x10202c6

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mRotateView:Landroid/widget/ImageView;

    .line 93
    const v1, 0x10202c7

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mScaleView:Landroid/widget/ImageView;

    .line 94
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mScaleView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mScaleView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mTweenAnimationView:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mScaleView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->setView(Landroid/view/View;)V

    .line 98
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mTweenAnimationView:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->createAnimation()V

    .line 101
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 102
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x0

    .line 115
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 116
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startX:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startY:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 117
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startX:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mSourceWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 118
    .local v3, mLeft:I
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startY:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mSourceHight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v5, v6

    .line 119
    .local v5, mTop:I
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startX:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mSourceWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v4, v6

    .line 120
    .local v4, mRight:I
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startY:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mSourceHight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v2, v6

    .line 121
    .local v2, mBottom:I
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mSourceWidth:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mSourceHight:I

    if-lez v6, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 124
    .local v0, child:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 125
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v0           #child:I
    .end local v1           #i:I
    .end local v2           #mBottom:I
    .end local v3           #mLeft:I
    .end local v4           #mRight:I
    .end local v5           #mTop:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 135
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCurrX:F

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCurrY:F

    .line 137
    const-string v1, "UnlockViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent,mCurrX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCurrX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mCurrY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCurrY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    packed-switch v0, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    return v5

    .line 141
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startX:F

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startY:F

    .line 144
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCurrX:F

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mLastX:F

    .line 145
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCurrY:F

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mLastY:F

    .line 146
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mDistance:F

    .line 147
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isReMoveLongClick:Z

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startTriggerOnLongClick()V

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->stopTriggerOnLongClick()V

    .line 155
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    if-eqz v1, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->stopParticleAnimation()V

    goto :goto_0

    .line 160
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isReMoveLongClick:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mZTEGestureOverlayView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->isGestureViewEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mDistance:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCurrX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mLastX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCurrY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mLastY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mDistance:F

    .line 163
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mDistance:F

    const/high16 v2, 0x4120

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->stopTriggerOnLongClick()V

    .line 165
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    if-eqz v1, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->stopParticleAnimation()V

    .line 168
    :cond_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isReMoveLongClick:Z

    .line 170
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCurrX:F

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mLastX:F

    .line 171
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCurrY:F

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mLastY:F

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;

    .line 56
    return-void
.end method

.method public setZTEGestureOverlayView(Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mZTEGestureOverlayView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    .line 52
    return-void
.end method

.method public startTriggerOnLongClick()V
    .locals 4

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->vibrate()V

    .line 255
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 256
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mZTEGestureOverlayView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->isGestureViewEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x46

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public stopTriggerOnLongClick()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    return-void
.end method
