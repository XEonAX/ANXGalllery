.class Landroid/support/v7/widget/GridLayout$Bounds;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bounds"
.end annotation


# instance fields
.field public after:I

.field public before:I

.field public flexibility:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Bounds;->reset()V

    return-void
.end method


# virtual methods
.method protected getOffset(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;IZ)I
    .locals 0

    iget p5, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    invoke-static {p1}, Landroid/support/v4/view/ViewGroupCompat;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result p1

    invoke-virtual {p3, p2, p4, p1}, Landroid/support/v7/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result p1

    sub-int/2addr p5, p1

    return p5
.end method

.method protected include(II)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    iget p1, p0, Landroid/support/v7/widget/GridLayout$Bounds;->after:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/GridLayout$Bounds;->after:I

    return-void
.end method

.method protected final include(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Axis;I)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->flexibility:I

    invoke-virtual {p3}, Landroid/support/v7/widget/GridLayout$Spec;->getFlexibility()I

    move-result v1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->flexibility:I

    iget-boolean p4, p4, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object p3

    invoke-static {p1}, Landroid/support/v4/view/ViewGroupCompat;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result p1

    invoke-virtual {p3, p2, p5, p1}, Landroid/support/v7/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result p1

    sub-int/2addr p5, p1

    invoke-virtual {p0, p1, p5}, Landroid/support/v7/widget/GridLayout$Bounds;->include(II)V

    return-void
.end method

.method protected reset()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->after:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->flexibility:I

    return-void
.end method

.method protected size(Z)I
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, Landroid/support/v7/widget/GridLayout$Bounds;->flexibility:I

    invoke-static {p1}, Landroid/support/v7/widget/GridLayout;->canStretch(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x186a0

    return p1

    :cond_0
    iget p1, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    iget v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->after:I

    add-int/2addr p1, v0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Bounds;->after:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
