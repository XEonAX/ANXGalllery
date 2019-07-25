.class public Lcn/kuaipan/android/utils/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method public static parser(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    sget-object v1, Lcn/kuaipan/android/utils/JsonUtils$1;->$SwitchMap$cn$kuaipan$android$utils$JsonToken:[I

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Meet EOF when json not end."

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextNull()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Lcn/kuaipan/android/utils/JsonUtils;->parserNumber(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    invoke-static {p0}, Lcn/kuaipan/android/utils/JsonUtils;->parserObject(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :pswitch_6
    invoke-static {p0}, Lcn/kuaipan/android/utils/JsonUtils;->parserArray(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static parser(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcn/kuaipan/android/utils/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcn/kuaipan/android/utils/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Lcn/kuaipan/android/utils/JsonUtils;->parser(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Document not end of EOF"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parser(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcn/kuaipan/android/utils/JsonReader;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/utils/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Lcn/kuaipan/android/utils/JsonUtils;->parser(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Document not end of EOF"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parserArray(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->beginArray()V

    invoke-static {}, Lcn/kuaipan/android/utils/ObtainabelList;->obtain()Lcn/kuaipan/android/utils/ObtainabelList;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    :goto_0
    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v1, v2, :cond_0

    invoke-static {p0}, Lcn/kuaipan/android/utils/JsonUtils;->parser(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuaipan/android/utils/ObtainabelList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->endArray()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/ObtainabelList;->recycle()V

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/ObtainabelList;->recycle()V

    throw p0
.end method

.method private static parserNumber(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static parserObject(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->beginObject()V

    invoke-static {}, Lcn/kuaipan/android/utils/ObtainabelHashMap;->obtain()Lcn/kuaipan/android/utils/ObtainabelHashMap;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    :goto_0
    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcn/kuaipan/android/utils/JsonUtils;->parser(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/kuaipan/android/utils/ObtainabelHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/ObtainabelHashMap;->recycle()V

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/ObtainabelHashMap;->recycle()V

    throw p0
.end method
