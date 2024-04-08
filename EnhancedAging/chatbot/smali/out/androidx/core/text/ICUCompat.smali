.class public final Landroidx/core/text/ICUCompat;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/ICUCompat$Api21Impl;,
        Landroidx/core/text/ICUCompat$Api24Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompat"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const-string v2, "addLikelySubtags"

    const-string v3, "libcore.icu.ICU"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v0, v1, :cond_37

    .line 42
    :try_start_c
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getScript"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 44
    new-array v1, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v4

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_2b

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_36

    .line 45
    :catch_2b
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 47
    sput-object v1, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    .line 50
    const-string v1, "ICUCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_36
    goto :goto_55

    .line 52
    :cond_37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_55

    .line 55
    :try_start_3d
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v1, v5, [Ljava/lang/Class;

    const-class v3, Ljava/util/Locale;

    aput-object v3, v1, v4

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4d} :catch_4e

    .line 59
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_55

    .line 57
    :catch_4e
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_55
    :goto_55
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method private static addLikelySubtagsBelowApi21(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p0, "locale"    # Ljava/util/Locale;

    .line 132
    const-string v0, "ICUCompat"

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "localeStr":Ljava/lang/String;
    :try_start_6
    sget-object v2, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_23

    .line 135
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 136
    .local v2, "args":[Ljava/lang/Object;
    sget-object v3, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_19} :catch_1f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_19} :catch_1a

    return-object v3

    .line 141
    .end local v2    # "args":[Ljava/lang/Object;
    :catch_1a
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 138
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1f
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_23
    nop

    .line 146
    :goto_24
    return-object v1
.end method

.method private static getScriptBelowApi21(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "localeStr"    # Ljava/lang/String;

    .line 116
    const-string v0, "ICUCompat"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1f

    .line 117
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 118
    .local v2, "args":[Ljava/lang/Object;
    sget-object v3, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_15} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_15} :catch_16

    return-object v3

    .line 123
    .end local v2    # "args":[Ljava/lang/Object;
    :catch_16
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 120
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1b
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_1f
    nop

    .line 127
    :goto_20
    return-object v1
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 88
    const-string v0, "ICUCompat"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_15

    .line 89
    invoke-static {p0}, Landroidx/core/text/ICUCompat$Api24Impl;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/ICUCompat$Api24Impl;->addLikelySubtags(Ljava/lang/Object;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 90
    .local v0, "uLocale":Ljava/lang/Object;
    invoke-static {v0}, Landroidx/core/text/ICUCompat$Api24Impl;->getScript(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 91
    .end local v0    # "uLocale":Ljava/lang/Object;
    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_40

    .line 93
    const/4 v1, 0x1

    :try_start_1d
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 96
    .local v1, "args":[Ljava/lang/Object;
    sget-object v2, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    invoke-static {v2}, Landroidx/core/text/ICUCompat$Api21Impl;->getScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_2e} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_2e} :catch_2f

    return-object v0

    .line 99
    .end local v1    # "args":[Ljava/lang/Object;
    :catch_2f
    move-exception v1

    goto :goto_33

    .line 97
    :catch_31
    move-exception v1

    goto :goto_37

    .line 100
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :goto_33
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 98
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_37
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    nop

    .line 102
    :goto_3b
    invoke-static {p0}, Landroidx/core/text/ICUCompat$Api21Impl;->getScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_40
    invoke-static {p0}, Landroidx/core/text/ICUCompat;->addLikelySubtagsBelowApi21(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "localeWithSubtags":Ljava/lang/String;
    if-eqz v0, :cond_4b

    .line 106
    invoke-static {v0}, Landroidx/core/text/ICUCompat;->getScriptBelowApi21(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 109
    :cond_4b
    return-object v3
.end method
