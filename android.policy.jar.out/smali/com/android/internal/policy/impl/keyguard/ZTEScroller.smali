.class public Lcom/android/internal/policy/impl/keyguard/ZTEScroller;
.super Landroid/view/ViewGroup;
.source "ZTEScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/ZTEScroller$1;,
        Lcom/android/internal/policy/impl/keyguard/ZTEScroller$SavedState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INVALID_SCREEN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ZTEScroller"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private SNAP_VELOCITY:I

.field private mAllowLongPress:Z

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

.field private mContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field protected mCurrentScreen:I

.field private mFirstLayout:Z

.field private mKeyguardNewEventView:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mOrientation:I

.field protected mScroller:Landroid/widget/Scroller;

.field protected mTopOffset:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTransportControlView:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mwrap_content:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->SNAP_VELOCITY:I

    .line 37
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mFirstLayout:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mNextScreen:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTouchState:I

    .line 67
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mOrientation:I

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 73
    .local v1, resources:Landroid/content/res/Resources;
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTopOffset:I

    .line 74
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mOrientation:I

    .line 75
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 76
    .local v2, scroller:Landroid/widget/Scroller;
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mScroller:Landroid/widget/Scroller;

    .line 78
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 79
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTouchSlop:I

    .line 80
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mMaximumVelocity:I

    .line 81
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->SNAP_VELOCITY:I

    .line 82
    return-void
.end method

.method private isKeyguardNewEventViewVisible()Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mKeyguardNewEventView:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private snapToDestination()V
    .locals 2

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->getWhichScreen()I

    move-result v0

    .line 309
    .local v0, whichScreen:I
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->snapToScreen(IZ)V

    .line 310
    return-void
.end method


