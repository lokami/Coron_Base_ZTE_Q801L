.class Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;
.super Landroid/os/TokenWatcher;
.source "KeyguardDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/KeyguardDisableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyguardTokenWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/KeyguardDisableHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    .line 90
    const-string v0, "KeyguardDisableHandler"

    invoke-direct {p0, p2, v0}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 91
    return-void
.end method


# virtual methods
.method public acquired()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 97
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    #getter for: Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I
    invoke-static {v1}, Lcom/android/server/wm/KeyguardDisableHandler;->access$000(Lcom/android/server/wm/KeyguardDisableHandler;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v1, v1, Lcom/android/server/wm/KeyguardDisableHandler;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 100
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    const-string v1, "ZTEAlarmClock"

    iget-object v4, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    #getter for: Lcom/android/server/wm/KeyguardDisableHandler;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wm/KeyguardDisableHandler;->access$100(Lcom/android/server/wm/KeyguardDisableHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I
    invoke-static {v1, v4}, Lcom/android/server/wm/KeyguardDisableHandler;->access$002(Lcom/android/server/wm/KeyguardDisableHandler;I)I

    .line 105
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/wm/KeyguardDisableHandler;->mTag:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/android/server/wm/KeyguardDisableHandler;->access$102(Lcom/android/server/wm/KeyguardDisableHandler;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    #getter for: Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I
    invoke-static {v1}, Lcom/android/server/wm/KeyguardDisableHandler;->access$000(Lcom/android/server/wm/KeyguardDisableHandler;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 119
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v1, v1, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 123
    :goto_1
    return-void

    .line 107
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    #setter for: Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I
    invoke-static {v4, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->access$002(Lcom/android/server/wm/KeyguardDisableHandler;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    move v1, v3

    .line 107
    goto :goto_2

    .line 121
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_3
    const-string v1, "KeyguardDisableHandler"

    const-string v2, "Not disabling keyguard since device policy is enforced"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public released()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 128
    return-void
.end method
