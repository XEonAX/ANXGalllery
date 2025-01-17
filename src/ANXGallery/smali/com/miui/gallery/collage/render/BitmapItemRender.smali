.class public Lcom/miui/gallery/collage/render/BitmapItemRender;
.super Ljava/lang/Object;
.source "BitmapItemRender.java"


# instance fields
.field private mBitmapBound:Landroid/graphics/RectF;

.field private mBitmapInitBound:Landroid/graphics/RectF;

.field private mBitmapInsideBound:Landroid/graphics/RectF;

.field private mBitmapMatrix:Landroid/graphics/Matrix;

.field private mDrawingMatrix:Landroid/graphics/Matrix;

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mPorterDuffModeIn:Landroid/graphics/PorterDuffXfermode;

.field private mPorterDuffModeOut:Landroid/graphics/PorterDuffXfermode;

.field private mUserMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapBound:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mDrawingMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mUserMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPorterDuffModeOut:Landroid/graphics/PorterDuffXfermode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPorterDuffModeIn:Landroid/graphics/PorterDuffXfermode;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method


# virtual methods
.method public drawBitmapItem(Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;Landroid/graphics/RectF;Landroid/graphics/Canvas;F)V
    .locals 11

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapBound:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v1, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->transition:Z

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapBound:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-boolean v8, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->mirror:Z

    iget v9, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->rotate:I

    iget-object v10, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    move-object v7, p2

    invoke-static/range {v5 .. v10}, Lcom/miui/gallery/collage/render/CollageRender;->initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZILandroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget-object v2, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmapInsideRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mUserMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mUserMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mDrawingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mDrawingMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mDrawingMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mUserMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v1, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->maskDrawable:Landroid/graphics/drawable/Drawable;

    iget p1, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->radius:F

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget p1, p2, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p4, p2, Landroid/graphics/RectF;->top:F

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    iget v4, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v1, p1, p4, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p3, p2, v3, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPorterDuffModeOut:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mDrawingMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    mul-float p1, p1, p4

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p3, p2, v3, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    iget-object p1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPorterDuffModeIn:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mDrawingMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mDrawingMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapBound:Landroid/graphics/RectF;

    iget-object p4, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    invoke-static {p1, p4, p2, v1}, Lcom/miui/gallery/collage/render/CollageRender;->initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method
