.class Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView$2;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
.source "KeyguardUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method
