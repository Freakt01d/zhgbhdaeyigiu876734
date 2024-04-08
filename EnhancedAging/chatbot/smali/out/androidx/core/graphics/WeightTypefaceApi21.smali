.class final Landroidx/core/graphics/WeightTypefaceApi21;
.super Ljava/lang/Object;
.source "WeightTypefaceApi21.java"


# static fields
.field private static final NATIVE_CREATE_FROM_TYPEFACE_METHOD:Ljava/lang/String; = "nativeCreateFromTypeface"

.field private static final NATIVE_CREATE_WEIGHT_ALIAS_METHOD:Ljava/lang/String; = "nativeCreateWeightAlias"

.field private static final NATIVE_INSTANCE_FIELD:Ljava/lang/String; = "native_instance"

.field private static final TAG:Ljava/lang/String; = "WeightTypeface"

.field private static final sConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNativeCreateFromTypeface:Ljava/lang/reflect/Method;

.field private static final sNativeCreateWeightAlias:Ljava/lang/reflect/Method;

.field private static final sNativeInstance:Ljava/lang/reflect/Field;

.field private static final sWeightCacheLock:Ljava/lang/Object;

.field private static final sWeightTypefaceCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 63
    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "native_instance"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 64
    .local v0, "nativeInstance":Ljava/lang/reflect/Field;
    const-class v1, Landroid/graphics/Typeface;

    const-string v2, "nativeCreateFromTypeface"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 65
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 66
    .local v1, "nativeCreateFromTypeface":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 67
    const-class v2, Landroid/graphics/Typeface;

    const-string v4, "nativeCreateWeightAlias"

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v7

    .line 68
    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 69
    .local v2, "nativeCreateWeightAlias":Ljava/lang/reflect/Method;
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 70
    const-class v3, Landroid/graphics/Typeface;

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 71
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/graphics/Typeface;>;"
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_44
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_44} :catch_47
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_44} :catch_45

    .line 78
    goto :goto_5d

    .line 72
    .end local v0    # "nativeInstance":Ljava/lang/reflect/Field;
    .end local v1    # "nativeCreateFromTypeface":Ljava/lang/reflect/Method;
    .end local v2    # "nativeCreateWeightAlias":Ljava/lang/reflect/Method;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/graphics/Typeface;>;"
    :catch_45
    move-exception v0

    goto :goto_48

    :catch_47
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeightTypeface"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "nativeInstance":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 76
    .local v2, "nativeCreateFromTypeface":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 77
    .local v3, "nativeCreateWeightAlias":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .line 79
    .local v0, "nativeInstance":Ljava/lang/reflect/Field;
    .local v1, "nativeCreateFromTypeface":Ljava/lang/reflect/Method;
    .local v2, "nativeCreateWeightAlias":Ljava/lang/reflect/Method;
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/graphics/Typeface;>;"
    :goto_5d
    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeInstance:Ljava/lang/reflect/Field;

    .line 80
    sput-object v1, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeCreateFromTypeface:Ljava/lang/reflect/Method;

    .line 81
    sput-object v2, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeCreateWeightAlias:Ljava/lang/reflect/Method;

    .line 82
    sput-object v3, Landroidx/core/graphics/WeightTypefaceApi21;->sConstructor:Ljava/lang/reflect/Constructor;

    .line 96
    .end local v0    # "nativeInstance":Ljava/lang/reflect/Field;
    .end local v1    # "nativeCreateFromTypeface":Ljava/lang/reflect/Method;
    .end local v2    # "nativeCreateWeightAlias":Ljava/lang/reflect/Method;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/graphics/Typeface;>;"
    new-instance v0, Landroidx/collection/LongSparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sWeightTypefaceCache:Landroidx/collection/LongSparseArray;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sWeightCacheLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    return-void
.end method

.method private static create(J)Landroid/graphics/Typeface;
    .registers 7
    .param p0, "nativeInstance"    # J

    .line 177
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroidx/core/graphics/WeightTypefaceApi21;->sConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_13} :catch_18
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_13} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_13} :catch_14

    return-object v1

    .line 182
    :catch_14
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    return-object v0

    .line 180
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_16
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/InstantiationException;
    return-object v0

    .line 178
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_18
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/IllegalAccessException;
    return-object v0
