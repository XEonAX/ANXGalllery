.class public Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;
.super Ljava/lang/Object;
.source "WrapperForSurfaceTextureListener.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WrapperForSTL"

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sIntanceNum:I


# instance fields
.field private mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mFrameAvailableSemaphore:Ljava/util/concurrent/Semaphore;

.field private final mInstanceNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mFrameAvailableSemaphore:Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    sget v0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sIntanceNum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sIntanceNum:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mInstanceNum:I

    const-string v0, "WrapperForSTL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mInstanceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] WrapperForSurfaceTextureListener Constructor. a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static makeSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 4

    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "surfaceTextureFactory"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandler:Landroid/os/Handler;

    :cond_1
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener$1;

    invoke-direct {v2, p0, v0}, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener$1;-><init>(ILjava/util/concurrent/SynchronousQueue;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public connectListener(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    const-string v0, "WrapperForSTL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mInstanceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] WrapperForSurfaceTextureListener connectListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mFrameAvailableSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener$2;

    invoke-direct {v1, p0, p1}, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener$2;-><init>(Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public disconnectListener(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-ne p1, v0, :cond_0

    const-string v0, "WrapperForSTL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mInstanceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] WrapperForSurfaceTextureListener disconnectListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_0

    const-string v0, "WrapperForSTL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mInstanceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] WARNING - Frame available to wrong listener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mFrameAvailableSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public waitFrameAvailable(I)I
    .locals 9

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_4

    if-gez p1, :cond_0

    const/16 p1, 0x9c4

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mFrameAvailableSemaphore:Ljava/util/concurrent/Semaphore;

    int-to-long v6, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p1, v5, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    if-eqz p1, :cond_1

    const-string v0, "WrapperForSTL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mInstanceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] waitFrameAvailable : (elapsed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " interrupted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v4, :cond_3

    const/16 v3, 0x8

    :cond_3
    or-int/2addr p1, v3

    return p1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
