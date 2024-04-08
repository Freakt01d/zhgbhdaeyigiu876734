.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType$-CC;
.super Ljava/lang/Object;
.source "TypedValues.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 492
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_70

    :cond_8
    goto :goto_55

    :sswitch_9
    const-string/jumbo v0, "percentY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_56

    :sswitch_14
    const-string/jumbo v0, "percentX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_56

    :sswitch_1f
    const-string/jumbo v0, "sizePercent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_56

    :sswitch_2a
    const-string v0, "drawPath"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_56

    :sswitch_34
    const-string/jumbo v0, "percentHeight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_56

    :sswitch_3f
    const-string/jumbo v0, "percentWidth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_56

    :sswitch_4a
    const-string/jumbo v0, "transitionEasing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_56

    :goto_55
    const/4 v0, -0x1

    :goto_56
    packed-switch v0, :pswitch_data_8e

    .line 508
    return v1

    .line 506
    :pswitch_5a
    const/16 v0, 0x1fb

    return v0

    .line 504
    :pswitch_5d
    const/16 v0, 0x1fa

    return v0

    .line 502
    :pswitch_60
    const/16 v0, 0x1f9

    return v0

    .line 500
    :pswitch_63
    const/16 v0, 0x1f8

    return v0

    .line 498
    :pswitch_66
    const/16 v0, 0x1f7

    return v0

    .line 496
    :pswitch_69
    const/16 v0, 0x1f6

    return v0

    .line 494
    :pswitch_6c
    const/16 v0, 0x1f5

    return v0

    nop

    :sswitch_data_70
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_4a
        -0x4330437f -> :sswitch_3f
        -0x3ca72634 -> :sswitch_34
        -0x314b3c77 -> :sswitch_2a
        -0xbefb6fc -> :sswitch_1f
        0x198424b3 -> :sswitch_14
        0x198424b4 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2
    .param p0, "name"    # I

    .line 512
    sparse-switch p0, :sswitch_data_c

    .line 527
    const/4 v0, -0x1

    return v0

    .line 521
    :sswitch_5
    const/4 v0, 0x4

    return v0

    .line 525
    :sswitch_7
    const/16 v0, 0x8

    return v0

    .line 515
    :sswitch_a
    const/4 v0, 0x2

    return v0

    :sswitch_data_c
    .sparse-switch
        0x64 -> :sswitch_a
        0x65 -> :sswitch_7
        0x1f5 -> :sswitch_7
        0x1f6 -> :sswitch_7
        0x1f7 -> :sswitch_5
        0x1f8 -> :sswitch_5
        0x1f9 -> :sswitch_5
        0x1fa -> :sswitch_5
        0x1fb -> :sswitch_5
        0x1fc -> :sswitch_a
    .end sparse-switch
.end method
