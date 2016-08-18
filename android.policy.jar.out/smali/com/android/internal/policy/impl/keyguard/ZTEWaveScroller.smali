.class public Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;
.super Landroid/view/ViewGroup;
.source "ZTEWaveScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller$1;,
        Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller$SavedState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INVALID_SCREEN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ZTEWaveScroller"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private SNAP_VELOCITY:I

.field private mAllowLongPress:Z

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

.field private mContainer:Landroid/view/View;

.field protected mCurrentScreen:I

.field private mFirstLayout:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mOrientation:I

.field protected mScroller:Landroid/widget/Scroller;

.field protected mTopOffset:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTransportControlView:Lcom/android/internal/widget/TransportControlView;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mwrap_content:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->SNAP_VELOCITY:I

    .line 37
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mFirstLayout:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mNextScreen:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTouchState:I

    .line 65
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mOrientation:I

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 71
    .local v1, resources:Landroid/content/res/Resources;
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTopOffset:I

    .line 72
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mOrientation:I

    .line 73
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 74
    .local v2, scroller:Landroid/widget/Scroller;
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mScroller:Landroid/widget/Scroller;

    .line 76
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 77
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTouchSlop:I

    .line 78
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mMaximumVelocity:I

    .line 79
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->SNAP_VELOCITY:I

    .line 80
    return-void
.end method

.method private isTransportVisible()Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method private snapToDestination()V
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->getWhichScreen()I

    move-result v0

    .line 300
    .local v0, whichScreen:I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->snapToScreen(I)V

    .line 301
    return-void
.end method


