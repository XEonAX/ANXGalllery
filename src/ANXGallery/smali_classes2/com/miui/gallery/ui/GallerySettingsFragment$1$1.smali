.class Lcom/miui/gallery/ui/GallerySettingsFragment$1$1;
.super Ljava/lang/Object;
.source "GallerySettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/GallerySettingsFragment$1;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/GallerySettingsFragment$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/GallerySettingsFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$1$1;->this$1:Lcom/miui/gallery/ui/GallerySettingsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$1$1;->this$1:Lcom/miui/gallery/ui/GallerySettingsFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/GallerySettingsFragment$1;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->access$000(Lcom/miui/gallery/ui/GallerySettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$1$1;->this$1:Lcom/miui/gallery/ui/GallerySettingsFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/GallerySettingsFragment$1;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$1$1;->this$1:Lcom/miui/gallery/ui/GallerySettingsFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/GallerySettingsFragment$1;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/GallerySettingsFragment;->access$000(Lcom/miui/gallery/ui/GallerySettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    const-string v2, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method
