.class public final enum Lcom/xiaomi/smack/packet/Presence$Mode;
.super Ljava/lang/Enum;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smack/packet/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/smack/packet/Presence$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/smack/packet/Presence$Mode;

.field public static final enum available:Lcom/xiaomi/smack/packet/Presence$Mode;

.field public static final enum away:Lcom/xiaomi/smack/packet/Presence$Mode;

.field public static final enum chat:Lcom/xiaomi/smack/packet/Presence$Mode;

.field public static final enum dnd:Lcom/xiaomi/smack/packet/Presence$Mode;

.field public static final enum xa:Lcom/xiaomi/smack/packet/Presence$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/smack/packet/Presence$Mode;

    const-string v1, "chat"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/smack/packet/Presence$Mode;->chat:Lcom/xiaomi/smack/packet/Presence$Mode;

    new-instance v0, Lcom/xiaomi/smack/packet/Presence$Mode;

    const-string v1, "available"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/smack/packet/Presence$Mode;->available:Lcom/xiaomi/smack/packet/Presence$Mode;

    new-instance v0, Lcom/xiaomi/smack/packet/Presence$Mode;

    const-string v1, "away"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/smack/packet/Presence$Mode;->away:Lcom/xiaomi/smack/packet/Presence$Mode;

    new-instance v0, Lcom/xiaomi/smack/packet/Presence$Mode;

    const-string v1, "xa"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/smack/packet/Presence$Mode;->xa:Lcom/xiaomi/smack/packet/Presence$Mode;

    new-instance v0, Lcom/xiaomi/smack/packet/Presence$Mode;

    const-string v1, "dnd"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/smack/packet/Presence$Mode;->dnd:Lcom/xiaomi/smack/packet/Presence$Mode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/smack/packet/Presence$Mode;

    sget-object v1, Lcom/xiaomi/smack/packet/Presence$Mode;->chat:Lcom/xiaomi/smack/packet/Presence$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/smack/packet/Presence$Mode;->available:Lcom/xiaomi/smack/packet/Presence$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/smack/packet/Presence$Mode;->away:Lcom/xiaomi/smack/packet/Presence$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/smack/packet/Presence$Mode;->xa:Lcom/xiaomi/smack/packet/Presence$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/smack/packet/Presence$Mode;->dnd:Lcom/xiaomi/smack/packet/Presence$Mode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/smack/packet/Presence$Mode;->$VALUES:[Lcom/xiaomi/smack/packet/Presence$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/smack/packet/Presence$Mode;
    .locals 1

    const-class v0, Lcom/xiaomi/smack/packet/Presence$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/smack/packet/Presence$Mode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/smack/packet/Presence$Mode;
    .locals 1

    sget-object v0, Lcom/xiaomi/smack/packet/Presence$Mode;->$VALUES:[Lcom/xiaomi/smack/packet/Presence$Mode;

    invoke-virtual {v0}, [Lcom/xiaomi/smack/packet/Presence$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/smack/packet/Presence$Mode;

    return-object v0
.end method
