.class public Lcom/miui/gallery/data/ExternalSettingSecretService;
.super Landroid/app/Service;
.source "ExternalSettingSecretService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;,
        Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance p1, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/gallery/data/ExternalSettingSecretService$Deletor;-><init>(Lcom/miui/gallery/data/ExternalSettingSecretService;Lcom/miui/gallery/data/ExternalSettingSecretService$1;)V

    return-object p1
.end method
