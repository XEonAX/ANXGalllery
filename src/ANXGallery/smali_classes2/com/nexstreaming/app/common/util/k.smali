.class public Lcom/nexstreaming/app/common/util/k;
.super Ljava/lang/Object;
.source "SimplexNoise.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/util/k$a;
    }
.end annotation


# static fields
.field private static a:[Lcom/nexstreaming/app/common/util/k$a;

.field private static b:[Lcom/nexstreaming/app/common/util/k$a;

.field private static c:[S

.field private static d:[S

.field private static e:[S

.field private static final f:D

.field private static final g:D

.field private static final h:D

.field private static final i:D


# direct methods
.method static constructor <clinit>()V
    .locals 32

    const/16 v0, 0xc

    new-array v1, v0, [Lcom/nexstreaming/app/common/util/k$a;

    new-instance v9, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/16 v15, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/16 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-wide/16 v11, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const-wide/16 v13, 0x0

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v13, 0x0

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move-object v12, v3

    invoke-direct/range {v12 .. v18}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    const/16 v12, 0x9

    aput-object v3, v1, v12

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v14, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    const/16 v13, 0xa

    aput-object v3, v1, v13

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v15, 0x0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    move-object v14, v3

    invoke-direct/range {v14 .. v20}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDD)V

    const/16 v14, 0xb

    aput-object v3, v1, v14

    sput-object v1, Lcom/nexstreaming/app/common/util/k;->a:[Lcom/nexstreaming/app/common/util/k$a;

    const/16 v1, 0x20

    new-array v1, v1, [Lcom/nexstreaming/app/common/util/k$a;

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    move-object v14, v3

    invoke-direct/range {v14 .. v22}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v3, v1, v2

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/16 v24, 0x0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v31}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    move-object v14, v3

    invoke-direct/range {v14 .. v22}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v3, v1, v5

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v31}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v3, v1, v6

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-object v14, v3

    invoke-direct/range {v14 .. v22}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v3, v1, v7

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v31}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v3, v1, v8

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    move-object v14, v3

    invoke-direct/range {v14 .. v22}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v3, v1, v9

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v31}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v3, v1, v10

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/16 v17, 0x0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-object v14, v3

    invoke-direct/range {v14 .. v22}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v3, v1, v11

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    const-wide/16 v26, 0x0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v31}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v3, v1, v12

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    move-object v14, v3

    invoke-direct/range {v14 .. v22}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v3, v1, v13

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    aput-object v3, v1, v0

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    move-object v14, v3

    invoke-direct/range {v14 .. v22}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x16

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x17

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x18

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x19

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x1c

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x1d

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x1e

    aput-object v3, v1, v4

    new-instance v3, Lcom/nexstreaming/app/common/util/k$a;

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/nexstreaming/app/common/util/k$a;-><init>(DDDD)V

    const/16 v4, 0x1f

    aput-object v3, v1, v4

    sput-object v1, Lcom/nexstreaming/app/common/util/k;->b:[Lcom/nexstreaming/app/common/util/k$a;

    const/16 v1, 0x100

    new-array v1, v1, [S

    fill-array-data v1, :array_0

    sput-object v1, Lcom/nexstreaming/app/common/util/k;->c:[S

    const/16 v1, 0x200

    new-array v3, v1, [S

    sput-object v3, Lcom/nexstreaming/app/common/util/k;->d:[S

    new-array v3, v1, [S

    sput-object v3, Lcom/nexstreaming/app/common/util/k;->e:[S

    :goto_0
    if-ge v2, v1, :cond_0

    sget-object v3, Lcom/nexstreaming/app/common/util/k;->d:[S

    sget-object v4, Lcom/nexstreaming/app/common/util/k;->c:[S

    and-int/lit16 v5, v2, 0xff

    aget-short v4, v4, v5

    aput-short v4, v3, v2

    sget-object v3, Lcom/nexstreaming/app/common/util/k;->e:[S

    sget-object v4, Lcom/nexstreaming/app/common/util/k;->d:[S

    aget-short v4, v4, v2

    rem-int/2addr v4, v0

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    mul-double v4, v4, v0

    sput-wide v4, Lcom/nexstreaming/app/common/util/k;->f:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    div-double/2addr v2, v0

    sput-wide v2, Lcom/nexstreaming/app/common/util/k;->g:D

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    sput-wide v2, Lcom/nexstreaming/app/common/util/k;->h:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    sput-wide v0, Lcom/nexstreaming/app/common/util/k;->i:D

    return-void

    nop

    :array_0
    .array-data 2
        0x97s
        0xa0s
        0x89s
        0x5bs
        0x5as
        0xfs
        0x83s
        0xds
        0xc9s
        0x5fs
        0x60s
        0x35s
        0xc2s
        0xe9s
        0x7s
        0xe1s
        0x8cs
        0x24s
        0x67s
        0x1es
        0x45s
        0x8es
        0x8s
        0x63s
        0x25s
        0xf0s
        0x15s
        0xas
        0x17s
        0xbes
        0x6s
        0x94s
        0xf7s
        0x78s
        0xeas
        0x4bs
        0x0s
        0x1as
        0xc5s
        0x3es
        0x5es
        0xfcs
        0xdbs
        0xcbs
        0x75s
        0x23s
        0xbs
        0x20s
        0x39s
        0xb1s
        0x21s
        0x58s
        0xeds
        0x95s
        0x38s
        0x57s
        0xaes
        0x14s
        0x7ds
        0x88s
        0xabs
        0xa8s
        0x44s
        0xafs
        0x4as
        0xa5s
        0x47s
        0x86s
        0x8bs
        0x30s
        0x1bs
        0xa6s
        0x4ds
        0x92s
        0x9es
        0xe7s
        0x53s
        0x6fs
        0xe5s
        0x7as
        0x3cs
        0xd3s
        0x85s
        0xe6s
        0xdcs
        0x69s
        0x5cs
        0x29s
        0x37s
        0x2es
        0xf5s
        0x28s
        0xf4s
        0x66s
        0x8fs
        0x36s
        0x41s
        0x19s
        0x3fs
        0xa1s
        0x1s
        0xd8s
        0x50s
        0x49s
        0xd1s
        0x4cs
        0x84s
        0xbbs
        0xd0s
        0x59s
        0x12s
        0xa9s
        0xc8s
        0xc4s
        0x87s
        0x82s
        0x74s
        0xbcs
        0x9fs
        0x56s
        0xa4s
        0x64s
        0x6ds
        0xc6s
        0xads
        0xbas
        0x3s
        0x40s
        0x34s
        0xd9s
        0xe2s
        0xfas
        0x7cs
        0x7bs
        0x5s
        0xcas
        0x26s
        0x93s
        0x76s
        0x7es
        0xffs
        0x52s
        0x55s
        0xd4s
        0xcfs
        0xces
        0x3bs
        0xe3s
        0x2fs
        0x10s
        0x3as
        0x11s
        0xb6s
        0xbds
        0x1cs
        0x2as
        0xdfs
        0xb7s
        0xaas
        0xd5s
        0x77s
        0xf8s
        0x98s
        0x2s
        0x2cs
        0x9as
        0xa3s
        0x46s
        0xdds
        0x99s
        0x65s
        0x9bs
        0xa7s
        0x2bs
        0xacs
        0x9s
        0x81s
        0x16s
        0x27s
        0xfds
        0x13s
        0x62s
        0x6cs
        0x6es
        0x4fs
        0x71s
        0xe0s
        0xe8s
        0xb2s
        0xb9s
        0x70s
        0x68s
        0xdas
        0xf6s
        0x61s
        0xe4s
        0xfbs
        0x22s
        0xf2s
        0xc1s
        0xees
        0xd2s
        0x90s
        0xcs
        0xbfs
        0xb3s
        0xa2s
        0xf1s
        0x51s
        0x33s
        0x91s
        0xebs
        0xf9s
        0xes
        0xefs
        0x6bs
        0x31s
        0xc0s
        0xd6s
        0x1fs
        0xb5s
        0xc7s
        0x6as
        0x9ds
        0xb8s
        0x54s
        0xccs
        0xb0s
        0x73s
        0x79s
        0x32s
        0x2ds
        0x7fs
        0x4s
        0x96s
        0xfes
        0x8as
        0xecs
        0xcds
        0x5ds
        0xdes
        0x72s
        0x43s
        0x1ds
        0x18s
        0x48s
        0xf3s
        0x8ds
        0x80s
        0xc3s
        0x4es
        0x42s
        0xd7s
        0x3ds
        0x9cs
        0xb4s
    .end array-data
.end method

.method public static a(DDD)D
    .locals 45

    add-double v6, p0, p2

    add-double v6, v6, p4

    const-wide v8, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double v6, v6, v8

    add-double v10, p0, v6

    invoke-static {v10, v11}, Lcom/nexstreaming/app/common/util/k;->a(D)I

    move-result v10

    add-double v11, p2, v6

    invoke-static {v11, v12}, Lcom/nexstreaming/app/common/util/k;->a(D)I

    move-result v11

    add-double v6, p4, v6

    invoke-static {v6, v7}, Lcom/nexstreaming/app/common/util/k;->a(D)I

    move-result v6

    add-int v7, v10, v11

    add-int/2addr v7, v6

    int-to-double v12, v7

    const-wide v14, 0x3fc5555555555555L    # 0.16666666666666666

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v14

    int-to-double v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v12

    int-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v14, v12

    move/from16 v20, v10

    move/from16 v21, v11

    int-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v12

    sub-double v23, p0, v8

    sub-double v25, p2, v14

    sub-double v27, p4, v10

    cmpl-double v0, v23, v25

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_2

    cmpl-double v0, v25, v27

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto :goto_4

    :cond_0
    cmpl-double v0, v23, v27

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    cmpg-double v0, v25, v27

    if-gez v0, :cond_3

    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_3
    const/4 v7, 0x1

    goto :goto_4

    :cond_3
    cmpg-double v0, v23, v27

    if-gez v0, :cond_4

    const/4 v0, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :goto_4
    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v23, v8

    const-wide v10, 0x3fc5555555555555L    # 0.16666666666666666

    add-double v30, v8, v10

    int-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v25, v8

    add-double v32, v8, v10

    int-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v27, v8

    add-double v34, v8, v10

    int-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v23, v8

    const-wide v10, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v13, v8, v10

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v25, v8

    add-double v15, v8, v10

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v27, v8

    add-double v17, v8, v10

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v10, v23, v8

    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    add-double v39, v10, v36

    sub-double v10, v25, v8

    add-double v41, v10, v36

    sub-double v8, v27, v8

    add-double v43, v8, v36

    move/from16 v8, v20

    and-int/lit16 v8, v8, 0xff

    move/from16 v9, v21

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v6, v6, 0xff

    sget-object v10, Lcom/nexstreaming/app/common/util/k;->e:[S

    sget-object v11, Lcom/nexstreaming/app/common/util/k;->d:[S

    sget-object v12, Lcom/nexstreaming/app/common/util/k;->d:[S

    aget-short v12, v12, v6

    add-int/2addr v12, v9

    aget-short v11, v11, v12

    add-int/2addr v11, v8

    aget-short v10, v10, v11

    sget-object v11, Lcom/nexstreaming/app/common/util/k;->e:[S

    add-int/2addr v1, v8

    sget-object v12, Lcom/nexstreaming/app/common/util/k;->d:[S

    add-int/2addr v0, v9

    sget-object v19, Lcom/nexstreaming/app/common/util/k;->d:[S

    add-int/2addr v3, v6

    aget-short v3, v19, v3

    add-int/2addr v0, v3

    aget-short v0, v12, v0

    add-int/2addr v1, v0

    aget-short v0, v11, v1

    sget-object v1, Lcom/nexstreaming/app/common/util/k;->e:[S

    add-int/2addr v4, v8

    sget-object v3, Lcom/nexstreaming/app/common/util/k;->d:[S

    add-int/2addr v5, v9

    sget-object v11, Lcom/nexstreaming/app/common/util/k;->d:[S

    add-int/2addr v7, v6

    aget-short v7, v11, v7

    add-int/2addr v5, v7

    aget-short v3, v3, v5

    add-int/2addr v4, v3

    aget-short v1, v1, v4

    sget-object v3, Lcom/nexstreaming/app/common/util/k;->e:[S

    add-int/2addr v8, v2

    sget-object v4, Lcom/nexstreaming/app/common/util/k;->d:[S

    add-int/2addr v9, v2

    sget-object v5, Lcom/nexstreaming/app/common/util/k;->d:[S

    add-int/2addr v6, v2

    aget-short v2, v5, v6

    add-int/2addr v9, v2

    aget-short v2, v4, v9

    add-int/2addr v8, v2

    aget-short v2, v3, v8

    mul-double v3, v23, v23

    const-wide v5, 0x3fe3333333333333L    # 0.6

    sub-double v3, v5, v3

    mul-double v7, v25, v25

    sub-double/2addr v3, v7

    mul-double v7, v27, v27

    sub-double/2addr v3, v7

    const-wide/16 v7, 0x0

    cmpg-double v9, v3, v7

    if-gez v9, :cond_5

    move-wide v3, v7

    goto :goto_5

    :cond_5
    mul-double v3, v3, v3

    mul-double v3, v3, v3

    sget-object v9, Lcom/nexstreaming/app/common/util/k;->a:[Lcom/nexstreaming/app/common/util/k$a;

    aget-object v22, v9, v10

    invoke-static/range {v22 .. v28}, Lcom/nexstreaming/app/common/util/k;->a(Lcom/nexstreaming/app/common/util/k$a;DDD)D

    move-result-wide v9

    mul-double v3, v3, v9

    :goto_5
    mul-double v9, v30, v30

    const/4 v11, 0x0

    sub-double v9, v5, v9

    mul-double v11, v32, v32

    sub-double/2addr v9, v11

    mul-double v11, v34, v34

    sub-double/2addr v9, v11

    cmpg-double v11, v9, v7

    if-gez v11, :cond_6

    move-wide v9, v7

    goto :goto_6

    :cond_6
    mul-double v9, v9, v9

    mul-double v9, v9, v9

    sget-object v11, Lcom/nexstreaming/app/common/util/k;->a:[Lcom/nexstreaming/app/common/util/k$a;

    aget-object v29, v11, v0

    invoke-static/range {v29 .. v35}, Lcom/nexstreaming/app/common/util/k;->a(Lcom/nexstreaming/app/common/util/k$a;DDD)D

    move-result-wide v11

    mul-double v9, v9, v11

    :goto_6
    mul-double v11, v13, v13

    const/4 v0, 0x0

    sub-double v11, v5, v11

    mul-double v19, v15, v15

    sub-double v11, v11, v19

    mul-double v19, v17, v17

    sub-double v11, v11, v19

    cmpg-double v0, v11, v7

    if-gez v0, :cond_7

    move-wide v0, v7

    goto :goto_7

    :cond_7
    mul-double v11, v11, v11

    mul-double v19, v11, v11

    sget-object v0, Lcom/nexstreaming/app/common/util/k;->a:[Lcom/nexstreaming/app/common/util/k$a;

    aget-object v12, v0, v1

    invoke-static/range {v12 .. v18}, Lcom/nexstreaming/app/common/util/k;->a(Lcom/nexstreaming/app/common/util/k$a;DDD)D

    move-result-wide v0

    mul-double v0, v0, v19

    :goto_7
    mul-double v11, v39, v39

    const/4 v13, 0x0

    sub-double/2addr v5, v11

    mul-double v11, v41, v41

    sub-double/2addr v5, v11

    mul-double v11, v43, v43

    sub-double/2addr v5, v11

    cmpg-double v11, v5, v7

    if-gez v11, :cond_8

    goto :goto_8

    :cond_8
    mul-double v5, v5, v5

    mul-double v5, v5, v5

    sget-object v7, Lcom/nexstreaming/app/common/util/k;->a:[Lcom/nexstreaming/app/common/util/k$a;

    aget-object v38, v7, v2

    invoke-static/range {v38 .. v44}, Lcom/nexstreaming/app/common/util/k;->a(Lcom/nexstreaming/app/common/util/k$a;DDD)D

    move-result-wide v7

    mul-double v7, v7, v5

    :goto_8
    const-wide/high16 v5, 0x4040000000000000L    # 32.0

    add-double/2addr v3, v9

    add-double/2addr v3, v0

    add-double/2addr v3, v7

    mul-double v3, v3, v5

    return-wide v3
.end method

.method private static a(Lcom/nexstreaming/app/common/util/k$a;DDD)D
    .locals 2

    iget-wide v0, p0, Lcom/nexstreaming/app/common/util/k$a;->a:D

    mul-double v0, v0, p1

    iget-wide p1, p0, Lcom/nexstreaming/app/common/util/k$a;->b:D

    mul-double p1, p1, p3

    add-double/2addr v0, p1

    iget-wide p0, p0, Lcom/nexstreaming/app/common/util/k$a;->c:D

    mul-double p0, p0, p5

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static a(D)I
    .locals 4

    double-to-int v0, p0

    int-to-double v1, v0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method
