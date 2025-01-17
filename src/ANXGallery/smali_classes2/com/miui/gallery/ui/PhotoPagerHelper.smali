.class public Lcom/miui/gallery/ui/PhotoPagerHelper;
.super Ljava/lang/Object;
.source "PhotoPagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnPlayVideoListener;,
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnImageLoadFinishListener;,
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;,
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;,
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;,
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;,
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;,
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;,
        Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;
    }
.end annotation


# instance fields
.field private mAlphaChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;

.field private mDisplayRectChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;

.field private mDownloadListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

.field private mExitListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;

.field private mInternalAlphaChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

.field private mInternalExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

.field private mInternalHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mInternalImageLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

.field private mInternalMatrixListener:Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

.field private mInternalOnImageLoadFinishListener:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

.field private mInternalOnPlayVideoListener:Lcom/miui/gallery/ui/PhotoPageItem$OnPlayVideoListener;

.field private mInternalPageChangedListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

.field private mInternalPageSettledListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

.field private mInternalScaleListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

.field private mInternalTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

.field private mInternalTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

.field private mOnImageLoadFinishListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnImageLoadFinishListener;

.field private mOnPlayVideoListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPlayVideoListener;

.field private mPageChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;

.field private mPageSettledListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;

.field private mScaleChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;

.field private mTapListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;

.field private mViewPager:Lcom/miui/gallery/widget/ViewPager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/widget/ViewPager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$1;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalPageSettledListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$2;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalPageChangedListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$3;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$4;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalImageLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$5;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalScaleListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$6;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$7;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$7;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalMatrixListener:Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$8;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$8;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$9;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$9;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalAlphaChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$10;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$10;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalOnImageLoadFinishListener:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$11;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$11;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalOnPlayVideoListener:Lcom/miui/gallery/ui/PhotoPageItem$OnPlayVideoListener;

    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper$12;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper$12;-><init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalPageSettledListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/widget/ViewPager;->setOnPageSettledListener(Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;)V

    iget-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalPageChangedListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/widget/ViewPager;->setOnPageChangeListener(Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;)V

    iget-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/widget/ViewPager;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mTapListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mDownloadListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mScaleChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mExitListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mDisplayRectChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mAlphaChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnImageLoadFinishListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mOnImageLoadFinishListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnImageLoadFinishListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/ui/PhotoPagerHelper$OnPlayVideoListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mOnPlayVideoListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPlayVideoListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/PhotoPagerHelper;)Lcom/miui/gallery/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    return-object p0
.end method


# virtual methods
.method public clearTrimMemoryFlag()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getActiveItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageItem;->clearTrimMemoryFlag()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public doExitTransition(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getActiveItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/ViewPager;->getActiveCount()I

    move-result v0

    return v0
.end method

.method public getCurItemDisplayRect()Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, v2}, Luk/co/senab/photoview/PhotoView;->getAbsoluteRect(Landroid/graphics/RectF;)Z

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItem(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/miui/gallery/ui/PhotoPageItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/ViewPager;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isItemValidate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/gallery/ui/PhotoPageItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/ViewPager;->getItemByNativeIndex(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isItemValidate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/gallery/ui/PhotoPageItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onActionBarVisibleChanged(ZI)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->onActionBarVisibleChanged(Ljava/lang/Boolean;I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageItem;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onActivityTransition()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getActiveItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageItem;->onActivityTransition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getActiveItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageItem;->onPause()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getActiveItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageItem;->onResume()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->onSelected(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getActiveItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/PhotoPageItem;->onStopTrimMemory(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getActiveItemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->onTrimMemory(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->onUnSelected(Z)V

    :cond_2
    return-void
.end method

.method public setOnAlphaChangedListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mAlphaChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;

    return-void
.end method

.method public setOnDisplayRectChangedListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mDisplayRectChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;

    return-void
.end method

.method public setOnDownloadListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mDownloadListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    return-void
.end method

.method public setOnExitListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mExitListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;

    return-void
.end method

.method public setOnImageLoadFinishListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnImageLoadFinishListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mOnImageLoadFinishListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnImageLoadFinishListener;

    return-void
.end method

.method public setOnPageChangedListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;

    return-void
.end method

.method public setOnPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public setOnPageSettledListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageSettledListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;

    return-void
.end method

.method public setOnPlayVideoListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnPlayVideoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mOnPlayVideoListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPlayVideoListener;

    return-void
.end method

.method public setOnScaleChangedListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mScaleChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;

    return-void
.end method

.method public setOnTapListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mTapListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;

    return-void
.end method

.method public setPageChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;->onPageChanged(I)V

    :cond_0
    return-void
.end method

.method public setPageScrollStateChanged(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->onPageScrollDragging()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->onPageScrollIdle()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;->onPageScrollStateChanged(I)V

    :cond_2
    return-void
.end method

.method public setPageSettled(I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageSettledListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mPageSettledListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;->onPageSettled(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getActiveItemCount()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItem(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eq v3, p1, :cond_1

    invoke-virtual {v3, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->onUnSelected(Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setCloudImageLoadingListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnExitListener(Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalMatrixListener:Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    invoke-virtual {v3, v5}, Lcom/miui/gallery/ui/PhotoPageItem;->removeOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnBackgroundAlphaChangedListener(Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setTrimMemoryCallback(Lcom/miui/gallery/util/photoview/TrimMemoryCallback;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnPlayVideoListener(Lcom/miui/gallery/ui/PhotoPageItem$OnPlayVideoListener;)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalImageLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setCloudImageLoadingListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnExitListener(Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;)V

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalScaleListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalMatrixListener:Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->addOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalAlphaChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnBackgroundAlphaChangedListener(Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;)V

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setTrimMemoryCallback(Lcom/miui/gallery/util/photoview/TrimMemoryCallback;)V

    invoke-virtual {v3, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->onSelected(Z)V

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalOnPlayVideoListener:Lcom/miui/gallery/ui/PhotoPageItem$OnPlayVideoListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnPlayVideoListener(Lcom/miui/gallery/ui/PhotoPageItem$OnPlayVideoListener;)V

    :goto_1
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPagerHelper;->mInternalOnImageLoadFinishListener:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->setOnImageLoadFinishListener(Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
