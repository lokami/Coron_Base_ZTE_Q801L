.class Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;J[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    iput-object p4, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 419
    const-string v10, "nfc"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v5

    .line 421
    .local v5, nfc:Landroid/nfc/INfcAdapter;
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 423
    .local v7, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v10, "bluetooth_manager"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 428
    .local v0, bluetooth:Landroid/bluetooth/IBluetoothManager;
    if-eqz v5, :cond_0

    :try_start_0
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    :cond_0
    const/4 v6, 0x1

    .line 430
    .local v6, nfcOff:Z
    :goto_0
    if-nez v6, :cond_1

    .line 431
    const-string v10, "ShutdownThread"

    const-string v11, "Turning off NFC..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_6

    :cond_2
    const/4 v1, 0x1

    .line 441
    .local v1, bluetoothOff:Z
    :goto_2
    if-nez v1, :cond_3

    .line 442
    const-string v10, "ShutdownThread"

    const-string v11, "Disabling Bluetooth..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 451
    :cond_3
    :goto_3
    const/4 v8, 0x1

    .line 452
    .local v8, radioOff:Z
    :try_start_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 453
    const-string v10, "phone_msim"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v4

    .line 455
    .local v4, mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v4, :cond_a

    .line 458
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v10

    if-ge v3, v10, :cond_a

    .line 460
    if-eqz v8, :cond_7

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v8, 0x1

    .line 461
    :goto_5
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 462
    const-string v10, "ShutdownThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Turning off radio on Subscription :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v10, 0x0

    invoke-interface {v4, v10, v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setRadio(ZI)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 459
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 428
    .end local v1           #bluetoothOff:Z
    .end local v3           #i:I
    .end local v4           #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .end local v6           #nfcOff:Z
    .end local v8           #radioOff:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v2

    .line 435
    .local v2, ex:Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    const/4 v6, 0x1

    .restart local v6       #nfcOff:Z
    goto :goto_1

    .line 440
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 445
    :catch_1
    move-exception v2

    .line 446
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    const/4 v1, 0x1

    .restart local v1       #bluetoothOff:Z
    goto :goto_3

    .line 460
    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v3       #i:I
    .restart local v4       #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .restart local v8       #radioOff:Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .line 468
    .end local v3           #i:I
    .end local v4           #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_8
    if-eqz v7, :cond_9

    :try_start_3
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v10

    if-nez v10, :cond_c

    :cond_9
    const/4 v8, 0x1

    .line 469
    :goto_6
    if-nez v8, :cond_a

    .line 470
    const-string v10, "ShutdownThread"

    const-string v11, "Turning off radio..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v10, 0x0

    invoke-interface {v7, v10}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 479
    :cond_a
    :goto_7
    const-string v10, "ShutdownThread"

    const-string v11, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_12

    .line 482
    if-nez v1, :cond_b

    .line 484
    :try_start_4
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v10

    if-nez v10, :cond_d

    const/4 v1, 0x1

    .line 489
    :goto_9
    if-eqz v1, :cond_b

    .line 490
    const-string v10, "ShutdownThread"

    const-string v11, "Bluetooth turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_b
    if-nez v8, :cond_10

    .line 495
    const/4 v9, 0x1

    .line 496
    .local v9, subRadioOff:Z
    :try_start_5
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 497
    const-string v10, "phone_msim"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v4

    .line 499
    .restart local v4       #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_a
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v10

    if-ge v3, v10, :cond_f

    .line 501
    if-eqz v9, :cond_e

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v10

    if-nez v10, :cond_e

    const/4 v9, 0x1

    .line 500
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 468
    .end local v3           #i:I
    .end local v4           #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .end local v9           #subRadioOff:Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_6

    .line 474
    :catch_2
    move-exception v2

    .line 475
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    const/4 v8, 0x1

    goto :goto_7

    .line 484
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_d
    const/4 v1, 0x0

    goto :goto_9

    .line 485
    :catch_3
    move-exception v2

    .line 486
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    const/4 v1, 0x1

    goto :goto_9

    .line 501
    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v3       #i:I
    .restart local v4       #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .restart local v9       #subRadioOff:Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_b

    .line 503
    :cond_f
    move v8, v9

    .line 511
    .end local v3           #i:I
    .end local v4           #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_c
    if-eqz v8, :cond_10

    .line 512
    const-string v10, "ShutdownThread"

    const-string v11, "Radio turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .end local v9           #subRadioOff:Z
    :cond_10
    if-nez v6, :cond_11

    .line 517
    :try_start_6
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    const/4 v6, 0x1

    .line 522
    :goto_d
    if-eqz v6, :cond_11

    .line 523
    const-string v10, "ShutdownThread"

    const-string v11, "NFC turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_11
    if-eqz v8, :cond_16

    if-eqz v1, :cond_16

    if-eqz v6, :cond_16

    .line 528
    const-string v10, "ShutdownThread"

    const-string v11, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput-boolean v12, v10, v11

    .line 534
    :cond_12
    return-void

    .line 505
    .restart local v9       #subRadioOff:Z
    :cond_13
    :try_start_7
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    move-result v10

    if-nez v10, :cond_14

    const/4 v8, 0x1

    :goto_e
    goto :goto_c

    :cond_14
    const/4 v8, 0x0

    goto :goto_e

    .line 507
    :catch_4
    move-exception v2

    .line 508
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    const/4 v8, 0x1

    goto :goto_c

    .line 517
    .end local v2           #ex:Landroid/os/RemoteException;
    .end local v9           #subRadioOff:Z
    :cond_15
    const/4 v6, 0x0

    goto :goto_d

    .line 518
    :catch_5
    move-exception v2

    .line 519
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    const/4 v6, 0x1

    goto :goto_d

    .line 532
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_16
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_8
.end method
