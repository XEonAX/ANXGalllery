.class Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;
.super Ljava/lang/Object;
.source "SmartEffectFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->onDownlaodCompleted(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

.field final synthetic val$position:I

.field final synthetic val$smartEffect:Lcom/miui/gallery/video/editor/SmartEffect;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;Lcom/miui/gallery/video/editor/SmartEffect;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;->val$smartEffect:Lcom/miui/gallery/video/editor/SmartEffect;

    iput p3, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;->val$smartEffect:Lcom/miui/gallery/video/editor/SmartEffect;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/SmartEffect;->setDownloadState(I)V

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;->val$position:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->notifyDateSetChanged(I)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    invoke-static {}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->getInstance()Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4$1;-><init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->loadSmartEffectTemplateList(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadSmartEffectListener;)V

    return-void
.end method
