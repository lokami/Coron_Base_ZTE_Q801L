.class public Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ZTEWaveScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 414
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 404
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 397
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller$SavedState;->currentScreen:I

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller$SavedState;->currentScreen:I

    .line 406
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "superState"

    .prologue
    .line 400
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 397
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller$SavedState;->currentScreen:I

    .line 401
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 410
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 411
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller$SavedState;->currentScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    return-void
.end method
