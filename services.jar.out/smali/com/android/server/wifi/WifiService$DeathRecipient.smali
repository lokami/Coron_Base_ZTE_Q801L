.class abstract Lcom/android/server/wifi/WifiService$DeathRecipient;
.super Ljava/lang/Object;
.source "WifiService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DeathRecipient"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mMode:I

.field mTag:Ljava/lang/String;

.field mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 3
    .parameter
    .parameter "mode"
    .parameter "tag"
    .parameter "binder"
    .parameter "ws"

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->this$0:Lcom/android/server/wifi/WifiService;

    .line 1332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1333
    iput-object p3, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mTag:Ljava/lang/String;

    .line 1334
    iput p2, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mMode:I

    .line 1335
    iput-object p4, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 1336
    iput-object p5, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    .line 1338
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    :goto_0
    return-void

    .line 1339
    :catch_0
    move-exception v0

    .line 1340
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService$DeathRecipient;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method unlinkDeathRecipient()V
    .locals 2

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1346
    return-void
.end method
