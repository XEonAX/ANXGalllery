.class public Lcom/miui/gallery/cloud/thread/CommandQueue;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/gallery/cloud/thread/Command;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mLists:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mMaxSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    new-array p1, p1, [Ljava/util/LinkedList;

    check-cast p1, [Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    iput p2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMaxSize:I

    return-void
.end method

.method private needAdd(Lcom/miui/gallery/cloud/thread/Command;JLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener<",
            "TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/miui/gallery/cloud/thread/Command;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/thread/Command;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/miui/gallery/cloud/thread/Command;->getDelay(J)J

    move-result-wide v2

    invoke-interface {p1, p2, p3}, Lcom/miui/gallery/cloud/thread/Command;->getDelay(J)J

    move-result-wide p2

    cmp-long v4, v2, p2

    if-gtz v4, :cond_2

    invoke-interface {v0}, Lcom/miui/gallery/cloud/thread/Command;->getPriority()I

    move-result p2

    invoke-interface {p1}, Lcom/miui/gallery/cloud/thread/Command;->getPriority()I

    move-result p1

    if-lt p2, p1, :cond_2

    invoke-interface {v0}, Lcom/miui/gallery/cloud/thread/Command;->needProcess()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    invoke-interface {p4, v0}, Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;->onRemove(Lcom/miui/gallery/cloud/thread/Command;)V

    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/thread/CommandQueue;->remove(Lcom/miui/gallery/cloud/thread/Command;)V

    return v1
.end method

.method private putInternal(Lcom/miui/gallery/cloud/thread/Command;ZJLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZJ",
            "Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/miui/gallery/cloud/thread/CommandQueue;->needAdd(Lcom/miui/gallery/cloud/thread/Command;JLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p5, :cond_1

    invoke-interface {p5, p1}, Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;->onAdd(Lcom/miui/gallery/cloud/thread/Command;)V

    :cond_1
    iget-object p3, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/miui/gallery/cloud/thread/Command;->getKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/miui/gallery/cloud/thread/Command;->getPriority()I

    move-result p3

    iget-object p4, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    aget-object p4, p4, p3

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    new-instance p5, Ljava/util/LinkedList;

    invoke-direct {p5}, Ljava/util/LinkedList;-><init>()V

    aput-object p5, p4, p3

    :cond_2
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    aget-object p2, p2, p3

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget p1, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMaxSize:I

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/thread/CommandQueue;->size()I

    move-result p1

    iget p2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMaxSize:I

    if-le p1, p2, :cond_4

    iget-object p1, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gallery/cloud/thread/Command;

    iget-object p2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/miui/gallery/cloud/thread/Command;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    aget-object p2, p2, p3

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private remove(Lcom/miui/gallery/cloud/thread/Command;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/miui/gallery/cloud/thread/Command;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    invoke-interface {p1}, Lcom/miui/gallery/cloud/thread/Command;->getPriority()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getMinDelay(J)J
    .locals 6

    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/cloud/thread/Command;

    invoke-interface {v3, p1, p2}, Lcom/miui/gallery/cloud/thread/Command;->getDelay(J)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public hasDelayedItem()Z
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/cloud/thread/Command;

    invoke-interface {v3, v0, v1}, Lcom/miui/gallery/cloud/thread/Command;->getDelay(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public poll(Ljava/util/List;IJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_7

    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_4

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, p2, :cond_5

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/cloud/thread/Command;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-nez v3, :cond_2

    invoke-interface {v4, p3, p4}, Lcom/miui/gallery/cloud/thread/Command;->getDelay(J)J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-gtz v10, :cond_3

    move-object v3, v4

    :goto_2
    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    invoke-interface {v3, v4}, Lcom/miui/gallery/cloud/thread/Command;->canMergeWith(Lcom/miui/gallery/cloud/thread/Command;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4, p3, p4}, Lcom/miui/gallery/cloud/thread/Command;->getDelay(J)J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-gtz v10, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    iget-object v5, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-interface {v4}, Lcom/miui/gallery/cloud/thread/Command;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_1

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    :goto_5
    return-void
.end method

.method public putAtFrist(Ljava/util/List;JLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;J",
            "Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener<",
            "TT;>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/miui/gallery/cloud/thread/Command;

    const/4 v4, 0x1

    move-object v2, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/cloud/thread/CommandQueue;->putInternal(Lcom/miui/gallery/cloud/thread/Command;ZJLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)Z

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public putAtLast(Ljava/util/List;JLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;J",
            "Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/miui/gallery/cloud/thread/Command;

    const/4 v4, 0x0

    move-object v2, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/cloud/thread/CommandQueue;->putInternal(Lcom/miui/gallery/cloud/thread/Command;ZJLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)Z

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public remove(Ljava/lang/String;)Lcom/miui/gallery/cloud/thread/Command;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gallery/cloud/thread/Command;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    invoke-interface {p1}, Lcom/miui/gallery/cloud/thread/Command;->getPriority()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
