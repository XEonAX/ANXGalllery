.class Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;
.super Ljava/lang/Object;
.source "PushClientsManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PeerWatcher"
.end annotation


# instance fields
.field final info:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

.field final peer:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->info:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iput-object p3, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->peer:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "peer died, chid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->info:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-static {v0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->access$100(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$1;-><init>(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;I)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJobDelayed(Lcom/xiaomi/push/service/XMPushService$Job;J)V

    const-string v0, "9"

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->info:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.xiaomi.xmsf"

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-static {v1}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->access$100(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-static {v0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->access$100(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$2;

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$2;-><init>(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;I)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->executeJobDelayed(Lcom/xiaomi/push/service/XMPushService$Job;J)V

    :cond_0
    return-void
.end method
