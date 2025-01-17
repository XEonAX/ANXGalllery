.class Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BiDirectionSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BiDirectionDrawable"
.end annotation


# instance fields
.field private mBlankPaint:Landroid/graphics/Paint;

.field private mBlankWidth:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mPadding:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mBlankPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mBlankPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mBlankPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const p1, 0x7f06032f

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mBlankWidth:F

    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v3, v1, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->getLevel()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x1388

    if-le v2, v4, :cond_1

    sub-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x2

    move v3, v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-ge v2, v4, :cond_0

    sub-int/2addr v4, v2

    mul-int/lit8 v2, v4, 0x2

    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mBlankWidth:F

    sub-float v4, v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mBlankWidth:F

    add-float v6, v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mBlankPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getState()[I
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 6

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    return-object v1
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    return-void
.end method

.method public setState([I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1
.end method
