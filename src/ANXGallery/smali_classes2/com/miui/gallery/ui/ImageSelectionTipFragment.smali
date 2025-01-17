.class public Lcom/miui/gallery/ui/ImageSelectionTipFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "ImageSelectionTipFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;
    }
.end annotation


# instance fields
.field private mImageSelectionTipDialog:Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/ImageSelectionTipFragment;)Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->mImageSelectionTipDialog:Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/ImageSelectionTipFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->onDone(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private onDone(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public static showImageSelectionTipDialogIfNecessary(Landroid/app/Activity;)V
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManager;->isImageFeatureSelectionVisiable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->shouldShowImageSelectionTip()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->setIsFirstShowImageSelection(Z)V

    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->setFirstShowImageSelection(Z)V

    new-instance v0, Lcom/miui/gallery/ui/ImageSelectionTipFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v1, "ImageSelectionTip"

    invoke-virtual {v0, p0, v1}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "ImageSelectionTipFragment"

    const-string v0, "activity is null or finishing ,no need to show selection tip dialog"

    invoke-static {p0, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->onDone(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    new-instance p1, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;-><init>(Lcom/miui/gallery/ui/ImageSelectionTipFragment;Landroid/content/Context;)V

    new-instance v0, Lcom/miui/gallery/ui/ImageSelectionTipFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment$1;-><init>(Lcom/miui/gallery/ui/ImageSelectionTipFragment;)V

    invoke-virtual {p1, v0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->mImageSelectionTipDialog:Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;

    iget-object p1, p0, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->mImageSelectionTipDialog:Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->onDone(Landroid/content/DialogInterface;)V

    return-void
.end method
