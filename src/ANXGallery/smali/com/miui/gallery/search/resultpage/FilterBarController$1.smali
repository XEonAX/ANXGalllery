.class Lcom/miui/gallery/search/resultpage/FilterBarController$1;
.super Ljava/lang/Object;
.source "FilterBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/resultpage/FilterBarController;->showFilterBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/FilterBarController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/resultpage/FilterBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/FilterBarController$1;->this$0:Lcom/miui/gallery/search/resultpage/FilterBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/FilterBarController$1;->this$0:Lcom/miui/gallery/search/resultpage/FilterBarController;

    invoke-static {v0}, Lcom/miui/gallery/search/resultpage/FilterBarController;->access$000(Lcom/miui/gallery/search/resultpage/FilterBarController;)Lcom/miui/gallery/widget/TwoStageDrawer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/widget/TwoStageDrawer;->openDrawer(ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V

    return-void
.end method
