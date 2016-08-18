.class public Lcom/android/internal/policy/impl/keyguard/ViewPagerReminderBehavior;
.super Ljava/lang/Object;
.source "ViewPagerReminderBehavior.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/ReminderBehavior;


# instance fields
.field private intelligentReminder:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;I)V
    .locals 0
    .parameter "intelligentReminder"
    .parameter "type"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ViewPagerReminderBehavior;->intelligentReminder:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    .line 28
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/ViewPagerReminderBehavior;->type:I

    .line 29
    return-void
.end method

.method private isReminderEnable(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 4
    .parameter "context"
    .parameter "sp"

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, viewPager:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    .local v0, hasUsed:Z
    return v0
.end method

.method private startTimeReminder(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sp"
    .parameter "key"

    .prologue
    .line 54
    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 55
    .local v0, hasRemindByTime:Z
    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ViewPagerReminderBehavior;->intelligentReminder:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/ViewPagerReminderBehavior;->type:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->showReminder(I)V

    .line 58
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ViewPagerReminderBehavior;->intelligentReminder:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->saveReminderValue(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public Reminder(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "context"
    .parameter "sp"

    .prologue
    .line 32
    return-void
.end method

.method public TimeReminder(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    .locals 5
    .parameter "context"
    .parameter "sp"
    .parameter "N"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/ViewPagerReminderBehavior;->isReminderEnable(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    :goto_0
    return-void

    .line 38
    :cond_0
    const/4 v3, 0x1

    if-ne p3, v3, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, key1:Ljava/lang/String;
    invoke-direct {p0, p2, v0}, Lcom/android/internal/policy/impl/keyguard/ViewPagerReminderBehavior;->startTimeReminder(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    .end local v0           #key1:Ljava/lang/String;
    :cond_1
    const/16 v3, 0xf

    if-ne p3, v3, :cond_2

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, key2:Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/internal/policy/impl/keyguard/ViewPagerReminderBehavior;->startTimeReminder(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v1           #key2:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, key3:Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Lcom/android/internal/policy/impl/keyguard/ViewPagerReminderBehavior;->startTimeReminder(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method
