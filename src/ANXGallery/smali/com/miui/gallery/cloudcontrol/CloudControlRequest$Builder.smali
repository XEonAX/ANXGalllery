.class public Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;
.super Ljava/lang/Object;
.source "CloudControlRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/CloudControlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDataParam:Ljava/lang/String;

.field private mMethod:I

.field private mSyncToken:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mMethod:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appVersion"

    invoke-static {}, Lcom/miui/gallery/util/MiscUtil;->getAppVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "romVersion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUI/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/miui/gallery/util/MiscUtil;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "operator"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/miui/gallery/util/MiscUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/Encode;->SHA1Encode([B)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isPad()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;->access$000()V

    :cond_2
    const-string v1, "rateKey"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$UUID;->get()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mDataParam:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/gallery/cloudcontrol/CloudControlRequest;
    .locals 2

    new-instance v0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;-><init>(Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;Lcom/miui/gallery/cloudcontrol/CloudControlRequest$1;)V

    return-object v0
.end method

.method public getDataParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mDataParam:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    iget v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mMethod:I

    return v0
.end method

.method public getSyncToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mSyncToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setMethod(I)Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mMethod:I

    return-object p0
.end method

.method public setSyncToken(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mSyncToken:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mUrl:Ljava/lang/String;

    return-object p0
.end method
