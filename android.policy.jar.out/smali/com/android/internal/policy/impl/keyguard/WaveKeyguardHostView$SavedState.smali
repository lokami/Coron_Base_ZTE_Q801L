.class Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "WaveKeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field appWidgetToShow:I

.field transportState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1558
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1546
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1539
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;->appWidgetToShow:I

    .line 1547
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;->transportState:I

    .line 1548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;->appWidgetToShow:I

    .line 1549
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1537
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "superState"

    .prologue
    .line 1542
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1539
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;->appWidgetToShow:I

    .line 1543
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1553
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1554
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;->transportState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1555
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$SavedState;->appWidgetToShow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1556
    return-void
.end method
