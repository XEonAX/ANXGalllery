.class public Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;
.super Lcom/miui/gallery/video/editor/widget/SingleChoiceRecyclerView$SingleChoiceRecyclerViewAdapter;
.source "FilterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/video/editor/widget/SingleChoiceRecyclerView$SingleChoiceRecyclerViewAdapter<",
        "Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final ITEM_TYPE_ITEM_NORMAL:I

.field private filterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gallery/video/editor/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstMarginLeft:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/gallery/video/editor/Filter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecyclerView$SingleChoiceRecyclerViewAdapter;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->ITEM_TYPE_ITEM_NORMAL:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->mFirstMarginLeft:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->filterList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFilter(I)Lcom/miui/gallery/video/editor/Filter;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->filterList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->filterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->filterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gallery/video/editor/Filter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->filterList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->filterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindView(Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->mFirstMarginLeft:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->setMarginLeft(I)V

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->filterList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/gallery/video/editor/Filter;

    invoke-virtual {p2}, Lcom/miui/gallery/video/editor/Filter;->getNameResId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->setName(I)V

    invoke-virtual {p2}, Lcom/miui/gallery/video/editor/Filter;->getIconResId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->setIcon(I)V

    return-void
.end method

.method public bridge synthetic onBindView(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecyclerView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->onBindView(Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;I)V

    return-void
.end method

.method public onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;
    .locals 2

    iget-object p2, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0181

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecyclerView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;

    move-result-object p1

    return-object p1
.end method
