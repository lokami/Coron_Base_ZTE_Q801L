.class Lcom/android/internal/policy/impl/keyguard/Ease$Linear;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Linear"
.end annotation


# static fields
.field public static final easeNone:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Ease$Linear$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/Ease$Linear$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Ease$Linear;->easeNone:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
