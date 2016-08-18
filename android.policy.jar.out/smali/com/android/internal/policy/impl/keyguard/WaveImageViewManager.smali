.class public Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;
.super Landroid/widget/LinearLayout;
.source "WaveImageViewManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ItemViewManager"


# instance fields
.field private circleR:F

.field private endCircleR:F

.field private imageSourceHight:I

.field private imageSourceWidth:I

.field private initDegree:F

.field private mAppComponentName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

.field private mCenterX:F

.field private mCenterY:F

.field private mContext:Landroid/content/Context;

.field private mImageView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/WaveImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mImageViewBg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mItemView1:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

.field private mItemView2:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

.field private mItemView3:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

.field private mItemView4:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

.field private offsetDegree:F

.field private startCircleR:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v2, 0xf0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mAppComponentName:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mImageView:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    .line 43
    const v0, 0x3f060a92

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->initDegree:F

    .line 44
    const v0, 0x3f860a92

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->offsetDegree:F

    .line 45
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->circleR:F

    .line 46
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->startCircleR:F

    .line 47
    const/high16 v0, 0x430a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->endCircleR:F

    .line 48
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->imageSourceWidth:I

    .line 49
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->imageSourceHight:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0xf0

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mAppComponentName:Ljava/util/ArrayList;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mImageView:Ljava/util/ArrayList;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    .line 43
    const v1, 0x3f060a92

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->initDegree:F

    .line 44
    const v1, 0x3f860a92

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->offsetDegree:F

    .line 45
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->circleR:F

    .line 46
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->startCircleR:F

    .line 47
    const/high16 v1, 0x430a

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->endCircleR:F

    .line 48
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->imageSourceWidth:I

    .line 49
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->imageSourceHight:I

    .line 60
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, r:Landroid/content/res/Resources;
    const-string v1, "LCJ"

    const-string v2, "WaveImageViewManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method private initImageView()V
    .locals 2

    .prologue
    .line 67
    const v0, 0x102031b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mItemView1:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mItemView1:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->setItemId(I)V

    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mItemView1:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    const v0, 0x102031c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mItemView2:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mItemView2:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->setItemId(I)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mItemView2:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    const v0, 0x102031d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mItemView3:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mItemView3:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->setItemId(I)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mItemView3:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    const v0, 0x102031e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mItemView4:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mItemView4:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->setItemId(I)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mItemView4:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->cleanUp()V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 95
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->initImageView()V

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->updateIconBitmap()V

    .line 97
    const-string v0, "LCJ"

    const-string v1, "ItemImageViewManager onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 110
    const-string v0, "lcj"

    const-string v1, "ItemImageViewManager onInterceptTouchEvent1111"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 88
    const-string v0, "LCJ"

    const-string v1, "ItemImageViewManager onLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 90
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 116
    const-string v1, "ItemViewManager"

    const-string v2, "ItemImageViewManager onTouchEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 118
    .local v0, action:I
    const-string v1, "ItemViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    and-int/2addr v1, v0

    packed-switch v1, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 121
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;->pokeWakelock()V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public updateIconBitmap()V
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->updateIconBitmap()V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method
