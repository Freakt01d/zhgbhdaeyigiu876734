.class public abstract Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.super Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewTimeCycle"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;-><init>()V

    return-void
.end method

.method public static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "attrList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/utils/ViewTimeCycle;"
        }
    .end annotation

    .line 69
    .local p1, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public static makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "currentTime"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_e4

    :cond_7
    goto/16 :goto_91

    :sswitch_9
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_92

    :sswitch_14
    const-string/jumbo v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_92

    :sswitch_20
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_92

    :sswitch_2a
    const-string/jumbo v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_92

    :sswitch_35
    const-string/jumbo v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_92

    :sswitch_40
    const-string/jumbo v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_92

    :sswitch_4b
    const-string/jumbo v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_92

    :sswitch_57
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_92

    :sswitch_63
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_92

    :sswitch_6f
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_92

    :sswitch_7b
    const-string/jumbo v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_92

    :sswitch_86
    const-string/jumbo v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_92

    :goto_91
    const/4 v0, -0x1

    :goto_92
    packed-switch v0, :pswitch_data_116

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 109
    :pswitch_97
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;-><init>()V

    .line 110
    .local v0, "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_df

    .line 106
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_9d
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;-><init>()V

    .line 107
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_df

    .line 103
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_a3
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;-><init>()V

    .line 104
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_df

    .line 100
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_a9
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;-><init>()V

    .line 101
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_df

    .line 97
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_af
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;-><init>()V

    .line 98
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_df

    .line 94
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_b5
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;-><init>()V

    .line 95
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_df

    .line 91
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_bb
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;-><init>()V

    .line 92
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_df

    .line 88
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_c1
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;-><init>()V

    .line 89
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_df

    .line 85
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_c7
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;-><init>()V

    .line 86
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_df

    .line 82
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_cd
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;-><init>()V

    .line 83
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_df

    .line 79
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_d3
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;-><init>()V

    .line 80
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    goto :goto_df

    .line 76
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :pswitch_d9
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>()V

    .line 77
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    nop

    .line 114
    :goto_df
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setStartTime(J)V

    .line 115
    return-object v0

    nop

    :sswitch_data_e4
    .sparse-switch
        -0x4a771f66 -> :sswitch_86
        -0x4a771f65 -> :sswitch_7b
        -0x490b9c39 -> :sswitch_6f
        -0x490b9c38 -> :sswitch_63
        -0x490b9c37 -> :sswitch_57
        -0x3bab3dd3 -> :sswitch_4b
        -0x3621dfb2 -> :sswitch_40
        -0x3621dfb1 -> :sswitch_35
        -0x266f082 -> :sswitch_2a
        -0x42d1a3 -> :sswitch_20
        0x2382115 -> :sswitch_14
        0x589b15e -> :sswitch_9
    .end sparse-switch

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_d3
        :pswitch_cd
        :pswitch_c7
        :pswitch_c1
        :pswitch_bb
        :pswitch_b5
        :pswitch_af
        :pswitch_a9
        :pswitch_a3
        :pswitch_9d
        :pswitch_97
    .end packed-switch
.end method


# virtual methods
.method public get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F
    .registers 25
    .param p1, "pos"    # F
    .param p2, "time"    # J
    .param p4, "view"    # Landroid/view/View;
    .param p5, "cache"    # Landroidx/constraintlayout/core/motion/utils/KeyCache;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "time",
            "view",
            "cache"
        }
    .end annotation

    .line 44
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move/from16 v6, p1

    float-to-double v7, v6

    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    .line 45
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    const/4 v7, 0x1

    aget v5, v5, v7

    .line 46
    .local v5, "period":F
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    cmpl-float v11, v5, v10

    if-nez v11, :cond_25

    .line 47
    iput-boolean v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 48
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    aget v7, v7, v8

    return v7

    .line 50
    :cond_25
    iget v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 51
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    invoke-virtual {v4, v3, v11, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v11

    iput v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    .line 52
    iget v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 53
    iput v10, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    .line 56
    :cond_3f
    iget-wide v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_time:J

    sub-long v11, v1, v11

    .line 57
    .local v11, "delta_time":J
    iget v13, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    float-to-double v13, v13

    long-to-double v7, v11

    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v16

    move-wide/from16 v17, v11

    .end local v11    # "delta_time":J
    .local v17, "delta_time":J
    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v10

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v13, v7

    double-to-float v7, v13

    iput v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    .line 58
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    iget v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    invoke-virtual {v4, v3, v7, v9, v8}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->setFloatValue(Ljava/lang/Object;Ljava/lang/String;IF)V

    .line 59
    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_time:J

    .line 60
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    aget v7, v7, v9

    .line 61
    .local v7, "v":F
    iget v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->calcWave(F)F

    move-result v8

    .line 62
    .local v8, "wave":F
    iget-object v10, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    .line 63
    .local v10, "offset":F
    mul-float v11, v7, v8

    add-float/2addr v11, v10

    .line 64
    .local v11, "value":F
    const/4 v12, 0x0

    cmpl-float v13, v7, v12

    if-nez v13, :cond_8a

    cmpl-float v12, v5, v12

    if-eqz v12, :cond_88

    goto :goto_8a

    :cond_88
    const/4 v15, 0x0

    goto :goto_8b

    :cond_8a
    :goto_8a
    const/4 v15, 0x1

    :goto_8b
    iput-boolean v15, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 65
    return v11
.end method

.method public abstract setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "t",
            "time",
            "cache"
        }
    .end annotation
.end method
