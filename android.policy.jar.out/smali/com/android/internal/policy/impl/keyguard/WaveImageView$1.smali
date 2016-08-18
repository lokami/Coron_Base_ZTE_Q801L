.class Lcom/android/internal/policy/impl/keyguard/WaveImageView$1;
.super Landroid/os/Handler;
.source "WaveImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/WaveImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/WaveImageView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/WaveImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    #calls: Lcom/android/internal/policy/impl/keyguard/WaveImageView;->updateRingModeSource()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->access$000(Lcom/android/internal/policy/impl/keyguard/WaveImageView;)V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->access$100(Lcom/android/internal/policy/impl/keyguard/WaveImageView;)Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveImageView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->access$100(Lcom/android/internal/policy/impl/keyguard/WaveImageView;)Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;->gotoUnlock()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
