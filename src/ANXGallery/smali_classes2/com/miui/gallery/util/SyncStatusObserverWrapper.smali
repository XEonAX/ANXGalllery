.class public Lcom/miui/gallery/util/SyncStatusObserverWrapper;
.super Ljava/lang/Object;
.source "SyncStatusObserverWrapper.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# instance fields
.field private mWorker:Landroid/content/SyncStatusObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/util/SyncStatusObserverWrapper;->mWorker:Landroid/content/SyncStatusObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/SyncStatusObserver;->onStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public setSyncStatusObserverWorker(Landroid/content/SyncStatusObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/util/SyncStatusObserverWrapper;->mWorker:Landroid/content/SyncStatusObserver;

    return-void
.end method
