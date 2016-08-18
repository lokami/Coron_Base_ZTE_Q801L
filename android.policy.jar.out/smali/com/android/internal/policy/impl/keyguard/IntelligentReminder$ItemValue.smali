.class Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$ItemValue;
.super Ljava/lang/Object;
.source "IntelligentReminder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemValue"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$ItemValue;->this$0:Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/IntelligentReminder$ItemValue;-><init>(Lcom/android/internal/policy/impl/keyguard/IntelligentReminder;)V

    return-void
.end method
