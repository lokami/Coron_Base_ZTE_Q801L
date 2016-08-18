.class public Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
.super Ljava/lang/Object;
.source "WeatherInfo.java"


# instance fields
.field private cityId:Ljava/lang/String;

.field private cityName:Ljava/lang/String;

.field private currentAppTemp:Ljava/lang/String;

.field private currentConditionImg:I

.field private currentConditionText:Ljava/lang/String;

.field private currentDate:Ljava/lang/String;

.field private currentHumidity:Ljava/lang/String;

.field private currentTemp:Ljava/lang/String;

.field private currentTempMax:Ljava/lang/String;

.field private currentTempMin:Ljava/lang/String;

.field private currentUV:Ljava/lang/String;

.field private currentVisibility:Ljava/lang/String;

.field private currentWeedSpeed:Ljava/lang/String;

.field private currentWeek:Ljava/lang/String;

.field private forecastCondition1:I

.field private forecastCondition2:I

.field private forecastCondition3:I

.field private forecastCondition4:I

.field private forecastTempMax1:Ljava/lang/String;

.field private forecastTempMax2:Ljava/lang/String;

.field private forecastTempMax3:Ljava/lang/String;

.field private forecastTempMax4:Ljava/lang/String;

.field private forecastTempMin1:Ljava/lang/String;

.field private forecastTempMin2:Ljava/lang/String;

.field private forecastTempMin3:Ljava/lang/String;

.field private forecastTempMin4:Ljava/lang/String;

.field private forecastWeek1:Ljava/lang/String;

.field private forecastWeek2:Ljava/lang/String;

.field private forecastWeek3:Ljava/lang/String;

.field private forecastWeek4:Ljava/lang/String;

.field private reportTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->cityName:Ljava/lang/String;

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->reportTime:J

    .line 9
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentConditionImg:I

    .line 21
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastCondition1:I

    .line 26
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastCondition2:I

    .line 31
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastCondition3:I

    .line 36
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastCondition4:I

    .line 44
    return-void
.end method


# virtual methods
.method public getCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->cityId:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentAppTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentAppTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentConditionImg()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentConditionImg:I

    return v0
.end method

.method public getCurrentConditionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentConditionText:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentHumidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentHumidity:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTempMax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentTempMax:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTempMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentTempMin:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentUV:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVisibility()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentVisibility:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWeedSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentWeedSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWeek()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentWeek:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastCondition1()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastCondition1:I

    return v0
.end method

.method public getForecastCondition2()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastCondition2:I

    return v0
.end method

.method public getForecastCondition3()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastCondition3:I

    return v0
.end method

.method public getForecastCondition4()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastCondition4:I

    return v0
.end method

.method public getForecastTempMax1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMax1:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastTempMax2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMax2:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastTempMax3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMax3:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastTempMax4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMax4:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastTempMin1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMin1:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastTempMin2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMin2:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastTempMin3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMin3:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastTempMin4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMin4:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastWeek1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastWeek1:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastWeek2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastWeek2:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastWeek3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastWeek3:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastWeek4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastWeek4:Ljava/lang/String;

    return-object v0
.end method

.method public getReportTime()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->reportTime:J

    return-wide v0
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0
    .parameter "cityId"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->cityId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .parameter "cityName"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->cityName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setCurrentAppTemp(Ljava/lang/String;)V
    .locals 0
    .parameter "currentAppTemp"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentAppTemp:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setCurrentConditionImg(I)V
    .locals 0
    .parameter "currentConditionImg"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentConditionImg:I

    .line 76
    return-void
.end method

.method public setCurrentConditionText(Ljava/lang/String;)V
    .locals 0
    .parameter "currentConditionText"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentConditionText:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setCurrentDate(Ljava/lang/String;)V
    .locals 0
    .parameter "currentDate"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentDate:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setCurrentHumidity(Ljava/lang/String;)V
    .locals 0
    .parameter "currentHumidity"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentHumidity:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setCurrentTemp(Ljava/lang/String;)V
    .locals 0
    .parameter "currentTemp"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentTemp:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setCurrentTempMax(Ljava/lang/String;)V
    .locals 0
    .parameter "currentTempMax"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentTempMax:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setCurrentTempMin(Ljava/lang/String;)V
    .locals 0
    .parameter "currentTempMin"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentTempMin:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setCurrentUV(Ljava/lang/String;)V
    .locals 0
    .parameter "currentUV"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentUV:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setCurrentVisibility(Ljava/lang/String;)V
    .locals 0
    .parameter "currentVisibility"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentVisibility:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setCurrentWeedSpeed(Ljava/lang/String;)V
    .locals 0
    .parameter "currentWeedSpeed"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentWeedSpeed:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setCurrentWeek(Ljava/lang/String;)V
    .locals 0
    .parameter "currentWeek"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->currentWeek:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setForecastCondition1(I)V
    .locals 0
    .parameter "forecastCondition1"

    .prologue
    .line 115
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastCondition1:I

    .line 116
    return-void
.end method

.method public setForecastCondition2(I)V
    .locals 0
    .parameter "forecastCondition2"

    .prologue
    .line 147
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastCondition2:I

    .line 148
    return-void
.end method

.method public setForecastCondition3(I)V
    .locals 0
    .parameter "forecastCondition3"

    .prologue
    .line 179
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastCondition3:I

    .line 180
    return-void
.end method

.method public setForecastCondition4(I)V
    .locals 0
    .parameter "forecastCondition4"

    .prologue
    .line 211
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastCondition4:I

    .line 212
    return-void
.end method

.method public setForecastTempMax1(Ljava/lang/String;)V
    .locals 0
    .parameter "forecastTempMax1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMax1:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setForecastTempMax2(Ljava/lang/String;)V
    .locals 0
    .parameter "forecastTempMax2"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMax2:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setForecastTempMax3(Ljava/lang/String;)V
    .locals 0
    .parameter "forecastTempMax3"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMax3:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setForecastTempMax4(Ljava/lang/String;)V
    .locals 0
    .parameter "forecastTempMax4"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMax4:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setForecastTempMin1(Ljava/lang/String;)V
    .locals 0
    .parameter "forecastTempMin1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMin1:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setForecastTempMin2(Ljava/lang/String;)V
    .locals 0
    .parameter "forecastTempMin2"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMin2:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setForecastTempMin3(Ljava/lang/String;)V
    .locals 0
    .parameter "forecastTempMin3"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMin3:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setForecastTempMin4(Ljava/lang/String;)V
    .locals 0
    .parameter "forecastTempMin4"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastTempMin4:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setForecastWeek1(Ljava/lang/String;)V
    .locals 0
    .parameter "forecastWeek1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastWeek1:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setForecastWeek2(Ljava/lang/String;)V
    .locals 0
    .parameter "forecastWeek2"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastWeek2:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setForecastWeek3(Ljava/lang/String;)V
    .locals 0
    .parameter "forecastWeek3"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastWeek3:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setForecastWeek4(Ljava/lang/String;)V
    .locals 0
    .parameter "forecastWeek4"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->forecastWeek4:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setReportTime(J)V
    .locals 0
    .parameter "reportTime"

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->reportTime:J

    .line 68
    return-void
.end method
