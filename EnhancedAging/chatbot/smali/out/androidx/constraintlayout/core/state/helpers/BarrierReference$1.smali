.class synthetic Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;
.super Ljava/lang/Object;
.source "BarrierReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/helpers/BarrierReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 61
    invoke-static {}, Landroidx/constraintlayout/core/state/State$Direction;->values()[Landroidx/constraintlayout/core/state/State$Direction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    :try_start_9
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    sget-object v1, Landroidx/constraintlayout/core/state/State$Direction;->LEFT:Landroidx/constraintlayout/core/state/State$Direction;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    sget-object v1, Landroidx/constraintlayout/core/state/State$Direction;->START:Landroidx/constraintlayout/core/state/State$Direction;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    sget-object v1, Landroidx/constraintlayout/core/state/State$Direction;->RIGHT:Landroidx/constraintlayout/core/state/State$Direction;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    sget-object v1, Landroidx/constraintlayout/core/state/State$Direction;->END:Landroidx/constraintlayout/core/state/State$Direction;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    sget-object v1, Landroidx/constraintlayout/core/state/State$Direction;->TOP:Landroidx/constraintlayout/core/state/State$Direction;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    :try_start_4a
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    sget-object v1, Landroidx/constraintlayout/core/state/State$Direction;->BOTTOM:Landroidx/constraintlayout/core/state/State$Direction;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v0

    :goto_57
    return-void
.end method
