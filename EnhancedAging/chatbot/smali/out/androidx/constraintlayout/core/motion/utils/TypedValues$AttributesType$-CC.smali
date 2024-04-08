.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType$-CC;
.super Ljava/lang/Object;
.source "TypedValues.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_138

    :cond_8
    goto/16 :goto_f7

    :sswitch_a
    const-string/jumbo v0, "visibility"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_f8

    :sswitch_16
    const-string/jumbo v0, "pivotTarget"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x13

    goto/16 :goto_f8

    :sswitch_23
    const-string/jumbo v0, "pathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xf

    goto/16 :goto_f8

    :sswitch_30
    const-string v0, "curveFit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto/16 :goto_f8

    :sswitch_3b
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x11

    goto/16 :goto_f8

    :sswitch_47
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto/16 :goto_f8

    :sswitch_52
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto/16 :goto_f8

    :sswitch_5d
    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x12

    goto/16 :goto_f8

    :sswitch_6a
    const-string/jumbo v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto/16 :goto_f8

    :sswitch_77
    const-string/jumbo v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto/16 :goto_f8

    :sswitch_84
    const-string/jumbo v0, "pivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd

    goto :goto_f8

    :sswitch_90
    const-string/jumbo v0, "pivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc

    goto :goto_f8

    :sswitch_9c
    const-string/jumbo v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    goto :goto_f8

    :sswitch_a8
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_f8

    :sswitch_b3
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_f8

    :sswitch_be
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_f8

    :sswitch_c9
    const-string/jumbo v0, "rotationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto :goto_f8

    :sswitch_d5
    const-string/jumbo v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_f8

    :sswitch_e1
    const-string/jumbo v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto :goto_f8

    :sswitch_ec
    const-string v0, "easing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x10

    goto :goto_f8

    :goto_f7
    const/4 v0, -0x1

    :goto_f8
    packed-switch v0, :pswitch_data_18a

    .line 189
    return v1

    .line 187
    :pswitch_fc
    const/16 v0, 0x13e

    return v0

    .line 185
    :pswitch_ff
    const/16 v0, 0x65

    return v0

    .line 183
    :pswitch_102
    const/16 v0, 0x64

    return v0

    .line 181
    :pswitch_105
    const/16 v0, 0x13d

    return v0

    .line 179
    :pswitch_108
    const/16 v0, 0x13c

    return v0

    .line 177
    :pswitch_10b
    const/16 v0, 0x13b

    return v0

    .line 175
    :pswitch_10e
    const/16 v0, 0x13a

    return v0

    .line 173
    :pswitch_111
    const/16 v0, 0x139

    return v0

    .line 171
    :pswitch_114
    const/16 v0, 0x138

    return v0

    .line 169
    :pswitch_117
    const/16 v0, 0x137

    return v0

    .line 167
    :pswitch_11a
    const/16 v0, 0x136

    return v0

    .line 165
    :pswitch_11d
    const/16 v0, 0x135

    return v0

    .line 163
    :pswitch_120
    const/16 v0, 0x134

    return v0

    .line 161
    :pswitch_123
    const/16 v0, 0x133

    return v0

    .line 159
    :pswitch_126
    const/16 v0, 0x132

    return v0

    .line 157
    :pswitch_129
    const/16 v0, 0x131

    return v0

    .line 155
    :pswitch_12c
    const/16 v0, 0x130

    return v0

    .line 153
    :pswitch_12f
    const/16 v0, 0x12f

    return v0

    .line 151
    :pswitch_132
    const/16 v0, 0x12e

    return v0

    .line 149
    :pswitch_135
    const/16 v0, 0x12d

    return v0

    :sswitch_data_138
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_ec
        -0x4a771f66 -> :sswitch_e1
        -0x4a771f65 -> :sswitch_d5
        -0x4a771f64 -> :sswitch_c9
        -0x490b9c39 -> :sswitch_be
        -0x490b9c38 -> :sswitch_b3
        -0x490b9c37 -> :sswitch_a8
        -0x3bab3dd3 -> :sswitch_9c
        -0x3ae243aa -> :sswitch_90
        -0x3ae243a9 -> :sswitch_84
        -0x3621dfb2 -> :sswitch_77
        -0x3621dfb1 -> :sswitch_6a
        -0x34818e6f -> :sswitch_5d
        -0x42d1a3 -> :sswitch_52
        0x589b15e -> :sswitch_47
        0x5d2a96d -> :sswitch_3b
        0x2283b8a2 -> :sswitch_30
        0x2fdfbde0 -> :sswitch_23
        0x45917073 -> :sswitch_16
        0x73b66312 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_135
        :pswitch_132
        :pswitch_12f
        :pswitch_12c
        :pswitch_129
        :pswitch_126
        :pswitch_123
        :pswitch_120
        :pswitch_11d
        :pswitch_11a
        :pswitch_117
        :pswitch_114
        :pswitch_111
        :pswitch_10e
        :pswitch_10b
        :pswitch_108
        :pswitch_105
        :pswitch_102
        :pswitch_ff
        :pswitch_fc
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2
    .param p0, "name"    # I

    .line 193
    sparse-switch p0, :sswitch_data_c

    .line 218
    const/4 v0, -0x1

    return v0

    .line 212
    :sswitch_5
    const/4 v0, 0x4

    return v0

    .line 216
    :sswitch_7
    const/16 v0, 0x8

    return v0

    .line 197
    :sswitch_a
    const/4 v0, 0x2

    return v0

    :sswitch_data_c
    .sparse-switch
        0x64 -> :sswitch_a
        0x65 -> :sswitch_7
        0x12d -> :sswitch_a
        0x12e -> :sswitch_a
        0x12f -> :sswitch_5
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
        0x13c -> :sswitch_5
        0x13d -> :sswitch_7
        0x13e -> :sswitch_7
    .end sparse-switch
.end method
