.class Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/AlbumShareUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JobStatusManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mStatusChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnStatusChangedListener<",
            "TK;TS;>;>;"
        }
    .end annotation
.end field

.field private final mStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TS;>;"
        }
    .end annotation
.end field

.field private final mThreadPool:Lcom/miui/gallery/threadpool/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/threadpool/ThreadPool;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mStatusMap:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mStatusChangedListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mThreadPool:Lcom/miui/gallery/threadpool/ThreadPool;

    return-void
.end method

.method private notifyStatus(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TS;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mStatusChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/share/AlbumShareUIManager$OnStatusChangedListener;

    invoke-interface {v1, p1, p2}, Lcom/miui/gallery/share/AlbumShareUIManager$OnStatusChangedListener;->onAlbumStateChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TS;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mStatusMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->notifyStatus(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected advanceStatus(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TS;Z)TS;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public find(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TS;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mStatusMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getThreadPool()Lcom/miui/gallery/threadpool/ThreadPool;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mThreadPool:Lcom/miui/gallery/threadpool/ThreadPool;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mStatusMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->advanceStatus(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->notifyStatus(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
