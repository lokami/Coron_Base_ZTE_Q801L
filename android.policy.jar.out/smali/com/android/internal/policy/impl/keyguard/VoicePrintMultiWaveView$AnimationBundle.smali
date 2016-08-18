.class public Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "VoicePrintMultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
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
.field protected static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field protected mSuspended:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;->this$0:Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 77
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 78
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 79
    .local v0, anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v0           #anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 82
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .parameter "suspend"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;->mSuspended:Z

    .line 95
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 67
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/VoicePrintMultiWaveView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_1

    .line 73
    :cond_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 69
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 70
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 71
    .local v0, anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 86
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 87
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 88
    .local v0, anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v0           #anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 91
    return-void
.end method
