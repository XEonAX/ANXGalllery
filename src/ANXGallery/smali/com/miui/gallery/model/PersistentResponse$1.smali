.class final Lcom/miui/gallery/model/PersistentResponse$1;
.super Ljava/lang/Object;
.source "PersistentResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/model/PersistentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/gallery/model/PersistentResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/model/PersistentResponse;
    .locals 1

    new-instance v0, Lcom/miui/gallery/model/PersistentResponse;

    invoke-direct {v0, p1}, Lcom/miui/gallery/model/PersistentResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/gallery/model/PersistentResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/model/PersistentResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/miui/gallery/model/PersistentResponse;
    .locals 0

    new-array p1, p1, [Lcom/miui/gallery/model/PersistentResponse;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/gallery/model/PersistentResponse$1;->newArray(I)[Lcom/miui/gallery/model/PersistentResponse;

    move-result-object p1

    return-object p1
.end method
