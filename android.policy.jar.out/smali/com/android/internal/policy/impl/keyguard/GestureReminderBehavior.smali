.class public Lcom/android/internal/policy/impl/keyguard/GestureReminderBehavior;
.super Ljava/lang/Object;
.source "GestureReminderBehavior.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/ReminderBehavior;


# static fields
.field private static final DEFINE_COUNT:I = 0x2


# instance fields
.field private intelligentReminder:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;I)V
    .locals 0
    .parameter "intelligentReminder"
    .parameter "type"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/GestureReminderBehavior;->intelligentReminder:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    .line 29
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/GestureReminderBehavior;->type:I

    .line 30
    return-void
.end method


# virtual methods
.method public Reminder(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "context"
    .parameter "sp"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, wrongGesture:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 38
    .local v0, count:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/GestureReminderBehavior;->intelligentReminder:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/GestureReminderBehavior;->type:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->showReminder(I)V

    .line 40
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/GestureReminderBehavior;->intelligentReminder:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->resetReminderValue(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public TimeReminder(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    .locals 0
    .parameter "context"
    .parameter "sp"
    .parameter "N"

    .prologue
    .line 45
    return-void
.end method
