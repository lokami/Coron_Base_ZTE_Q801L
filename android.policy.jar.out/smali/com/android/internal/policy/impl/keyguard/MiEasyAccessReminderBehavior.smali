.class public Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;
.super Ljava/lang/Object;
.source "MiEasyAccessReminderBehavior.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/ReminderBehavior;


# static fields
.field private static final DEFINE_COUNT:I = 0xa


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
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;->intelligentReminder:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    .line 29
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;->type:I

    .line 30
    return-void
.end method

.method private isReminderEnable(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 4
    .parameter "context"
    .parameter "sp"

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, miEasyAccess:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 73
    .local v0, hasUsed:Z
    return v0
.end method

.method private startTimeReminder(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sp"
    .parameter "key"

    .prologue
    .line 63
    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    .local v0, hasRemindByTime:Z
    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;->intelligentReminder:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;->type:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->showReminder(I)V

    .line 67
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;->intelligentReminder:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->saveReminderValue(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public Reminder(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "context"
    .parameter "sp"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;->isReminderEnable(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, unLock:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 41
    .local v0, count:I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;->intelligentReminder:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;->type:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->showReminder(I)V

    .line 43
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;->intelligentReminder:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->saveReminderValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public TimeReminder(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    .locals 4
    .parameter "context"
    .parameter "sp"
    .parameter "N"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;->isReminderEnable(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    :goto_0
    return-void

    .line 51
    :cond_0
    const/16 v2, 0xa

    if-ne p3, v2, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, key1:Ljava/lang/String;
    invoke-direct {p0, p2, v0}, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;->startTimeReminder(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v0           #key1:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, key2:Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;->startTimeReminder(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method
