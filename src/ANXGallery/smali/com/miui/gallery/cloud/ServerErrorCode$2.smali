.class final Lcom/miui/gallery/cloud/ServerErrorCode$2;
.super Ljava/lang/Object;
.source "ServerErrorCode.java"

# interfaces
.implements Lcom/miui/gallery/cloud/ServerErrorCode$GalleryErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/ServerErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItemBase;Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;)V
    .locals 2

    const-string v0, "ServerErrorCode"

    const-string v1, "not retry error, gallery space full %s"

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    check-cast p2, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-interface {p3, p2}, Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;->handleSpaceFullError(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    :cond_1
    return-void
.end method
