.class public final Lcom/android/internal/policy/impl/keyguard/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;,
        Lcom/android/internal/policy/impl/keyguard/Utilities$CalendarInfo;,
        Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;,
        Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;,
        Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final OFFSET_HIGHT:F = 0.0f

.field private static final OFFSET_WIDTH:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Utilities"

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/Utilities;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

.field public mNumOfMissdeCalendar:I

.field public mNumOfMissdeCall:I

.field public mNumOfUnreadEmail:I

.field public mNumOfUnreadMessage:I

.field private mQueryHandler:Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCall:I

    .line 36
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadMessage:I

    .line 37
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadEmail:I

    .line 38
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCalendar:I

    .line 44
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;-><init>(Lcom/android/internal/policy/impl/keyguard/Utilities;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;

    .line 49
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/Utilities;)Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/Utilities;Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/Utilities;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "drawable"

    .prologue
    const/4 v8, 0x0

    .line 302
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 303
    .local v4, width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 304
    .local v3, height:I
    const-string v5, "taoyong taoyong "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "width and height"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 306
    .local v2, config:Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 307
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 308
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 309
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 311
    return-object v0

    .line 305
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    const-class v1, Lcom/android/internal/policy/impl/keyguard/Utilities;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->sInstance:Lcom/android/internal/policy/impl/keyguard/Utilities;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Utilities;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/Utilities;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->sInstance:Lcom/android/internal/policy/impl/keyguard/Utilities;

    .line 54
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->sInstance:Lcom/android/internal/policy/impl/keyguard/Utilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getMissNum()I
    .locals 2

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, number:I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCall:I

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 326
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadMessage:I

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 327
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadEmail:I

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 328
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCalendar:I

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 329
    :cond_3
    return v0
.end method

.method public getNumOfMissdeCalendar()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCalendar:I

    return v0
.end method

.method public getNumOfMissdeCall()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCall:I

    return v0
.end method

.method public getNumOfUnreadEmail()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadEmail:I

    return v0
.end method

.method public getNumOfUnreadMessage()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadMessage:I

    return v0
.end method

.method public hasMissNum()Z
    .locals 2

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, hasMissNum:Z
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCall:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadMessage:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadEmail:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCalendar:I

    if-eqz v1, :cond_1

    .line 319
    :cond_0
    const/4 v0, 0x1

    .line 321
    :cond_1
    return v0
.end method

