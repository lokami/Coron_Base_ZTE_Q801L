.class public Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;
.super Ljava/lang/Object;
.source "FrameAnimationView.java"


# static fields
.field private static mImgParticles:[Landroid/graphics/Bitmap;


# instance fields
.field private mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

.field private mContext:Landroid/content/Context;

.field private particleIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->particleIds:[I

    .line 12
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->mContext:Landroid/content/Context;

    .line 14
    return-void

    .line 16
    nop

    :array_0
    .array-data 0x4
        0xe1t 0x0t 0x8t 0x1t
        0xe2t 0x0t 0x8t 0x1t
        0xe3t 0x0t 0x8t 0x1t
        0xe4t 0x0t 0x8t 0x1t
        0xe5t 0x0t 0x8t 0x1t
        0xe6t 0x0t 0x8t 0x1t
        0xe7t 0x0t 0x8t 0x1t
        0xe8t 0x0t 0x8t 0x1t
        0xe9t 0x0t 0x8t 0x1t
        0xeat 0x0t 0x8t 0x1t
        0xebt 0x0t 0x8t 0x1t
        0xect 0x0t 0x8t 0x1t
        0xedt 0x0t 0x8t 0x1t
        0xeet 0x0t 0x8t 0x1t
        0xeft 0x0t 0x8t 0x1t
        0xf0t 0x0t 0x8t 0x1t
    .end array-data
.end method


# virtual methods
.method public getmAniParticles()Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method public loadBitmap()V
    .locals 4

    .prologue
    .line 36
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->mImgParticles:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->particleIds:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->mImgParticles:[Landroid/graphics/Bitmap;

    .line 38
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->particleIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 40
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->mImgParticles:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->particleIds:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_1

    .line 45
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    .line 46
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->particleIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->mImgParticles:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public setmAniParticles(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .parameter "mAniParticles"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FrameAnimationView;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    .line 57
    return-void
.end method
