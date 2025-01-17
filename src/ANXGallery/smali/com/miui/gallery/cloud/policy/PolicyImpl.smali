.class public Lcom/miui/gallery/cloud/policy/PolicyImpl;
.super Ljava/lang/Object;
.source "PolicyImpl.java"

# interfaces
.implements Lcom/miui/gallery/cloud/policy/IPolicy;


# instance fields
.field private final mProxy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;

.field private final mType:Lcom/miui/gallery/cloud/base/SyncType;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/base/SyncType;Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gallery/cloud/policy/PolicyImpl;->mType:Lcom/miui/gallery/cloud/base/SyncType;

    iput-object p2, p0, Lcom/miui/gallery/cloud/policy/PolicyImpl;->mProxy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;

    return-void
.end method


# virtual methods
.method public getType()Lcom/miui/gallery/cloud/base/SyncType;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/cloud/policy/PolicyImpl;->mType:Lcom/miui/gallery/cloud/base/SyncType;

    return-object v0
.end method

.method public isDisallowMetered()Z
    .locals 1

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getBackupOnlyInWifi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/policy/PolicyImpl;->mProxy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/cloud/policy/PolicyImpl;->mProxy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->isDisallowMetered()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/cloud/policy/PolicyImpl;->mProxy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/policy/PolicyImpl;->mProxy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->isEnable()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isIgnoreBatteryLow()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/cloud/policy/PolicyImpl;->mProxy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/policy/PolicyImpl;->mProxy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->isIgnoreBattery()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequireCharging()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/cloud/policy/PolicyImpl;->mProxy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/policy/PolicyImpl;->mProxy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->isRequireCharging()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
