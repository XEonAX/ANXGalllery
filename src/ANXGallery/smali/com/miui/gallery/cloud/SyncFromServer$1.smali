.class Lcom/miui/gallery/cloud/SyncFromServer$1;
.super Ljava/lang/Object;
.source "SyncFromServer.java"

# interfaces
.implements Lcom/miui/gallery/cloud/base/SyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/SyncFromServer;->sync()Lcom/miui/gallery/cloud/base/GallerySyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/cloud/base/SyncTask<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/SyncFromServer;

.field final synthetic val$syncTagList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/SyncFromServer;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/cloud/SyncFromServer$1;->this$0:Lcom/miui/gallery/cloud/SyncFromServer;

    iput-object p2, p0, Lcom/miui/gallery/cloud/SyncFromServer$1;->val$syncTagList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncFromServer$1;->this$0:Lcom/miui/gallery/cloud/SyncFromServer;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/SyncFromServer;->getSyncUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Lcom/miui/gallery/cloud/base/GallerySyncResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/cloud/base/GallerySyncResult<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncFromServer$1;->this$0:Lcom/miui/gallery/cloud/SyncFromServer;

    iget-object v1, p0, Lcom/miui/gallery/cloud/SyncFromServer$1;->val$syncTagList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/cloud/SyncFromServer$1;->this$0:Lcom/miui/gallery/cloud/SyncFromServer;

    invoke-virtual {v2}, Lcom/miui/gallery/cloud/SyncFromServer;->getSyncItemLimit()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/cloud/SyncFromServer;->access$000(Lcom/miui/gallery/cloud/SyncFromServer;Ljava/util/ArrayList;I)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItemBase;Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;)Lcom/miui/gallery/cloud/base/GallerySyncResult;

    move-result-object v0

    return-object v0
.end method