.end method

.method static createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 10
    .param p0, "base"    # Landroid/graphics/Typeface;
    .param p1, "weight"    # I
    .param p2, "italic"    # Z

    .line 105
    invoke-static {}, Landroidx/core/graphics/WeightTypefaceApi21;->isPrivateApiAvailable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_8
    shl-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p2

    .line 112
    .local v0, "key":I
    sget-object v1, Landroidx/core/graphics/WeightTypefaceApi21;->sWeightCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_e
    invoke-static {p0}, Landroidx/core/graphics/WeightTypefaceApi21;->getNativeInstance(Landroid/graphics/Typeface;)J

    move-result-wide v2

    .line 114
    .local v2, "baseNativeInstance":J
    sget-object v4, Landroidx/core/graphics/WeightTypefaceApi21;->sWeightTypefaceCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 115
    .local v4, "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-nez v4, :cond_29

    .line 116
    new-instance v5, Landroid/util/SparseArray;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    move-object v4, v5

    .line 117
    sget-object v5, Landroidx/core/graphics/WeightTypefaceApi21;->sWeightTypefaceCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2, v3, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_33

    .line 119
    :cond_29
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    .line 120
    .local v5, "typeface":Landroid/graphics/Typeface;
    if-eqz v5, :cond_33

    .line 121
    monitor-exit v1

    return-object v5

    .line 125
    .end local v5    # "typeface":Landroid/graphics/Typeface;
    :cond_33
    :goto_33
    invoke-virtual {p0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v5

    if-ne p2, v5, :cond_43

    .line 126
    nop

    .line 127
    invoke-static {v2, v3, p1}, Landroidx/core/graphics/WeightTypefaceApi21;->nativeCreateWeightAlias(JI)J

    move-result-wide v5

    .line 126
    invoke-static {v5, v6}, Landroidx/core/graphics/WeightTypefaceApi21;->create(J)Landroid/graphics/Typeface;

    move-result-object v5

    .restart local v5    # "typeface":Landroid/graphics/Typeface;
    goto :goto_4c

    .line 129
    .end local v5    # "typeface":Landroid/graphics/Typeface;
    :cond_43
    nop

    .line 130
    invoke-static {v2, v3, p1, p2}, Landroidx/core/graphics/WeightTypefaceApi21;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v5

    .line 129
    invoke-static {v5, v6}, Landroidx/core/graphics/WeightTypefaceApi21;->create(J)Landroid/graphics/Typeface;

    move-result-object v5

    .line 132
    .restart local v5    # "typeface":Landroid/graphics/Typeface;
    :goto_4c
    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    .end local v2    # "baseNativeInstance":J
    .end local v4    # "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    monitor-exit v1

    .line 134
    return-object v5

    .line 133
    .end local v5    # "typeface":Landroid/graphics/Typeface;
    :catchall_51
    move-exception v2

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_e .. :try_end_53} :catchall_51

    throw v2
.end method

.method private static getNativeInstance(Landroid/graphics/Typeface;)J
    .registers 3
    .param p0, "typeface"    # Landroid/graphics/Typeface;

    .line 139
    :try_start_0
    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeInstance:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 140
    :catch_7
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static isPrivateApiAvailable()Z
    .registers 1

    .line 89
    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeInstance:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static nativeCreateFromTypefaceWithExactStyle(JIZ)J
    .registers 11
    .param p0, "nativeInstance"    # J
    .param p2, "weight"    # I
    .param p3, "italic"    # Z

    .line 152
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_6

    const/4 v2, 0x2

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 153
    .local v2, "style":I
    :goto_7
    :try_start_7
    sget-object v3, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeCreateFromTypeface:Ljava/lang/reflect/Method;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide p0, v3

    .line 154
    sget-object v3, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeCreateWeightAlias:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_3e} :catch_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_3e} :catch_3f

    return-wide v0

    .line 157
    .end local v2    # "style":I
    :catch_3f
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 155
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_46
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static nativeCreateWeightAlias(JI)J
    .registers 7
    .param p0, "nativeInstance"    # J
    .param p2, "weight"    # I

    .line 166
    :try_start_0
    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeCreateWeightAlias:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1e} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-wide v0

    .line 169
    :catch_1f
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 167
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_26
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
