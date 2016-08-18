.class Lcom/android/internal/policy/impl/keyguard/MultiWaveView$3;
.super Landroid/os/Handler;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 434
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 451
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 452
    return-void

    .line 436
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->isStartOnLongClick:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->access$202(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;Z)Z

    .line 437
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->access$300(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->access$300(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;->onFinishAnimation()V

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, reminderKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->access$400(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->saveReminderValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 445
    .end local v0           #reminderKey:Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mCurrX:F

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    iget v3, v3, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->mCurrY:F

    #calls: Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->updateChevronPositions(FF)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->access$500(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;FF)V

    .line 446
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    #calls: Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->startChevronAnimation()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->access$600(Lcom/android/internal/policy/impl/keyguard/MultiWaveView;)V

    .line 447
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiWaveView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiWaveView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MultiWaveView;->startOnLongClick()V

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
