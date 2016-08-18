.class public Lcom/android/internal/policy/impl/keyguard/WeatherProvider$WeatherColumns;
.super Ljava/lang/Object;
.source "WeatherProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/WeatherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherColumns"
.end annotation


# static fields
.field public static final CITY_ID:Ljava/lang/String; = "cityid"

.field public static final CITY_NAME:Ljava/lang/String; = "cityname"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_1:Landroid/net/Uri; = null

.field public static final C_APPTEMP:Ljava/lang/String; = "c_apptemp"

.field public static final C_CONDITION:Ljava/lang/String; = "c_condition"

.field public static final C_CONDITIONTEXT:Ljava/lang/String; = "c_text"

.field public static final C_DATE:Ljava/lang/String; = "c_date"

.field public static final C_HUMIDITY:Ljava/lang/String; = "c_humidity"

.field public static final C_REPORT_TIME:Ljava/lang/String; = "c_reporttime"

.field public static final C_TEMPERATURE:Ljava/lang/String; = "c_temp"

.field public static final C_UV:Ljava/lang/String; = "c_uv"

.field public static final C_VISIBILITY:Ljava/lang/String; = "c_visibility"

.field public static final C_WEEK:Ljava/lang/String; = "c_week"

.field public static final C_WINDSPEED:Ljava/lang/String; = "c_windspeed"

.field public static final F_CONDITION1:Ljava/lang/String; = "f_condition1"

.field public static final F_CONDITION2:Ljava/lang/String; = "f_condition2"

.field public static final F_CONDITION3:Ljava/lang/String; = "f_condition3"

.field public static final F_CONDITION4:Ljava/lang/String; = "f_condition4"

.field public static final F_MAXTEMP:Ljava/lang/String; = "f_maxtemp"

.field public static final F_MAXTEMP1:Ljava/lang/String; = "f_maxtemp1"

.field public static final F_MAXTEMP2:Ljava/lang/String; = "f_maxtemp2"

.field public static final F_MAXTEMP3:Ljava/lang/String; = "f_maxtemp3"

.field public static final F_MAXTEMP4:Ljava/lang/String; = "f_maxtemp4"

.field public static final F_MINTEMP:Ljava/lang/String; = "f_mintemp"

.field public static final F_MINTEMP1:Ljava/lang/String; = "f_mintemp1"

.field public static final F_MINTEMP2:Ljava/lang/String; = "f_mintemp2"

.field public static final F_MINTEMP3:Ljava/lang/String; = "f_mintemp3"

.field public static final F_MINTEMP4:Ljava/lang/String; = "f_mintemp4"

.field public static final F_REPORTTIME:Ljava/lang/String; = "f_reporttime"

.field public static final F_WEEK1:Ljava/lang/String; = "f_week1"

.field public static final F_WEEK2:Ljava/lang/String; = "f_week2"

.field public static final F_WEEK3:Ljava/lang/String; = "f_week3"

.field public static final F_WEEK4:Ljava/lang/String; = "f_week4"

.field public static final IS_DEFAULT:Ljava/lang/String; = "is_default"

.field public static final WEATHER_CAPPTEMP_INDEX:I = 0x1a

.field public static final WEATHER_CCONDITION_INDEX:I = 0x4

.field public static final WEATHER_CDATE_INDEX:I = 0x20

.field public static final WEATHER_CHUMIDITY_INDEX:I = 0x1d

.field public static final WEATHER_CITYID_INDEX:I = 0x2

.field public static final WEATHER_CITYNAME_INDEX:I = 0x1

.field public static final WEATHER_CREPORTTIME_INDEX:I = 0x3

.field public static final WEATHER_CTEMPERATURE_INDEX:I = 0x5

.field public static final WEATHER_CTEXT_INDEX:I = 0x11

.field public static final WEATHER_CUV_INDEX:I = 0x1e

.field public static final WEATHER_CVISIBILITY_INDEX:I = 0x1c

.field public static final WEATHER_CWEEK_INDEX:I = 0x21

.field public static final WEATHER_CWINDSPEED_INDEX:I = 0x1b

.field public static final WEATHER_FCONDITION1_INDEX:I = 0x8

.field public static final WEATHER_FCONDITION2_INDEX:I = 0xc

.field public static final WEATHER_FCONDITION3_INDEX:I = 0x13

.field public static final WEATHER_FCONDITION4_INDEX:I = 0x17

.field public static final WEATHER_FMAXTEMP1_INDEX:I = 0xa

.field public static final WEATHER_FMAXTEMP2_INDEX:I = 0xe

.field public static final WEATHER_FMAXTEMP3_INDEX:I = 0x15

.field public static final WEATHER_FMAXTEMP4_INDEX:I = 0x19

.field public static final WEATHER_FMAXTEMP_INDEX:I = 0x10

.field public static final WEATHER_FMINTEMP1_INDEX:I = 0x9

.field public static final WEATHER_FMINTEMP2_INDEX:I = 0xd

.field public static final WEATHER_FMINTEMP3_INDEX:I = 0x14

.field public static final WEATHER_FMINTEMP4_INDEX:I = 0x18

.field public static final WEATHER_FMINTEMP_INDEX:I = 0xf

.field public static final WEATHER_FREPORTTIME_INDEX:I = 0x6

.field public static final WEATHER_FWEEK1_INDEX:I = 0x7

.field public static final WEATHER_FWEEK2_INDEX:I = 0xb

.field public static final WEATHER_FWEEK3_INDEX:I = 0x12

.field public static final WEATHER_FWEEK4_INDEX:I = 0x16

.field public static final WEATHER_ID_INDEX:I = 0x0

.field public static final WEATHER_ISDEFAULT_INDEX:I = 0x1f

.field public static final WEATHER_QUERY_COLUMNS:[Ljava/lang/String; = null

.field public static final WEATHER_WIDGET_ADDED:I = 0x22

.field public static final WIDGET_ADDED:Ljava/lang/String; = "widget_added"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-string v0, "content://com.android.ztewidget2d.weather/weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/WeatherProvider$WeatherColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 33
    const-string v0, "content://com.android.ztewidget2d.weather/weather/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/WeatherProvider$WeatherColumns;->CONTENT_URI_1:Landroid/net/Uri;

    .line 105
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cityname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cityid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "c_reporttime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "c_condition"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "c_temp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "f_reporttime"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "f_week1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "f_condition1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "f_mintemp1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "f_maxtemp1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "f_week2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "f_condition2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "f_mintemp2"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "f_maxtemp2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f_mintemp"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "f_maxtemp"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "c_text"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "f_week3"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "f_condition3"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "f_mintemp3"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "f_maxtemp3"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "f_week4"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "f_condition4"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "f_mintemp4"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "f_maxtemp4"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "c_apptemp"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "c_windspeed"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "c_visibility"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "c_humidity"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "c_uv"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "is_default"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "c_date"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "c_week"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "widget_added"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/WeatherProvider$WeatherColumns;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
