.class public abstract Lcom/miui/gallery/net/json/BaseJsonRequest;
.super Lcom/miui/gallery/net/base/VolleyRequest;
.source "BaseJsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/miui/gallery/net/base/VolleyRequest<",
        "Lorg/json/JSONObject;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gallery/net/base/VolleyRequest;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mMethod:I

    iput p1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mMethod:I

    iput-object p2, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    return-void
.end method

.method private appendUrlParams()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/net/json/BaseJsonRequest;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/net/json/BaseJsonRequest;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private generateCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/Encode;->SHA1Encode([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    return-object p1
.end method


# virtual methods
.method protected final createVolleyRequest(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/gallery/net/json/BaseJsonRequest;->appendUrlParams()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mMethod:I

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    new-instance v2, Lcom/miui/gallery/net/json/JsonObjectRequest;

    iget v3, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mMethod:I

    invoke-direct {v2, v3, v0, p1, p2}, Lcom/miui/gallery/net/json/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object p1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/net/json/JsonObjectRequest;->setParams(Ljava/util/Map;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mHeaders:Ljava/util/Map;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/net/json/JsonObjectRequest;->setHeaders(Ljava/util/Map;)V

    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/gallery/net/json/BaseJsonRequest;->generateCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/miui/gallery/net/json/JsonObjectRequest;->setCacheKey(Ljava/lang/String;)V

    return-object v2
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onRequestError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/net/json/BaseJsonRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
