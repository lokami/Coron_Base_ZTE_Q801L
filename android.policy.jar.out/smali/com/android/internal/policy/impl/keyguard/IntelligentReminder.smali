.class public Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;
.super Ljava/lang/Object;
.source "IntelligentReminder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$ItemValue;
    }
.end annotation


# static fields
.field public static final GESTUREREMINDER:I = 0x2

.field public static final MIEASYACCESSINTERVAL1:I = 0xa

.field public static final MIEASYACCESSINTERVAL2:I = 0x3c

.field public static final MIEASYACCESSREMINDER:I = 0x0

.field private static final ONEDAY:I = 0x5265c00

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "intelligent_reminder"

.field private static final TAG:Ljava/lang/String; = "LockScreen.IntelligentReminder"

.field public static final VIEWPAGERINTERVAL1:I = 0x1

.field public static final VIEWPAGERINTERVAL2:I = 0xf

.field public static final VIEWPAGERINTERVAL3:I = 0x41

.field public static final VIEWPAGERREMINDER:I = 0x1

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private mBehavior:Lcom/android/internal/policy/impl/keyguard/ReminderBehavior;

.field private mContext:Landroid/content/Context;

.field private mItemValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$ItemValue;",
            ">;"
        }
    .end annotation
.end field

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mItemValues:Ljava/util/ArrayList;

    .line 65
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->init()V

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    const-class v1, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->sInstance:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->sInstance:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    .line 54
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->sInstance:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init()V
    .locals 7

    .prologue
    .line 70
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mContext:Landroid/content/Context;

    const-string v5, "intelligent_reminder"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->sp:Landroid/content/SharedPreferences;

    .line 72
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 73
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x107003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 74
    .local v1, icons:Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 75
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$ItemValue;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$ItemValue;-><init>(Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$1;)V

    .line 76
    .local v2, item:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$ItemValue;
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$ItemValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mItemValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v2           #item:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$ItemValue;
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->saveDefaultValue()V

    .line 83
    return-void
.end method

.method private isTimeReminderEnable(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->sp:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 128
    .local v0, hasRemind:Z
    return v0
.end method


# virtual methods
.method public configReminder(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 86
    packed-switch p1, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 88
    :pswitch_0
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;-><init>(Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mBehavior:Lcom/android/internal/policy/impl/keyguard/ReminderBehavior;

    goto :goto_0

    .line 91
    :pswitch_1
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ViewPagerReminderBehavior;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/ViewPagerReminderBehavior;-><init>(Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mBehavior:Lcom/android/internal/policy/impl/keyguard/ReminderBehavior;

    goto :goto_0

    .line 94
    :pswitch_2
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/GestureReminderBehavior;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/GestureReminderBehavior;-><init>(Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mBehavior:Lcom/android/internal/policy/impl/keyguard/ReminderBehavior;

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public configTimeReminder()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 102
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040027

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, timeKey:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v6, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 104
    .local v3, nextRemindTime:J
    cmp-long v6, v3, v8

    if-nez v6, :cond_0

    .line 124
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 107
    .local v1, currentTime:J
    sub-long v6, v1, v3

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    long-to-int v0, v6

    .line 109
    .local v0, N:I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 118
    :sswitch_0
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/ViewPagerReminderBehavior;

    const/4 v7, 0x1

    invoke-direct {v6, p0, v7}, Lcom/android/internal/policy/impl/keyguard/ViewPagerReminderBehavior;-><init>(Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;I)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mBehavior:Lcom/android/internal/policy/impl/keyguard/ReminderBehavior;

    .line 119
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mBehavior:Lcom/android/internal/policy/impl/keyguard/ReminderBehavior;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v6, v7, v8, v0}, Lcom/android/internal/policy/impl/keyguard/ReminderBehavior;->TimeReminder(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    goto :goto_0

    .line 112
    :sswitch_1
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/internal/policy/impl/keyguard/MiEasyAccessReminderBehavior;-><init>(Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;I)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mBehavior:Lcom/android/internal/policy/impl/keyguard/ReminderBehavior;

    .line 113
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mBehavior:Lcom/android/internal/policy/impl/keyguard/ReminderBehavior;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v6, v7, v8, v0}, Lcom/android/internal/policy/impl/keyguard/ReminderBehavior;->TimeReminder(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    goto :goto_0

    .line 109
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0xf -> :sswitch_0
        0x3c -> :sswitch_1
        0x41 -> :sswitch_0
    .end sparse-switch
.end method

.method public performReminder()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mBehavior:Lcom/android/internal/policy/impl/keyguard/ReminderBehavior;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/ReminderBehavior;->Reminder(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 133
    return-void
.end method

.method public resetReminderValue(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method

.method public saveDefaultValue()V
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    .line 137
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, timeKey:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v5, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 139
    .local v2, remindTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 140
    .local v0, currentTime:J
    cmp-long v5, v2, v7

    if-nez v5, :cond_0

    .line 141
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    :cond_0
    return-void
.end method

.method public saveReminderValue(Ljava/lang/String;I)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, -0x1

    .line 154
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->sp:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, count:I
    if-ne v0, v3, :cond_0

    .line 164
    :goto_0
    return-void

    .line 158
    :cond_0
    if-eq p2, v3, :cond_1

    .line 159
    add-int/lit8 p2, v0, 0x1

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public saveReminderValue(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    return-void
.end method

.method public showReminder(I)V
    .locals 12
    .parameter "type"

    .prologue
    .line 173
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mItemValues:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 200
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 176
    .local v5, res:Landroid/content/res/Resources;
    const v9, 0x1040026

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, str:Ljava/lang/String;
    const v9, 0x107003e

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, messages:[Ljava/lang/String;
    aget-object v2, v3, p1

    .line 179
    .local v2, message:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mItemValues:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$ItemValue;

    iget-object v0, v9, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$ItemValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 181
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x1090018

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 182
    .local v8, view:Landroid/view/View;
    const v9, 0x10203e0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 183
    .local v1, imageView:Landroid/widget/ImageView;
    const v9, 0x10203e1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 184
    .local v7, textView:Landroid/widget/TextView;
    const v9, 0x10203e2

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 185
    .local v4, pButton:Landroid/widget/Button;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->dialog:Landroid/app/Dialog;

    .line 189
    new-instance v9, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$1;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$1;-><init>(Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->dialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d9

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 198
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;->dialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
