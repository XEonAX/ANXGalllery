.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/Striped64$Cell;
    }
.end annotation


# static fields
.field static final NCPU:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final baseOffset:J

.field private static final busyOffset:J

.field static final rng:Ljava/util/Random;

.field static final threadHashCode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/Striped64$Cell;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/common/cache/Striped64;->NCPU:I

    :try_start_0
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-class v0, Lcom/google/common/cache/Striped64;

    sget-object v1, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "base"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lcom/google/common/cache/Striped64;->baseOffset:J

    sget-object v1, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "busy"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/cache/Striped64;->busyOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .locals 1

    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 3

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :try_start_1
    new-instance v0, Lcom/google/common/cache/Striped64$1;

    invoke-direct {v0}, Lcom/google/common/cache/Striped64$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final casBase(JJ)Z
    .locals 8

    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method final casBusy()Z
    .locals 6

    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
.end method

.method final retryUpdate(J[IZ)V
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p3, :cond_1

    sget-object v0, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    new-array v6, v4, [I

    invoke-virtual {v0, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    aput v0, v6, v5

    move-object/from16 v16, v6

    move v6, v0

    move-object/from16 v0, v16

    goto :goto_0

    :cond_1
    aget v6, p3, v5

    move-object/from16 v0, p3

    :goto_0
    move/from16 v7, p4

    :goto_1
    const/4 v8, 0x0

    :cond_2
    :goto_2
    iget-object v9, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz v9, :cond_d

    array-length v10, v9

    if-lez v10, :cond_d

    add-int/lit8 v11, v10, -0x1

    and-int/2addr v11, v6

    aget-object v11, v9, v11

    if-nez v11, :cond_5

    iget v9, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v9, :cond_4

    new-instance v9, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v9, v2, v3}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    iget v10, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v10, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v10

    if-eqz v10, :cond_4

    :try_start_0
    iget-object v10, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz v10, :cond_3

    array-length v11, v10

    if-lez v11, :cond_3

    add-int/lit8 v11, v11, -0x1

    and-int/2addr v11, v6

    aget-object v12, v10, v11

    if-nez v12, :cond_3

    aput-object v9, v10, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    iput v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-eqz v9, :cond_2

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    iput v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    :cond_4
    :goto_4
    const/4 v8, 0x0

    goto :goto_6

    :cond_5
    if-nez v7, :cond_6

    const/4 v7, 0x1

    goto :goto_6

    :cond_6
    iget-wide v12, v11, Lcom/google/common/cache/Striped64$Cell;->value:J

    invoke-virtual {v1, v12, v13, v2, v3}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v11

    if-eqz v11, :cond_7

    goto/16 :goto_8

    :cond_7
    sget v11, Lcom/google/common/cache/Striped64;->NCPU:I

    if-ge v10, v11, :cond_4

    iget-object v11, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eq v11, v9, :cond_8

    goto :goto_4

    :cond_8
    if-nez v8, :cond_9

    const/4 v8, 0x1

    goto :goto_6

    :cond_9
    iget v11, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v11

    if-eqz v11, :cond_c

    :try_start_1
    iget-object v8, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v8, v9, :cond_b

    shl-int/lit8 v8, v10, 0x1

    new-array v8, v8, [Lcom/google/common/cache/Striped64$Cell;

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_a

    aget-object v12, v9, v11

    aput-object v12, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    iput-object v8, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_b
    iput v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    iput v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    :cond_c
    :goto_6
    shl-int/lit8 v9, v6, 0xd

    xor-int/2addr v6, v9

    ushr-int/lit8 v9, v6, 0x11

    xor-int/2addr v6, v9

    shl-int/lit8 v9, v6, 0x5

    xor-int/2addr v6, v9

    aput v6, v0, v5

    goto/16 :goto_2

    :cond_d
    iget v10, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v10, :cond_f

    iget-object v10, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v10, v9, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v10

    if-eqz v10, :cond_f

    :try_start_2
    iget-object v10, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v10, v9, :cond_e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/common/cache/Striped64$Cell;

    and-int/lit8 v10, v6, 0x1

    new-instance v11, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v11, v2, v3}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    aput-object v11, v9, v10

    iput-object v9, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v9, 0x1

    goto :goto_7

    :cond_e
    const/4 v9, 0x0

    :goto_7
    iput v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-eqz v9, :cond_2

    goto :goto_8

    :catchall_2
    move-exception v0

    iput v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    :cond_f
    iget-wide v9, v1, Lcom/google/common/cache/Striped64;->base:J

    invoke-virtual {v1, v9, v10, v2, v3}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v11

    invoke-virtual {v1, v9, v10, v11, v12}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_8
    return-void
.end method
