.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PositionType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyPosition"

.field public static final S_DRAWPATH:Ljava/lang/String; = "drawPath"

.field public static final S_PERCENT_HEIGHT:Ljava/lang/String; = "percentHeight"

.field public static final S_PERCENT_WIDTH:Ljava/lang/String; = "percentWidth"

.field public static final S_PERCENT_X:Ljava/lang/String; = "percentX"

.field public static final S_PERCENT_Y:Ljava/lang/String; = "percentY"

.field public static final S_SIZE_PERCENT:Ljava/lang/String; = "sizePercent"

.field public static final S_TRANSITION_EASING:Ljava/lang/String; = "transitionEasing"

.field public static final TYPE_CURVE_FIT:I = 0x1fc

.field public static final TYPE_DRAWPATH:I = 0x1f6

.field public static final TYPE_PATH_MOTION_ARC:I = 0x1fd

.field public static final TYPE_PERCENT_HEIGHT:I = 0x1f8

.field public static final TYPE_PERCENT_WIDTH:I = 0x1f7

.field public static final TYPE_PERCENT_X:I = 0x1fa

.field public static final TYPE_PERCENT_Y:I = 0x1fb

.field public static final TYPE_POSITION_TYPE:I = 0x1fe

.field public static final TYPE_SIZE_PERCENT:I = 0x1f9

.field public static final TYPE_TRANSITION_EASING:I = 0x1f5


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 474
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "transitionEasing"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "drawPath"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "percentWidth"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "percentHeight"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "sizePercent"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "percentX"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "percentY"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;->KEY_WORDS:[Ljava/lang/String;

    return-void
.end method