# virtual methods
.method public clearChildrenCache()V
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 182
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 183
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollX:I

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollY:I

    .line 333
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mNextScreen:I

    if-eq v0, v3, :cond_0

    .line 335
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mNextScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mCurrentScreen:I

    .line 336
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTouchState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 337
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mNextScreen:I

    .line 338
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->clearChildrenCache()V

    .line 339
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method public enableChildrenCache(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x1

    .line 151
    if-le p1, p2, :cond_0

    .line 152
    move v2, p1

    .line 153
    .local v2, mid:I
    move p1, p2

    .line 154
    move p2, v2

    .line 156
    .end local v2           #mid:I
    :cond_0
    const/4 v3, 0x0

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 157
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 158
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 159
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 160
    .local v1, layout:Landroid/view/ViewGroup;
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 161
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->setChildrenDrawingCacheEnabled(Z)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v1           #layout:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mCurrentScreen:I

    return v0
.end method

.method public getNextScreen()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mNextScreen:I

    return v0
.end method

.method public getWhichScreen()I
    .locals 5

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 316
    .local v1, screenWidth:I
    iget v3, p0, Landroid/view/View;->mScrollX:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    div-int v2, v3, v1

    .line 317
    .local v2, whichScreen:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 319
    .local v0, childCount:I
    if-gez v2, :cond_1

    .line 320
    const/4 v2, 0x0

    .line 325
    :cond_0
    :goto_0
    return v2

    .line 322
    :cond_1
    if-lt v2, v0, :cond_0

    .line 323
    add-int/lit8 v2, v0, -0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 87
    .local v0, action:I
    const/4 v9, 0x2

    if-ne v0, v9, :cond_1

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTouchState:I

    if-eqz v9, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v11

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 93
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 95
    .local v6, y:F
    packed-switch v0, :pswitch_data_0

    .line 146
    :cond_2
    :goto_1
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTouchState:I

    if-nez v9, :cond_0

    move v11, v10

    goto :goto_0

    .line 98
    :pswitch_0
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mLastMotionX:F

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v4, v9

    .line 99
    .local v4, xDiff:I
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mLastMotionY:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v7, v9

    .line 100
    .local v7, yDiff:I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTouchSlop:I

    .line 101
    .local v2, touchSlop:I
    if-le v4, v2, :cond_5

    move v5, v11

    .line 102
    .local v5, xMoved:Z
    :goto_2
    if-le v7, v2, :cond_6

    move v8, v11

    .line 104
    .local v8, yMoved:Z
    :goto_3
    if-nez v5, :cond_3

    if-eqz v8, :cond_2

    .line 106
    :cond_3
    if-eqz v5, :cond_4

    .line 108
    iput v11, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTouchState:I

    .line 112
    :cond_4
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mAllowLongPress:Z

    if-eqz v9, :cond_2

    .line 113
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mAllowLongPress:Z

    .line 117
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mCurrentScreen:I

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, currentScreen:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1

    .end local v1           #currentScreen:Landroid/view/View;
    .end local v5           #xMoved:Z
    .end local v8           #yMoved:Z
    :cond_5
    move v5, v10

    .line 101
    goto :goto_2

    .restart local v5       #xMoved:Z
    :cond_6
    move v8, v10

    .line 102
    goto :goto_3

    .line 125
    .end local v2           #touchSlop:I
    .end local v4           #xDiff:I
    .end local v5           #xMoved:Z
    .end local v7           #yDiff:I
    :pswitch_1
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mLastMotionX:F

    .line 126
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mLastMotionY:F

    .line 127
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mAllowLongPress:Z

    .line 134
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v10

    :goto_4
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTouchState:I

    goto :goto_1

    :cond_7
    move v9, v11

    goto :goto_4

    .line 140
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->clearChildrenCache()V

    .line 141
    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTouchState:I

    .line 142
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mAllowLongPress:Z

    goto :goto_1

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, childLeft:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 348
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 349
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 352
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 353
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 354
    .local v2, childWidth:I
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTopOffset:I

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTopOffset:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 355
    add-int/2addr v1, v2

    .line 356
    const-string v5, "ZTEScroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "childLeft="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v2           #childWidth:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 361
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v8, 0x0

    .line 364
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 366
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 367
    .local v4, width:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 368
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 369
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 368
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    :cond_0
    const-string v5, "ZTEScroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMeasure count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v2, 0x0

    .line 373
    .local v2, hasWeather:Z
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 374
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 375
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;

    if-eqz v5, :cond_1

    .line 376
    const/4 v2, 0x1

    .line 377
    const-string v5, "ZTEScroller"

    const-string v6, "hasWeather"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 380
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 381
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 382
    .restart local v0       #child:Landroid/view/View;
    if-eqz v0, :cond_8

    .line 383
    instance-of v5, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;

    if-eqz v5, :cond_5

    .line 384
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/Utilities;->hasMissNum()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 386
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->setCurrentScreen(I)V

    .line 407
    .end local v0           #child:Landroid/view/View;
    :cond_3
    :goto_3
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mFirstLayout:Z

    if-eqz v5, :cond_4

    .line 408
    invoke-virtual {p0, v8}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 409
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mCurrentScreen:I

    mul-int/2addr v5, v4

    invoke-virtual {p0, v5, v8}, Landroid/view/View;->scrollTo(II)V

    .line 410
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 411
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mFirstLayout:Z

    .line 413
    :cond_4
    return-void

    .line 392
    .restart local v0       #child:Landroid/view/View;
    :cond_5
    instance-of v5, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    if-eqz v5, :cond_6

    .line 393
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->setCurrentScreen(I)V

    goto :goto_3

    .line 396
    :cond_6
    if-eqz v2, :cond_7

    .line 397
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->setCurrentScreen(I)V

    goto :goto_3

    .line 401
    :cond_7
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->setCurrentScreen(I)V

    goto :goto_3

    .line 380
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 430
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 431
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mNextScreen:I

    .line 435
    .local v0, focusableScreen:I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 436
    .local v1, screen:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 438
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 433
    .end local v0           #focusableScreen:I
    .end local v1           #screen:Landroid/view/View;
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 188
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_0

    .line 189
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 191
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 194
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 196
    .local v5, x:F
    packed-switch v0, :pswitch_data_0

    .line 265
    :goto_0
    return v8

    .line 202
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    if-eqz v6, :cond_1

    .line 203
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;->pokeWakelock()V

    .line 205
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 206
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->computeScroll()V

    .line 211
    :cond_2
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mLastMotionX:F

    goto :goto_0

    .line 216
    :pswitch_1
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mLastMotionX:F

    sub-float/2addr v6, v5

    float-to-int v2, v6

    .line 217
    .local v2, deltaX:I
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mLastMotionX:F

    .line 219
    if-gez v2, :cond_4

    .line 224
    invoke-virtual {p0, v2, v9}, Landroid/view/View;->scrollBy(II)V

    .line 237
    :cond_3
    :goto_1
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTouchState:I

    goto :goto_0

    .line 227
    :cond_4
    if-lez v2, :cond_3

    .line 228
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v1, v6, v7

    .line 233
    .local v1, availableToScroll:I
    invoke-virtual {p0, v2, v9}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1

    .line 240
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    :pswitch_2
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTouchState:I

    if-ne v6, v8, :cond_5

    .line 241
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 242
    .local v3, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v6, 0x3e8

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mMaximumVelocity:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 243
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    float-to-int v4, v6

    .line 244
    .local v4, velocityX:I
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->SNAP_VELOCITY:I

    if-le v4, v6, :cond_6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mCurrentScreen:I

    if-lez v6, :cond_6

    .line 246
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mCurrentScreen:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6, v8}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->snapToScreen(IZ)V

    .line 254
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_5

    .line 255
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 256
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 259
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v4           #velocityX:I
    :cond_5
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTouchState:I

    goto :goto_0

    .line 247
    .restart local v3       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v4       #velocityX:I
    :cond_6
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->SNAP_VELOCITY:I

    neg-int v6, v6

    if-ge v4, v6, :cond_7

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mCurrentScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_7

    .line 249
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mCurrentScreen:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6, v8}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->snapToScreen(IZ)V

    goto :goto_2

    .line 251
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->snapToDestination()V

    goto :goto_2

    .line 262
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v4           #velocityX:I
    :pswitch_3
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mTouchState:I

    goto/16 :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 167
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 168
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 170
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 176
    return-void
