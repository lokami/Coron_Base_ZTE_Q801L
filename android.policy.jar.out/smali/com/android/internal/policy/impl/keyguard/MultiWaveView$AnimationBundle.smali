.class Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;Lcom/android/internal/policy/impl/keyguard/MultiWaveView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 91
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 92
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 93
    .local v0, anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v0           #anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 96
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .parameter "suspend"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;->mSuspended:Z

    .line 109
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 81
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_1

    .line 87
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 83
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 84
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 85
    .local v0, anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 100
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 101
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 102
    .local v0, anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v0           #anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 105
    return-void
.end method
