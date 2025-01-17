.class public Lcom/nexstreaming/app/common/task/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/task/Task$MultiplexTask;,
        Lcom/nexstreaming/app/common/task/Task$ProgressNotAvailableException;,
        Lcom/nexstreaming/app/common/task/Task$OnFailListener;,
        Lcom/nexstreaming/app/common/task/Task$OnProgressListener;,
        Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;,
        Lcom/nexstreaming/app/common/task/Task$Event;,
        Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;,
        Lcom/nexstreaming/app/common/task/Task$TaskErrorException;,
        Lcom/nexstreaming/app/common/task/Task$TaskError;
    }
.end annotation


# static fields
.field public static final COMPLETED_TASK:Lcom/nexstreaming/app/common/task/Task;

.field public static final INVALID_TASK_ID:I

.field public static final NO_RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$TaskError;

.field public static final TIMEOUT:Lcom/nexstreaming/app/common/task/Task$TaskError;

.field public static final UNKNOWN_ERROR:Lcom/nexstreaming/app/common/task/Task$TaskError;

.field private static sIntIdTaskMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/nexstreaming/app/common/task/Task;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLongIdTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/nexstreaming/app/common/task/Task;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLongTaskId:J

.field private static sRegisterCount:I

.field private static sTaskId:I


# instance fields
.field private mCancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCancellable:Z

.field private mHandler:Landroid/os/Handler;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;",
            "Lcom/nexstreaming/app/common/task/Task$Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLongTaskId:J

.field private mMaxProgress:I

.field private mProgress:I

.field private mProgressSignalled:Z

.field private mRegistered:Z

.field private mSignalledEvents:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/nexstreaming/app/common/task/Task$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskError:Lcom/nexstreaming/app/common/task/Task$TaskError;

.field private final mTaskId:I

