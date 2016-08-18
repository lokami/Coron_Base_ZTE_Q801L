.class Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$1;
.super Landroid/os/Handler;
.source "KeyguardNewEventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$UnlockScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;)Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$UnlockScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$UnlockScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;)Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$UnlockScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$UnlockScreenCallback;->onUnlockScreen()V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
    .end packed-switch
.end method