.method public startQuery(I)V
    .locals 8
    .parameter "id"

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 437
    .local v1, ID:I
    const/4 v3, 0x0

    .line 438
    .local v3, URI:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 439
    .local v4, PROJECT:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 440
    .local v5, SELECTION:Ljava/lang/String;
    const/4 v6, 0x0

    .line 441
    .local v6, SELECTIONARGS:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 442
    .local v7, SORTORDER:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 476
    :goto_0
    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void

    .line 444
    :pswitch_0
    const/4 v1, 0x0

    .line 445
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->URI:Landroid/net/Uri;

    .line 446
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->PROJECT:[Ljava/lang/String;

    .line 447
    const-string v5, "(type=3 AND new>0 )"

    .line 448
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->SELECTIONARGS:[Ljava/lang/String;

    .line 449
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->SORTORDER:Ljava/lang/String;

    .line 450
    goto :goto_0

    .line 452
    :pswitch_1
    const/4 v1, 0x1

    .line 453
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->URI:Landroid/net/Uri;

    .line 454
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->PROJECT:[Ljava/lang/String;

    .line 455
    const-string v5, "(type = 1 AND read = 0)"

    .line 456
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->SELECTIONARGS:[Ljava/lang/String;

    .line 457
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->SORTORDER:Ljava/lang/String;

    .line 458
    goto :goto_0

    .line 460
    :pswitch_2
    const/4 v1, 0x2

    .line 461
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->URI:Landroid/net/Uri;

    .line 462
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->PROJECT:[Ljava/lang/String;

    .line 463
    const-string v5, "unreadCount > 0"

    .line 464
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->SELECTIONARGS:[Ljava/lang/String;

    .line 465
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->SORTORDER:Ljava/lang/String;

    .line 466
    goto :goto_0

    .line 468
    :pswitch_3
    const/4 v1, 0x3

    .line 469
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$CalendarInfo;->URI:Landroid/net/Uri;

    .line 470
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/Utilities$CalendarInfo;->PROJECT:[Ljava/lang/String;

    .line 471
    const-string v5, "(state=1)"

    .line 472
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Utilities$CalendarInfo;->SELECTIONARGS:[Ljava/lang/String;

    .line 473
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/Utilities$CalendarInfo;->SORTORDER:Ljava/lang/String;

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public updateNumOfIcon(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 24
    .parameter "num"
    .parameter "src"

    .prologue
    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    .line 58
    .local v20, width:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 59
    .local v10, height:I
    const-string v21, "Utilities"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "width="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "height="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static/range {p2 .. p2}, Lcom/android/internal/policy/impl/keyguard/Utilities;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 61
    .local v15, newIcon:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c1

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 62
    .local v12, iconABit:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c1

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 63
    .local v13, iconBBit:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    .local v9, cv:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800cb

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 65
    .local v14, iconBg:Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 66
    .local v6, bgWidth:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 67
    .local v5, bgHight:I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 68
    .local v8, bitWidth:I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 69
    .local v7, bitHight:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v6

    move/from16 v22, v0

    sub-float v21, v21, v22

    const/16 v22, 0x0

    sub-float v21, v21, v22

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v9, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 70
    move-object/from16 v11, p2

    .line 72
    .local v11, icon:Landroid/graphics/drawable/Drawable;
    if-ltz p1, :cond_1

    const/16 v21, 0x9

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_1

    .line 74
    sub-int v21, v20, v6

    sub-int v22, v6, v8

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    sub-float v18, v21, v22

    .line 75
    .local v18, offsetX:F
    sub-int v21, v5, v7

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    add-float v19, v21, v22

    .line 76
    .local v19, offsetY:F
    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object/from16 p2, v11

    .line 298
    .end local v18           #offsetX:F
    .end local v19           #offsetY:F
    .end local p2
    :cond_0
    :goto_1
    return-object p2

    .line 78
    .restart local v18       #offsetX:F
    .restart local v19       #offsetY:F
    .restart local p2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c1

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 79
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 80
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 82
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 83
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 86
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c2

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 87
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 90
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 91
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 92
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 94
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c3

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 95
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 98
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 99
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 100
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 102
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c4

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 103
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 104
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 106
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 107
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 108
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 110
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c5

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 111
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 114
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 115
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 116
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 118
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c6

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 119
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 122
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 123
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 126
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c7

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 127
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 128
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 130
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 131
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 134
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c8

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 135
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 138
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 139
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 140
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 142
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c9

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 143
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 144
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 146
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 147
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 148
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 150
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800ca

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 151
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 152
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 154
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 155
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 161
    .end local v18           #offsetX:F
    .end local v19           #offsetY:F
    :cond_1
    const/16 v21, 0xa

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    const/16 v21, 0x63

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    .line 162
    sub-int v21, v20, v6

    mul-int/lit8 v22, v8, 0x2

    sub-int v22, v6, v22

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    sub-float v16, v21, v22

    .line 163
    .local v16, offsetAbitX:F
    int-to-float v0, v8

    move/from16 v21, v0

    add-float v17, v16, v21

    .line 164
    .local v17, offsetBbitX:F
    sub-int v21, v5, v7

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    add-float v19, v21, v22

    .line 166
    .restart local v19       #offsetY:F
    div-int/lit8 v3, p1, 0xa

    .line 167
    .local v3, aBit:I
    rem-int/lit8 v4, p1, 0xa

    .line 168
    .local v4, bBit:I
    const-string v21, "taoyong"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "aBitaBit"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v21, "taoyong"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "bBitbBit"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    packed-switch v3, :pswitch_data_1

    .line 214
    :goto_2
    packed-switch v4, :pswitch_data_2

    :goto_3
    move-object/from16 p2, v11

    .line 296
    goto/16 :goto_1

    .line 172
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c1

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 173
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 176
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c2

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 177
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 180
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c3

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 181
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 184
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c4

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 185
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 188
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c5

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 189
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 192
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c6

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 193
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 196
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c7

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 197
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 200
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c8

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 201
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 202
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 203
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 205
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c9

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 206
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 209
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800ca

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 210
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 216
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c1

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 217
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 218
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 220
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 221
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 222
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 224
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c2

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 225
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 226
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 228
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 229
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 230
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 232
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c3

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 233
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 234
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 236
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 237
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 238
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 240
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c4

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 241
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 242
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 244
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 245
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 246
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 248
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c5

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 249
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 250
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 252
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 253
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 254
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 256
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c6

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 257
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 258
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 260
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 261
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 262
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 264
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c7

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 265
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 266
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 268
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 269
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 270
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 272
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c8

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 273
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 274
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 276
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 277
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 278
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 280
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c9

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 281
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 282
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 284
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 285
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 286
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 288
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800ca

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 289
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 290
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 292
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 293
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 170
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 214
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method
