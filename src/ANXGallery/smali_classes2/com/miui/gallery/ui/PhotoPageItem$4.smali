.class synthetic Lcom/miui/gallery/ui/PhotoPageItem$4;
.super Ljava/lang/Object;
.source "PhotoPageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$gallery$error$core$ErrorCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/miui/gallery/error/core/ErrorCode;->values()[Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/gallery/ui/PhotoPageItem$4;->$SwitchMap$com$miui$gallery$error$core$ErrorCode:[I

    :try_start_0
    sget-object v0, Lcom/miui/gallery/ui/PhotoPageItem$4;->$SwitchMap$com$miui$gallery$error$core$ErrorCode:[I

    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->THUMBNAIL_BUILD_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-virtual {v1}, Lcom/miui/gallery/error/core/ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/miui/gallery/ui/PhotoPageItem$4;->$SwitchMap$com$miui$gallery$error$core$ErrorCode:[I

    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->WRITE_EXIF_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-virtual {v1}, Lcom/miui/gallery/error/core/ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/miui/gallery/ui/PhotoPageItem$4;->$SwitchMap$com$miui$gallery$error$core$ErrorCode:[I

    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->NO_WIFI_CONNECTED:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-virtual {v1}, Lcom/miui/gallery/error/core/ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/miui/gallery/ui/PhotoPageItem$4;->$SwitchMap$com$miui$gallery$error$core$ErrorCode:[I

    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->NO_CTA_PERMISSION:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-virtual {v1}, Lcom/miui/gallery/error/core/ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
