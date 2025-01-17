.class Lcom/miui/gallery/collage/core/stitching/StitchingEngine;
.super Lcom/miui/gallery/collage/core/RenderEngine;
.source "StitchingEngine.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/collage/core/RenderEngine;-><init>(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager;)V

    return-void
.end method


# virtual methods
.method public render(Lcom/miui/gallery/collage/core/RenderData;)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;

    iget-object v2, v1, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;->mRenderData:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;

    iget-object v2, v2, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;->bitmapRenderDatas:[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    iget-object v3, v1, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;->mRenderData:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;

    iget-object v3, v3, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;->stitchingModel:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    iget v4, v1, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;->mWidth:I

    iget-object v1, v1, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;->mRenderData:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;

    iget v1, v1, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;->viewWidth:I

    int-to-float v5, v4

    int-to-float v1, v1

    div-float/2addr v5, v1

    new-instance v1, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;

    array-length v6, v2

    invoke-direct {v1, v6}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;-><init>(I)V

    invoke-virtual {v3, v4, v1, v2}, Lcom/miui/gallery/collage/core/stitching/StitchingModel;->countHeight(ILcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;)V

    iget v3, v1, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->height:I

    iget v6, v1, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->verticalOffset:I

    iget v7, v1, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->horizontalOffset:I

    new-instance v8, Lcom/miui/gallery/collage/render/BitmapItemRender;

    invoke-direct {v8}, Lcom/miui/gallery/collage/render/BitmapItemRender;-><init>()V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v12, 0x0

    if-lez v7, :cond_0

    add-int/lit8 v13, v6, 0x0

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    array-length v14, v2

    if-ge v12, v14, :cond_2

    aget-object v14, v2, v12

    iget-object v15, v14, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/miui/gallery/collage/core/stitching/StitchingEngine;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/miui/gallery/collage/core/stitching/StitchingEngine;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    move-object/from16 v17, v10

    iget-object v10, v14, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v10}, Lcom/miui/gallery/collage/BitmapManager;->getOriginUriByBitmap(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    iget-object v10, v0, Lcom/miui/gallery/collage/core/stitching/StitchingEngine;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    invoke-virtual {v10, v4, v3, v2}, Lcom/miui/gallery/collage/BitmapManager;->loadSuitableBitmapBySize(IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v14, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    move-object/from16 v17, v10

    :goto_1
    iget-object v2, v1, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->bitmapHeights:[I

    aget v2, v2, v12

    add-int/2addr v2, v13

    int-to-float v10, v7

    int-to-float v13, v13

    iget v0, v1, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->bitmapWidth:I

    add-int/2addr v0, v7

    int-to-float v0, v0

    move-object/from16 v18, v1

    int-to-float v1, v2

    invoke-virtual {v9, v10, v13, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v11, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v8, v14, v9, v11, v5}, Lcom/miui/gallery/collage/render/BitmapItemRender;->drawBitmapItem(Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;Landroid/graphics/RectF;Landroid/graphics/Canvas;F)V

    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    add-int v13, v2, v6

    iput-object v15, v14, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v16

    move-object/from16 v10, v17

    move-object/from16 v1, v18

    move-object/from16 v0, p0

    goto :goto_0

    :cond_2
    move-object/from16 v17, v10

    return-object v17

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
