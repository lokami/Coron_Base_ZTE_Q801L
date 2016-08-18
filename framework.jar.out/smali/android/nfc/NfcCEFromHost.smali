.class public final Landroid/nfc/NfcCEFromHost;
.super Ljava/lang/Object;
.source "NfcCEFromHost.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcCEFromHost"


# instance fields
.field private mService:Landroid/nfc/INfcCEFromHost;


# direct methods
.method public constructor <init>(Landroid/nfc/INfcCEFromHost;)V
    .locals 0
    .parameter "mCEFromHostService"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/nfc/NfcCEFromHost;->mService:Landroid/nfc/INfcCEFromHost;

    .line 57
    return-void
.end method


# virtual methods
.method public receiveCEFromHost(Ljava/lang/String;)[B
    .locals 4
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcCEFromHost;->mService:Landroid/nfc/INfcCEFromHost;

    invoke-interface {v2, p1}, Landroid/nfc/INfcCEFromHost;->receiveCEFromHost(Ljava/lang/String;)[B

    move-result-object v1

    .line 142
    .local v1, response:[B
    if-nez v1, :cond_0

    .line 143
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Receive APDU failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1           #response:[B
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NfcCEFromHost"

    const-string v3, "RemoteException in receiveCEFromHost(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in receiveCEFromHost()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #response:[B
    :cond_0
    return-object v1
.end method

.method public resetCEFromHostType(Ljava/lang/String;)V
    .locals 3
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/nfc/NfcCEFromHost;->mService:Landroid/nfc/INfcCEFromHost;

    invoke-interface {v1, p1}, Landroid/nfc/INfcCEFromHost;->resetCEFromHostType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NfcCEFromHost"

    const-string v2, "RemoteException in resetCEFromHostType(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    new-instance v1, Ljava/io/IOException;

    const-string v2, "RemoteException in resetCEFromHostType()"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendCEFromHost(Ljava/lang/String;[B)Z
    .locals 4
    .parameter "pkg"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcCEFromHost;->mService:Landroid/nfc/INfcCEFromHost;

    invoke-interface {v2, p1, p2}, Landroid/nfc/INfcCEFromHost;->sendCEFromHost(Ljava/lang/String;[B)Z

    move-result v1

    .line 165
    .local v1, response:Z
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 166
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Send APDU failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1           #response:Z
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NfcCEFromHost"

    const-string v3, "RemoteException in sendCEFromHost(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in sendCEFromHost()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #response:Z
    :cond_0
    return v1
.end method

.method public setCEFromHostTypeA(Ljava/lang/String;B[B[B)Z
    .locals 4
    .parameter "pkg"
    .parameter "sak"
    .parameter "atqa"
    .parameter "app_data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcCEFromHost;->mService:Landroid/nfc/INfcCEFromHost;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/nfc/INfcCEFromHost;->setCEFromHostTypeA(Ljava/lang/String;B[B[B)Z

    move-result v1

    .line 75
    .local v1, status:Z
    if-eqz v1, :cond_0

    .line 76
    return v1

    .line 78
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to Enable Host Card Emulation"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1           #status:Z
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NfcCEFromHost"

    const-string v3, "RemoteException in setCEFromHostTypeA(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in setCEFromHostTypeA()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setCEFromHostTypeB(Ljava/lang/String;[B[BI)Z
    .locals 4
    .parameter "pkg"
    .parameter "atqb"
    .parameter "hi_layer_resp"
    .parameter "afi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcCEFromHost;->mService:Landroid/nfc/INfcCEFromHost;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/nfc/INfcCEFromHost;->setCEFromHostTypeB(Ljava/lang/String;[B[BI)Z

    move-result v1

    .line 102
    .local v1, status:Z
    if-eqz v1, :cond_0

    .line 103
    return v1

    .line 105
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to Enable Host Card Emulation"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1           #status:Z
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NfcCEFromHost"

    const-string v3, "RemoteException in setCEFromHostTypeB(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in setCEFromHostTypeB()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
