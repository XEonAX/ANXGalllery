.class Lcom/miui/gallery/search/widget/bannerView/BannerView$AnimRunnable;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/widget/bannerView/BannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/widget/bannerView/BannerView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/search/widget/bannerView/BannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView$AnimRunnable;->this$0:Lcom/miui/gallery/search/widget/bannerView/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/search/widget/bannerView/BannerView;Lcom/miui/gallery/search/widget/bannerView/BannerView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gallery/search/widget/bannerView/BannerView$AnimRunnable;-><init>(Lcom/miui/gallery/search/widget/bannerView/BannerView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView$AnimRunnable;->this$0:Lcom/miui/gallery/search/widget/bannerView/BannerView;

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->performNext()V

    iget-object v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView$AnimRunnable;->this$0:Lcom/miui/gallery/search/widget/bannerView/BannerView;

    iget-object v1, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView$AnimRunnable;->this$0:Lcom/miui/gallery/search/widget/bannerView/BannerView;

    invoke-static {v1}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->access$200(Lcom/miui/gallery/search/widget/bannerView/BannerView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->access$102(Lcom/miui/gallery/search/widget/bannerView/BannerView;I)I

    iget-object v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView$AnimRunnable;->this$0:Lcom/miui/gallery/search/widget/bannerView/BannerView;

    iget-object v1, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView$AnimRunnable;->this$0:Lcom/miui/gallery/search/widget/bannerView/BannerView;

    invoke-static {v1}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->access$100(Lcom/miui/gallery/search/widget/bannerView/BannerView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->access$300(Lcom/miui/gallery/search/widget/bannerView/BannerView;I)V

    return-void
.end method
