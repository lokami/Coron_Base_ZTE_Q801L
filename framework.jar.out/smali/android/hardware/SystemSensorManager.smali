.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$BaseEventQueue;
    }
.end annotation


# static fields
.field private static final sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private static sSensorModuleInitialized:Z

.field private static final sSensorModuleLock:Ljava/lang/Object;


# instance fields
.field private final mMainLooper:Landroid/os/Looper;

.field private final mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorEventListener;",
            "Landroid/hardware/SystemSensorManager$SensorEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdkLevel:I

.field private final mTriggerListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/TriggerEventListener;",
            "Landroid/hardware/SystemSensorManager$TriggerEventQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sSensorModuleLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6
    .parameter "context"
    .parameter "mainLooper"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 52
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 54
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 63
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v3, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    .line 65
    sget-object v4, Landroid/hardware/SystemSensorManager;->sSensorModuleLock:Ljava/lang/Object;

    monitor-enter v4

    .line 66
    :try_start_0
    sget-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    if-nez v3, :cond_2

    .line 67
    const/4 v3, 0x1

    sput-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 69
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 72
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 73
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 75
    .local v1, i:I
    :cond_0
    new-instance v2, Landroid/hardware/Sensor;

    invoke-direct {v2}, Landroid/hardware/Sensor;-><init>()V

    .line 76
    .local v2, sensor:Landroid/hardware/Sensor;
    invoke-static {v2, v1}, Landroid/hardware/SystemSensorManager;->nativeGetNextSensor(Landroid/hardware/Sensor;I)I

    move-result v1

    .line 77
    if-ltz v1, :cond_1

    .line 80
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v3, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 83
    :cond_1
    if-gtz v1, :cond_0

    .line 85
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1           #i:I
    .end local v2           #sensor:Landroid/hardware/Sensor;
    :cond_2
    monitor-exit v4

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/SystemSensorManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeGetNextSensor(Landroid/hardware/Sensor;I)I
.end method

.method static native nativeSensorCalibrate(II)I
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 4
    .parameter "listener"
    .parameter "sensor"
    .parameter "disable"

    .prologue
    const/4 v1, 0x0

    .line 179
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/hardware/Sensor;->getReportingMode(Landroid/hardware/Sensor;)I

    move-result v2

    sget v3, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    if-eq v2, v3, :cond_0

    .line 197
    :goto_0
    return v1

    .line 182
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 183
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 184
    .local v0, queue:Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-eqz v0, :cond_3

    .line 186
    if-nez p2, :cond_2

    .line 187
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeAllSensors()Z

    move-result v1

    .line 191
    .local v1, result:Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->hasSensors()Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose()V

    .line 195
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 198
    .end local v0           #queue:Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    .end local v1           #result:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 189
    .restart local v0       #queue:Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v1

    .restart local v1       #result:Z
    goto :goto_1

    .line 197
    .end local v1           #result:Z
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 5
    .parameter "listener"
    .parameter "sensor"
    .parameter "delay"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 105
    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sensor cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_0
    invoke-static {p2}, Landroid/hardware/Sensor;->getReportingMode(Landroid/hardware/Sensor;)I

    move-result v3

    sget v4, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    if-ne v3, v4, :cond_1

    .line 122
    :goto_0
    return v2

    .line 110
    :cond_1
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 111
    :try_start_0
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 112
    .local v1, queue:Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v1, :cond_4

    .line 113
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 114
    .local v0, looper:Landroid/os/Looper;
    :goto_1
    new-instance v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .end local v1           #queue:Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-direct {v1, p1, v0, p0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V

    .line 115
    .restart local v1       #queue:Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-virtual {v1, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensor(Landroid/hardware/Sensor;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 116
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose()V

    .line 117
    monitor-exit v3

    goto :goto_0

    .line 124
    .end local v0           #looper:Landroid/os/Looper;
    .end local v1           #queue:Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 113
    .restart local v1       #queue:Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_1

    .line 119
    .restart local v0       #looper:Landroid/os/Looper;
    :cond_3
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 122
    .end local v0           #looper:Landroid/os/Looper;
    :cond_4
    invoke-virtual {v1, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensor(Landroid/hardware/Sensor;I)Z

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 4
    .parameter "listener"
    .parameter "sensor"

    .prologue
    const/4 v1, 0x0

    .line 155
    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sensor cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_0
    invoke-static {p2}, Landroid/hardware/Sensor;->getReportingMode(Landroid/hardware/Sensor;)I

    move-result v2

    sget v3, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    if-eq v2, v3, :cond_1

    .line 170
    :goto_0
    return v1

    .line 159
    :cond_1
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 160
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 161
    .local v0, queue:Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-nez v0, :cond_3

    .line 162
    new-instance v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .end local v0           #queue:Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p1, v3, p0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V

    .line 163
    .restart local v0       #queue:Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensor(Landroid/hardware/Sensor;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 164
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose()V

    .line 165
    monitor-exit v2

    goto :goto_0

    .line 172
    .end local v0           #queue:Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 167
    .restart local v0       #queue:Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 170
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensor(Landroid/hardware/Sensor;I)Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public sensorCalibrate(Landroid/hardware/Sensor;I)I
    .locals 2
    .parameter "sensor"
    .parameter "flag"

    .prologue
    .line 207
    const/4 v1, -0x1

    .line 213
    .local v1, result:I
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 214
    .local v0, handle:I
    invoke-static {v0, p2}, Landroid/hardware/SystemSensorManager;->nativeSensorCalibrate(II)I

    move-result v1

    .line 218
    return v1
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 4
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 131
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/hardware/Sensor;->getReportingMode(Landroid/hardware/Sensor;)I

    move-result v2

    sget v3, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    if-ne v2, v3, :cond_0

    .line 150
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 136
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 137
    .local v0, queue:Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-eqz v0, :cond_1

    .line 139
    if-nez p2, :cond_2

    .line 140
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeAllSensors()Z

    move-result v1

    .line 144
    .local v1, result:Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->hasSensors()Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose()V

    .line 149
    .end local v1           #result:Z
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0           #queue:Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 142
    .restart local v0       #queue:Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, p2, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .restart local v1       #result:Z
    goto :goto_1
.end method
