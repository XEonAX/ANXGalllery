.class public abstract Lcom/miui/gallery/collage/core/RenderEngine;
.super Ljava/lang/Object;
.source "RenderEngine.java"


# instance fields
.field protected final mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gallery/collage/core/RenderEngine;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gallery/collage/core/RenderEngine;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    return-void
.end method


# virtual methods
.method public abstract render(Lcom/miui/gallery/collage/core/RenderData;)Landroid/graphics/Bitmap;
.end method
