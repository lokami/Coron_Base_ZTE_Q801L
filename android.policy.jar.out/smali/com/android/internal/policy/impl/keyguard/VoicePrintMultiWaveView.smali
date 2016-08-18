.class public Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;
.super Landroid/view/View;
.source "VoicePrintMultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;,
        Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$OnTriggerListener;
    }
.end annotation


# static fields
.field protected static final CHEVRON_ANIMATION_DURATION:I = 0x3e8

.field protected static final CHEVRON_FEEDBACK_COUNT:I = 0x3

.field protected static final CHEVRON_INCREMENTAL_DELAY:I = 0x14d

.field protected static final MSG_UNLOCK:I = 0x1f4

.field protected static final TAG:Ljava/lang/String; = "VoicePrintMultiWaveView"


# instance fields
.field private color:[I

.field handler:Landroid/os/Handler;

.field protected imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected isStartOnLongClick:Z

.field protected mChevronAnimationInterpolatorIn:Landroid/animation/TimeInterpolator;

.field protected mChevronAnimationInterpolatorOut:Landroid/animation/TimeInterpolator;

.field protected mChevronAnimationsIn:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;

.field protected mChevronAnimationsOut:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;

.field protected mChevronDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mInitialLayout:Z

.field protected mListener:Landroid/animation/Animator$AnimatorListener;

.field protected mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$OnTriggerListener;

.field protected mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field protected mWave:Landroid/widget/ImageView;

.field private strokeWidth:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x3

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronAnimationsOut:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;

    .line 33
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronAnimationsIn:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;

    .line 36
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronAnimationInterpolatorOut:Landroid/animation/TimeInterpolator;

    .line 37
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Ease$Quad;->easeOutIn:Landroid/animation/TimeInterpolator;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronAnimationInterpolatorIn:Landroid/animation/TimeInterpolator;

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->imageList:Ljava/util/List;

    .line 41
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mInitialLayout:Z

    .line 54
    new-array v3, v4, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->color:[I

    .line 59
    new-array v3, v4, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->strokeWidth:[F

    .line 262
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 268
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 288
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->handler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mContext:Landroid/content/Context;

    .line 100
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->loadDrawable(I)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    move-result-object v0

    .line 101
    .local v0, chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 102
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-direct {v1, v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Lcom/android/internal/policy/impl/keyguard/TargetDrawable;)V

    .line 103
    .local v1, drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->color:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPaintColor(I)V

    .line 104
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->strokeWidth:[F

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPaintStrokeWidth(F)V

    .line 105
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .end local v1           #drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    return-void

    .line 54
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 59
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data
.end method


# virtual methods
.method protected getInterpolatorInput(F)F
    .locals 3
    .parameter "alpha"

    .prologue
    const/high16 v2, 0x3f80

    .line 259
    sub-float v0, v2, p1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    return v0
.end method

.method protected hideChevrons()V
    .locals 6

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 188
    .local v1, chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 189
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 190
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 191
    .local v0, chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 193
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 189
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v0           #chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    return-void
.end method

.method protected loadDrawable(I)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 112
    .local v1, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    return-object v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 151
    const-string v3, "VoicePrintMultiWaveView"

    const-string v4, "onDraw"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 153
    .local v2, nchevrons:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 154
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 155
    .local v0, chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v0           #chevron:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
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
    .line 164
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 165
    sub-int v3, p4, p2

    .line 166
    .local v3, width:I
    sub-int v0, p5, p3

    .line 167
    .local v0, height:I
    div-int/lit8 v4, v3, 0x2

    int-to-float v1, v4

    .line 168
    .local v1, newWaveCenterX:F
    div-int/lit8 v4, v0, 0x2

    int-to-float v2, v4

    .line 169
    .local v2, newWaveCenterY:F
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mInitialLayout:Z

    if-eqz v4, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->hideChevrons()V

    .line 171
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mInitialLayout:Z

    .line 173
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->updateChevronPositions(FF)V

    .line 174
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$OnTriggerListener;

    .line 53
    return-void
.end method

.method public startChevronAnimationOut()V
    .locals 15

    .prologue
    .line 198
    const/high16 v0, 0x4320

    .line 199
    .local v0, chevronStartDistance:F
    const/high16 v1, 0x4334

    .line 200
    .local v1, chevronStopDistance:F
    const/high16 v8, 0x3f80

    .line 201
    .local v8, startScale:F
    const/high16 v6, 0x4040

    .line 202
    .local v6, endScale:F
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronAnimationsOut:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 203
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    div-int/lit8 v5, v9, 0x3

    .line 207
    .local v5, directionCount:I
    const/4 v4, 0x0

    .local v4, direction:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 208
    const/4 v2, 0x0

    .local v2, count:I
    :goto_1
    const/4 v9, 0x3

    if-ge v2, v9, :cond_1

    .line 209
    mul-int/lit16 v3, v2, 0x14d

    .line 210
    .local v3, delay:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    mul-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 211
    .local v7, icon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-nez v7, :cond_0

    .line 208
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    :cond_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronAnimationsOut:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;

    const-wide/16 v10, 0x3e8

    const/16 v12, 0x10

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "ease"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronAnimationInterpolatorOut:Landroid/animation/TimeInterpolator;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "delay"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "x"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_0

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const-string v14, "y"

    aput-object v14, v12, v13

    const/4 v13, 0x7

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_1

    aput-object v14, v12, v13

    const/16 v13, 0x8

    const-string v14, "alpha"

    aput-object v14, v12, v13

    const/16 v13, 0x9

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_2

    aput-object v14, v12, v13

    const/16 v13, 0xa

    const-string v14, "scaleX"

    aput-object v14, v12, v13

    const/16 v13, 0xb

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_3

    aput-object v14, v12, v13

    const/16 v13, 0xc

    const-string v14, "scaleY"

    aput-object v14, v12, v13

    const/16 v13, 0xd

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_4

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "onUpdate"

    aput-object v14, v12, v13

    const/16 v13, 0xf

    iget-object v14, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v14, v12, v13

    invoke-static {v7, v10, v11, v12}, Lcom/android/internal/policy/impl/keyguard/Tweener;->toRepeat(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 207
    .end local v3           #delay:I
    .end local v7           #icon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 225
    .end local v2           #count:I
    :cond_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronAnimationsOut:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;->start()V

    .line 226
    return-void

    .line 214
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xc8t 0x42t
        0x0t 0x0t 0xe1t 0x43t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0xc8t 0x42t
        0x0t 0x0t 0xe1t 0x43t
    .end array-data

    :array_2
    .array-data 0x4
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x40t 0x40t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x40t 0x40t
    .end array-data
.end method

.method public startOnLongClick()V
    .locals 4

    .prologue
    .line 302
    const-string v1, "VoicePrintMultiWaveView"

    const-string v2, "startOnLongClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->isStartOnLongClick:Z

    .line 304
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 305
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x1f4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 306
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 307
    return-void
.end method

.method protected stopChevronAnimation()V
    .locals 13

    .prologue
    .line 235
    const/high16 v4, 0x3f80

    .line 236
    .local v4, startScale:F
    const/high16 v2, 0x4040

    .line 237
    .local v2, endScale:F
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronAnimationsIn:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 238
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    const/4 v5, 0x3

    if-ge v0, v5, :cond_1

    .line 239
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 240
    .local v3, icon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    mul-int/lit16 v1, v0, 0x14d

    .line 241
    .local v1, delay:I
    if-nez v3, :cond_0

    .line 238
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronAnimationsIn:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;

    const/high16 v6, 0x447a

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getAlpha()F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->getInterpolatorInput(F)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-long v6, v6

    const/16 v8, 0x10

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ease"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronAnimationInterpolatorIn:Landroid/animation/TimeInterpolator;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "x"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x42c8

    aput v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getX()F

    move-result v12

    aput v12, v10, v11

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "y"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x42c8

    aput v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getY()F

    move-result v12

    aput v12, v10, v11

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "alpha"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "scaleX"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    aput v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getScaleX()F

    move-result v12

    aput v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, "scaleY"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    aput v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getScaleY()F

    move-result v12

    aput v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0xc

    const-string v10, "onUpdate"

    aput-object v10, v8, v9

    const/16 v9, 0xd

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    const/16 v9, 0xe

    const-string v10, "onComplete"

    aput-object v10, v8, v9

    const/16 v9, 0xf

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v10, v8, v9

    invoke-static {v3, v6, v7, v8}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 256
    .end local v1           #delay:I
    .end local v3           #icon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronAnimationsIn:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;->start()V

    .line 257
    return-void
.end method

.method public stopChevronAnimationOut()V
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronAnimationsOut:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;->stop()V

    .line 229
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->reset()V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->hideChevrons()V

    .line 233
    return-void
.end method

.method public stopOnLongClick()V
    .locals 2

    .prologue
    .line 309
    const-string v0, "VoicePrintMultiWaveView"

    const-string v1, "stopOnLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->isStartOnLongClick:Z

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->handler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    return-void
.end method

.method protected updateChevronPositions(FF)V
    .locals 4
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 177
    .local v0, chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 178
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 179
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 180
    .local v3, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionX(F)V

    .line 182
    invoke-virtual {v3, p2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionY(F)V

    .line 178
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v3           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    return-void
.end method
