.class Lcom/xiaomi/network/HostManager$2;
.super Lcom/xiaomi/network/Fallback;
.source "HostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/network/HostManager;->getFallbacksByHost(Ljava/lang/String;Z)Lcom/xiaomi/network/Fallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field local:Lcom/xiaomi/network/Fallback;

.field final synthetic this$0:Lcom/xiaomi/network/HostManager;

.field final synthetic val$localFB:Lcom/xiaomi/network/Fallback;


# direct methods
.method constructor <init>(Lcom/xiaomi/network/HostManager;Ljava/lang/String;Lcom/xiaomi/network/Fallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/network/HostManager$2;->this$0:Lcom/xiaomi/network/HostManager;

    iput-object p3, p0, Lcom/xiaomi/network/HostManager$2;->val$localFB:Lcom/xiaomi/network/Fallback;

    invoke-direct {p0, p2}, Lcom/xiaomi/network/Fallback;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/network/HostManager$2;->val$localFB:Lcom/xiaomi/network/Fallback;

    iput-object p1, p0, Lcom/xiaomi/network/HostManager$2;->local:Lcom/xiaomi/network/Fallback;

    iget-object p1, p0, Lcom/xiaomi/network/HostManager$2;->host:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/network/HostManager$2;->host:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/network/HostManager$2;->val$localFB:Lcom/xiaomi/network/Fallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/network/HostManager$2;->val$localFB:Lcom/xiaomi/network/Fallback;

    iget-object p1, p1, Lcom/xiaomi/network/Fallback;->ip:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/network/HostManager$2;->ip:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized accessHost(Ljava/lang/String;Lcom/xiaomi/network/AccessHistory;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/network/HostManager$2;->local:Lcom/xiaomi/network/Fallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/network/HostManager$2;->local:Lcom/xiaomi/network/Fallback;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/network/Fallback;->accessHost(Ljava/lang/String;Lcom/xiaomi/network/AccessHistory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getHosts(Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/network/HostManager$2;->local:Lcom/xiaomi/network/Fallback;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/network/HostManager$2;->local:Lcom/xiaomi/network/Fallback;

    invoke-virtual {v0, v1}, Lcom/xiaomi/network/Fallback;->getHosts(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    sget-object v0, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    iget-object v3, p0, Lcom/xiaomi/network/HostManager$2;->host:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/network/Fallback;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lcom/xiaomi/network/Fallback;->getHosts(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/network/HostManager$2;->host:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/xiaomi/network/HostManager$2;->host:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isEffective()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
