.class public Lcom/miui/gallery/search/resultpage/TagListFragment;
.super Lcom/miui/gallery/search/resultpage/SearchResultFragment;
.source "TagListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/resultpage/TagListFragment$TagListErrorViewAdapter;
    }
.end annotation


# instance fields
.field private mPolicyNoticeFragment:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

.field private mSearchFeedbackTaskController:Lcom/miui/gallery/ui/SearchFeedbackTaskController;

.field private mSearchFeedbackTaskIndicator:Landroid/view/View;

.field private mUserAgreedPolicy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mUserAgreedPolicy:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mPolicyNoticeFragment:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/gallery/search/resultpage/TagListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mUserAgreedPolicy:Z

    return p1
.end method


# virtual methods
.method protected getErrorViewAdapter()Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;
    .locals 2

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/gallery/search/resultpage/TagListFragment$TagListErrorViewAdapter;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/search/resultpage/TagListFragment$TagListErrorViewAdapter;-><init>(Lcom/miui/gallery/search/resultpage/TagListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;

    return-object v0
.end method

.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0b014d

    return v0
.end method

.method protected getSectionDataQueryInfoBuilder()Lcom/miui/gallery/search/core/QueryInfo$Builder;
    .locals 3

    invoke-super {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->getSectionDataQueryInfoBuilder()Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mInFeedbackTaskMode:Z

    if-eqz v1, :cond_0

    const-string v1, "filterMode"

    const-string v2, "feedback"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    :cond_0
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "UserAgreedPolicy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mUserAgreedPolicy:Z

    :cond_0
    return-void
.end method

.method protected onInflateView(Landroid/view/View;Landroid/os/Bundle;Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->onInflateView(Landroid/view/View;Landroid/os/Bundle;Landroid/net/Uri;)V

    iget-boolean p2, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mInFeedbackTaskMode:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mSearchFeedbackTaskIndicator:Landroid/view/View;

    if-nez p2, :cond_0

    const p2, 0x7f090286

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mSearchFeedbackTaskIndicator:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mSearchFeedbackTaskController:Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    if-nez p1, :cond_1

    new-instance p1, Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    iget-object p2, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mSearchFeedbackTaskIndicator:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;-><init>(Lmiui/app/Fragment;Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mSearchFeedbackTaskController:Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/TagListFragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mSearchFeedbackTaskController:Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    invoke-virtual {p1}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->onResume()V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->onPause()V

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mSearchFeedbackTaskController:Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mSearchFeedbackTaskController:Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mSearchFeedbackTaskController:Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mSearchFeedbackTaskController:Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->onResume()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mInFeedbackTaskMode:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->shouldShowFeedbackPolicy()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mUserAgreedPolicy:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mPolicyNoticeFragment:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mPolicyNoticeFragment:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mPolicyNoticeFragment:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/TagListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "PolicyNoticeFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mPolicyNoticeFragment:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mPolicyNoticeFragment:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    invoke-direct {v0}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mPolicyNoticeFragment:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mPolicyNoticeFragment:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    new-instance v1, Lcom/miui/gallery/search/resultpage/TagListFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/search/resultpage/TagListFragment$1;-><init>(Lcom/miui/gallery/search/resultpage/TagListFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->setOnPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mPolicyNoticeFragment:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mPolicyNoticeFragment:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/TagListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "PolicyNoticeFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "UserAgreedPolicy"

    iget-boolean v1, p0, Lcom/miui/gallery/search/resultpage/TagListFragment;->mUserAgreedPolicy:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
