.class Lcom/miui/gallery/provider/cloudmanager/DupMedia$DupOperationData;
.super Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;
.source "DupMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/DupMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DupOperationData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field sha1ToKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Long;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;-><init>([Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/DupMedia$DupOperationData;->sha1ToKeyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    array-length p1, p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/DupMedia$DupOperationData;->sha1ToKeyMap:Ljava/util/Map;

    return-void
.end method
