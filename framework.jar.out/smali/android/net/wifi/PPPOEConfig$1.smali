.class final Landroid/net/wifi/PPPOEConfig$1;
.super Ljava/lang/Object;
.source "PPPOEConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/PPPOEConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/PPPOEConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/PPPOEConfig;
    .locals 2
    .parameter "in"

    .prologue
    .line 103
    new-instance v0, Landroid/net/wifi/PPPOEConfig;

    invoke-direct {v0}, Landroid/net/wifi/PPPOEConfig;-><init>()V

    .line 104
    .local v0, config:Landroid/net/wifi/PPPOEConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/PPPOEConfig;->mru:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    .line 113
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/net/wifi/PPPOEConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/PPPOEConfig;
    .locals 1
    .parameter "size"

    .prologue
    .line 117
    new-array v0, p1, [Landroid/net/wifi/PPPOEConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/net/wifi/PPPOEConfig$1;->newArray(I)[Landroid/net/wifi/PPPOEConfig;

    move-result-object v0

    return-object v0
.end method
