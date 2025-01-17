.class public final Lcom/miui/gallery/net/download/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/net/download/Request$Listener;
    }
.end annotation


# instance fields
.field private mAllowedOverMetered:Z

.field private mDestination:Ljava/io/File;

.field private mHashCode:I

.field private volatile mListener:Lcom/miui/gallery/net/download/Request$Listener;

.field private mMaxRetryTimes:I

.field private mUri:Landroid/net/Uri;

.field private mVerifier:Lcom/miui/gallery/net/download/Verifier;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gallery/net/download/Request;->mMaxRetryTimes:I

    iput-object p1, p0, Lcom/miui/gallery/net/download/Request;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support scheme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/miui/gallery/net/download/Request;->mDestination:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/gallery/net/download/Request;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/miui/gallery/net/download/Request;

    iget-object v1, p1, Lcom/miui/gallery/net/download/Request;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/gallery/net/download/Request;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/miui/gallery/net/download/Request;->mDestination:Ljava/io/File;

    iget-object v1, p0, Lcom/miui/gallery/net/download/Request;->mDestination:Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getDestination()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/net/download/Request;->mDestination:Ljava/io/File;

    return-object v0
.end method

.method public getListener()Lcom/miui/gallery/net/download/Request$Listener;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/net/download/Request;->mListener:Lcom/miui/gallery/net/download/Request$Listener;

    return-object v0
.end method

.method public getMaxRetryTimes()I
    .locals 1

    iget v0, p0, Lcom/miui/gallery/net/download/Request;->mMaxRetryTimes:I

    return v0
.end method

.method getNetworkType()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gallery/net/download/Request;->mAllowedOverMetered:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/net/download/Request;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVerifier()Lcom/miui/gallery/net/download/Verifier;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/net/download/Request;->mVerifier:Lcom/miui/gallery/net/download/Verifier;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/miui/gallery/net/download/Request;->mHashCode:I

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "uri: %s, file: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/net/download/Request;->mUri:Landroid/net/Uri;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/gallery/net/download/Request;->mDestination:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/net/download/Request;->mHashCode:I

    :cond_0
    iget v0, p0, Lcom/miui/gallery/net/download/Request;->mHashCode:I

    return v0
.end method

.method public setAllowedOverMetered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gallery/net/download/Request;->mAllowedOverMetered:Z

    return-void
.end method

.method public setListener(Lcom/miui/gallery/net/download/Request$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/net/download/Request;->mListener:Lcom/miui/gallery/net/download/Request$Listener;

    return-void
.end method

.method public setVerifier(Lcom/miui/gallery/net/download/Verifier;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/net/download/Request;->mVerifier:Lcom/miui/gallery/net/download/Verifier;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "uri: %s, file: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/gallery/net/download/Request;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/miui/gallery/net/download/Request;->mDestination:Ljava/io/File;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
