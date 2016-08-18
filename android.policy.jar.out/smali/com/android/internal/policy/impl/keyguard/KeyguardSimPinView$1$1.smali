.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "KeyguardSimPinView"

    const-string v1, "dismiss(true)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 90
    return-void
.end method
