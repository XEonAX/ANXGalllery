.class Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;
.super Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;
.source "AsyncUpDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/AsyncUpDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiLockRef"
.end annotation


# instance fields
.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field final synthetic this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    invoke-direct {p0, p2}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAcquire()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    return-void
.end method

.method public onRelease()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_0
    return-void
.end method
