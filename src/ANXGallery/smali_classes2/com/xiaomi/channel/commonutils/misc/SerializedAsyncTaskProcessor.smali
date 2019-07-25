.class public Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;
.super Ljava/lang/Object;
.source "SerializedAsyncTaskProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;,
        Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;
    }
.end annotation


# instance fields
.field private volatile mCurrentTask:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

.field private final mIsDaemon:Z

.field private mKeepAliveTime:I

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mProcessThread:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;

.field private volatile threadQuit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->threadQuit:Z

    iput v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mKeepAliveTime:I

    new-instance v0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$1;-><init>(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mMainThreadHandler:Landroid/os/Handler;

    iput-boolean p1, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mIsDaemon:Z

    iput p2, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mKeepAliveTime:I

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mKeepAliveTime:I

    return p0
.end method

.method static synthetic access$300(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->threadQuit:Z

    return p0
.end method

.method static synthetic access$402(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mCurrentTask:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->stopTaskProcessor()V

    return-void
.end method

.method private declared-synchronized stopTaskProcessor()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mProcessThread:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->threadQuit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addNewTask(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mProcessThread:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;-><init>(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;)V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mProcessThread:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mProcessThread:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;

    iget-boolean v1, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mIsDaemon:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->setDaemon(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->threadQuit:Z

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mProcessThread:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mProcessThread:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->insertTask(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addNewTaskWithDelayed(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;J)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$2;-><init>(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
