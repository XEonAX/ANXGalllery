.class public Lcom/miui/gallery/settingsbackup/GallerySettingsBackupService;
.super Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;
.source "GallerySettingsBackupService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBackupImpl()Lcom/xiaomi/settingsdk/backup/ICloudBackup;
    .locals 1

    new-instance v0, Lcom/miui/gallery/settingsbackup/GallerySettingsBackupImpl;

    invoke-direct {v0}, Lcom/miui/gallery/settingsbackup/GallerySettingsBackupImpl;-><init>()V

    return-object v0
.end method
