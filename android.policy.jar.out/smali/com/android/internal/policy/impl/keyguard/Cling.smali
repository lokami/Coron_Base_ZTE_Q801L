.class public Lcom/android/internal/policy/impl/keyguard/Cling;
.super Landroid/widget/FrameLayout;
.source "Cling.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cling"


# instance fields
.field private mErasePaint:Landroid/graphics/Paint;

.field private mIsInitialized:Z

.field private mUnlockApp:Landroid/view/View;

.field private mUnlockArea:Landroid/view/View;

.field private unlockAppEaraBottom:I

.field private unlockAppEaraLeft:I

.field private unlockAppEaraRight:I

.field private unlockAppEaraTop:I

.field private unlockEaraBottom:I

.field private unlockEaraCircleRidus:I

.field private unlockEaraLeft:I

.field private unlockEaraRight:I

.field private unlockEaraTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/policy/impl/keyguard/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_lockscreen_wave_cling"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, isShow:Ljava/lang/String;
    const-string v1, "Cling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/Cling;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method private dismissWaveCling()V
    .locals 3

    .prologue
    .line 171
    const-string v0, "Cling"

    const-string v1, "dismissWaveCling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_lockscreen_wave_cling"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 174
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mIsInitialized:Z

    .line 102
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 145
    const-string v2, "Cling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsInitialized"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mIsInitialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-lez v2, :cond_0

    .line 148
    const-string v2, "Cling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchDraw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 152
    .local v1, c:Landroid/graphics/Canvas;
    const/high16 v2, -0x8000

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 160
    invoke-virtual {p1, v0, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 161
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 166
    return-void
.end method

.method init()V
    .locals 4

    .prologue
    .line 87
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mIsInitialized:Z

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mErasePaint:Landroid/graphics/Paint;

    .line 89
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mErasePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 90
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mErasePaint:Landroid/graphics/Paint;

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mErasePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 92
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mErasePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mErasePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x1050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->unlockEaraCircleRidus:I

    .line 98
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 106
    const v0, 0x1020329

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mUnlockArea:Landroid/view/View;

    .line 107
    const v0, 0x102032d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mUnlockApp:Landroid/view/View;

    .line 108
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 126
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 128
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->unlockEaraLeft:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->unlockAppEaraLeft:I

    if-nez v0, :cond_1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->unlockEaraLeft:I

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->unlockEaraRight:I

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->unlockEaraTop:I

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->unlockEaraBottom:I

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mUnlockApp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->unlockAppEaraLeft:I

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mUnlockApp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->unlockAppEaraRight:I

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mUnlockApp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->unlockAppEaraTop:I

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->mUnlockApp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Cling;->unlockAppEaraBottom:I

    .line 141
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 113
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 115
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/Cling;->dismissWaveCling()V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
