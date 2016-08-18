.class Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$3;
.super Ljava/lang/Object;
.source "WaveKeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;


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
    .line 858
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0
    .parameter "securityVerified"

    .prologue
    .line 892
    return-void
.end method

.method public getFailedAttempts()I
    .locals 1

    .prologue
    .line 887
    const/4 v0, 0x0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 882
    const/4 v0, 0x0

    return v0
.end method

.method public reportFailedUnlockAttempt()V
    .locals 0

    .prologue
    .line 878
    return-void
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 0

    .prologue
    .line 874
    return-void
.end method

.method public setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$OnDismissAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 870
    return-void
.end method

.method public showBackupSecurity()V
    .locals 0

    .prologue
    .line 866
    return-void
.end method

.method public userActivity(J)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 862
    return-void
.end method