.end method

.method public setContainer(Landroid/view/View;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mContainer:Landroid/view/View;

    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mContainer:Landroid/view/View;

    const v1, 0x1020326

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mKeyguardNewEventView:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;

    .line 480
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 0
    .parameter "currentScreen"

    .prologue
    .line 420
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mCurrentScreen:I

    .line 421
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    .line 473
    return-void
.end method

.method public snapToScreen(II)V
    .locals 9
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 287
    :cond_0
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->enableChildrenCache(II)V

    .line 289
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 290
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mCurrentScreen:I

    if-eq p1, v0, :cond_3

    const/4 v6, 0x1

    .line 292
    .local v6, changingScreens:Z
    :goto_1
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mNextScreen:I

    .line 294
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 295
    .local v7, focusedChild:Landroid/view/View;
    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v7, v0, :cond_1

    .line 296
    invoke-virtual {v7}, Landroid/view/View;->clearFocus()V

    .line 299
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int v8, p1, v0

    .line 300
    .local v8, newX:I
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v3, v8, v0

    .line 301
    .local v3, delta:I
    if-gtz p2, :cond_2

    .line 302
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 p2, v0, 0x2

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 304
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v7           #focusedChild:Landroid/view/View;
    .end local v8           #newX:I
    :cond_3
    move v6, v2

    .line 290
    goto :goto_1
.end method

.method public snapToScreen(IZ)V
    .locals 3
    .parameter "whichScreen"
    .parameter "b"

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->isKeyguardNewEventViewVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 273
    add-int/lit8 p1, p1, -0x1

    .line 275
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->snapToScreen(II)V

    .line 277
    if-eqz p2, :cond_1

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, reminderKey:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->saveReminderValue(Ljava/lang/String;Z)V

    .line 283
    .end local v0           #reminderKey:Ljava/lang/String;
    :cond_1
    return-void
.end method
