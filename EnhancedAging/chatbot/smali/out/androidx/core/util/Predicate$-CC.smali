.class public final synthetic Landroidx/core/util/Predicate$-CC;
.super Ljava/lang/Object;
.source "Predicate.java"


# direct methods
.method public static $default$and(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 3
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    .line 59
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    .local p1, "other":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<-TT;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;-><init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V

    return-object v0
.end method

.method public static $default$negate(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    .line 72
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda5;-><init>(Landroidx/core/util/Predicate;)V

    return-object v0
.end method

.method public static $default$or(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 3
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    .line 93
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    .local p1, "other":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<-TT;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda1;-><init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$and$0(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "_this"    # Landroidx/core/util/Predicate;
    .param p1, "other"    # Landroidx/core/util/Predicate;
    .param p2, "t"    # Ljava/lang/Object;

    .line 60
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    invoke-interface {p0, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static synthetic $private$lambda$negate$1(Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "_this"    # Landroidx/core/util/Predicate;
    .param p1, "t"    # Ljava/lang/Object;

    .line 72
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    invoke-interface {p0, p1}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic $private$lambda$or$2(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "_this"    # Landroidx/core/util/Predicate;
    .param p1, "other"    # Landroidx/core/util/Predicate;
    .param p2, "t"    # Ljava/lang/Object;

    .line 94
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    invoke-interface {p0, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p1, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static isEqual(Ljava/lang/Object;)Landroidx/core/util/Predicate;
    .registers 2
    .param p0, "targetRef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 109
    if-nez p0, :cond_8

    .line 110
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;-><init>()V

    goto :goto_d

    .line 111
    :cond_8
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;)V

    .line 109
    :goto_d
    return-object v0
.end method

.method public static synthetic lambda$isEqual$3(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 110
    invoke-static {p0}, Landroidx/core/util/Predicate$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$isEqual$4(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "targetRef"    # Ljava/lang/Object;
    .param p1, "object"    # Ljava/lang/Object;

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static not(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 129
    .local p0, "target":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<-TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    invoke-interface {p0}, Landroidx/core/util/Predicate;->negate()Landroidx/core/util/Predicate;

    move-result-object v0

    return-object v0
.end method
