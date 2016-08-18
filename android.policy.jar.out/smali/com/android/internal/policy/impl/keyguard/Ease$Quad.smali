.class Lcom/android/internal/policy/impl/keyguard/Ease$Quad;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Quad"
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "Quad"

.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;

.field public static final easeOutIn:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Ease$Quad$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/Ease$Quad$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Ease$Quad;->easeIn:Landroid/animation/TimeInterpolator;

    .line 62
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Ease$Quad$2;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/Ease$Quad$2;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    .line 68
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Ease$Quad$3;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/Ease$Quad$3;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Ease$Quad;->easeOutIn:Landroid/animation/TimeInterpolator;

    .line 75
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Ease$Quad$4;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/Ease$Quad$4;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Ease$Quad;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
