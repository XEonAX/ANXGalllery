.class public Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;
.super Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;
.source "ClusteGroupResult.java"


# instance fields
.field private mClusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gallery/assistant/jni/cluster/Cluster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gallery/assistant/jni/cluster/Cluster;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;-><init>(I)V

    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;->mClusters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getClusters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gallery/assistant/jni/cluster/Cluster;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;->mClusters:Ljava/util/List;

    return-object v0
.end method
