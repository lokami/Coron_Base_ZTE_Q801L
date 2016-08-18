.class Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$4;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
.source "WaveKeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$1400(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$1300(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$700(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method
