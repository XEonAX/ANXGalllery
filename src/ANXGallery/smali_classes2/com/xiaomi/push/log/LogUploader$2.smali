.class Lcom/xiaomi/push/log/LogUploader$2;
.super Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;
.source "LogUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/log/LogUploader;->executeTask(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field current:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

.field final synthetic this$0:Lcom/xiaomi/push/log/LogUploader;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/log/LogUploader;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/log/LogUploader$2;->this$0:Lcom/xiaomi/push/log/LogUploader;

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public postProcess()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader$2;->current:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader$2;->current:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;->postProcess()V

    :cond_0
    return-void
.end method

.method public process()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader$2;->this$0:Lcom/xiaomi/push/log/LogUploader;

    invoke-static {v0}, Lcom/xiaomi/push/log/LogUploader;->access$100(Lcom/xiaomi/push/log/LogUploader;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/log/LogUploader$Task;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/push/log/LogUploader$Task;->canExcuteNow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/push/log/LogUploader$2;->this$0:Lcom/xiaomi/push/log/LogUploader;

    invoke-static {v1}, Lcom/xiaomi/push/log/LogUploader;->access$100(Lcom/xiaomi/push/log/LogUploader;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/xiaomi/push/log/LogUploader$2;->current:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader$2;->current:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader$2;->current:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;->process()V

    :cond_1
    return-void
.end method
