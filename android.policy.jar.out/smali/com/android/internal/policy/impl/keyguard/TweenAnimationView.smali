.class public Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;
.super Ljava/lang/Object;
.source "TweenAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$TweenAnimationCallback;
    }
.end annotation


# static fields
.field private static final ANIMATOR_DURATION_TIME:J = 0x12cL


# instance fields
.field private Context:Landroid/content/Context;

.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mAnimationAlpha:Landroid/view/animation/AlphaAnimation;

.field private mAnimationScale:Landroid/view/animation/ScaleAnimation;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$TweenAnimationCallback;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mInAnimation:Landroid/view/animation/AnimationSet;

.field private mTranslateAnimator:Landroid/animation/ObjectAnimator;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 34
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->Context:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;)Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$TweenAnimationCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mCallback:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$TweenAnimationCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->view:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public createAnimation()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x12c

    const/high16 v2, 0x4000

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    .line 78
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 79
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mAnimationScale:Landroid/view/animation/ScaleAnimation;

    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mAnimationScale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mAnimationScale:Landroid/view/animation/ScaleAnimation;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 83
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mAnimationAlpha:Landroid/view/animation/AlphaAnimation;

    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mAnimationAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mAnimationAlpha:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mInAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mAnimationAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mInAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mAnimationScale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mAnimationScale:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 102
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->view:Landroid/view/View;

    return-object v0
.end method

.method public setTweenAnimationCallback(Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$TweenAnimationCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mCallback:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$TweenAnimationCallback;

    .line 108
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->view:Landroid/view/View;

    .line 73
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mInAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 67
    return-void
.end method
