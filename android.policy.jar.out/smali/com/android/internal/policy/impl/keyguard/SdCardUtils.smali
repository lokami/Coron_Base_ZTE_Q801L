.class public Lcom/android/internal/policy/impl/keyguard/SdCardUtils;
.super Ljava/lang/Object;
.source "SdCardUtils.java"


# static fields
.field public static final EXTERNAL_SD:I = 0x1

.field public static final INTERNAL_SD:I = 0x0

.field public static final SD_SIZE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SdCardUtils"

.field private static customCofigGesture:Ljava/io/File; = null

.field private static final debug:Z = true

.field private static externalSD:Ljava/io/File;

.field private static internalSD:Ljava/io/File;

.field private static pdSD:I

.field private static sdForPd:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->sdForPd:Ljava/io/File;

    .line 26
    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->internalSD:Ljava/io/File;

    .line 27
    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->externalSD:Ljava/io/File;

    .line 28
    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->customCofigGesture:Ljava/io/File;

    .line 29
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->pdSD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chooseSDForPD(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, 0x400

    .line 82
    sget v2, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->pdSD:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 83
    const-string v2, "SdCardUtils"

    const-string v3, "liuji debug chooseSDForPD InternalSDSize:000"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->getInternalSD(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->getSDSize(Ljava/io/File;)J

    move-result-wide v2

    div-long/2addr v2, v4

    div-long v0, v2, v4

    .line 86
    .local v0, size:J
    const-string v2, "SdCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liuji debug chooseSDForPD InternalSDSize1111 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-wide/16 v2, 0x8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 88
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->pdSD:I

    .line 89
    const-string v2, "SdCardUtils"

    const-string v3, "liuji debug chooseSDForPD INTERNAL_SD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v0           #size:J
    :cond_0
    :goto_0
    sget v2, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->pdSD:I

    return v2

    .line 91
    .restart local v0       #size:J
    :cond_1
    const/4 v2, 0x1

    sput v2, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->pdSD:I

    .line 92
    const-string v2, "SdCardUtils"

    const-string v3, "liuji debug chooseSDForPD EXTERNAL_SD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getAvailableSDSize(Ljava/io/File;)J
    .locals 7
    .parameter "file"

    .prologue
    .line 156
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->isSDAvailable(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 157
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 158
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 159
    .local v2, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 160
    .local v0, availableBlocks:J
    mul-long v5, v0, v2

    .line 162
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v4           #stat:Landroid/os/StatFs;
    :goto_0
    return-wide v5

    :cond_0
    const-wide/16 v5, -0x1

    goto :goto_0
.end method

.method public static getAvailableSDSizeForPD(Landroid/content/Context;)J
    .locals 8
    .parameter "context"

    .prologue
    const-wide/16 v6, 0x400

    .line 166
    const-wide/16 v0, -0x1

    .line 167
    .local v0, size:J
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->getSDFileForPD(Landroid/content/Context;)Ljava/io/File;

    .line 168
    sget v2, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->pdSD:I

    packed-switch v2, :pswitch_data_0

    .line 178
    :goto_0
    const-string v2, "SdCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liuji debug getAvailableSDSizeForPD size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-long v4, v0, v6

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-wide v0

    .line 170
    :pswitch_0
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->internalSD:Ljava/io/File;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->getAvailableSDSize(Ljava/io/File;)J

    move-result-wide v0

    .line 171
    goto :goto_0

    .line 173
    :pswitch_1
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->externalSD:Ljava/io/File;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->getAvailableSDSize(Ljava/io/File;)J

    move-result-wide v0

    .line 174
    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCustomConfigGesture(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "context"

    .prologue
    .line 68
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->customCofigGesture:Ljava/io/File;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/custom_config/gestures"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->customCofigGesture:Ljava/io/File;

    .line 71
    :cond_0
    const-string v0, "SdCardUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liuji debug getCustomConfigGesture  customCofigGesture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->customCofigGesture:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->customCofigGesture:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalSD(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->externalSD:Ljava/io/File;

    if-nez v0, :cond_0

    .line 76
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->getTAndSD(Landroid/content/Context;)V

    .line 78
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->externalSD:Ljava/io/File;

    return-object v0
.end method

.method public static getInternalSD(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "context"

    .prologue
    .line 61
    const-string v0, "SdCardUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liuji debug getInternalSD  InternalSDSize:internalSD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->internalSD:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->internalSD:Ljava/io/File;

    if-nez v0, :cond_0

    .line 63
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->getTAndSD(Landroid/content/Context;)V

    .line 65
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->internalSD:Ljava/io/File;

    return-object v0
.end method

.method public static getPDPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 123
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->getSDFileForPD(Landroid/content/Context;)Ljava/io/File;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->sdForPd:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.privacy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDFileForPD(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "context"

    .prologue
    .line 99
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->sdForPd:Ljava/io/File;

    if-nez v0, :cond_0

    .line 100
    const-string v0, "SdCardUtils"

    const-string v1, "liuji debug getSDFileForPD begin 000:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->chooseSDForPD(Landroid/content/Context;)I

    .line 102
    const-string v0, "SdCardUtils"

    const-string v1, "liuji debug getSDFileForPD end 111:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->pdSD:I

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->sdForPd:Ljava/io/File;

    if-nez v0, :cond_0

    .line 114
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->getExternalSD(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->sdForPd:Ljava/io/File;

    .line 115
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->pdSD:I

    .line 118
    :cond_0
    const-string v0, "SdCardUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liuji debug getSDFileForPD sdForPd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->sdForPd:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->sdForPd:Ljava/io/File;

    return-object v0

    .line 105
    :pswitch_0
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->getInternalSD(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->sdForPd:Ljava/io/File;

    goto :goto_0

    .line 108
    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->getExternalSD(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->sdForPd:Ljava/io/File;

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getSDSize(Ljava/io/File;)J
    .locals 7
    .parameter "file"

    .prologue
    .line 146
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->isSDAvailable(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 147
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 149
    .local v0, blockSize:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v3, v5

    .line 150
    .local v3, totalBlocks:J
    mul-long v5, v3, v0

    .line 152
    .end local v0           #blockSize:J
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #totalBlocks:J
    :goto_0
    return-wide v5

    :cond_0
    const-wide/16 v5, -0x1

    goto :goto_0
.end method

.method private static getTAndSD(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 40
    :try_start_0
    const-string v8, "storage"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManager;

    move-object v0, v8

    check-cast v0, Landroid/os/storage/StorageManager;

    move-object v5, v0

    .line 41
    .local v5, sm:Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 42
    .local v7, volumes:[Landroid/os/storage/StorageVolume;
    const-string v8, "SdCardUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "liuji debug getTAndSD 000  sm="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",volumes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",volumes.length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    move-object v1, v7

    .local v1, arr$:[Landroid/os/storage/StorageVolume;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    .line 44
    .local v6, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v8

    if-nez v8, :cond_0

    .line 46
    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->internalSD:Ljava/io/File;

    .line 47
    const-string v8, "SdCardUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "liuji debug getTAndSD 111 internalSD="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->internalSD:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->externalSD:Ljava/io/File;

    .line 51
    const-string v8, "SdCardUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "liuji debug getTAndSD 222 externalSD="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->externalSD:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 55
    .end local v1           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sm:Landroid/os/storage/StorageManager;
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    .end local v7           #volumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v2

    .line 56
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "SdCardUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "liuji debug getTAndSD 333 Exception ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static initSdCardUtils()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->sdForPd:Ljava/io/File;

    .line 33
    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->internalSD:Ljava/io/File;

    .line 34
    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->externalSD:Ljava/io/File;

    .line 35
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->pdSD:I

    .line 36
    return-void
.end method

.method private static isSDAvailable(Ljava/io/File;)Z
    .locals 4
    .parameter "file"

    .prologue
    const/4 v1, 0x0

    .line 133
    if-nez p0, :cond_0

    .line 142
    :goto_0
    return v1

    .line 137
    :cond_0
    :try_start_0
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 139
    .local v0, mountService:Landroid/os/storage/IMountService;
    const-string v2, "mounted"

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 140
    .end local v0           #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isSDForPDAvailable(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 128
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->getSDFileForPD(Landroid/content/Context;)Ljava/io/File;

    .line 129
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->sdForPd:Ljava/io/File;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->isSDAvailable(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
