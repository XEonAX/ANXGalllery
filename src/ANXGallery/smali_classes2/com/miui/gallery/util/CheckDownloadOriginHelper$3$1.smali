.class Lcom/miui/gallery/util/CheckDownloadOriginHelper$3$1;
.super Ljava/lang/Object;
.source "CheckDownloadOriginHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;->onDownloadComplete(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;

.field final synthetic val$failedItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3$1;->this$1:Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;

    iput-object p2, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3$1;->val$failedItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3$1;->this$1:Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;

    iget-object p1, p1, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    iget-object p2, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3$1;->val$failedItems:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$300(Lcom/miui/gallery/util/CheckDownloadOriginHelper;Ljava/util/ArrayList;)V

    return-void
.end method
