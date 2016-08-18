.class Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
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
    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDevicePolicyManagerStateChanged()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;)V

    .line 77
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;)V

    .line 82
    return-void
.end method
