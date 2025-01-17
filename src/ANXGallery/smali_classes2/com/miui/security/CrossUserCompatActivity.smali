.class public Lcom/miui/security/CrossUserCompatActivity;
.super Lmiui/app/Activity;
.source "CrossUserCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/security/CrossUserCompatActivity$CrossUserContextWrapper;
    }
.end annotation


# instance fields
.field private volatile mCrossUserContentResolver:Landroid/content/ContentResolver;

.field private volatile mCrossUserContextWrapper:Landroid/content/ContextWrapper;

.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mLockObject:Ljava/lang/Object;

    return-void
.end method

.method private validateCallingPackage()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/internal/CrossUserHelper;->checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private validateCrossUser()I
    .locals 3

    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.picked_user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCallingPackage()Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/security/CrossUserCompatActivity$CrossUserContextWrapper;

    invoke-super {p0}, Lmiui/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/security/CrossUserCompatActivity$CrossUserContextWrapper;-><init>(Lcom/miui/security/CrossUserCompatActivity;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getApplicationContext: WrapperedApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    return-object v0

    :cond_2
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getApplicationContext: NormalApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v1

    invoke-static {p0, v1}, Lcom/miui/internal/CrossUserHelper;->getContentResolver(Landroid/content/Context;I)Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getContentResolver: CrossUserContentResolver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    return-object v0

    :cond_2
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getContentResolver: NormalContentResolver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public isCrossUserPick()Z
    .locals 2

    sget-boolean v0, Lcom/miui/core/SdkHelper;->IS_MIUI:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/internal/CrossUserHelper;->support()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-super {p0, p1}, Lmiui/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
