.class public Lcom/nexstreaming/nexeditorsdk/nexEffectPreviewView;
.super Lcom/nexstreaming/app/common/nexasset/preview/a;
.source "nexEffectPreviewView.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/nexasset/preview/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result p1

    invoke-super {p0, p1}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setAspectRatio(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/app/common/nexasset/preview/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result p1

    invoke-super {p0, p1}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setAspectRatio(F)V

    return-void
.end method


# virtual methods
.method public setEffect(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setEffect(Ljava/lang/String;)V

    return-void
.end method

.method public setEffectOptions(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setEffectOptions(Ljava/lang/String;)V

    return-void
.end method

.method public setEffectTime(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setEffectTime(I)V

    return-void
.end method
