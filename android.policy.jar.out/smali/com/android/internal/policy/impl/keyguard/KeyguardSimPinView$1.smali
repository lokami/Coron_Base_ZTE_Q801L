.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->showCancelButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 74
    const-string v1, "KeyguardSimPinView"

    const-string v2, "showCancelButton,onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 77
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 85
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method
