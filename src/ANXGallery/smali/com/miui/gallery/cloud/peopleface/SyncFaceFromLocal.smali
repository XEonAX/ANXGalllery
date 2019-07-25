.class public Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;
.super Lcom/miui/gallery/cloud/SyncFromLocalBase;
.source "SyncFaceFromLocal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;
    }
.end annotation


# instance fields
.field private mCreatePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

.field private mDeleteFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

.field private mIgnorePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

.field private mMergePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

.field private mMoveFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

.field private mRecoveryPeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

.field private mRenamePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/base/GalleryExtendedAuthToken;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncFromLocalBase;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/base/GalleryExtendedAuthToken;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)Lcom/miui/gallery/cloud/base/GalleryExtendedAuthToken;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/base/GalleryExtendedAuthToken;

    return-object p0
.end method


# virtual methods
.method protected generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBItem;
    .locals 1

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    invoke-direct {v0, p1}, Lcom/miui/gallery/cloud/peopleface/PeopleFace;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getSelectionClause()Ljava/lang/String;
    .locals 4

    const-string v0, " (%s) "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "localFlag != 0"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSortOrder()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleRequestCloudItemList()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mCreatePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->needRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncFaceFromLocal"

    const-string v1, "start create group items"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/syncoperation/CreatePeopleOperation;

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/peopleface/syncoperation/CreatePeopleOperation;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mCreatePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->request(Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;)Lcom/miui/gallery/cloud/base/GallerySyncResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/miui/gallery/cloud/base/GallerySyncResult;->code:Lcom/miui/gallery/cloud/base/GallerySyncCode;

    sget-object v1, Lcom/miui/gallery/cloud/base/GallerySyncCode;->CONDITION_INTERRUPTED:Lcom/miui/gallery/cloud/base/GallerySyncCode;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRecoveryPeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->needRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/syncoperation/RecoveryPeopleOperation;

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/peopleface/syncoperation/RecoveryPeopleOperation;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRecoveryPeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->request(Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;)Lcom/miui/gallery/cloud/base/GallerySyncResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/miui/gallery/cloud/base/GallerySyncResult;->code:Lcom/miui/gallery/cloud/base/GallerySyncCode;

    sget-object v1, Lcom/miui/gallery/cloud/base/GallerySyncCode;->CONDITION_INTERRUPTED:Lcom/miui/gallery/cloud/base/GallerySyncCode;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMoveFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->needRequest()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SyncFaceFromLocal"

    const-string v1, "start move image items"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/syncoperation/MoveFaceOperation;

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/peopleface/syncoperation/MoveFaceOperation;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMoveFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->request(Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;)Lcom/miui/gallery/cloud/base/GallerySyncResult;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/miui/gallery/cloud/base/GallerySyncResult;->code:Lcom/miui/gallery/cloud/base/GallerySyncCode;

    sget-object v1, Lcom/miui/gallery/cloud/base/GallerySyncCode;->CONDITION_INTERRUPTED:Lcom/miui/gallery/cloud/base/GallerySyncCode;

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mDeleteFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->needRequest()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SyncFaceFromLocal"

    const-string v1, "start delete image items"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/syncoperation/DeleteFaceOperation;

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/peopleface/syncoperation/DeleteFaceOperation;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mDeleteFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->request(Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;)Lcom/miui/gallery/cloud/base/GallerySyncResult;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/miui/gallery/cloud/base/GallerySyncResult;->code:Lcom/miui/gallery/cloud/base/GallerySyncCode;

    sget-object v1, Lcom/miui/gallery/cloud/base/GallerySyncCode;->CONDITION_INTERRUPTED:Lcom/miui/gallery/cloud/base/GallerySyncCode;

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRenamePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->needRequest()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SyncFaceFromLocal"

    const-string v1, "start rename group items"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/syncoperation/RenamePeopleOperation;

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/peopleface/syncoperation/RenamePeopleOperation;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRenamePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->request(Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;)Lcom/miui/gallery/cloud/base/GallerySyncResult;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/miui/gallery/cloud/base/GallerySyncResult;->code:Lcom/miui/gallery/cloud/base/GallerySyncCode;

    sget-object v1, Lcom/miui/gallery/cloud/base/GallerySyncCode;->CONDITION_INTERRUPTED:Lcom/miui/gallery/cloud/base/GallerySyncCode;

    if-ne v0, v1, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMergePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->needRequest()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SyncFaceFromLocal"

    const-string v1, "start delete group items"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/syncoperation/MergePeopleOperation;

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/peopleface/syncoperation/MergePeopleOperation;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMergePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->request(Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;)Lcom/miui/gallery/cloud/base/GallerySyncResult;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/miui/gallery/cloud/base/GallerySyncResult;->code:Lcom/miui/gallery/cloud/base/GallerySyncCode;

    sget-object v1, Lcom/miui/gallery/cloud/base/GallerySyncCode;->CONDITION_INTERRUPTED:Lcom/miui/gallery/cloud/base/GallerySyncCode;

    if-ne v0, v1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mIgnorePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->needRequest()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "SyncFaceFromLocal"

    const-string v1, "start delete group items"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/syncoperation/IgnorePeopleOperation;

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/peopleface/syncoperation/IgnorePeopleOperation;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mIgnorePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->request(Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;)Lcom/miui/gallery/cloud/base/GallerySyncResult;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/miui/gallery/cloud/base/GallerySyncResult;->code:Lcom/miui/gallery/cloud/base/GallerySyncCode;

    sget-object v1, Lcom/miui/gallery/cloud/base/GallerySyncCode;->CONDITION_INTERRUPTED:Lcom/miui/gallery/cloud/base/GallerySyncCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_6

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void
.end method

.method protected initRequestCloudItemList()V
    .locals 1

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mCreatePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMoveFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mDeleteFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMergePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRenamePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mIgnorePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRecoveryPeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    return-void
.end method

.method protected putToRequestCloudItemList(Lcom/miui/gallery/data/DBItem;)V
    .locals 4

    check-cast p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v0, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->type:Ljava/lang/String;

    const-string v1, "PEOPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iget v1, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->visibilityType:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    invoke-direct {v1, v2, p1}, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;-><init>(ILcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    iget-object v3, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRecoveryPeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v3, v1}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->addItem(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)V

    :goto_0
    iget v1, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localFlag:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    invoke-direct {v0, v2, p1}, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;-><init>(ILcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    iget-object p1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mIgnorePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->addItem(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    invoke-direct {v0, v2, p1}, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;-><init>(ILcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    iget-object p1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMergePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->addItem(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_5

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    invoke-direct {v0, v2, p1}, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;-><init>(ILcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    iget-object p1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRenamePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->addItem(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    invoke-direct {v0, v2, p1}, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;-><init>(ILcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    iget-object p1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mCreatePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->addItem(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_5

    new-instance v0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    invoke-direct {v0, v2, p1}, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;-><init>(ILcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    iget-object p1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMoveFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->addItem(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)V

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    invoke-direct {v1, v2, p1}, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;-><init>(ILcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    if-nez v0, :cond_5

    iget-object p1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mDeleteFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {p1, v1}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->addItem(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
