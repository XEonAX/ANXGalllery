.class final Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils$1;
.super Landroid/os/AsyncTask;
.source "nexAssetStoreAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->makeConfigAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/AssetStoreClient;->makeConfig()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
