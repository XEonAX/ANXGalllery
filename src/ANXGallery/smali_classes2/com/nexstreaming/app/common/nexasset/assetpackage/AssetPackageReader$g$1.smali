.class Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$g$1;
.super Ljava/lang/Object;
.source "AssetPackageReader.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$g;->a()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$g;


# direct methods
.method constructor <init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$g;)V
    .locals 0

    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$g$1;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$g$1;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$g;

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$g;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$g;)Ljava/util/zip/ZipFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$g$1$1;

    invoke-direct {v1, p0, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$g$1$1;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$g$1;Ljava/util/Enumeration;)V

    return-object v1
.end method
