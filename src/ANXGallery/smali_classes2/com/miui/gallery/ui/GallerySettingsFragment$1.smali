.class Lcom/miui/gallery/ui/GallerySettingsFragment$1;
.super Ljava/lang/Object;
.source "GallerySettingsFragment.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/GallerySettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/GallerySettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$1;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$1;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-static {p1}, Lcom/miui/gallery/ui/GallerySettingsFragment;->access$100(Lcom/miui/gallery/ui/GallerySettingsFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/miui/gallery/ui/GallerySettingsFragment$1$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/GallerySettingsFragment$1$1;-><init>(Lcom/miui/gallery/ui/GallerySettingsFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
