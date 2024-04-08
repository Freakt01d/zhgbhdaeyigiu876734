.class Landroidx/core/app/BundleCompat$BeforeApi18Impl;
.super Ljava/lang/Object;
.source "BundleCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/BundleCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BeforeApi18Impl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleCompatBaseImpl"

.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field private static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field private static sPutIBinderMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 52
    sget-boolean v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethodFetched:Z

    const/4 v1, 0x0

    const-string v2, "BundleCompatBaseImpl"

    const/4 v3, 0x1

    if-nez v0, :cond_26

    .line 54
    :try_start_8
    const-class v0, Landroid/os/Bundle;

    const-string v4, "getIBinder"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .line 55
    sget-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 58
    goto :goto_24

    .line 56
    :catch_1e
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Failed to retrieve getIBinder method"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_24
    sput-boolean v3, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethodFetched:Z

    .line 62
    :cond_26
    sget-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    if-eqz v0, :cond_44

    .line 64
    :try_start_2b
    sget-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_37} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_37} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_37} :catch_38

    return-object v0

    .line 65
    :catch_38
    move-exception v0

    goto :goto_3d

    :catch_3a
    move-exception v0

    goto :goto_3d

    :catch_3c
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    :goto_3d
    const-string v1, "Failed to invoke getIBinder via reflection"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    sput-object v4, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_44
    return-object v4
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 11
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 75
    sget-boolean v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethodFetched:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "BundleCompatBaseImpl"

    const/4 v4, 0x1

    if-nez v0, :cond_2c

    .line 77
    :try_start_9
    const-class v0, Landroid/os/Bundle;

    const-string/jumbo v5, "putIBinder"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v4

    .line 78
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    .line 79
    sget-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_23} :catch_24

    .line 82
    goto :goto_2a

    .line 80
    :catch_24
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "Failed to retrieve putIBinder method"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2a
    sput-boolean v4, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethodFetched:Z

    .line 86
    :cond_2c
    sget-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_49

    .line 88
    :try_start_30
    sget-object v0, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v4

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_30 .. :try_end_3b} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_30 .. :try_end_3b} :catch_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_3b} :catch_3c

    .line 93
    goto :goto_49

    .line 89
    :catch_3c
    move-exception v0

    goto :goto_41

    :catch_3e
    move-exception v0

    goto :goto_41

    :catch_40
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    :goto_41
    const-string v1, "Failed to invoke putIBinder via reflection"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v1, 0x0

    sput-object v1, Landroidx/core/app/BundleCompat$BeforeApi18Impl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_49
    :goto_49
    return-void
.end method