# virtual methods
.method public clearChildrenCache()V
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 180
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 181
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollX:I

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollY:I

    .line 324
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mNextScreen:I

    if-eq v0, v3, :cond_0

    .line 326
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mNextScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mCurrentScreen:I

    .line 327
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTouchState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 328
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mNextScreen:I

    .line 329
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->clearChildrenCache()V

    .line 330
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method public enableChildrenCache(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x1

    .line 149
    if-le p1, p2, :cond_0

    .line 150
    move v2, p1

    .line 151
    .local v2, mid:I
    move p1, p2

    .line 152
    move p2, v2

    .line 154
    .end local v2           #mid:I
    :cond_0
    const/4 v3, 0x0

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 155
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 156
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 157
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 158
    .local v1, layout:Landroid/view/ViewGroup;
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 159
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->setChildrenDrawingCacheEnabled(Z)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v1           #layout:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mCurrentScreen:I

    return v0
.end method

.method public getNextScreen()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mNextScreen:I

    return v0
.end method

.method public getWhichScreen()I
    .locals 5

    .prologue
    .line 306
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 307
    .local v1, screenWidth:I
    iget v3, p0, Landroid/view/View;->mScrollX:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    div-int v2, v3, v1

    .line 308
    .local v2, whichScreen:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 310
    .local v0, childCount:I
    if-gez v2, :cond_1

    .line 311
    const/4 v2, 0x0

    .line 316
    :cond_0
    :goto_0
    return v2

    .line 313
    :cond_1
    if-lt v2, v0, :cond_0

    .line 314
    add-int/lit8 v2, v0, -0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 85
    .local v0, action:I
    const/4 v9, 0x2

    if-ne v0, v9, :cond_1

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTouchState:I

    if-eqz v9, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v11

    .line 90
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 91
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 93
    .local v6, y:F
    packed-switch v0, :pswitch_data_0

    .line 144
    :cond_2
    :goto_1
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTouchState:I

    if-nez v9, :cond_0

    move v11, v10

    goto :goto_0

    .line 96
    :pswitch_0
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mLastMotionX:F

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v4, v9

    .line 97
    .local v4, xDiff:I
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mLastMotionY:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v7, v9

    .line 98
    .local v7, yDiff:I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTouchSlop:I

    .line 99
    .local v2, touchSlop:I
    if-le v4, v2, :cond_5

    move v5, v11

    .line 100
    .local v5, xMoved:Z
    :goto_2
    if-le v7, v2, :cond_6

    move v8, v11

    .line 102
    .local v8, yMoved:Z
    :goto_3
    if-nez v5, :cond_3

    if-eqz v8, :cond_2

    .line 104
    :cond_3
    if-eqz v5, :cond_4

    .line 106
    iput v11, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTouchState:I

    .line 110
    :cond_4
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mAllowLongPress:Z

    if-eqz v9, :cond_2

    .line 111
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mAllowLongPress:Z

    .line 115
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mCurrentScreen:I

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, currentScreen:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1

    .end local v1           #currentScreen:Landroid/view/View;
    .end local v5           #xMoved:Z
    .end local v8           #yMoved:Z
    :cond_5
    move v5, v10

    .line 99
    goto :goto_2

    .restart local v5       #xMoved:Z
    :cond_6
    move v8, v10

    .line 100
    goto :goto_3

    .line 123
    .end local v2           #touchSlop:I
    .end local v4           #xDiff:I
    .end local v5           #xMoved:Z
    .end local v7           #yDiff:I
    :pswitch_1
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mLastMotionX:F

    .line 124
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mLastMotionY:F

    .line 125
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mAllowLongPress:Z

    .line 132
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v10

    :goto_4
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTouchState:I

    goto :goto_1

    :cond_7
    move v9, v11

    goto :goto_4

    .line 138
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->clearChildrenCache()V

    .line 139
    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTouchState:I

    .line 140
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mAllowLongPress:Z

    goto :goto_1

    .line 93
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
    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, childLeft:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 339
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 340
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 341
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 342
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 343
    .local v2, childWidth:I
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTopOffset:I

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTopOffset:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 344
    add-int/2addr v1, v2

    .line 345
    const-string v5, "ZTEWaveScroller"

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

    .line 339
    .end local v2           #childWidth:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 350
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 353
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 355
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 356
    .local v2, width:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 357
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 358
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_0
    const-string v3, "ZTEWaveScroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasure count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mFirstLayout:Z

    if-eqz v3, :cond_1

    .line 362
    invoke-virtual {p0, v6}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 363
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mCurrentScreen:I

    mul-int/2addr v3, v2

    invoke-virtual {p0, v3, v6}, Landroid/view/View;->scrollTo(II)V

    .line 364
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 365
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mFirstLayout:Z

    .line 367
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 384
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 385
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mNextScreen:I

    .line 389
    .local v0, focusableScreen:I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 390
    .local v1, screen:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 392
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 387
    .end local v0           #focusableScreen:I
    .end local v1           #screen:Landroid/view/View;
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 186
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_0

    .line 187
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 189
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 192
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 194
    .local v5, x:F
    packed-switch v0, :pswitch_data_0

    .line 263
    :goto_0
    return v9

    .line 200
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    if-eqz v6, :cond_1

    .line 201
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;->pokeWakelock()V

    .line 203
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 204
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->computeScroll()V

    .line 209
    :cond_2
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mLastMotionX:F

    goto :goto_0

    .line 214
    :pswitch_1
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mLastMotionX:F

    sub-float/2addr v6, v5

    float-to-int v2, v6

    .line 215
    .local v2, deltaX:I
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mLastMotionX:F

    .line 217
    if-gez v2, :cond_4

    .line 222
    invoke-virtual {p0, v2, v8}, Landroid/view/View;->scrollBy(II)V

    .line 235
    :cond_3
    :goto_1
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTouchState:I

    goto :goto_0

    .line 225
    :cond_4
    if-lez v2, :cond_3

    .line 226
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

    .line 231
    .local v1, availableToScroll:I
    invoke-virtual {p0, v2, v8}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1

    .line 238
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    :pswitch_2
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTouchState:I

    if-ne v6, v9, :cond_5

    .line 239
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 240
    .local v3, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v6, 0x3e8

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mMaximumVelocity:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 241
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    float-to-int v4, v6

    .line 242
    .local v4, velocityX:I
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->SNAP_VELOCITY:I

    if-le v4, v6, :cond_6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mCurrentScreen:I

    if-lez v6, :cond_6

    .line 244
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mCurrentScreen:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->snapToScreen(I)V

    .line 252
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_5

    .line 253
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 254
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 257
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v4           #velocityX:I
    :cond_5
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTouchState:I

    goto :goto_0

    .line 245
    .restart local v3       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v4       #velocityX:I
    :cond_6
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->SNAP_VELOCITY:I

    neg-int v6, v6

    if-ge v4, v6, :cond_7

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mCurrentScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_7

    .line 247
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mCurrentScreen:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->snapToScreen(I)V

    goto :goto_2

    .line 249
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->snapToDestination()V

    goto :goto_2

    .line 260
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v4           #velocityX:I
    :pswitch_3
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mTouchState:I

    goto/16 :goto_0

    .line 194
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
    .line 164
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 165
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 166
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 168
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 174
    return-void
.end method

.method public setContainer(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mContainer:Landroid/view/View;

    .line 430
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 0
    .parameter "currentScreen"

    .prologue
    .line 374
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mCurrentScreen:I

    .line 375
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    .line 427
    return-void
.end method

.method public snapToScreen(I)V
    .locals 4
    .parameter "whichScreen"

    .prologue
    .line 268
    const-string v1, "ZTEWaveScroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTransportVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->isTransportVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->snapToScreen(II)V

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, reminderKey:Ljava/lang/String;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->saveReminderValue(Ljava/lang/String;Z)V

    .line 274
    return-void
.end method

.method public snapToScreen(II)V
    .locals 9
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 278
    :cond_0
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->enableChildrenCache(II)V

    .line 280
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 281
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mCurrentScreen:I

    if-eq p1, v0, :cond_3

    const/4 v6, 0x1

    .line 283
    .local v6, changingScreens:Z
    :goto_1
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mNextScreen:I

    .line 285
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 286
    .local v7, focusedChild:Landroid/view/View;
    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v7, v0, :cond_1

    .line 287
    invoke-virtual {v7}, Landroid/view/View;->clearFocus()V

    .line 290
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int v8, p1, v0

    .line 291
    .local v8, newX:I
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v3, v8, v0

    .line 292
    .local v3, delta:I
    if-gtz p2, :cond_2

    .line 293
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 p2, v0, 0x2

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v7           #focusedChild:Landroid/view/View;
    .end local v8           #newX:I
    :cond_3
    move v6, v2

    .line 281
    goto :goto_1
.end method
