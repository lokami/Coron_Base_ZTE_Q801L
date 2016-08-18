.class public Lcom/android/internal/policy/impl/keyguard/MultiWaveView;
.super Landroid/view/View;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;
    }
.end annotation


# static fields
.field private static final CHEVRON_ANIMATION_DURATION:I = 0xbe

.field private static final CHEVRON_INCREMENTAL_DELAY:I = 0x8c

.field protected static final GESTURE_MOVE_THREHOLD:I = 0xa

.field private static final MSG_ONLONGCLICK:I = 0x1f5

.field private static final MSG_UNLOCK:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "MultiWaveView"


# instance fields
.field private color:[I

.field handler:Landroid/os/Handler;

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected isReMoveLongClick:Z

.field private isStartOnLongClick:Z

.field private mChevronAnimationInterpolatorIn:Landroid/animation/TimeInterpolator;

.field private mChevronAnimationInterpolatorOut:Landroid/animation/TimeInterpolator;

.field private mChevronAnimationsIn:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

.field private mChevronAnimationsOut:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

.field private mChevronDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field protected mCurrX:F

.field protected mCurrY:F

.field protected mDistance:F

.field private mFeedbackCount:I

.field private mInitialLayout:Z

.field protected mLastX:F

.field protected mLastY:F

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mWave:Landroid/widget/ImageView;

.field protected mZTEGestureOverlayView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

.field private strokeWidth:[F

.field private waveSourceId:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;Lcom/android/internal/policy/impl/keyguard/MultiWaveView$1;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsOut:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    .line 33
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;Lcom/android/internal/policy/impl/keyguard/MultiWaveView$1;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsIn:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    .line 37
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Ease$Linear;->easeNone:Landroid/animation/TimeInterpolator;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationInterpolatorOut:Landroid/animation/TimeInterpolator;

    .line 38
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Ease$Linear;->easeNone:Landroid/animation/TimeInterpolator;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationInterpolatorIn:Landroid/animation/TimeInterpolator;

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 41
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mFeedbackCount:I

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->imageList:Ljava/util/List;

    .line 43
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mInitialLayout:Z

    .line 47
    new-array v3, v5, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->waveSourceId:[I

    .line 55
    new-array v3, v5, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->color:[I

    .line 60
    new-array v3, v5, [F

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->strokeWidth:[F

    .line 411
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 417
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 432
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->handler:Landroid/os/Handler;

    .line 113
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mContext:Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->loadDrawableArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 115
    .local v0, chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 116
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-direct {v1, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Lcom/android/internal/policy/impl/keyguard/TargetDrawable;)V

    .line 117
    .local v1, drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->color:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPaintColor(I)V

    .line 118
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->strokeWidth:[F

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPaintStrokeWidth(F)V

    .line 119
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    move-object v1, v4

    .end local v1           #drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_1
    return-void

    .line 47
    :array_0
    .array-data 0x4
        0xdft 0x0t 0x8t 0x1t
        0xe0t 0x0t 0x8t 0x1t
        0xdft 0x0t 0x8t 0x1t
    .end array-data

    .line 55
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 60
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->hideChevrons()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->isStartOnLongClick:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->updateChevronPositions(FF)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->startChevronAnimation()V

    return-void
.end method

.method private getInterpolatorInput(F)F
    .locals 0
    .parameter "alpha"

    .prologue
    .line 408
    return p1
.end method

.method private hideChevrons()V
    .locals 6

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 283
    .local v1, chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 284
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 285
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 286
    .local v0, chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 288
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 284
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v0           #chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    return-void
.end method

.method private loadDrawable(I)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 137
    .local v1, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    return-object v1
.end method

.method private loadDrawableArray()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 125
    .local v3, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->waveSourceId:[I

    array-length v0, v5

    .line 126
    .local v0, count:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v1, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 129
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->waveSourceId:[I

    aget v5, v5, v2

    invoke-direct {v4, v3, v5}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 130
    .local v4, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v4           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    return-object v1
.end method

.method private startChevronAnimation()V
    .locals 14

    .prologue
    .line 306
    const/high16 v0, 0x4320

    .line 307
    .local v0, chevronStartDistance:F
    const/high16 v1, 0x4334

    .line 308
    .local v1, chevronStopDistance:F
    const/high16 v7, 0x3f80

    .line 309
    .local v7, startScale:F
    const/high16 v5, 0x4080

    .line 310
    .local v5, endScale:F
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsOut:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 313
    const/4 v2, 0x0

    .local v2, count:I
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 314
    mul-int/lit16 v3, v2, 0x8c

    .line 315
    .local v3, delay:I
    add-int/lit16 v4, v3, 0xbe

    .line 316
    .local v4, delayNext:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 317
    .local v6, icon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-nez v6, :cond_0

    .line 313
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsOut:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    const-wide/16 v9, 0xbe

    const/16 v11, 0xc

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "ease"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationInterpolatorOut:Landroid/animation/TimeInterpolator;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "delay"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "alpha"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_0

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "scaleX"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_1

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, "scaleY"

    aput-object v13, v11, v12

    const/16 v12, 0x9

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_2

    aput-object v13, v11, v12

    const/16 v12, 0xa

    const-string v13, "onUpdate"

    aput-object v13, v11, v12

    const/16 v12, 0xb

    iget-object v13, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v13, v11, v12

    invoke-static {v6, v9, v10, v11}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsOut:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    const-wide/16 v9, 0xbe

    const/16 v11, 0xc

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "ease"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationInterpolatorOut:Landroid/animation/TimeInterpolator;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "delay"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "alpha"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_3

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "scaleX"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_4

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, "scaleY"

    aput-object v13, v11, v12

    const/16 v12, 0x9

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_5

    aput-object v13, v11, v12

    const/16 v12, 0xa

    const-string v13, "onUpdate"

    aput-object v13, v11, v12

    const/16 v12, 0xb

    iget-object v13, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v13, v11, v12

    invoke-static {v6, v9, v10, v11}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 337
    .end local v3           #delay:I
    .end local v4           #delayNext:I
    .end local v6           #icon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsOut:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;->start()V

    .line 338
    return-void

    .line 320
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x20t 0x40t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x20t 0x40t
    .end array-data

    .line 328
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x20t 0x40t
        0x0t 0x0t 0x80t 0x40t
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x20t 0x40t
        0x0t 0x0t 0x80t 0x40t
    .end array-data
.end method

.method private stopChevronAnimation()V
    .locals 13

    .prologue
    .line 340
    const-string v5, "MultiWaveView"

    const-string v6, "stopChevronAnimation"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/high16 v4, 0x3f80

    .line 342
    .local v4, startScale:F
    const/high16 v2, 0x4080

    .line 343
    .local v2, endScale:F
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsIn:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, delay:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, count:I
    :goto_0
    if-ltz v0, :cond_5

    .line 346
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 347
    .local v3, icon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-nez v3, :cond_0

    .line 345
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getScaleX()F

    move-result v5

    const/high16 v6, 0x4020

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getScaleX()F

    move-result v5

    const/high16 v6, 0x4080

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_4

    .line 352
    const-string v5, "MultiWaveView"

    const-string v6, ">>>>>(endScale-startScale)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getScaleX()F

    move-result v5

    const/high16 v6, 0x4080

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    .line 354
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-gt v0, v5, :cond_1

    .line 355
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getScaleX()F

    move-result v5

    const/high16 v6, 0x4080

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 356
    add-int/lit16 v1, v1, 0x8c

    .line 361
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsIn:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    const/high16 v6, 0x433e

    const/high16 v7, 0x3f80

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getAlpha()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->getInterpolatorInput(F)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-long v6, v6

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ease"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationInterpolatorIn:Landroid/animation/TimeInterpolator;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "delay"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "alpha"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x3f80

    aput v12, v10, v11

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "scaleX"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getScaleX()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x4020

    aput v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "scaleY"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getScaleY()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x4020

    aput v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, "onUpdate"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    invoke-static {v3, v6, v7, v8}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsIn:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    const-wide/16 v6, 0xbe

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ease"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationInterpolatorIn:Landroid/animation/TimeInterpolator;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "delay"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/high16 v10, 0x433e

    const/high16 v11, 0x3f80

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getAlpha()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->getInterpolatorInput(F)F

    move-result v11

    mul-float/2addr v10, v11

    int-to-float v11, v1

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "alpha"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "scaleX"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "scaleY"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_2

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, "onUpdate"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    invoke-static {v3, v6, v7, v8}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 358
    :cond_2
    const/high16 v6, 0x430c

    const/high16 v7, 0x433e

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getAlpha()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->getInterpolatorInput(F)F

    move-result v5

    mul-float/2addr v5, v7

    sub-float v5, v6, v5

    float-to-int v5, v5

    add-int/2addr v1, v5

    goto/16 :goto_2

    .line 377
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsIn:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    const/high16 v6, 0x433e

    const/high16 v7, 0x3f80

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getAlpha()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->getInterpolatorInput(F)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-long v6, v6

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ease"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationInterpolatorIn:Landroid/animation/TimeInterpolator;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "alpha"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x3f80

    aput v12, v10, v11

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "scaleX"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getScaleX()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x4020

    aput v12, v10, v11

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "scaleY"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getScaleY()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x4020

    aput v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "onUpdate"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    invoke-static {v3, v6, v7, v8}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsIn:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    const-wide/16 v6, 0xbe

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ease"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationInterpolatorIn:Landroid/animation/TimeInterpolator;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "delay"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/high16 v10, 0x433e

    const/high16 v11, 0x3f80

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getAlpha()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->getInterpolatorInput(F)F

    move-result v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "alpha"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_3

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "scaleX"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_4

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "scaleY"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_5

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, "onUpdate"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    invoke-static {v3, v6, v7, v8}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 394
    :cond_4
    const-string v5, "MultiWaveView"

    const-string v6, "<<<<<<<(endScale-startScale)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsIn:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    const/high16 v6, 0x433e

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getAlpha()F

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->getInterpolatorInput(F)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-long v6, v6

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ease"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationInterpolatorIn:Landroid/animation/TimeInterpolator;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "alpha"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "scaleX"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getScaleX()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x3f80

    aput v12, v10, v11

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "scaleY"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getScaleY()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x3f80

    aput v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "onUpdate"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    invoke-static {v3, v6, v7, v8}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 405
    .end local v3           #icon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsIn:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;->start()V

    .line 406
    return-void

    .line 369
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x20t 0x40t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x20t 0x40t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 384
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x20t 0x40t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x20t 0x40t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private updateChevronPositions(FF)V
    .locals 4
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 272
    .local v0, chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 273
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 274
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 275
    .local v3, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v3, :cond_0

    .line 276
    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionX(F)V

    .line 277
    invoke-virtual {v3, p2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionY(F)V

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v3           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mZTEGestureOverlayView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->isGestureViewEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mZTEGestureOverlayView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    invoke-virtual {v0, p1}, Landroid/gesture/GestureOverlayView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 239
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected hideChevronsAll()V
    .locals 5

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 295
    .local v1, chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 296
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 297
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 298
    .local v0, chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v0, :cond_0

    .line 300
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 296
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    .end local v0           #chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 247
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 248
    .local v2, nchevrons:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 249
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 250
    .local v0, chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 248
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v0           #chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 255
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 259
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 260
    sub-int v3, p4, p2

    .line 261
    .local v3, width:I
    sub-int v0, p5, p3

    .line 262
    .local v0, height:I
    div-int/lit8 v4, v3, 0x2

    int-to-float v1, v4

    .line 263
    .local v1, newWaveCenterX:F
    div-int/lit8 v4, v0, 0x2

    int-to-float v2, v4

    .line 264
    .local v2, newWaveCenterY:F
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mInitialLayout:Z

    if-eqz v4, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->hideChevrons()V

    .line 266
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mInitialLayout:Z

    .line 268
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->updateChevronPositions(FF)V

    .line 269
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 145
    .local v0, action:I
    const/4 v2, 0x0

    .line 146
    .local v2, startX:F
    const/4 v3, 0x0

    .line 148
    .local v3, startY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mCurrX:F

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mCurrY:F

    .line 150
    const-string v4, "MultiWaveView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent,mCurrX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mCurrX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mCurrY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mCurrY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    packed-switch v0, :pswitch_data_0

    .line 230
    :cond_0
    :goto_0
    return v8

    .line 154
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 157
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mCurrX:F

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mLastX:F

    .line 158
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mCurrY:F

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mLastY:F

    .line 159
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mDistance:F

    .line 160
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->isReMoveLongClick:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->startTriggerOnLongClick()V

    .line 168
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsIn:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;->stop()V

    goto :goto_0

    .line 173
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->stopTriggerOnLongClick()V

    .line 175
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->isReMoveLongClick:Z

    if-nez v4, :cond_0

    .line 176
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->isStartOnLongClick:Z

    if-eqz v4, :cond_1

    .line 177
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsOut:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;->cancel()V

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->stopOnLongClick()V

    .line 179
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->stopChevronAnimation()V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsOut:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;->stop()V

    .line 189
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 190
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->reset()V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->hideChevrons()V

    goto :goto_0

    .line 198
    .end local v1           #i:I
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->isReMoveLongClick:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mZTEGestureOverlayView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->isGestureViewEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mDistance:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mCurrX:F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mLastX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mCurrY:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mLastY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mDistance:F

    .line 201
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mDistance:F

    const/high16 v5, 0x4120

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->stopTriggerOnLongClick()V

    .line 203
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->isStartOnLongClick:Z

    if-eqz v4, :cond_4

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->stopOnLongClick()V

    .line 212
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->stopChevronAnimation()V

    .line 221
    :goto_2
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->isReMoveLongClick:Z

    .line 223
    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mCurrX:F

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mLastX:F

    .line 224
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mCurrY:F

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mLastY:F

    goto/16 :goto_0

    .line 214
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronAnimationsOut:Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;->stop()V

    .line 215
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 216
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->reset()V

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 218
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->hideChevronsAll()V

    goto :goto_2

    .line 152
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
    .line 53
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;

    .line 54
    return-void
.end method

.method public setZTEGestureOverlayView(Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mZTEGestureOverlayView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    .line 74
    return-void
.end method

.method public startOnLongClick()V
    .locals 4

    .prologue
    .line 456
    const-string v1, "MultiWaveView"

    const-string v2, "startOnLongClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->isStartOnLongClick:Z

    .line 458
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 459
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x1f4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 460
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x28a

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 461
    return-void
.end method

.method public startTriggerOnLongClick()V
    .locals 4

    .prologue
    .line 470
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 471
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x1f5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 472
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mZTEGestureOverlayView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->isGestureViewEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x46

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public stopOnLongClick()V
    .locals 2

    .prologue
    .line 463
    const-string v0, "MultiWaveView"

    const-string v1, "stopOnLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->isStartOnLongClick:Z

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->handler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    return-void
.end method

.method public stopTriggerOnLongClick()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->handler:Landroid/os/Handler;

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 480
    return-void
.end method
