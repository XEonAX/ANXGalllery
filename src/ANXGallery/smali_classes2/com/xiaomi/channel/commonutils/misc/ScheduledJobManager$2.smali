.class Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$2;
.super Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$JobWrapper;
.source "ScheduledJobManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$2;->this$0:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    invoke-direct {p0, p2}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$JobWrapper;-><init>(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;)V

    return-void
.end method


# virtual methods
.method onJobDone()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$2;->this$0:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->access$100(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$2;->this$0:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->access$200(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$2;->job:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;

    invoke-virtual {v2}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
