.class Lcom/android/server/power/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/power/RampAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    .local p0, this:Lcom/android/server/power/RampAnimator$1;,"Lcom/android/server/power/RampAnimator.1;"
    iput-object p1, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 102
    .local p0, this:Lcom/android/server/power/RampAnimator$1;,"Lcom/android/server/power/RampAnimator.1;"
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    .line 103
    .local v0, frameTimeNanos:J
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$100(Lcom/android/server/power/RampAnimator;)J

    move-result-wide v5

    sub-long v5, v0, v5

    long-to-float v5, v5

    const v6, 0x3089705f

    mul-float v4, v5, v6

    .line 105
    .local v4, timeDelta:F
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #setter for: Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v5, v0, v1}, Lcom/android/server/power/RampAnimator;->access$102(Lcom/android/server/power/RampAnimator;J)J

    .line 111
    const/4 v3, 0x0

    .line 114
    .local v3, scale:F
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    int-to-float v6, v6

    #setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v5, v6}, Lcom/android/server/power/RampAnimator;->access$202(Lcom/android/server/power/RampAnimator;F)F

    .line 123
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v2

    .line 124
    .local v2, oldCurrentValue:I
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    #setter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v5, v6}, Lcom/android/server/power/RampAnimator;->access$402(Lcom/android/server/power/RampAnimator;I)I

    .line 126
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v5

    if-eq v2, v5, :cond_0

    .line 127
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 130
    :cond_0
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 131
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #calls: Lcom/android/server/power/RampAnimator;->postCallback()V
    invoke-static {v5}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v5, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/power/RampAnimator;->mAnimating:Z
    invoke-static {v5, v6}, Lcom/android/server/power/RampAnimator;->access$802(Lcom/android/server/power/RampAnimator;Z)Z

    goto :goto_0
.end method
