.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private static final deviceHasSufficientMemory()Z
    .locals 7

    .prologue
    .line 1091
    const-wide/32 v0, 0x20000000

    .line 1093
    .local v0, MEMORY_SIZE_MIN:J
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1094
    .local v2, minfo:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1095
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    const-wide/32 v5, 0x20000000

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 1096
    const/4 v3, 0x0

    .line 1098
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1084
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1085
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1088
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1089
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 99
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    return-void
.end method

.method public run()V
    .locals 151

    .prologue
    .line 105
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 108
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 110
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 113
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 114
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 118
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v126

    .line 120
    .local v126, shutdownAction:Ljava/lang/String;
    if-eqz v126, :cond_0

    invoke-virtual/range {v126 .. v126}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 121
    const/4 v7, 0x0

    move-object/from16 v0, v126

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_13

    const/16 v118, 0x1

    .line 124
    .local v118, reboot:Z
    :goto_0
    invoke-virtual/range {v126 .. v126}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_14

    .line 125
    const/4 v7, 0x1

    invoke-virtual/range {v126 .. v126}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v126

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v117

    .line 130
    .local v117, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v118

    move-object/from16 v1, v117

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 134
    .end local v117           #reason:Ljava/lang/String;
    .end local v118           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v88

    .line 135
    .local v88, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v88

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/16 v87, 0x0

    .line 137
    .local v87, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 139
    .local v33, headless:Z
    const/16 v93, 0x0

    .line 140
    .local v93, installer:Lcom/android/server/pm/Installer;
    const/16 v60, 0x0

    .line 141
    .local v60, accountManager:Lcom/android/server/accounts/AccountManagerService;
    const/16 v74, 0x0

    .line 142
    .local v74, contentService:Lcom/android/server/content/ContentService;
    const/16 v95, 0x0

    .line 143
    .local v95, lights:Lcom/android/server/LightsService;
    const/16 v112, 0x0

    .line 144
    .local v112, power:Lcom/android/server/power/PowerManagerService;
    const/16 v80, 0x0

    .line 145
    .local v80, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v65, 0x0

    .line 146
    .local v65, battery:Lcom/android/server/BatteryService;
    const/16 v140, 0x0

    .line 147
    .local v140, vibrator:Lcom/android/server/VibratorService;
    const/16 v62, 0x0

    .line 148
    .local v62, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v101, 0x0

    .line 149
    .local v101, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 150
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 151
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v105, 0x0

    .line 152
    .local v105, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v72, 0x0

    .line 153
    .local v72, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v113, 0x0

    .line 154
    .local v113, qcCon:Ljava/lang/Object;
    const/16 v147, 0x0

    .line 155
    .local v147, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v145, 0x0

    .line 156
    .local v145, wifi:Lcom/android/server/wifi/WifiService;
    const/16 v125, 0x0

    .line 157
    .local v125, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v111, 0x0

    .line 158
    .local v111, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 159
    .local v5, context:Landroid/content/Context;
    const/16 v149, 0x0

    .line 160
    .local v149, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v66, 0x0

    .line 161
    .local v66, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v81, 0x0

    .line 162
    .local v81, dock:Lcom/android/server/DockObserver;
    const/16 v121, 0x0

    .line 163
    .local v121, regulatory:Lcom/android/server/RegulatoryObserver;
    const/16 v138, 0x0

    .line 164
    .local v138, usb:Lcom/android/server/usb/UsbService;
    const/16 v123, 0x0

    .line 165
    .local v123, serial:Lcom/android/server/SerialService;
    const/16 v133, 0x0

    .line 166
    .local v133, twilight:Lcom/android/server/TwilightService;
    const/16 v136, 0x0

    .line 167
    .local v136, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v119, 0x0

    .line 168
    .local v119, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v107, 0x0

    .line 169
    .local v107, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v69, 0x0

    .line 170
    .local v69, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v92, 0x0

    .line 171
    .local v92, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v129, 0x0

    .line 172
    .local v129, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v103, 0x0

    .line 179
    .local v103, msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    new-instance v135, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v135

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 180
    .local v135, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v135 .. v135}, Ljava/lang/Thread;->start()V

    .line 181
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v135 .. v135}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 182
    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    new-instance v150, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v150

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 200
    .local v150, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v150 .. v150}, Ljava/lang/Thread;->start()V

    .line 201
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v150 .. v150}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 202
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    const/16 v24, 0x0

    .line 224
    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v94, Lcom/android/server/pm/Installer;

    invoke-direct/range {v94 .. v94}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4e

    .line 226
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .local v94, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v94 .. v94}, Lcom/android/server/pm/Installer;->ping()Z

    .line 228
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4f

    .line 230
    .end local v112           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 232
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static/range {v87 .. v87}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 235
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_50

    .line 237
    .end local v80           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_3
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 239
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v130, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v130

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_51

    .line 241
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v130, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_4
    const-string v7, "telephony.registry"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 243
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 244
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v104, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v104

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 246
    .end local v103           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .local v104, msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v104

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_52

    move-object/from16 v103, v104

    .line 249
    .end local v104           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v103       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :cond_1
    :try_start_6
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 253
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 255
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_2

    .line 256
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .line 263
    .local v77, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v77

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 264
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/16 v24, 0x1

    .line 271
    :cond_3
    :goto_3
    if-eqz v87, :cond_17

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, v94

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v111

    .line 274
    const/16 v89, 0x0

    .line 276
    .local v89, firstBoot:Z
    :try_start_7
    invoke-interface/range {v111 .. v111}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v89

    .line 280
    :goto_5
    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 282
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 285
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 289
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 293
    :try_start_9
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v61, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v61

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 295
    .end local v60           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .local v61, accountManager:Lcom/android/server/accounts/AccountManagerService;
    :try_start_a
    const-string v7, "account"

    move-object/from16 v0, v61

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_59
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_53

    move-object/from16 v60, v61

    .line 300
    .end local v61           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v60       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    :goto_6
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v7, 0x1

    move/from16 v0, v87

    if-ne v0, v7, :cond_18

    const/4 v7, 0x1

    :goto_7
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v74

    .line 305
    invoke-static {v5}, Lcom/zte/security/ZTESecurityUtils;->initZTEPrivacyService(Landroid/content/Context;)V

    .line 308
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 311
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    .line 314
    .end local v95           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_c
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_54

    .line 316
    .end local v65           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_d
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 318
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v141, Lcom/android/server/VibratorService;

    move-object/from16 v0, v141

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_55

    .line 320
    .end local v140           #vibrator:Lcom/android/server/VibratorService;
    .local v141, vibrator:Lcom/android/server/VibratorService;
    :try_start_e
    const-string v7, "vibrator"

    move-object/from16 v0, v141

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 324
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 327
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_56

    .line 329
    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_f
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 331
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 335
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_57

    .line 338
    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_10
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v7, 0x1

    move/from16 v0, v87

    if-eq v0, v7, :cond_19

    const/16 v22, 0x1

    :goto_8
    if-nez v89, :cond_1a

    const/16 v23, 0x1

    :goto_9
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v149

    .line 343
    const-string v7, "window"

    move-object/from16 v0, v149

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 344
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 346
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v149

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 348
    invoke-virtual/range {v149 .. v149}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 349
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 351
    move-object/from16 v0, v149

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 352
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 357
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 358
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2

    :goto_a
    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v140, v141

    .end local v141           #vibrator:Lcom/android/server/VibratorService;
    .restart local v140       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v93, v94

    .line 375
    .end local v77           #cryptState:Ljava/lang/String;
    .end local v89           #firstBoot:Z
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    :goto_b
    const/16 v78, 0x0

    .line 376
    .local v78, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v127, 0x0

    .line 377
    .local v127, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v90, 0x0

    .line 378
    .local v90, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v63, 0x0

    .line 379
    .local v63, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v109, 0x0

    .line 380
    .local v109, notification:Lcom/android/server/NotificationManagerService;
    const/16 v143, 0x0

    .line 381
    .local v143, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v96, 0x0

    .line 382
    .local v96, location:Lcom/android/server/LocationManagerService;
    const/16 v75, 0x0

    .line 383
    .local v75, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v131, 0x0

    .line 384
    .local v131, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v98, 0x0

    .line 385
    .local v98, lockSettings:Lcom/android/server/LockSettingsService;
    const/16 v83, 0x0

    .line 388
    .local v83, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/4 v7, 0x1

    move/from16 v0, v87

    if-eq v0, v7, :cond_4

    .line 390
    :try_start_11
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v91, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v91

    move-object/from16 v1, v149

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3

    .line 392
    .end local v90           #imm:Lcom/android/server/InputMethodManagerService;
    .local v91, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_12
    const-string v7, "input_method"

    move-object/from16 v0, v91

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4d

    move-object/from16 v90, v91

    .line 398
    .end local v91           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4

    .line 407
    :cond_4
    :goto_d
    :try_start_14
    invoke-virtual/range {v149 .. v149}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_5

    .line 413
    :goto_e
    :try_start_15
    invoke-interface/range {v111 .. v111}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6

    .line 419
    :goto_f
    :try_start_16
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x104044d

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_4c

    .line 426
    :goto_10
    const/4 v7, 0x1

    move/from16 v0, v87

    if-eq v0, v7, :cond_21

    .line 427
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 433
    :try_start_17
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v102, Lcom/android/server/MountService;

    move-object/from16 v0, v102

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_7

    .line 435
    .end local v101           #mountService:Lcom/android/server/MountService;
    .local v102, mountService:Lcom/android/server/MountService;
    :try_start_18
    const-string v7, "mount"

    move-object/from16 v0, v102

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_4b

    move-object/from16 v101, v102

    .line 442
    .end local v102           #mountService:Lcom/android/server/MountService;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    :cond_5
    :goto_11
    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v99, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_8

    .line 444
    .end local v98           #lockSettings:Lcom/android/server/LockSettingsService;
    .local v99, lockSettings:Lcom/android/server/LockSettingsService;
    :try_start_1a
    const-string v7, "lock_settings"

    move-object/from16 v0, v99

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_4a

    move-object/from16 v98, v99

    .line 450
    .end local v99           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v98       #lockSettings:Lcom/android/server/LockSettingsService;
    :goto_12
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v79, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v79

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_9

    .line 452
    .end local v78           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v79, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1c
    const-string v7, "device_policy"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_49

    move-object/from16 v78, v79

    .line 458
    .end local v79           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v78       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_13
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v128, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v128

    move-object/from16 v1, v149

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_a

    .line 460
    .end local v127           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v128, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1e
    const-string v7, "statusbar"

    move-object/from16 v0, v128

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_48

    move-object/from16 v127, v128

    .line 466
    .end local v128           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v127       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_b

    .line 474
    :goto_15
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 476
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_c

    .line 482
    :goto_16
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v132, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v132

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_d

    .line 484
    .end local v131           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v132, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_22
    const-string v7, "textservices"

    move-object/from16 v0, v132

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_47

    move-object/from16 v131, v132

    .line 490
    .end local v132           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v131       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_17
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v106, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v106

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_e

    .line 492
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v106, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_24
    const-string v7, "netstats"

    move-object/from16 v0, v106

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_46

    move-object/from16 v29, v106

    .line 498
    .end local v106           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_f

    .line 502
    .end local v105           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_26
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_45

    .line 508
    :goto_19
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "Regulatory Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v122, Lcom/android/server/RegulatoryObserver;

    move-object/from16 v0, v122

    invoke-direct {v0, v5}, Lcom/android/server/RegulatoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_10

    .end local v121           #regulatory:Lcom/android/server/RegulatoryObserver;
    .local v122, regulatory:Lcom/android/server/RegulatoryObserver;
    move-object/from16 v121, v122

    .line 516
    .end local v122           #regulatory:Lcom/android/server/RegulatoryObserver;
    .restart local v121       #regulatory:Lcom/android/server/RegulatoryObserver;
    :goto_1a
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v148, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v148

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_11

    .line 518
    .end local v147           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v148, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_29
    const-string v7, "wifip2p"

    move-object/from16 v0, v148

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_44

    move-object/from16 v147, v148

    .line 524
    .end local v148           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v147       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1b
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v146, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v146

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_12

    .line 526
    .end local v145           #wifi:Lcom/android/server/wifi/WifiService;
    .local v146, wifi:Lcom/android/server/wifi/WifiService;
    :try_start_2b
    const-string v7, "wifi"

    move-object/from16 v0, v146

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_43

    move-object/from16 v145, v146

    .line 532
    .end local v146           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v145       #wifi:Lcom/android/server/wifi/WifiService;
    :goto_1c
    const/16 v86, 0x1

    .line 533
    .local v86, enableCne:I
    :try_start_2c
    invoke-static {}, Lcom/android/server/ServerThread;->deviceHasSufficientMemory()Z

    move-result v7

    if-nez v7, :cond_6

    .line 534
    const-string v7, "persist.cne.override.memlimit"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v86

    .line 536
    :cond_6
    const/4 v7, 0x1

    move/from16 v0, v86

    if-ne v0, v7, :cond_1e

    const-string v7, "persist.cne.feature"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v68

    .line 539
    .local v68, cneFeature:I
    :goto_1d
    if-lez v68, :cond_1f

    const/4 v7, 0x7

    move/from16 v0, v68

    if-ge v0, v7, :cond_1f

    .line 540
    const-string v7, "SystemServer"

    const-string v9, "QcConnectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v115, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/services-ext.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v115

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 544
    .local v115, qcsClassLoader:Ldalvik/system/PathClassLoader;
    const-string v7, "com.android.server.QcConnectivityService"

    move-object/from16 v0, v115

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v114

    .line 546
    .local v114, qcsClass:Ljava/lang/Class;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    const-class v11, Landroid/os/INetworkManagementService;

    aput-object v11, v7, v9

    const/4 v9, 0x2

    const-class v11, Landroid/net/INetworkStatsService;

    aput-object v11, v7, v9

    const/4 v9, 0x3

    const-class v11, Landroid/net/INetworkPolicyManager;

    aput-object v11, v7, v9

    move-object/from16 v0, v114

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v116

    .line 549
    .local v116, qcsConstructor:Ljava/lang/reflect/Constructor;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    aput-object v30, v7, v9

    const/4 v9, 0x2

    aput-object v29, v7, v9

    const/4 v9, 0x3

    aput-object v25, v7, v9

    move-object/from16 v0, v116

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v113

    .line 551
    move-object/from16 v0, v113

    check-cast v0, Lcom/android/server/ConnectivityService;

    move-object/from16 v72, v0

    .line 557
    .end local v113           #qcCon:Ljava/lang/Object;
    .end local v114           #qcsClass:Ljava/lang/Class;
    .end local v115           #qcsClassLoader:Ldalvik/system/PathClassLoader;
    .end local v116           #qcsConstructor:Ljava/lang/reflect/Constructor;
    :goto_1e
    if-eqz v72, :cond_7

    .line 558
    const-string v7, "connectivity"

    move-object/from16 v0, v72

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 559
    move-object/from16 v0, v29

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 560
    move-object/from16 v0, v25

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 561
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V

    .line 562
    invoke-virtual/range {v147 .. v147}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_13

    .line 569
    .end local v68           #cneFeature:I
    :cond_7
    :goto_1f
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v125

    .line 571
    const-string v7, "servicediscovery"

    move-object/from16 v0, v125

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_14

    .line 578
    :goto_20
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_15

    .line 590
    :goto_21
    if-eqz v101, :cond_8

    .line 591
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 595
    :cond_8
    if-eqz v60, :cond_9

    .line 596
    :try_start_2f
    invoke-virtual/range {v60 .. v60}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_16

    .line 602
    :cond_9
    :goto_22
    if-eqz v74, :cond_a

    .line 603
    :try_start_30
    invoke-virtual/range {v74 .. v74}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_17

    .line 609
    :cond_a
    :goto_23
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    new-instance v110, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v110

    move-object/from16 v1, v127

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_18

    .line 611
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .local v110, notification:Lcom/android/server/NotificationManagerService;
    :try_start_32
    const-string v7, "notification"

    move-object/from16 v0, v110

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 612
    move-object/from16 v0, v25

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_42

    move-object/from16 v109, v110

    .line 618
    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v109       #notification:Lcom/android/server/NotificationManagerService;
    :goto_24
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_19

    .line 626
    :goto_25
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v97, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v97

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1a

    .line 628
    .end local v96           #location:Lcom/android/server/LocationManagerService;
    .local v97, location:Lcom/android/server/LocationManagerService;
    :try_start_35
    const-string v7, "location"

    move-object/from16 v0, v97

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_41

    move-object/from16 v96, v97

    .line 634
    .end local v97           #location:Lcom/android/server/LocationManagerService;
    .restart local v96       #location:Lcom/android/server/LocationManagerService;
    :goto_26
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-instance v76, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v76

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1b

    .line 636
    .end local v75           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v76, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_37
    const-string v7, "country_detector"

    move-object/from16 v0, v76

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_40

    move-object/from16 v75, v76

    .line 642
    .end local v76           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v75       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_27
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1c

    .line 650
    :goto_28
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1d

    .line 657
    :goto_29
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 660
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    if-nez v33, :cond_b

    .line 662
    new-instance v144, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v144

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1e

    .line 663
    .end local v143           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v144, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_3b
    const-string v7, "wallpaper"

    move-object/from16 v0, v144

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_3f

    move-object/from16 v143, v144

    .line 670
    .end local v144           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v143       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_b
    :goto_2a
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 672
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1f

    .line 680
    :cond_c
    :goto_2b
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v82, Lcom/android/server/DockObserver;

    move-object/from16 v0, v82

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_20

    .end local v81           #dock:Lcom/android/server/DockObserver;
    .local v82, dock:Lcom/android/server/DockObserver;
    move-object/from16 v81, v82

    .line 688
    .end local v82           #dock:Lcom/android/server/DockObserver;
    .restart local v81       #dock:Lcom/android/server/DockObserver;
    :goto_2c
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_21

    .line 697
    :goto_2d
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance v139, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v139

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22

    .line 700
    .end local v138           #usb:Lcom/android/server/usb/UsbService;
    .local v139, usb:Lcom/android/server/usb/UsbService;
    :try_start_40
    const-string v7, "usb"

    move-object/from16 v0, v139

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_3e

    move-object/from16 v138, v139

    .line 706
    .end local v139           #usb:Lcom/android/server/usb/UsbService;
    .restart local v138       #usb:Lcom/android/server/usb/UsbService;
    :goto_2e
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v124, Lcom/android/server/SerialService;

    move-object/from16 v0, v124

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_23

    .line 709
    .end local v123           #serial:Lcom/android/server/SerialService;
    .local v124, serial:Lcom/android/server/SerialService;
    :try_start_42
    const-string v7, "serial"

    move-object/from16 v0, v124

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_3d

    move-object/from16 v123, v124

    .line 715
    .end local v124           #serial:Lcom/android/server/SerialService;
    .restart local v123       #serial:Lcom/android/server/SerialService;
    :goto_2f
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance v134, Lcom/android/server/TwilightService;

    move-object/from16 v0, v134

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_24

    .end local v133           #twilight:Lcom/android/server/TwilightService;
    .local v134, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v133, v134

    .line 722
    .end local v134           #twilight:Lcom/android/server/TwilightService;
    .restart local v133       #twilight:Lcom/android/server/TwilightService;
    :goto_30
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v137, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v137

    move-object/from16 v1, v133

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_25

    .end local v136           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v137, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v136, v137

    .line 730
    .end local v137           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v136       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_31
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_26

    .line 738
    :goto_32
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v64, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_27

    .line 740
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .local v64, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_47
    const-string v7, "appwidget"

    move-object/from16 v0, v64

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_3c

    move-object/from16 v63, v64

    .line 746
    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_33
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance v120, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v120

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_28

    .end local v119           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v120, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v119, v120

    .line 753
    .end local v120           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v119       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_34
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_29

    .line 764
    :goto_35
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2a

    .line 772
    :goto_36
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v108, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v108

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2b

    .end local v107           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v108, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v107, v108

    .line 779
    .end local v108           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v107       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_37
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    new-instance v70, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v70

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2c

    .line 781
    .end local v69           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v70, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_4d
    const-string v7, "commontime_management"

    move-object/from16 v0, v70

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_3b

    move-object/from16 v69, v70

    .line 787
    .end local v70           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v69       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_38
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2d

    .line 793
    :goto_39
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110043

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 796
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    new-instance v84, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v84

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2e

    .line 799
    .end local v83           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v84, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_50
    const-string v7, "dreams"

    move-object/from16 v0, v84

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_3a

    move-object/from16 v83, v84

    .line 806
    .end local v84           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v83       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_d
    :goto_3a
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2f

    .line 815
    .end local v86           #enableCne:I
    :goto_3b
    invoke-virtual/range {v149 .. v149}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 816
    .local v47, safeMode:Z
    if-eqz v47, :cond_20

    .line 817
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 819
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 821
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 830
    :goto_3c
    :try_start_52
    invoke-virtual/range {v140 .. v140}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_30

    .line 836
    :goto_3d
    :try_start_53
    invoke-virtual/range {v98 .. v98}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_31

    .line 841
    :goto_3e
    if-eqz v78, :cond_e

    .line 843
    :try_start_54
    invoke-virtual/range {v78 .. v78}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_32

    .line 849
    :cond_e
    :goto_3f
    if-eqz v109, :cond_f

    .line 851
    :try_start_55
    invoke-virtual/range {v109 .. v109}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_33

    .line 858
    :cond_f
    :goto_40
    :try_start_56
    invoke-virtual/range {v149 .. v149}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_34

    .line 863
    :goto_41
    if-eqz v47, :cond_10

    .line 864
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 870
    :cond_10
    invoke-virtual/range {v149 .. v149}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v71

    .line 871
    .local v71, config:Landroid/content/res/Configuration;
    new-instance v100, Landroid/util/DisplayMetrics;

    invoke-direct/range {v100 .. v100}, Landroid/util/DisplayMetrics;-><init>()V

    .line 872
    .local v100, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v142

    check-cast v142, Landroid/view/WindowManager;

    .line 873
    .local v142, w:Landroid/view/WindowManager;
    invoke-interface/range {v142 .. v142}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v100

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 874
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v71

    move-object/from16 v1, v100

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 877
    :try_start_57
    move-object/from16 v0, v133

    move-object/from16 v1, v83

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_35

    .line 883
    :goto_42
    :try_start_58
    invoke-interface/range {v111 .. v111}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_36

    .line 889
    :goto_43
    :try_start_59
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_37

    .line 895
    :goto_44
    const-string v7, "ro.crypto.state"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "unencrypted"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 896
    const-string v7, "persist.sys.setdefault"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_11

    .line 898
    :try_start_5a
    const-string v7, "com.lqsoft.launcher"

    move-object/from16 v0, v111

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->setDefaultLauncher(Ljava/lang/String;)V

    .line 899
    const-string v7, "com.ume.browser"

    move-object/from16 v0, v111

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->setDefaultBrowser(Ljava/lang/String;)V

    .line 900
    const-string v7, "persist.sys.setdefault"

    const-string v9, "true"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5a} :catch_38

    .line 909
    :cond_11
    :goto_45
    move-object/from16 v34, v5

    .line 910
    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v101

    .line 911
    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 912
    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 913
    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 914
    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 915
    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v72

    .line 916
    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v81

    .line 917
    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v138

    .line 918
    .local v42, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v133

    .line 919
    .local v43, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v44, v136

    .line 920
    .local v44, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v63

    .line 921
    .local v46, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v143

    .line 922
    .local v48, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v90

    .line 923
    .local v49, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v119

    .line 924
    .local v45, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v96

    .line 925
    .local v51, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v75

    .line 926
    .local v52, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v53, v107

    .line 927
    .local v53, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v54, v69

    .line 928
    .local v54, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v55, v131

    .line 929
    .local v55, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v127

    .line 930
    .local v50, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v56, v83

    .line 931
    .local v56, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v57, v19

    .line 932
    .local v57, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v58, v129

    .line 933
    .local v58, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v59, v103

    .line 940
    .local v59, msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v59}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1075
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1076
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_12
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1080
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    return-void

    .line 121
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v54           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v55           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v56           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v57           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v58           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v59           #msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;
    .end local v60           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v66           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v69           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v71           #config:Landroid/content/res/Configuration;
    .end local v72           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v74           #contentService:Lcom/android/server/content/ContentService;
    .end local v75           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v78           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v81           #dock:Lcom/android/server/DockObserver;
    .end local v83           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v87           #factoryTest:I
    .end local v88           #factoryTestStr:Ljava/lang/String;
    .end local v90           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .end local v96           #location:Lcom/android/server/LocationManagerService;
    .end local v98           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v100           #metrics:Landroid/util/DisplayMetrics;
    .end local v101           #mountService:Lcom/android/server/MountService;
    .end local v103           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .end local v107           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .end local v111           #pm:Landroid/content/pm/IPackageManager;
    .end local v119           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v121           #regulatory:Lcom/android/server/RegulatoryObserver;
    .end local v123           #serial:Lcom/android/server/SerialService;
    .end local v125           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v127           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v131           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v133           #twilight:Lcom/android/server/TwilightService;
    .end local v135           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v136           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v138           #usb:Lcom/android/server/usb/UsbService;
    .end local v140           #vibrator:Lcom/android/server/VibratorService;
    .end local v142           #w:Landroid/view/WindowManager;
    .end local v143           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v145           #wifi:Lcom/android/server/wifi/WifiService;
    .end local v147           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v149           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v150           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_13
    const/16 v118, 0x0

    goto/16 :goto_0

    .line 127
    .restart local v118       #reboot:Z
    :cond_14
    const/16 v117, 0x0

    .restart local v117       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 135
    .end local v117           #reason:Ljava/lang/String;
    .end local v118           #reboot:Z
    .restart local v88       #factoryTestStr:Ljava/lang/String;
    :cond_15
    invoke-static/range {v88 .. v88}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v87

    goto/16 :goto_2

    .line 266
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v60       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v66       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v69       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v72       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v74       #contentService:Lcom/android/server/content/ContentService;
    .restart local v77       #cryptState:Ljava/lang/String;
    .restart local v81       #dock:Lcom/android/server/DockObserver;
    .restart local v87       #factoryTest:I
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    .restart local v103       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v105       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v107       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v111       #pm:Landroid/content/pm/IPackageManager;
    .restart local v113       #qcCon:Ljava/lang/Object;
    .restart local v119       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v121       #regulatory:Lcom/android/server/RegulatoryObserver;
    .restart local v123       #serial:Lcom/android/server/SerialService;
    .restart local v125       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v133       #twilight:Lcom/android/server/TwilightService;
    .restart local v135       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v136       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v138       #usb:Lcom/android/server/usb/UsbService;
    .restart local v140       #vibrator:Lcom/android/server/VibratorService;
    .restart local v145       #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v147       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v149       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v150       #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_16
    :try_start_5b
    const-string v7, "1"

    move-object/from16 v0, v77

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 267
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/16 v24, 0x1

    goto/16 :goto_3

    .line 271
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 296
    .restart local v89       #firstBoot:Z
    :catch_0
    move-exception v85

    .line 297
    .local v85, e:Ljava/lang/Throwable;
    :goto_46
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v85

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_5b} :catch_1

    goto/16 :goto_6

    .line 370
    .end local v77           #cryptState:Ljava/lang/String;
    .end local v85           #e:Ljava/lang/Throwable;
    .end local v89           #firstBoot:Z
    :catch_1
    move-exception v85

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v95

    .end local v95           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v93, v94

    .line 371
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .local v85, e:Ljava/lang/RuntimeException;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    :goto_47
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v85

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 301
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v85           #e:Ljava/lang/RuntimeException;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v77       #cryptState:Ljava/lang/String;
    .restart local v89       #firstBoot:Z
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 339
    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v65           #battery:Lcom/android/server/BatteryService;
    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v95           #lights:Lcom/android/server/LightsService;
    .end local v140           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v141       #vibrator:Lcom/android/server/VibratorService;
    :cond_19
    const/16 v22, 0x0

    goto/16 :goto_8

    :cond_1a
    const/16 v23, 0x0

    goto/16 :goto_9

    .line 359
    :cond_1b
    const/4 v7, 0x1

    move/from16 v0, v87

    if-ne v0, v7, :cond_1c

    .line 360
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 370
    :catch_2
    move-exception v85

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v140, v141

    .end local v141           #vibrator:Lcom/android/server/VibratorService;
    .restart local v140       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto :goto_47

    .line 361
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #vibrator:Lcom/android/server/VibratorService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #vibrator:Lcom/android/server/VibratorService;
    :cond_1c
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 363
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 365
    :cond_1d
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v67, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/RuntimeException; {:try_start_5c .. :try_end_5c} :catch_2

    .line 367
    .end local v66           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v67, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_5d
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v67

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_5d} :catch_58

    move-object/from16 v66, v67

    .end local v67           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v66       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_a

    .line 393
    .end local v77           #cryptState:Ljava/lang/String;
    .end local v89           #firstBoot:Z
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v141           #vibrator:Lcom/android/server/VibratorService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v75       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v78       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v83       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v90       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    .restart local v96       #location:Lcom/android/server/LocationManagerService;
    .restart local v98       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v109       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v127       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v140       #vibrator:Lcom/android/server/VibratorService;
    .restart local v143       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v85

    .line 394
    .local v85, e:Ljava/lang/Throwable;
    :goto_48
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 401
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v85

    .line 402
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 408
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v85

    .line 409
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 414
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v85

    .line 415
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 436
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v85

    .line 437
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 445
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v85

    .line 446
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 453
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v85

    .line 454
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 461
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v85

    .line 462
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 469
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v85

    .line 470
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 477
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v85

    .line 478
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 485
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v85

    .line 486
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 493
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v85

    .line 494
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 503
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v85

    move-object/from16 v25, v105

    .line 504
    .end local v105           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 511
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v85

    .line 512
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting RegulatoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 519
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v85

    .line 520
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 527
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v85

    .line 528
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 536
    .end local v85           #e:Ljava/lang/Throwable;
    .restart local v86       #enableCne:I
    :cond_1e
    const/16 v68, 0x0

    goto/16 :goto_1d

    .line 553
    .restart local v68       #cneFeature:I
    :cond_1f
    :try_start_5e
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-instance v73, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v73

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_13

    .end local v72           #connectivity:Lcom/android/server/ConnectivityService;
    .local v73, connectivity:Lcom/android/server/ConnectivityService;
    move-object/from16 v72, v73

    .end local v73           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v72       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_1e

    .line 564
    .end local v68           #cneFeature:I
    .end local v113           #qcCon:Ljava/lang/Object;
    :catch_13
    move-exception v85

    .line 565
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 573
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v85

    .line 574
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 581
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v85

    .line 582
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 597
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v85

    .line 598
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 604
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v85

    .line 605
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 613
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v85

    .line 614
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 621
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v85

    .line 622
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 629
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v85

    .line 630
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 637
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v85

    .line 638
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 645
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v85

    .line 646
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 653
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v85

    .line 654
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 665
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v85

    .line 666
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 674
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v85

    .line 675
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 683
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v85

    .line 684
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 692
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v85

    .line 693
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 701
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v85

    .line 702
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 710
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v85

    .line 711
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v85

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 717
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v85

    .line 718
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 725
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v85

    .line 726
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 733
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v85

    .line 734
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v85

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 741
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v85

    .line 742
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 748
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v85

    .line 749
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 755
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v85

    .line 756
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 767
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v85

    .line 768
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 774
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v85

    .line 775
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 782
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v85

    .line 783
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 789
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v85

    .line 790
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 800
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v85

    .line 801
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 808
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v85

    .line 809
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 824
    .end local v85           #e:Ljava/lang/Throwable;
    .end local v86           #enableCne:I
    .restart local v47       #safeMode:Z
    :cond_20
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3c

    .line 831
    :catch_30
    move-exception v85

    .line 832
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 837
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v85

    .line 838
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 844
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v85

    .line 845
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 852
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v85

    .line 853
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 859
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v85

    .line 860
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 878
    .end local v85           #e:Ljava/lang/Throwable;
    .restart local v71       #config:Landroid/content/res/Configuration;
    .restart local v100       #metrics:Landroid/util/DisplayMetrics;
    .restart local v142       #w:Landroid/view/WindowManager;
    :catch_35
    move-exception v85

    .line 879
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 884
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v85

    .line 885
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 890
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v85

    .line 891
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 901
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v85

    .line 902
    .local v85, e:Landroid/os/RemoteException;
    const-string v7, "SystemServer"

    const-string v9, "Set default launcher failed!"

    move-object/from16 v0, v85

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_45

    .line 277
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47           #safeMode:Z
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v71           #config:Landroid/content/res/Configuration;
    .end local v75           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v78           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v83           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v85           #e:Landroid/os/RemoteException;
    .end local v90           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .end local v96           #location:Lcom/android/server/LocationManagerService;
    .end local v98           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v100           #metrics:Landroid/util/DisplayMetrics;
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .end local v127           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v131           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v142           #w:Landroid/view/WindowManager;
    .end local v143           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v77       #cryptState:Ljava/lang/String;
    .restart local v89       #firstBoot:Z
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    .restart local v105       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v113       #qcCon:Ljava/lang/Object;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_39
    move-exception v7

    goto/16 :goto_5

    .line 800
    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v65           #battery:Lcom/android/server/BatteryService;
    .end local v77           #cryptState:Ljava/lang/String;
    .end local v89           #firstBoot:Z
    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v95           #lights:Lcom/android/server/LightsService;
    .end local v105           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v113           #qcCon:Ljava/lang/Object;
    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v75       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v78       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v84       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v86       #enableCne:I
    .restart local v90       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    .restart local v96       #location:Lcom/android/server/LocationManagerService;
    .restart local v98       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v109       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v127       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v143       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3a
    move-exception v85

    move-object/from16 v83, v84

    .end local v84           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v83       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_5a

    .line 782
    .end local v69           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v70       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_3b
    move-exception v85

    move-object/from16 v69, v70

    .end local v70           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v69       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_59

    .line 741
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v64       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_3c
    move-exception v85

    move-object/from16 v63, v64

    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_58

    .line 710
    .end local v123           #serial:Lcom/android/server/SerialService;
    .restart local v124       #serial:Lcom/android/server/SerialService;
    :catch_3d
    move-exception v85

    move-object/from16 v123, v124

    .end local v124           #serial:Lcom/android/server/SerialService;
    .restart local v123       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_57

    .line 701
    .end local v138           #usb:Lcom/android/server/usb/UsbService;
    .restart local v139       #usb:Lcom/android/server/usb/UsbService;
    :catch_3e
    move-exception v85

    move-object/from16 v138, v139

    .end local v139           #usb:Lcom/android/server/usb/UsbService;
    .restart local v138       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_56

    .line 665
    .end local v143           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v144       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3f
    move-exception v85

    move-object/from16 v143, v144

    .end local v144           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v143       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_55

    .line 637
    .end local v75           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_40
    move-exception v85

    move-object/from16 v75, v76

    .end local v76           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v75       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_54

    .line 629
    .end local v96           #location:Lcom/android/server/LocationManagerService;
    .restart local v97       #location:Lcom/android/server/LocationManagerService;
    :catch_41
    move-exception v85

    move-object/from16 v96, v97

    .end local v97           #location:Lcom/android/server/LocationManagerService;
    .restart local v96       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_53

    .line 613
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v110       #notification:Lcom/android/server/NotificationManagerService;
    :catch_42
    move-exception v85

    move-object/from16 v109, v110

    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v109       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_52

    .line 527
    .end local v86           #enableCne:I
    .end local v145           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v113       #qcCon:Ljava/lang/Object;
    .restart local v146       #wifi:Lcom/android/server/wifi/WifiService;
    :catch_43
    move-exception v85

    move-object/from16 v145, v146

    .end local v146           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v145       #wifi:Lcom/android/server/wifi/WifiService;
    goto/16 :goto_51

    .line 519
    .end local v147           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v148       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_44
    move-exception v85

    move-object/from16 v147, v148

    .end local v148           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v147       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_50

    .line 503
    :catch_45
    move-exception v85

    goto/16 :goto_4f

    .line 493
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v105       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v106       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_46
    move-exception v85

    move-object/from16 v29, v106

    .end local v106           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_4e

    .line 485
    .end local v131           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v132       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_47
    move-exception v85

    move-object/from16 v131, v132

    .end local v132           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v131       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_4d

    .line 461
    .end local v127           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v128       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_48
    move-exception v85

    move-object/from16 v127, v128

    .end local v128           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v127       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_4c

    .line 453
    .end local v78           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v79       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_49
    move-exception v85

    move-object/from16 v78, v79

    .end local v79           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v78       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_4b

    .line 445
    .end local v98           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v99       #lockSettings:Lcom/android/server/LockSettingsService;
    :catch_4a
    move-exception v85

    move-object/from16 v98, v99

    .end local v99           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v98       #lockSettings:Lcom/android/server/LockSettingsService;
    goto/16 :goto_4a

    .line 436
    .end local v101           #mountService:Lcom/android/server/MountService;
    .restart local v102       #mountService:Lcom/android/server/MountService;
    :catch_4b
    move-exception v85

    move-object/from16 v101, v102

    .end local v102           #mountService:Lcom/android/server/MountService;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_49

    .line 423
    :catch_4c
    move-exception v7

    goto/16 :goto_10

    .line 393
    .end local v90           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v91       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_4d
    move-exception v85

    move-object/from16 v90, v91

    .end local v91           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_48

    .line 370
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v75           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v78           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v83           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v90           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v96           #location:Lcom/android/server/LocationManagerService;
    .end local v98           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .end local v127           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v131           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v143           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v80       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    .restart local v112       #power:Lcom/android/server/power/PowerManagerService;
    :catch_4e
    move-exception v85

    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v80

    .end local v80           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v112

    .end local v112           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v95

    .end local v95           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_47

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v80       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    .restart local v112       #power:Lcom/android/server/power/PowerManagerService;
    :catch_4f
    move-exception v85

    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v80

    .end local v80           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v112

    .end local v112           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v95

    .end local v95           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_47

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v80       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    :catch_50
    move-exception v85

    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v80

    .end local v80           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v95

    .end local v95           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_47

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    :catch_51
    move-exception v85

    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v95

    .end local v95           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_47

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .end local v103           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    .restart local v104       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_52
    move-exception v85

    move-object/from16 v103, v104

    .end local v104           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v103       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v95

    .end local v95           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_47

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v60           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v77       #cryptState:Ljava/lang/String;
    .restart local v89       #firstBoot:Z
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_53
    move-exception v85

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v95

    .end local v95           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v60, v61

    .end local v61           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v60       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_47

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_54
    move-exception v85

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v65

    .end local v65           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_47

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_55
    move-exception v85

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_47

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #vibrator:Lcom/android/server/VibratorService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #vibrator:Lcom/android/server/VibratorService;
    :catch_56
    move-exception v85

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v62

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v140, v141

    .end local v141           #vibrator:Lcom/android/server/VibratorService;
    .restart local v140       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_47

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #vibrator:Lcom/android/server/VibratorService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #vibrator:Lcom/android/server/VibratorService;
    :catch_57
    move-exception v85

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v140, v141

    .end local v141           #vibrator:Lcom/android/server/VibratorService;
    .restart local v140       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_47

    .end local v66           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #vibrator:Lcom/android/server/VibratorService;
    .restart local v67       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #vibrator:Lcom/android/server/VibratorService;
    :catch_58
    move-exception v85

    move-object/from16 v129, v130

    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v66, v67

    .end local v67           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v66       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v140, v141

    .end local v141           #vibrator:Lcom/android/server/VibratorService;
    .restart local v140       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_47

    .line 296
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v60           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .end local v129           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v62       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v65       #battery:Lcom/android/server/BatteryService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    .restart local v130       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_59
    move-exception v85

    move-object/from16 v60, v61

    .end local v61           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v60       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_46

    .end local v62           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v65           #battery:Lcom/android/server/BatteryService;
    .end local v77           #cryptState:Ljava/lang/String;
    .end local v89           #firstBoot:Z
    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v95           #lights:Lcom/android/server/LightsService;
    .end local v130           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v75       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v78       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v83       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v90       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    .restart local v96       #location:Lcom/android/server/LocationManagerService;
    .restart local v98       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v109       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v127       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v129       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v143       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_21
    move-object/from16 v25, v105

    .end local v105           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3b
.end method
