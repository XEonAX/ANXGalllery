.class public Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
.super Ljava/lang/Object;
.source "BulkDownloadHelper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/BulkDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BulkDownloadItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDownloadPath:Ljava/lang/String;

.field private mDownloadUri:Landroid/net/Uri;

.field private mErrorCode:Lcom/miui/gallery/error/core/ErrorCode;

.field private mSize:J

.field private mType:Lcom/miui/gallery/sdk/download/DownloadType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem$1;

    invoke-direct {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mDownloadUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    iput-wide p3, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mSize:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mDownloadUri:Landroid/net/Uri;

    const-class v0, Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/DownloadType;

    iput-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mSize:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mDownloadUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getErrorCode()Lcom/miui/gallery/error/core/ErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mErrorCode:Lcom/miui/gallery/error/core/ErrorCode;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mSize:J

    return-wide v0
.end method

.method public getType()Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    return-object v0
.end method

.method setDownloadPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mDownloadPath:Ljava/lang/String;

    return-void
.end method

.method setErrorCode(Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mErrorCode:Lcom/miui/gallery/error/core/ErrorCode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Uri[%s], ImageType[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mDownloadUri:Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/DownloadType;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mDownloadUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
