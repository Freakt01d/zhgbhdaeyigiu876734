.class public final enum Landroidx/constraintlayout/core/state/State$Helper;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/state/State$Helper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/state/State$Helper;

.field public static final enum ALIGN_HORIZONTALLY:Landroidx/constraintlayout/core/state/State$Helper;

.field public static final enum ALIGN_VERTICALLY:Landroidx/constraintlayout/core/state/State$Helper;

.field public static final enum BARRIER:Landroidx/constraintlayout/core/state/State$Helper;

.field public static final enum FLOW:Landroidx/constraintlayout/core/state/State$Helper;

.field public static final enum HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

.field public static final enum LAYER:Landroidx/constraintlayout/core/state/State$Helper;

.field public static final enum VERTICAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 81
    new-instance v0, Landroidx/constraintlayout/core/state/State$Helper;

    const-string v1, "HORIZONTAL_CHAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    .line 82
    new-instance v0, Landroidx/constraintlayout/core/state/State$Helper;

    const-string v1, "VERTICAL_CHAIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/constraintlayout/core/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    .line 83
    new-instance v0, Landroidx/constraintlayout/core/state/State$Helper;

    const-string v1, "ALIGN_HORIZONTALLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/constraintlayout/core/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_HORIZONTALLY:Landroidx/constraintlayout/core/state/State$Helper;

    .line 84
    new-instance v0, Landroidx/constraintlayout/core/state/State$Helper;

    const-string v1, "ALIGN_VERTICALLY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/constraintlayout/core/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/core/state/State$Helper;

    .line 85
    new-instance v0, Landroidx/constraintlayout/core/state/State$Helper;

    const-string v1, "BARRIER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroidx/constraintlayout/core/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/state/State$Helper;->BARRIER:Landroidx/constraintlayout/core/state/State$Helper;

    .line 86
    new-instance v0, Landroidx/constraintlayout/core/state/State$Helper;

    const-string v1, "LAYER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroidx/constraintlayout/core/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/state/State$Helper;->LAYER:Landroidx/constraintlayout/core/state/State$Helper;

    .line 87
    new-instance v0, Landroidx/constraintlayout/core/state/State$Helper;

    const-string v1, "FLOW"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroidx/constraintlayout/core/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/state/State$Helper;->FLOW:Landroidx/constraintlayout/core/state/State$Helper;

    .line 80
    const/4 v0, 0x7

    new-array v0, v0, [Landroidx/constraintlayout/core/state/State$Helper;

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_HORIZONTALLY:Landroidx/constraintlayout/core/state/State$Helper;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/core/state/State$Helper;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->BARRIER:Landroidx/constraintlayout/core/state/State$Helper;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->LAYER:Landroidx/constraintlayout/core/state/State$Helper;

    aput-object v1, v0, v7

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->FLOW:Landroidx/constraintlayout/core/state/State$Helper;

    aput-object v1, v0, v8

    sput-object v0, Landroidx/constraintlayout/core/state/State$Helper;->$VALUES:[Landroidx/constraintlayout/core/state/State$Helper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/state/State$Helper;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 80
    const-class v0, Landroidx/constraintlayout/core/state/State$Helper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/State$Helper;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/core/state/State$Helper;
    .registers 1

    .line 80
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->$VALUES:[Landroidx/constraintlayout/core/state/State$Helper;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/state/State$Helper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/state/State$Helper;

    return-object v0
.end method
