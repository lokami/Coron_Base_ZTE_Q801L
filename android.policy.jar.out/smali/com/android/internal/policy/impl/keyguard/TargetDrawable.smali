.class public Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
.super Ljava/lang/Object;
.source "TargetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/TargetDrawable$DrawableWithAlpha;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final STATE_ACTIVE:[I = null

.field public static final STATE_FOCUSED:[I = null

.field public static final STATE_INACTIVE:[I = null

.field private static final TAG:Ljava/lang/String; = "TargetDrawable"


# instance fields
.field private mAlpha:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPositionX:F

.field private mPositionY:F

.field private final mResourceId:I

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_ACTIVE:[I

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    return-void

    .line 33
    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa2t 0x0t 0x1t 0x1t
    .end array-data

    .line 35
    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
    .end array-data

    .line 37
    :array_2
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1
    .parameter "res"
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationX:F

    .line 42
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationY:F

    .line 43
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionX:F

    .line 44
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionY:F

    .line 45
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleX:F

    .line 46
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleY:F

    .line 47
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mAlpha:F

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mEnabled:Z

    .line 84
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mResourceId:I

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/TargetDrawable;)V
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationX:F

    .line 42
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationY:F

    .line 43
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionX:F

    .line 44
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionY:F

    .line 45
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleX:F

    .line 46
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleY:F

    .line 47
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mAlpha:F

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mEnabled:Z

    .line 99
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mResourceId:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mResourceId:I

    .line 101
    iget-object v0, p1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->resizeDrawables()V

    .line 103
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPaint:Landroid/graphics/Paint;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeDrawables()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 160
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 162
    .local v1, d:Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 163
    .local v4, maxWidth:I
    const/4 v3, 0x0

    .line 164
    .local v3, maxHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 165
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 166
    .local v0, childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 167
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    const-string v5, "TargetDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "union of childDrawable rects "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v1, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 173
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    .restart local v0       #childDrawable:Landroid/graphics/drawable/Drawable;
    const-string v5, "TargetDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sizing drawable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 178
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v2           #i:I
    .end local v3           #maxHeight:I
    .end local v4           #maxWidth:I
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 179
    const-string v5, "TargetDrawable"

    const-string v6, " drawable "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 183
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x1

    const/high16 v5, 0x437f

    const/high16 v4, -0x4100

    .line 249
    const-string v0, "TargetDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTranslationX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScaleX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->save(I)I

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 253
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleY:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 254
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mAlpha:F

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 263
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 264
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mAlpha:F

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 261
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionY:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationX:F

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mAlpha:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionX()F
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionY:F

    return v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mResourceId:I

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationY:F

    return v0
.end method

.method public hasState([I)Z
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 121
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 123
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return v1
.end method

.method public isActive()Z
    .locals 5

    .prologue
    .line 132
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 134
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    .line 135
    .local v2, states:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 136
    aget v3, v2, v1

    const v4, 0x101009c

    if-ne v3, v4, :cond_0

    .line 137
    const/4 v3, 0x1

    .line 141
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #i:I
    .end local v2           #states:[I
    :goto_1
    return v3

    .line 135
    .restart local v0       #d:Landroid/graphics/drawable/StateListDrawable;
    .restart local v1       #i:I
    .restart local v2       #states:[I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #i:I
    .end local v2           #states:[I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 274
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationX:F

    .line 275
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationY:F

    .line 276
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionX:F

    .line 277
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionY:F

    .line 278
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleX:F

    .line 279
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleY:F

    .line 280
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mAlpha:F

    .line 281
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 201
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mAlpha:F

    .line 202
    return-void
.end method

.method public setDrawable(Landroid/content/res/Resources;I)V
    .locals 2
    .parameter "res"
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 91
    if-nez p2, :cond_1

    move-object v0, v1

    .line 93
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->resizeDrawables()V

    .line 95
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 96
    return-void

    .line 91
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mEnabled:Z

    .line 268
    return-void
.end method

.method public setPaintColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    :cond_0
    return-void
.end method

.method public setPaintStrokeWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 287
    :cond_0
    return-void
.end method

.method public setPositionX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 225
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionX:F

    .line 226
    return-void
.end method

.method public setPositionY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 229
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mPositionY:F

    .line 230
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 194
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleX:F

    .line 195
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 198
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleY:F

    .line 199
    return-void
.end method

.method public setState([I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 113
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 115
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 186
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationX:F

    .line 187
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 190
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mTranslationY:F

    .line 191
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 290
    const-string v0, "TargetDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScaleX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScaleY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mScaleY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->mAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
