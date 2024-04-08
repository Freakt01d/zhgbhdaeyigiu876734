.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$TriggerType$-CC;
.super Ljava/lang/Object;
.source "TypedValues.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$TriggerType;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 424
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_bc

    :cond_8
    goto/16 :goto_92

    :sswitch_a
    const-string/jumbo v0, "triggerReceiver"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto/16 :goto_93

    :sswitch_17
    const-string/jumbo v0, "postLayout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto/16 :goto_93

    :sswitch_23
    const-string/jumbo v0, "viewTransitionOnCross"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_93

    :sswitch_2e
    const-string/jumbo v0, "triggerSlack"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_93

    :sswitch_39
    const-string v0, "CROSS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto :goto_93

    :sswitch_44
    const-string/jumbo v0, "viewTransitionOnNegativeCross"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_93

    :sswitch_4f
    const-string/jumbo v0, "triggerCollisionView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_93

    :sswitch_5a
    const-string v0, "negativeCross"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto :goto_93

    :sswitch_65
    const-string/jumbo v0, "triggerID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto :goto_93

    :sswitch_70
    const-string/jumbo v0, "triggerCollisionId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_93

    :sswitch_7b
    const-string/jumbo v0, "viewTransitionOnPositiveCross"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_93

    :sswitch_86
    const-string/jumbo v0, "positiveCross"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_93

    :goto_92
    const/4 v0, -0x1

    :goto_93
    packed-switch v0, :pswitch_data_ee

    .line 450
    return v1

    .line 448
    :pswitch_97
    const/16 v0, 0x138

    return v0

    .line 446
    :pswitch_9a
    const/16 v0, 0x137

    return v0

    .line 444
    :pswitch_9d
    const/16 v0, 0x136

    return v0

    .line 442
    :pswitch_a0
    const/16 v0, 0x135

    return v0

    .line 440
    :pswitch_a3
    const/16 v0, 0x134

    return v0

    .line 438
    :pswitch_a6
    const/16 v0, 0x133

    return v0

    .line 436
    :pswitch_a9
    const/16 v0, 0x132

    return v0

    .line 434
    :pswitch_ac
    const/16 v0, 0x131

    return v0

    .line 432
    :pswitch_af
    const/16 v0, 0x130

    return v0

    .line 430
    :pswitch_b2
    const/16 v0, 0x12f

    return v0

    .line 428
    :pswitch_b5
    const/16 v0, 0x12e

    return v0

    .line 426
    :pswitch_b8
    const/16 v0, 0x12d

    return v0

    nop

    :sswitch_data_bc
    .sparse-switch
        -0x5f0e9e39 -> :sswitch_86
        -0x399a6b12 -> :sswitch_7b
        -0x2ee3a4eb -> :sswitch_70
        -0x26ab2f2d -> :sswitch_65
        -0x26090af5 -> :sswitch_5a
        -0x4880de1 -> :sswitch_4f
        -0x94d7ce -> :sswitch_44
        0x3d6a020 -> :sswitch_39
        0x15b9acb8 -> :sswitch_2e
        0x4d99e267 -> :sswitch_23
        0x538787ea -> :sswitch_17
        0x5b846bc7 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
    .end packed-switch
.end method
