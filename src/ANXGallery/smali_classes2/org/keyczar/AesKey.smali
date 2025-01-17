.class public Lorg/keyczar/AesKey;
.super Lorg/keyczar/KeyczarKey;
.source "AesKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/keyczar/AesKey$AesStream;
    }
.end annotation


# static fields
.field private static final AES_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final BLOCK_SIZE:I = 0x10

.field private static final DEFAULT_MODE:Lorg/keyczar/enums/CipherMode;


# instance fields
.field private aesKey:Ljavax/crypto/SecretKey;

.field private final aesKeyString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field

.field private final hash:[B

.field private final hmacKey:Lorg/keyczar/HmacKey;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field

.field private final mode:Lorg/keyczar/enums/CipherMode;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/keyczar/enums/CipherMode;->CBC:Lorg/keyczar/enums/CipherMode;

    sput-object v0, Lorg/keyczar/AesKey;->DEFAULT_MODE:Lorg/keyczar/enums/CipherMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarKey;-><init>(I)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/keyczar/AesKey;->hash:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/keyczar/AesKey;->aesKeyString:Ljava/lang/String;

    iput-object v0, p0, Lorg/keyczar/AesKey;->hmacKey:Lorg/keyczar/HmacKey;

    iput-object v0, p0, Lorg/keyczar/AesKey;->mode:Lorg/keyczar/enums/CipherMode;

    return-void
.end method

.method public constructor <init>([BLorg/keyczar/HmacKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarKey;-><init>(I)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/keyczar/AesKey;->hash:[B

    invoke-static {p1}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/AesKey;->aesKeyString:Ljava/lang/String;

    sget-object v0, Lorg/keyczar/AesKey;->DEFAULT_MODE:Lorg/keyczar/enums/CipherMode;

    iput-object v0, p0, Lorg/keyczar/AesKey;->mode:Lorg/keyczar/enums/CipherMode;

    iput-object p2, p0, Lorg/keyczar/AesKey;->hmacKey:Lorg/keyczar/HmacKey;

    invoke-direct {p0, p1}, Lorg/keyczar/AesKey;->initJceKey([B)V

    return-void
.end method

.method static synthetic access$000(Lorg/keyczar/AesKey;)Lorg/keyczar/enums/CipherMode;
    .locals 0

    iget-object p0, p0, Lorg/keyczar/AesKey;->mode:Lorg/keyczar/enums/CipherMode;

    return-object p0
.end method

.method static synthetic access$100(Lorg/keyczar/AesKey;)Ljavax/crypto/SecretKey;
    .locals 0

    iget-object p0, p0, Lorg/keyczar/AesKey;->aesKey:Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method static synthetic access$200(Lorg/keyczar/AesKey;)Lorg/keyczar/HmacKey;
    .locals 0

    iget-object p0, p0, Lorg/keyczar/AesKey;->hmacKey:Lorg/keyczar/HmacKey;

    return-object p0
.end method

.method static fromPackedKey([B)Lorg/keyczar/AesKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    invoke-static {p0}, Lorg/keyczar/util/Util;->lenPrefixUnpack([B)[[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    new-instance v0, Lorg/keyczar/AesKey;

    aget-object v1, p0, v1

    new-instance v2, Lorg/keyczar/HmacKey;

    const/4 v3, 0x1

    aget-object p0, p0, v3

    invoke-direct {v2, p0}, Lorg/keyczar/HmacKey;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lorg/keyczar/AesKey;-><init>([BLorg/keyczar/HmacKey;)V

    return-object v0

    :cond_0
    new-instance p0, Lorg/keyczar/exceptions/KeyczarException;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "AesKey.InvalidPackedKey"

    invoke-static {v1, v0}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static generate()Lorg/keyczar/AesKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    sget-object v0, Lorg/keyczar/DefaultKeyType;->AES:Lorg/keyczar/DefaultKeyType;

    invoke-virtual {v0}, Lorg/keyczar/DefaultKeyType;->defaultSize()I

    move-result v0

    invoke-static {v0}, Lorg/keyczar/AesKey;->generate(I)Lorg/keyczar/AesKey;

    move-result-object v0

    return-object v0
.end method

.method static generate(I)Lorg/keyczar/AesKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    new-instance v0, Lorg/keyczar/AesKey;

    div-int/lit8 p0, p0, 0x8

    invoke-static {p0}, Lorg/keyczar/util/Util;->rand(I)[B

    move-result-object p0

    invoke-static {}, Lorg/keyczar/HmacKey;->generate()Lorg/keyczar/HmacKey;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/keyczar/AesKey;-><init>([BLorg/keyczar/HmacKey;)V

    return-object v0
.end method

.method private initJceKey([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lorg/keyczar/AesKey;->aesKey:Ljavax/crypto/SecretKey;

    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/keyczar/util/Util;->fromInt(I)[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/keyczar/AesKey;->hmacKey:Lorg/keyczar/HmacKey;

    invoke-virtual {p1}, Lorg/keyczar/HmacKey;->getEncoded()[B

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/keyczar/util/Util;->hash([[B)[B

    move-result-object p1

    iget-object v0, p0, Lorg/keyczar/AesKey;->hash:[B

    iget-object v1, p0, Lorg/keyczar/AesKey;->hash:[B

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static read(Ljava/lang/String;)Lorg/keyczar/AesKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson_nex/Gson;

    move-result-object v0

    const-class v1, Lorg/keyczar/AesKey;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/keyczar/AesKey;

    iget-object v0, p0, Lorg/keyczar/AesKey;->hmacKey:Lorg/keyczar/HmacKey;

    invoke-virtual {v0}, Lorg/keyczar/HmacKey;->initFromJson()V

    iget-object v0, p0, Lorg/keyczar/AesKey;->aesKeyString:Ljava/lang/String;

    invoke-static {v0}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/keyczar/AesKey;->initJceKey([B)V

    return-object p0
.end method


# virtual methods
.method getEncoded()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [[B

    iget-object v1, p0, Lorg/keyczar/AesKey;->aesKey:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/keyczar/AesKey;->hmacKey:Lorg/keyczar/HmacKey;

    invoke-virtual {v1}, Lorg/keyczar/HmacKey;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/keyczar/util/Util;->lenPrefixPack([[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getJceKey()Ljava/security/Key;
    .locals 1

    invoke-virtual {p0}, Lorg/keyczar/AesKey;->getJceKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method protected getJceKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lorg/keyczar/AesKey;->aesKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method protected getStream()Lorg/keyczar/interfaces/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    new-instance v0, Lorg/keyczar/AesKey$AesStream;

    invoke-direct {v0, p0}, Lorg/keyczar/AesKey$AesStream;-><init>(Lorg/keyczar/AesKey;)V

    return-object v0
.end method

.method public getType()Lorg/keyczar/interfaces/KeyType;
    .locals 1

    sget-object v0, Lorg/keyczar/DefaultKeyType;->AES:Lorg/keyczar/DefaultKeyType;

    return-object v0
.end method

.method protected hash()[B
    .locals 1

    iget-object v0, p0, Lorg/keyczar/AesKey;->hash:[B

    return-object v0
.end method
