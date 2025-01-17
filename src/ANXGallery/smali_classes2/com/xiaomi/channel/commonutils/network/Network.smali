.class public Lcom/xiaomi/channel/commonutils/network/Network;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;,
        Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;
    }
.end annotation


# static fields
.field public static final ContentTypePattern_Charset:Ljava/util/regex/Pattern;

.field public static final ContentTypePattern_MimeType:Ljava/util/regex/Pattern;

.field public static final ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "([^\\s;]+)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/network/Network;->ContentTypePattern_MimeType:Ljava/util/regex/Pattern;

    const-string v0, "(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/network/Network;->ContentTypePattern_Charset:Ljava/util/regex/Pattern;

    const-string v0, "(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/network/Network;->ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/xiaomi/channel/commonutils/network/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/channel/commonutils/network/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/network/Network;->fromParamsMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "POST"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/xiaomi/channel/commonutils/network/Network;->httpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/network/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static downloadXml(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v4, "UTF-8"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/channel/commonutils/network/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2, p3, p5}, Lcom/xiaomi/channel/commonutils/network/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x400

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, p0, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p3, 0x1000

    new-array p3, p3, [C

    :goto_0
    const/4 p4, -0x1

    invoke-virtual {p2, p3}, Ljava/io/BufferedReader;->read([C)I

    move-result p5

    if-eq p4, p5, :cond_0

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4, p5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/channel/commonutils/network/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_b

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    new-instance p2, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/network/Network;->encryptURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    invoke-static {p0, p2}, Lcom/xiaomi/channel/commonutils/network/Network;->getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/16 p2, 0x2710

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 p2, 0x3a98

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "User-Agent"

    invoke-virtual {p0, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    const-string p2, "Cookie"

    invoke-virtual {p0, p2, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p5, :cond_3

    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p3, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz p6, :cond_9

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string p3, "http"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string p2, "https"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    iput p1, p6, Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;->ResponseCode:I

    iget-object p1, p6, Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    if-nez p1, :cond_5

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p6, Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    :cond_5
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_6

    if-nez p3, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_8

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_3

    :cond_7
    iget-object p4, p6, Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    new-instance p1, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "IOException:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "url"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encryptURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const-string v0, "%sbe988a6134bc8254465424e5a70ef037"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%s&key=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/string/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromParamsMapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "com.xiaomi.common.Network"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to convert from params map to string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.xiaomi.common.Network"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "wifi"

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0

    :catch_1
    const-string p0, ""

    return-object p0
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    return p0

    :catch_0
    return v0

    :catch_1
    return v0
.end method

.method private static getDefaultStreamHandlerURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "http"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->isCtwap(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/net/Proxy;

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "10.0.0.200"

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {p1, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static hasNetwork(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->getActiveNetworkType(Landroid/content/Context;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static httpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/network/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/channel/commonutils/network/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/channel/commonutils/network/HttpResponse;

    invoke-direct {v0}, Lcom/xiaomi/channel/commonutils/network/HttpResponse;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/network/Network;->getDefaultStreamHandlerURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/xiaomi/channel/commonutils/network/Network;->getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/16 v2, 0x2710

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x3a98

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    if-nez p2, :cond_0

    const-string p2, "GET"

    :cond_0
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    array-length v3, p2

    invoke-virtual {p4, p2, p3, v3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p2, v1

    move-object v1, p4

    goto/16 :goto_7

    :catch_0
    move-exception p0

    move-object p2, v1

    move-object v1, p4

    goto/16 :goto_5

    :catch_1
    move-exception p0

    move-object p2, v1

    move-object v1, p4

    goto/16 :goto_6

    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    iput p2, v0, Lcom/xiaomi/channel/commonutils/network/HttpResponse;->responseCode:I

    const-string p2, "com.xiaomi.common.Network"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http POST Response Code: "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaomi/channel/commonutils/network/HttpResponse;->responseCode:I

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p2, :cond_4

    if-nez p4, :cond_4

    :try_start_3
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    new-instance p4, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p4, v2}, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p3, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_2
    :try_start_4
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    new-instance p4, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p4, p0}, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p3, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    :try_start_5
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "line.separator"

    invoke-static {p4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_4
    if-eqz p0, :cond_3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_3
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/channel/commonutils/network/HttpResponse;->responseString:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catch_3
    move-exception p0

    goto :goto_5

    :catch_4
    move-exception p0

    goto :goto_6

    :cond_4
    :try_start_6
    iget-object v3, v0, Lcom/xiaomi/channel/commonutils/network/HttpResponse;->headers:Ljava/util/Map;

    invoke-interface {v3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    add-int/lit8 p3, p3, 0x1

    add-int/2addr p3, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p2, v1

    goto :goto_7

    :catch_5
    move-exception p0

    move-object p2, v1

    :goto_5
    :try_start_7
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_6
    move-exception p0

    move-object p2, v1

    :goto_6
    new-instance p3, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "err while request "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    :goto_7
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static is2GConnected(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x7

    if-eq p0, v1, :cond_2

    const/16 v1, 0xb

    if-eq p0, v1, :cond_2

    packed-switch p0, :pswitch_data_0

    return v0

    :cond_2
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static is3GConnected(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TD-SCDMA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    const-string v2, "CDMA2000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "WCDMA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    return v3

    :cond_3
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static is4GConnected(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/16 v1, 0xd

    if-ne v1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 1

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isCtwap(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_1

    return v1

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "ctwap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v1

    :catch_0
    return v1

    :catch_1
    return v1
.end method

.method public static isUsingMobileDataConnection(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->is4GConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->is3GConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->is2GConnected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isWIFIConnected(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    return v0

    :catch_1
    return v0
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x3a98

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v2, 0x2710

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v3, "POST"

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "multipart/form-data;boundary=*****"

    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4d

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    add-int/2addr p1, v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v0, "--*****\r\n"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\";filename=\""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\r\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p3, "\r\n"

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 p2, 0x400

    :try_start_1
    new-array p2, p2, [B

    :goto_1
    invoke-virtual {p3, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    invoke-virtual {p1, p2, v2, v0}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_1

    :cond_2
    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p2, "--"

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p2, "*****"

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p2, "--"

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object p2, v1

    :goto_3
    move-object v1, p3

    goto :goto_8

    :catch_2
    move-exception p0

    move-object p2, v1

    :goto_4
    move-object v1, p3

    goto :goto_6

    :catch_3
    move-exception p0

    move-object p2, v1

    :goto_5
    move-object v1, p3

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object p2, v1

    goto :goto_8

    :catch_4
    move-exception p0

    move-object p2, v1

    :goto_6
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_5
    move-exception p0

    move-object p2, v1

    :goto_7
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IOException:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p0

    :goto_8
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method
