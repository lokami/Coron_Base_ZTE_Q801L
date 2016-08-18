.class Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$1;
.super Landroid/os/Handler;
.source "KeyguardContentObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->queryAndUpdateMissedNumber()V

    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->handleUpdateImageLock()V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->handleQueryMMS()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)V

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->handleQueryEmail()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)V

    goto :goto_0

    .line 85
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->handleQueryCalls()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)V

    goto :goto_0

    .line 88
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->handleQueryCalendar()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
