.class Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "ZTELocalDigitalTime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;

.field final synthetic val$timezoneChanged:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$TimeChangedReceiver;ZLcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$TimeChangedReceiver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$TimeChangedReceiver;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$TimeChangedReceiver$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$TimeChangedReceiver$1;->val$timezoneChanged:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->access$002(Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;

    #calls: Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->updateTime()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->access$100(Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;)V

    .line 102
    return-void
.end method
