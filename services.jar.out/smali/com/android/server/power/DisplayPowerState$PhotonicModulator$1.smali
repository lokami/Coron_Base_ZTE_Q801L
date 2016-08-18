.class Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 388
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    #getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1300(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 389
    :try_start_0
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    #getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1400(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v3

    .line 390
    .local v3, on:Z
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    #getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1500(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v8

    if-eq v3, v8, :cond_1

    move v4, v5

    .line 391
    .local v4, onChanged:Z
    :goto_1
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    #getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1600(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v0

    .line 392
    .local v0, backlight:I
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    #getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1700(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v8

    if-eq v0, v8, :cond_2

    move v1, v5

    .line 393
    .local v1, backlightChanged:Z
    :goto_2
    if-nez v4, :cond_3

    if-nez v1, :cond_3

    .line 394
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z
    invoke-static {v5, v6}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1802(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z

    .line 395
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v5, v5, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    #calls: Lcom/android/server/power/DisplayPowerState;->postScreenUpdateThreadSafe()V
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerState;->access$2200(Lcom/android/server/power/DisplayPowerState;)V

    .line 430
    return-void

    .end local v0           #backlight:I
    .end local v1           #backlightChanged:Z
    .end local v4           #onChanged:Z
    :cond_1
    move v4, v6

    .line 390
    goto :goto_1

    .restart local v0       #backlight:I
    .restart local v4       #onChanged:Z
    :cond_2
    move v1, v6

    .line 392
    goto :goto_2

    .line 397
    .restart local v1       #backlightChanged:Z
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    #setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v8, v3}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1502(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z

    .line 398
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    #setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v8, v0}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1702(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I

    .line 399
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$1200()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 402
    const-string v7, "DisplayPowerState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updating screen state: on="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", backlight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 406
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    #getter for: Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState;->access$1900(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/power/DisplayBlanker;->unblankAllDisplays()V

    .line 408
    :try_start_2
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    #getter for: Lcom/android/server/power/DisplayPowerState;->mLight:Landroid/os/IHardwareService;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState;->access$2000(Lcom/android/server/power/DisplayPowerState;)Landroid/os/IHardwareService;

    move-result-object v7

    invoke-interface {v7}, Landroid/os/IHardwareService;->turnOnButtonLightOneShot()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 412
    :goto_3
    const-string v7, "DisplayPowerState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "turnOnButtonLightOneShot: on="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_5
    if-eqz v1, :cond_6

    .line 415
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    #getter for: Lcom/android/server/power/DisplayPowerState;->mBacklight:Lcom/android/server/LightsService$Light;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState;->access$2100(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/LightsService$Light;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 417
    :cond_6
    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    .line 418
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    #getter for: Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState;->access$1900(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/power/DisplayBlanker;->blankAllDisplays()V

    .line 420
    :try_start_3
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    #getter for: Lcom/android/server/power/DisplayPowerState;->mLight:Landroid/os/IHardwareService;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState;->access$2000(Lcom/android/server/power/DisplayPowerState;)Landroid/os/IHardwareService;

    move-result-object v7

    invoke-interface {v7}, Landroid/os/IHardwareService;->turnOffButtonLightOneShot()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 424
    :goto_4
    const-string v7, "DisplayPowerState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "turnOffButtonLightOneShot: on="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 399
    .end local v0           #backlight:I
    .end local v1           #backlightChanged:Z
    .end local v3           #on:Z
    .end local v4           #onChanged:Z
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 409
    .restart local v0       #backlight:I
    .restart local v1       #backlightChanged:Z
    .restart local v3       #on:Z
    .restart local v4       #onChanged:Z
    :catch_0
    move-exception v2

    .line 410
    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "DisplayPowerState"

    const-string v8, "remote call for turn on button light failed."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 421
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 422
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v7, "DisplayPowerState"

    const-string v8, "remote call for turn on button light failed."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
