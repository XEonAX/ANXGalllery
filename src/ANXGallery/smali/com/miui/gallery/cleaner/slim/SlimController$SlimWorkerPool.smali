.class Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;
.super Ljava/lang/Object;
.source "SlimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/slim/SlimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlimWorkerPool"
.end annotation


# instance fields
.field private mOnSlimDoneListener:Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;

.field private mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

.field final synthetic this$0:Lcom/miui/gallery/cleaner/slim/SlimController;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/cleaner/slim/SlimController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;

    invoke-direct {p1, p0}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;-><init>(Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;)V

    iput-object p1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mOnSlimDoneListener:Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cleaner/slim/SlimController;Lcom/miui/gallery/cleaner/slim/SlimController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;-><init>(Lcom/miui/gallery/cleaner/slim/SlimController;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;)[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized isPaused()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->isPaused()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->pauseSlim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->resumeSlim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    new-array v1, v0, [Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    iput-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    new-instance v3, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    iget-object v4, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;-><init>(Lcom/miui/gallery/cleaner/slim/SlimController;Lcom/miui/gallery/cleaner/slim/SlimController$1;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mOnSlimDoneListener:Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->setOnSlimDoneListener(Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;)V

    iget-object v2, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->cancel()V

    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v0, v2}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$1602(Lcom/miui/gallery/cleaner/slim/SlimController;Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;)Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
