.class public Landroid/support/constraint/Constraints;
.super Landroid/view/ViewGroup;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/Constraints$LayoutParams;
    }
.end annotation


# instance fields
.field myConstraintSet:Landroid/support/constraint/ConstraintSet;


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/support/constraint/Constraints$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/constraint/Constraints$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/Constraints$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/constraint/Constraints;->generateDefaultLayoutParams()Landroid/support/constraint/Constraints$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/Constraints$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/constraint/Constraints$LayoutParams;

    invoke-virtual {p0}, Landroid/support/constraint/Constraints;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/Constraints$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/constraint/Constraints;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/Constraints$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getConstraintSet()Landroid/support/constraint/ConstraintSet;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/Constraints;->myConstraintSet:Landroid/support/constraint/ConstraintSet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintSet;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/Constraints;->myConstraintSet:Landroid/support/constraint/ConstraintSet;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/Constraints;->myConstraintSet:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {v0, p0}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/Constraints;)V

    iget-object v0, p0, Landroid/support/constraint/Constraints;->myConstraintSet:Landroid/support/constraint/ConstraintSet;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method
