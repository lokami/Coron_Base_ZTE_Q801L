.class Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;
.super Landroid/os/Handler;
.source "UnlockViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 223
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 244
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 245
    return-void

    .line 224
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->access$000(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    #setter for: Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->access$002(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;Z)Z

    .line 226
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mScaleView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mRotateView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->access$200(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mTweenAnimationView:Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->access$300(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TweenAnimationView;->startAnimation()V

    .line 229
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 230
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 231
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 235
    .end local v0           #message:Landroid/os/Message;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->onAnimationEnd()V

    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCurrX:F

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    iget v3, v3, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCurrY:F

    #calls: Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->updateSourcePositions(FF)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->access$400(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;FF)V

    .line 239
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startParticleAnimation()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->access$500(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
