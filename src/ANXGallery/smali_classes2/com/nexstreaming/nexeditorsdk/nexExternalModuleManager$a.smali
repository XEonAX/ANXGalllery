.class final Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;
.super Ljava/lang/Object;
.source "nexExternalModuleManager.java"

# interfaces
.implements Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:[Lcom/nexstreaming/nexeditorsdk/module/UserField;

.field private final i:I


# direct methods
.method private constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;I)V
    .locals 0

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->a:Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->b:Ljava/lang/String;

    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->uuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->c:Ljava/lang/String;

    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->description()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->d:Ljava/lang/String;

    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->auth()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->e:Ljava/lang/String;

    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->version()I

    move-result p1

    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->g:I

    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->userFields()[Lcom/nexstreaming/nexeditorsdk/module/UserField;

    move-result-object p1

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->h:[Lcom/nexstreaming/nexeditorsdk/module/UserField;

    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->format()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->f:Ljava/lang/String;

    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->i:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;ILcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;I)V

    return-void
.end method

.method static synthetic a(Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;)I
    .locals 0

    iget p0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->i:I

    return p0
.end method


# virtual methods
.method public auth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public format()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public userFields()[Lcom/nexstreaming/nexeditorsdk/module/UserField;
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->h:[Lcom/nexstreaming/nexeditorsdk/module/UserField;

    return-object v0
.end method

.method public uuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public version()I
    .locals 1

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->g:I

    return v0
.end method
