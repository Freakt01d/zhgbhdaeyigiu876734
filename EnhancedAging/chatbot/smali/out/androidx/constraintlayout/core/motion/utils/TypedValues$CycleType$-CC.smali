.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType$-CC;
.super Ljava/lang/Object;
.source "TypedValues.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_fa

    :cond_8
    goto/16 :goto_c5

    :sswitch_a
    const-string/jumbo v0, "visibility"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_c6

    :sswitch_16
    const-string/jumbo v0, "pathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    goto/16 :goto_c6

    :sswitch_23
    const-string v0, "curveFit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto/16 :goto_c6

    :sswitch_2e
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto/16 :goto_c6

    :sswitch_39
    const-string/jumbo v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto/16 :goto_c6

    :sswitch_46
    const-string/jumbo v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto/16 :goto_c6

    :sswitch_53
    const-string/jumbo v0, "pivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc

    goto :goto_c6

    :sswitch_5f
    const-string/jumbo v0, "pivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto :goto_c6

    :sswitch_6b
    const-string/jumbo v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd

    goto :goto_c6

    :sswitch_77
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_c6

    :sswitch_82
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_c6

    :sswitch_8d
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_c6

    :sswitch_98
    const-string/jumbo v0, "rotationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_c6

    :sswitch_a4
    const-string/jumbo v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto :goto_c6

    :sswitch_af
    const-string/jumbo v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_c6

    :sswitch_ba
    const-string v0, "easing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xf

    goto :goto_c6

    :goto_c5
    const/4 v0, -0x1

    :goto_c6
    packed-switch v0, :pswitch_data_13c

    .line 339
    return v1

    .line 337
    :pswitch_ca
    const/16 v0, 0x1a4

    return v0

    .line 335
    :pswitch_cd
    const/16 v0, 0x1a0

    return v0

    .line 333
    :pswitch_d0
    const/16 v0, 0x13b

    return v0

    .line 331
    :pswitch_d3
    const/16 v0, 0x13a

    return v0

    .line 329
    :pswitch_d6
    const/16 v0, 0x139

    return v0

    .line 327
    :pswitch_d9
    const/16 v0, 0x138

    return v0

    .line 325
    :pswitch_dc
    const/16 v0, 0x137

    return v0

    .line 323
    :pswitch_df
    const/16 v0, 0x136

    return v0

    .line 321
    :pswitch_e2
    const/16 v0, 0x135

    return v0

    .line 319
    :pswitch_e5
    const/16 v0, 0x134

    return v0

    .line 317
    :pswitch_e8
    const/16 v0, 0x132

    return v0

    .line 315
    :pswitch_eb
    const/16 v0, 0x131

    return v0

    .line 313
    :pswitch_ee
    const/16 v0, 0x130

    return v0

    .line 311
    :pswitch_f1
    const/16 v0, 0x193

    return v0

    .line 309
    :pswitch_f4
    const/16 v0, 0x192

    return v0

    .line 307
    :pswitch_f7
    const/16 v0, 0x191

    return v0

    :sswitch_data_fa
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_ba
        -0x4a771f66 -> :sswitch_af
        -0x4a771f65 -> :sswitch_a4
        -0x4a771f64 -> :sswitch_98
        -0x490b9c39 -> :sswitch_8d
        -0x490b9c38 -> :sswitch_82
        -0x490b9c37 -> :sswitch_77
        -0x3bab3dd3 -> :sswitch_6b
        -0x3ae243aa -> :sswitch_5f
        -0x3ae243a9 -> :sswitch_53
        -0x3621dfb2 -> :sswitch_46
        -0x3621dfb1 -> :sswitch_39
        0x589b15e -> :sswitch_2e
        0x2283b8a2 -> :sswitch_23
        0x2fdfbde0 -> :sswitch_16
        0x73b66312 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_f4
        :pswitch_f1
        :pswitch_ee
        :pswitch_eb
        :pswitch_e8
        :pswitch_e5
        :pswitch_e2
        :pswitch_df
        :pswitch_dc
        :pswitch_d9
        :pswitch_d6
        :pswitch_d3
        :pswitch_d0
        :pswitch_cd
        :pswitch_ca
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2
    .param p0, "name"    # I

    .line 343
    sparse-switch p0, :sswitch_data_c

    .line 371
    const/4 v0, -0x1

    return v0

    .line 365
    :sswitch_5
    const/4 v0, 0x4

    return v0

    .line 369
    :sswitch_7
    const/16 v0, 0x8

    return v0

    .line 347
    :sswitch_a
    const/4 v0, 0x2

    return v0

    :sswitch_data_c
    .sparse-switch
        0x64 -> :sswitch_a
        0x65 -> :sswitch_7
        0x130 -> :sswitch_5
        0x131 -> :sswitch_5
        0x132 -> :sswitch_5
        0x133 -> :sswitch_5
        0x134 -> :sswitch_5
        0x135 -> :sswitch_5
        0x136 -> :sswitch_5
        0x137 -> :sswitch_5
        0x138 -> :sswitch_5
        0x139 -> :sswitch_5
        0x13a -> :sswitch_5
        0x13b -> :sswitch_5
        0x191 -> :sswitch_a
        0x192 -> :sswitch_a
        0x193 -> :sswitch_5
        0x1a0 -> :sswitch_5
        0x1a4 -> :sswitch_7
        0x1a5 -> :sswitch_7
        0x1a7 -> :sswitch_5
        0x1a8 -> :sswitch_5
        0x1a9 -> :sswitch_5
    .end sparse-switch
.end method
