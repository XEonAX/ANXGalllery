.class Lcom/miui/gallery/util/baby/ProgressDialogTask$1;
.super Ljava/lang/Object;
.source "CopyFaceAlbumItemsToBabyAlbumTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/baby/ProgressDialogTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/baby/ProgressDialogTask;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/baby/ProgressDialogTask;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask$1;->this$0:Lcom/miui/gallery/util/baby/ProgressDialogTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask$1;->this$0:Lcom/miui/gallery/util/baby/ProgressDialogTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/gallery/util/baby/ProgressDialogTask;->cancel(Z)Z

    return-void
.end method
