.class Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$DeviceStorageStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceStorageStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$DeviceStorageStateReceiver;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$DeviceStorageStateReceiver;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyncStateObserver"

    const-string v0, "DeviceStorageStateReceiver %s"

    invoke-static {p2, v0, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setDeviceStorageLow(Z)V

    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->setIsLocalSpaceFull(Z)V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setDeviceStorageLow(Z)V

    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->setIsLocalSpaceFull(Z)V

    :cond_1
    :goto_0
    return-void
.end method
