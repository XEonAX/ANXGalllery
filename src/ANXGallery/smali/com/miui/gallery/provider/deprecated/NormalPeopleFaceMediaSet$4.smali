.class Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet$4;
.super Ljava/lang/Object;
.source "NormalPeopleFaceMediaSet.java"

# interfaces
.implements Lcom/miui/gallery/util/GalleryUtils$ConcatConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mergeToThis(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/GalleryUtils$ConcatConverter<",
        "Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;


# direct methods
.method constructor <init>(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet$4;->this$0:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToString(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet$4;->this$0:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public bridge synthetic convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet$4;->convertToString(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
