.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom$-CC;
.super Ljava/lang/Object;
.source "TypedValues.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 652
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_6c

    :cond_8
    goto :goto_51

    :sswitch_9
    const-string v0, "integer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_52

    :sswitch_13
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_52

    :sswitch_1d
    const-string v0, "color"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_52

    :sswitch_27
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_52

    :sswitch_31
    const-string/jumbo v0, "refrence"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_52

    :sswitch_3c
    const-string/jumbo v0, "string"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_52

    :sswitch_47
    const-string v0, "dimension"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_52

    :goto_51
    const/4 v0, -0x1

    :goto_52
    packed-switch v0, :pswitch_data_8a

    .line 668
    return v1

    .line 666
    :pswitch_56
    const/16 v0, 0x38a

    return v0

    .line 664
    :pswitch_59
    const/16 v0, 0x389

    return v0

    .line 662
    :pswitch_5c
    const/16 v0, 0x388

    return v0

    .line 660
    :pswitch_5f
    const/16 v0, 0x387

    return v0

    .line 658
    :pswitch_62
    const/16 v0, 0x386

    return v0

    .line 656
    :pswitch_65
    const/16 v0, 0x385

    return v0

    .line 654
    :pswitch_68
    const/16 v0, 0x384

    return v0

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x4144929a -> :sswitch_47
        -0x352a9fef -> :sswitch_3c
        -0x2a604a76 -> :sswitch_31
        0x3db6c28 -> :sswitch_27
        0x5a72f63 -> :sswitch_1d
        0x5d0225c -> :sswitch_13
        0x74b5813e -> :sswitch_9
    .end sparse-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
    .end packed-switch
.end method