.field private mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    sput-wide v0, Lcom/nexstreaming/app/common/task/Task;->sLongTaskId:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task;->sLongIdTaskMap:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task;->sIntIdTaskMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    sput v0, Lcom/nexstreaming/app/common/task/Task;->sRegisterCount:I

    new-instance v1, Lcom/nexstreaming/app/common/task/Task;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/nexstreaming/app/common/task/Task$Event;

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v3, v2, v0

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lcom/nexstreaming/app/common/task/Task;-><init>([Lcom/nexstreaming/app/common/task/Task$Event;)V

    sput-object v1, Lcom/nexstreaming/app/common/task/Task;->COMPLETED_TASK:Lcom/nexstreaming/app/common/task/Task;

    new-instance v0, Lcom/nexstreaming/app/common/task/Task$1;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task$1;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task;->UNKNOWN_ERROR:Lcom/nexstreaming/app/common/task/Task$TaskError;

    new-instance v0, Lcom/nexstreaming/app/common/task/Task$5;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task$5;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task;->TIMEOUT:Lcom/nexstreaming/app/common/task/Task$TaskError;

    new-instance v0, Lcom/nexstreaming/app/common/task/Task$6;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task$6;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task;->NO_RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$TaskError;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mListeners:Ljava/util/List;

    const-class v0, Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mSignalledEvents:Ljava/util/EnumSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/app/common/task/Task;->mProgress:I

    iput v0, p0, Lcom/nexstreaming/app/common/task/Task;->mMaxProgress:I

    iput-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mProgressSignalled:Z

    iput-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mRegistered:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskError:Lcom/nexstreaming/app/common/task/Task$TaskError;

    iput-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancellable:Z

    iput-object v1, p0, Lcom/nexstreaming/app/common/task/Task;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/nexstreaming/app/common/task/Task;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/nexstreaming/app/common/task/Task;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget v0, Lcom/nexstreaming/app/common/task/Task;->sTaskId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/app/common/task/Task;->sTaskId:I

    sget-wide v0, Lcom/nexstreaming/app/common/task/Task;->sLongTaskId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/nexstreaming/app/common/task/Task;->sLongTaskId:J

    sget v0, Lcom/nexstreaming/app/common/task/Task;->sTaskId:I

    if-nez v0, :cond_0

    sget v0, Lcom/nexstreaming/app/common/task/Task;->sTaskId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/app/common/task/Task;->sTaskId:I

    :cond_0
    sget-wide v0, Lcom/nexstreaming/app/common/task/Task;->sLongTaskId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    sget-wide v0, Lcom/nexstreaming/app/common/task/Task;->sLongTaskId:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/nexstreaming/app/common/task/Task;->sLongTaskId:J

    :cond_1
    sget v0, Lcom/nexstreaming/app/common/task/Task;->sTaskId:I

    iput v0, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskId:I

    sget-wide v0, Lcom/nexstreaming/app/common/task/Task;->sLongTaskId:J

    iput-wide v0, p0, Lcom/nexstreaming/app/common/task/Task;->mLongTaskId:J

    return-void
.end method

.method private varargs constructor <init>([Lcom/nexstreaming/app/common/task/Task$Event;)V
    .locals 0

    invoke-direct {p0}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    return-void
.end method

.method static synthetic access$002(Lcom/nexstreaming/app/common/task/Task;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/nexstreaming/app/common/task/Task;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$102(Lcom/nexstreaming/app/common/task/Task;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/nexstreaming/app/common/task/Task;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method public static combinedTask(Ljava/util/Collection;)Lcom/nexstreaming/app/common/task/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/nexstreaming/app/common/task/Task;",
            ">;)",
            "Lcom/nexstreaming/app/common/task/Task;"
        }
    .end annotation

    new-instance v0, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/app/common/task/Task;

    new-instance v3, Lcom/nexstreaming/app/common/task/Task$11;

    invoke-direct {v3, v1, v0}, Lcom/nexstreaming/app/common/task/Task$11;-><init>(Ljava/util/List;Lcom/nexstreaming/app/common/task/Task;)V

    invoke-virtual {v2, v3}, Lcom/nexstreaming/app/common/task/Task;->onProgress(Lcom/nexstreaming/app/common/task/Task$OnProgressListener;)Lcom/nexstreaming/app/common/task/Task;

    new-instance v3, Lcom/nexstreaming/app/common/task/Task$12;

    invoke-direct {v3, v1, v0}, Lcom/nexstreaming/app/common/task/Task$12;-><init>(Ljava/util/List;Lcom/nexstreaming/app/common/task/Task;)V

    invoke-virtual {v2, v3}, Lcom/nexstreaming/app/common/task/Task;->onComplete(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    new-instance v3, Lcom/nexstreaming/app/common/task/Task$2;

    invoke-direct {v3, v1, v0}, Lcom/nexstreaming/app/common/task/Task$2;-><init>(Ljava/util/List;Lcom/nexstreaming/app/common/task/Task;)V

    invoke-virtual {v2, v3}, Lcom/nexstreaming/app/common/task/Task;->onSuccess(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    new-instance v3, Lcom/nexstreaming/app/common/task/Task$3;

    invoke-direct {v3, v0}, Lcom/nexstreaming/app/common/task/Task$3;-><init>(Lcom/nexstreaming/app/common/task/Task;)V

    invoke-virtual {v2, v3}, Lcom/nexstreaming/app/common/task/Task;->onFailure(Lcom/nexstreaming/app/common/task/Task$OnFailListener;)Lcom/nexstreaming/app/common/task/Task;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static findTaskById(I)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    sget-object v0, Lcom/nexstreaming/app/common/task/Task;->sIntIdTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nexstreaming/app/common/task/Task;

    return-object p0
.end method

.method public static findTaskByLongId(J)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    sget-object v0, Lcom/nexstreaming/app/common/task/Task;->sLongIdTaskMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nexstreaming/app/common/task/Task;

    return-object p0
.end method

.method public static makeFailedTask(Lcom/nexstreaming/app/common/task/Task$TaskError;)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    new-instance v0, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    return-object v0
.end method

.method public static makeFailedTask(Ljava/lang/Exception;)Lcom/nexstreaming/app/common/task/Task;
    .locals 3

    new-instance v0, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    new-instance v1, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    return-object v0
.end method

.method public static makeFailedTask(Ljava/lang/String;)Lcom/nexstreaming/app/common/task/Task;
    .locals 3

    new-instance v0, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    new-instance v1, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    return-object v0
.end method

.method public static makeFailedTask(Ljava/lang/String;Ljava/lang/Exception;)Lcom/nexstreaming/app/common/task/Task;
    .locals 2

    new-instance v0, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    new-instance v1, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;

    invoke-direct {v1, p1, p0}, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    return-object v0
.end method

.method public static makeTaskError(Ljava/lang/Exception;)Lcom/nexstreaming/app/common/task/Task$TaskError;
    .locals 2

    new-instance v0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeTaskError(Ljava/lang/String;)Lcom/nexstreaming/app/common/task/Task$TaskError;
    .locals 2

    new-instance v0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeTaskError(Ljava/lang/String;Ljava/lang/Exception;)Lcom/nexstreaming/app/common/task/Task$TaskError;
    .locals 1

    new-instance v0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;

    invoke-direct {v0, p1, p0}, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method private signalCompletionEvent()V
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method private declared-synchronized signalOneEvent(Lcom/nexstreaming/app/common/task/Task$Event;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_b

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Task"

    const-string v0, "Ingoring attempt to signal a cancelled task."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Task"

    const-string v0, "Ingoring attempt to signal failure on task that already succeeded."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-direct {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->signalOneEvent(Lcom/nexstreaming/app/common/task/Task$Event;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->isRepeatableEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mSignalledEvents:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/nexstreaming/app/common/task/Task;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v3, p1, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->isRepeatableEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/nexstreaming/app/common/task/Task;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;

    invoke-interface {v1, p0, p1}, Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;->onTaskEvent(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;)V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    if-eq p1, v0, :cond_9

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    if-eq p1, v0, :cond_9

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    if-ne p1, v0, :cond_a

    :cond_9
    invoke-direct {p0}, Lcom/nexstreaming/app/common/task/Task;->signalCompletionEvent()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_b
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public static varargs waitForAll([Lcom/nexstreaming/app/common/task/Task;)Lcom/nexstreaming/app/common/task/Task$MultiplexTask;
    .locals 6

    new-instance v0, Lcom/nexstreaming/app/common/task/Task$MultiplexTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nexstreaming/app/common/task/Task$MultiplexTask;-><init>([Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$1;)V

    array-length v2, p0

    new-array v2, v2, [Lcom/nexstreaming/app/common/task/Task$Event;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    aput-object v1, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/nexstreaming/app/common/task/Task$4;

    invoke-direct {v1, p0, v2, v0}, Lcom/nexstreaming/app/common/task/Task$4;-><init>([Lcom/nexstreaming/app/common/task/Task;[Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$MultiplexTask;)V

    array-length v2, p0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    sget-object v5, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {v4, v5, v1}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    sget-object v5, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {v4, v5, v1}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    sget-object v5, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {v4, v5, v1}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public awaitTaskCompletion()Lcom/nexstreaming/app/common/task/Task;
    .locals 2

    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/nexstreaming/app/common/task/Task;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v1

    :catch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Would block on UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not a waitable task"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .locals 2

    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancellable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not a cancellable task"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mSignalledEvents:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getLongTaskId()J
    .locals 2

    iget-wide v0, p0, Lcom/nexstreaming/app/common/task/Task;->mLongTaskId:J

    return-wide v0
.end method

.method public getMaxProgress()I
    .locals 1

    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mProgressSignalled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nexstreaming/app/common/task/Task;->mMaxProgress:I

    return v0

    :cond_0
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$ProgressNotAvailableException;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task$ProgressNotAvailableException;-><init>()V

    throw v0
.end method

.method public getProgress()I
    .locals 1

    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mProgressSignalled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nexstreaming/app/common/task/Task;->mProgress:I

    return v0

    :cond_0
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$ProgressNotAvailableException;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task$ProgressNotAvailableException;-><init>()V

    throw v0
.end method

.method public getTaskError()Lcom/nexstreaming/app/common/task/Task$TaskError;
    .locals 2

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskError:Lcom/nexstreaming/app/common/task/Task$TaskError;

    if-nez v0, :cond_0

    sget-object v0, Lcom/nexstreaming/app/common/task/Task;->UNKNOWN_ERROR:Lcom/nexstreaming/app/common/task/Task$TaskError;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskError:Lcom/nexstreaming/app/common/task/Task$TaskError;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error not available (task did not fail)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTaskId()I
    .locals 1

    iget v0, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskId:I

    return v0
.end method

.method public isCancelRequested()Z
    .locals 2

    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancellable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not a cancellable task"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCancellable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancellable:Z

    return v0
.end method

.method public isComplete()Z
    .locals 1

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    return v0
.end method

.method public isProgressAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mProgressSignalled:Z

    return v0
.end method

.method public isRepeatableEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z
    .locals 1

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->PROGRESS:Lcom/nexstreaming/app/common/task/Task$Event;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->UPDATE_OR_RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isRunning()Z
    .locals 1

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized makeWaitable()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/task/Task;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/nexstreaming/app/common/task/Task;->signalCompletionEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCancel(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0, p1}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    move-result-object p1

    return-object p1
.end method

.method public onComplete(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0, p1}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    move-result-object p1

    return-object p1
.end method

.method public onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p0, p1}, Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;->onTaskEvent(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;)V

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mListeners:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public onFailure(Lcom/nexstreaming/app/common/task/Task$OnFailListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 2

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    new-instance v1, Lcom/nexstreaming/app/common/task/Task$8;

    invoke-direct {v1, p0, p1}, Lcom/nexstreaming/app/common/task/Task$8;-><init>(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$OnFailListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    move-result-object p1

    return-object p1
.end method

.method public onFailure(Lcom/nexstreaming/app/common/task/Task;)Lcom/nexstreaming/app/common/task/Task;
    .locals 2

    if-eq p1, p0, :cond_0

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    new-instance v1, Lcom/nexstreaming/app/common/task/Task$9;

    invoke-direct {v1, p0, p1}, Lcom/nexstreaming/app/common/task/Task$9;-><init>(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task;)V

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public onProgress(Lcom/nexstreaming/app/common/task/Task$OnProgressListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 2

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->PROGRESS:Lcom/nexstreaming/app/common/task/Task$Event;

    new-instance v1, Lcom/nexstreaming/app/common/task/Task$10;

    invoke-direct {v1, p0, p1}, Lcom/nexstreaming/app/common/task/Task$10;-><init>(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$OnProgressListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    move-result-object p1

    return-object p1
.end method

.method public onSuccess(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0, p1}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    move-result-object p1

    return-object p1
.end method

.method public register()V
    .locals 7

    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/nexstreaming/app/common/task/Task;->sIntIdTaskMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskId:I

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/nexstreaming/app/common/task/Task;->sLongIdTaskMap:Ljava/util/Map;

    iget-wide v1, p0, Lcom/nexstreaming/app/common/task/Task;->mLongTaskId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/nexstreaming/app/common/task/Task;->sRegisterCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/nexstreaming/app/common/task/Task;->sRegisterCount:I

    sget v0, Lcom/nexstreaming/app/common/task/Task;->sRegisterCount:I

    const/16 v2, 0x20

    if-le v0, v2, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/nexstreaming/app/common/task/Task;->sIntIdTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    sget-object v5, Lcom/nexstreaming/app/common/task/Task;->sIntIdTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    sget-object v6, Lcom/nexstreaming/app/common/task/Task;->sIntIdTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v4, Lcom/nexstreaming/app/common/task/Task;->sIntIdTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/nexstreaming/app/common/task/Task;->sLongIdTaskMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    sget-object v4, Lcom/nexstreaming/app/common/task/Task;->sLongIdTaskMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    sput v3, Lcom/nexstreaming/app/common/task/Task;->sRegisterCount:I

    :cond_9
    iput-boolean v1, p0, Lcom/nexstreaming/app/common/task/Task;->mRegistered:Z

    return-void
.end method

.method public declared-synchronized removeListenerForFail()V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/nexstreaming/app/common/task/Task;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v4, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    if-ne v3, v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nexstreaming/app/common/task/Task;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->setTaskError(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/nexstreaming/app/common/task/Task$Event;

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    return-void
.end method

.method public setCancellable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/nexstreaming/app/common/task/Task;->mCancellable:Z

    iget-boolean p1, p0, Lcom/nexstreaming/app/common/task/Task;->mCancellable:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nexstreaming/app/common/task/Task;->mCancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/nexstreaming/app/common/task/Task;->mCancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/nexstreaming/app/common/task/Task;->mCancellable:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/nexstreaming/app/common/task/Task;->mCancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_1
    :goto_0
    return-void
.end method

.method public setProgress(II)V
    .locals 0

    iput p1, p0, Lcom/nexstreaming/app/common/task/Task;->mProgress:I

    iput p2, p0, Lcom/nexstreaming/app/common/task/Task;->mMaxProgress:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nexstreaming/app/common/task/Task;->mProgressSignalled:Z

    sget-object p1, Lcom/nexstreaming/app/common/task/Task$Event;->PROGRESS:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->signalOneEvent(Lcom/nexstreaming/app/common/task/Task$Event;)V

    return-void
.end method

.method public setTaskError(Lcom/nexstreaming/app/common/task/Task$TaskError;)V
    .locals 0

    iput-object p1, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskError:Lcom/nexstreaming/app/common/task/Task$TaskError;

    return-void
.end method

.method public setTimeout(J)Lcom/nexstreaming/app/common/task/Task;
    .locals 2

    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nexstreaming/app/common/task/Task$7;

    invoke-direct {v0, p0}, Lcom/nexstreaming/app/common/task/Task$7;-><init>(Lcom/nexstreaming/app/common/task/Task;)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mTimeoutRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nexstreaming/app/common/task/Task;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nexstreaming/app/common/task/Task;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method

.method public varargs signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->PROGRESS:Lcom/nexstreaming/app/common/task/Task$Event;

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/nexstreaming/app/common/task/Task;->signalOneEvent(Lcom/nexstreaming/app/common/task/Task$Event;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    iget-object v1, p0, Lcom/nexstreaming/app/common/task/Task;->mSignalledEvents:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nexstreaming/app/common/task/Task$Event;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    const-string v0, ""

    goto :goto_1

    :cond_0
    const-string v0, ","

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/nexstreaming/app/common/task/Task$Event;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_2

    const-string v0, "none"

    :cond_2
    iget-boolean v1, p0, Lcom/nexstreaming/app/common/task/Task;->mProgressSignalled:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nexstreaming/app/common/task/Task;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nexstreaming/app/common/task/Task;->mMaxProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " events="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": events="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
