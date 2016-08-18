.class public Lcom/android/internal/policy/impl/keyguard/ZTEWeather;
.super Landroid/widget/RelativeLayout;
.source "ZTEWeather.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTEWeather"

.field protected static final WEATHER_QUERY_TOKEN:I = 0x0

.field private static final debug:Z = true

.field private static final timeOneDay:J = 0x5265c00L


# instance fields
.field private cityName:Landroid/widget/TextView;

.field private curTemp:Landroid/widget/TextView;

.field private highTemp:Landroid/widget/TextView;

.field private info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

.field private lowTemp:Landroid/widget/TextView;

.field private mContentUri:Landroid/net/Uri;

.field protected mQueryHandler:Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;

.field private mRegisterObserver:Z

.field private mWeatherIsdefultIndex:I

.field private mWeatherQueryColumns:[Ljava/lang/String;

.field private originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

.field private weaterCp:Ljava/lang/String;

.field private weatherDescription:Landroid/widget/TextView;

.field private weathernIcon:Landroid/widget/ImageView;

.field private weathernSeperator:Landroid/widget/ImageView;

.field private weathernSeperatorHorizonal:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mRegisterObserver:Z

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mWeatherIsdefultIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Lcom/android/internal/policy/impl/keyguard/WeatherInfo;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->saveWeatherInfo(Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->saveHFWeatherInfo(Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Lcom/android/internal/policy/impl/keyguard/WeatherInfo;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Lcom/android/internal/policy/impl/keyguard/WeatherInfo;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->saveOriginalInfo(Lcom/android/internal/policy/impl/keyguard/WeatherInfo;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->updateWidgetView()V

    return-void
.end method

.method private formatCityName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4
    .parameter "c"

    .prologue
    .line 224
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, name:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, englishName:Ljava/lang/String;
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, reName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 229
    .end local v2           #reName:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 228
    .restart local v2       #reName:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->isChinese()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 229
    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 88
    const-string v0, "ZTEWeather"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    .line 90
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;-><init>(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    .line 99
    const-string v0, "ZTEWeather"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config_keyguard_weather_cp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    const-string v1, "accu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/WeatherProvider$WeatherColumns;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mContentUri:Landroid/net/Uri;

    .line 102
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/WeatherProvider$WeatherColumns;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mWeatherQueryColumns:[Ljava/lang/String;

    .line 103
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mWeatherIsdefultIndex:I

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->query()V

    .line 110
    return-void

    .line 105
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/WeatherProvider$HFWeatherColumns;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mContentUri:Landroid/net/Uri;

    .line 106
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/WeatherProvider$HFWeatherColumns;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mWeatherQueryColumns:[Ljava/lang/String;

    .line 107
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mWeatherIsdefultIndex:I

    goto :goto_0
.end method

.method private isChinese()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 233
    sget-object v6, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, chinese:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 236
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 237
    .local v2, config:Landroid/content/res/Configuration;
    iget-object v6, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, language:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    .line 243
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #config:Landroid/content/res/Configuration;
    .end local v4           #language:Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 240
    :catch_0
    move-exception v3

    .line 241
    .local v3, ex:Landroid/os/RemoteException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private saveHFWeatherInfo(Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 2
    .parameter "c"

    .prologue
    .line 211
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;-><init>()V

    .line 213
    .local v0, wInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->formatCityName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCityName(Ljava/lang/String;)V

    .line 214
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 215
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 216
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 217
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    .line 221
    return-object v0
.end method

.method private saveOriginalInfo(Lcom/android/internal/policy/impl/keyguard/WeatherInfo;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 2
    .parameter "wInfo"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTemp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTempMin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTempMax()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    return-object v0
.end method

.method private saveWeatherInfo(Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 3
    .parameter "c"

    .prologue
    .line 180
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;-><init>()V

    .line 186
    .local v0, wInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCityName(Ljava/lang/String;)V

    .line 188
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 189
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 190
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 191
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    .line 192
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionText(Ljava/lang/String;)V

    .line 193
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setReportTime(J)V

    .line 194
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastCondition1(I)V

    .line 195
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastCondition2(I)V

    .line 196
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastCondition3(I)V

    .line 197
    const/16 v1, 0x17

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastCondition4(I)V

    .line 198
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMax1(Ljava/lang/String;)V

    .line 199
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMax2(Ljava/lang/String;)V

    .line 200
    const/16 v1, 0x15

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMax3(Ljava/lang/String;)V

    .line 201
    const/16 v1, 0x19

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMax4(Ljava/lang/String;)V

    .line 202
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMin1(Ljava/lang/String;)V

    .line 203
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMin2(Ljava/lang/String;)V

    .line 204
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMin3(Ljava/lang/String;)V

    .line 205
    const/16 v1, 0x18

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMin4(Ljava/lang/String;)V

    .line 206
    const/16 v1, 0x20

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentDate(Ljava/lang/String;)V

    .line 207
    const/16 v1, 0x21

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentWeek(Ljava/lang/String;)V

    .line 208
    return-object v0
.end method

.method private updateWidgetView()V
    .locals 18

    .prologue
    .line 264
    const-string v9, ""

    .line 265
    .local v9, tempUnit:Ljava/lang/String;
    const/4 v12, 0x0

    .line 266
    .local v12, weatherState:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v15, 0x104001d

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, degree:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v15, 0x104001b

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, defDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    const-string v15, "accu"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 269
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107003b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 273
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107003c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 274
    .local v13, weatherUnit:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v15, 0x104001e

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, noCityDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v15, 0x104001a

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, autoLocationDescription:Ljava/lang/String;
    const-string v14, "ZTEWeather"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateWidgetView="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v5, 0x0

    .line 278
    .local v5, metric:I
    if-nez v5, :cond_4

    .line 279
    const/4 v14, 0x0

    aget-object v9, v13, v14

    .line 283
    :goto_1
    const/4 v4, 0x0

    .line 284
    .local v4, i:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherUtils;->getStartTime(J)J

    move-result-wide v10

    .line 288
    .local v10, time:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentDate()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/policy/impl/keyguard/WeatherUtils;->getObservationTime(Ljava/lang/String;)J

    move-result-wide v7

    .line 289
    .local v7, observationTime:J
    const-wide/16 v14, 0x0

    cmp-long v14, v7, v14

    if-eqz v14, :cond_1

    .line 290
    cmp-long v14, v10, v7

    if-gez v14, :cond_5

    .line 291
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    const-string v15, ""

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    const-string v15, ""

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    const-string v15, ""

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    .line 331
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCityName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Unknown"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->cityName:Landroid/widget/TextView;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCityName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Unknown"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTemp()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 341
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->curTemp:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 342
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weatherDescription:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 360
    :goto_4
    return-void

    .line 271
    .end local v1           #autoLocationDescription:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #metric:I
    .end local v6           #noCityDescription:Ljava/lang/String;
    .end local v7           #observationTime:J
    .end local v10           #time:J
    .end local v13           #weatherUnit:[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107003d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 281
    .restart local v1       #autoLocationDescription:Ljava/lang/String;
    .restart local v5       #metric:I
    .restart local v6       #noCityDescription:Ljava/lang/String;
    .restart local v13       #weatherUnit:[Ljava/lang/String;
    :cond_4
    const/4 v14, 0x1

    aget-object v9, v13, v14

    goto/16 :goto_1

    .line 296
    .restart local v4       #i:I
    .restart local v7       #observationTime:J
    .restart local v10       #time:J
    :cond_5
    sub-long v14, v10, v7

    const-wide/32 v16, 0x5265c00

    div-long v14, v14, v16

    long-to-int v4, v14

    .line 297
    packed-switch v4, :pswitch_data_0

    .line 325
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    const-string v15, ""

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    goto :goto_2

    .line 298
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    if-eqz v14, :cond_1

    .line 299
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTemp()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTempMin()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTempMax()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 305
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastCondition1()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin1()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin1()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMax1()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 310
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastCondition2()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin2()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin2()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMax2()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 315
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastCondition3()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin3()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin3()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMax3()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 320
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastCondition4()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin4()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin4()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMax4()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 333
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCityName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "auto location"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->cityName:Landroid/widget/TextView;

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 337
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->cityName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCityName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 346
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->curTemp:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTemp()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    const-string v15, "accu"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 348
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weatherDescription:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v15

    aget-object v15, v12, v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_4

    .line 351
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v14

    if-ltz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v14

    array-length v15, v12

    add-int/lit8 v15, v15, -0x2

    if-le v14, v15, :cond_c

    .line 352
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weatherDescription:Landroid/widget/TextView;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_4

    .line 355
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weatherDescription:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    aget-object v15, v12, v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_4

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public formatReportTime(Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .parameter "time"

    .prologue
    .line 246
    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 251
    :goto_0
    return-object v3

    .line 247
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 249
    .local v1, pos:Ljava/text/ParsePosition;
    invoke-virtual {v0, p1, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 250
    .local v2, reportDate:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 251
    .local v3, reportTime:Ljava/lang/Long;
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 115
    const v0, 0x1020324

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->cityName:Landroid/widget/TextView;

    .line 116
    const v0, 0x1020322

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->curTemp:Landroid/widget/TextView;

    .line 118
    const v0, 0x1020325

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weatherDescription:Landroid/widget/TextView;

    .line 119
    const v0, 0x1020323

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernIcon:Landroid/widget/ImageView;

    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->init()V

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    const-string v1, "accu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    const-string v0, "ZTEWeather"

    const-string v1, "weathernIcon accu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernIcon:Landroid/widget/ImageView;

    const v1, 0x10800d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v0, "ZTEWeather"

    const-string v1, "weathernIcon hf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernIcon:Landroid/widget/ImageView;

    const v1, 0x10800da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 366
    const-string v0, "ZTEWeather"

    const-string v1, "onInterceptTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 362
    const-string v0, "ZTEWeather"

    const-string v1, "onTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public query()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mContentUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mWeatherQueryColumns:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method
