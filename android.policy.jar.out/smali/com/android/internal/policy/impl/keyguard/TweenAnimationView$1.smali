.class Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$1;
.super Ljava/lang/Object;
.source "TweenAnimationView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->createAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->mCallback:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$TweenAnimationCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->access$000(Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;)Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$TweenAnimationCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$TweenAnimationCallback;->onAnimationEnd()V

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->access$100(Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 95
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 91
    return-void
.end method
