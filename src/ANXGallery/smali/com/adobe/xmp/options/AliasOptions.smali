.class public final Lcom/adobe/xmp/options/AliasOptions;
.super Lcom/adobe/xmp/options/Options;
.source "AliasOptions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/xmp/options/Options;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/adobe/xmp/options/Options;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected getValidOptions()I
    .locals 1

    const/16 v0, 0x1e00

    return v0
.end method

.method public isArray()Z
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/AliasOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayAltText()Z
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/AliasOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isSimple()Z
    .locals 1

    invoke-virtual {p0}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setArrayAltText(Z)Lcom/adobe/xmp/options/AliasOptions;
    .locals 1

    const/16 v0, 0x1e00

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/AliasOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setArrayOrdered(Z)Lcom/adobe/xmp/options/AliasOptions;
    .locals 1

    const/16 v0, 0x600

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/AliasOptions;->setOption(IZ)V

    return-object p0
.end method

.method public toPropertyOptions()Lcom/adobe/xmp/options/PropertyOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-virtual {p0}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    return-object v0
.end method
