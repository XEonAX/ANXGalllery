.class final Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;
.super Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;
.source "ParallelJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JoinSubscriptionDelayError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4fa158f1d44428dbL


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;-><init>(Lorg/reactivestreams/Subscriber;II)V

    return-void
.end method


# virtual methods
.method drain()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drainLoop()V

    return-void
.end method

.method drainLoop()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;

    array-length v2, v1

    iget-object v3, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->downstream:Lorg/reactivestreams/Subscriber;

    const/4 v5, 0x1

    :goto_0
    iget-object v6, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_1
    cmp-long v12, v10, v6

    if-eqz v12, :cond_8

    iget-boolean v12, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->cancelled:Z

    if-eqz v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->cleanup()V

    return-void

    :cond_0
    iget-object v12, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    move-wide v14, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_3
    if-ge v10, v2, :cond_4

    aget-object v4, v1, v10

    iget-object v13, v4, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    if-eqz v13, :cond_3

    invoke-interface {v13}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-interface {v3, v13}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->requestOne()V

    const-wide/16 v17, 0x1

    add-long v14, v14, v17

    cmp-long v4, v14, v6

    if-nez v4, :cond_2

    goto :goto_5

    :cond_2
    const/4 v11, 0x0

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    if-eqz v12, :cond_6

    if-eqz v11, :cond_6

    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_4
    return-void

    :cond_6
    if-eqz v11, :cond_7

    goto :goto_5

    :cond_7
    move-wide v10, v14

    goto :goto_1

    :cond_8
    move-wide v14, v10

    :goto_5
    cmp-long v4, v14, v6

    if-nez v4, :cond_e

    iget-boolean v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->cancelled:Z

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->cleanup()V

    return-void

    :cond_9
    iget-object v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v2, :cond_c

    aget-object v11, v1, v10

    iget-object v11, v11, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    if-eqz v11, :cond_b

    invoke-interface {v11}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    const/16 v16, 0x0

    goto :goto_8

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_c
    const/16 v16, 0x1

    :goto_8
    if-eqz v4, :cond_e

    if-eqz v16, :cond_e

    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_d
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_9
    return-void

    :cond_e
    cmp-long v4, v14, v8

    if-eqz v4, :cond_f

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v4, v6, v8

    if-eqz v4, :cond_f

    iget-object v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v6, v14

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->get()I

    move-result v4

    if-ne v4, v5, :cond_10

    neg-int v4, v5

    invoke-virtual {v0, v4}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_10

    return-void

    :cond_10
    move v5, v4

    goto/16 :goto_0
.end method

.method onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drain()V

    return-void
.end method

.method onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drain()V

    return-void
.end method

.method onNext(Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->get()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    iget-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->request(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->getQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->cancel()Z

    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    new-instance p2, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue full?!"

    invoke-direct {p2, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drainLoop()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_3
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->getQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->cancel()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    new-instance p2, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue full?!"

    invoke-direct {p2, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drainLoop()V

    return-void
.end method