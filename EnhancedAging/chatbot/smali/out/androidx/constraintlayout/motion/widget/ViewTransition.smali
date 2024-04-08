.class public Landroidx/constraintlayout/motion/widget/ViewTransition;
.super Ljava/lang/Object;
.source "ViewTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;
    }
.end annotation


# static fields
.field static final ANTICIPATE:I = 0x6

.field static final BOUNCE:I = 0x4

.field public static final CONSTRAINT_OVERRIDE:Ljava/lang/String; = "ConstraintOverride"

.field public static final CUSTOM_ATTRIBUTE:Ljava/lang/String; = "CustomAttribute"

.field public static final CUSTOM_METHOD:Ljava/lang/String; = "CustomMethod"

.field static final EASE_IN:I = 0x1

.field static final EASE_IN_OUT:I = 0x0

.field static final EASE_OUT:I = 0x2

.field private static final INTERPOLATOR_REFERENCE_ID:I = -0x2

.field public static final KEY_FRAME_SET_TAG:Ljava/lang/String; = "KeyFrameSet"

.field static final LINEAR:I = 0x3

.field public static final ONSTATE_ACTION_DOWN:I = 0x1

.field public static final ONSTATE_ACTION_DOWN_UP:I = 0x3

.field public static final ONSTATE_ACTION_UP:I = 0x2

.field public static final ONSTATE_SHARED_VALUE_SET:I = 0x4

.field public static final ONSTATE_SHARED_VALUE_UNSET:I = 0x5

.field static final OVERSHOOT:I = 0x5

.field private static final SPLINE_STRING:I = -0x1

.field private static TAG:Ljava/lang/String; = null

.field private static final UNSET:I = -0x1

.field static final VIEWTRANSITIONMODE_ALLSTATES:I = 0x1

.field static final VIEWTRANSITIONMODE_CURRENTSTATE:I = 0x0

.field static final VIEWTRANSITIONMODE_NOSTATE:I = 0x2

.field public static final VIEW_TRANSITION_TAG:Ljava/lang/String; = "ViewTransition"


# instance fields
.field private mClearsTag:I

.field mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

.field mContext:Landroid/content/Context;

.field private mDefaultInterpolator:I

.field private mDefaultInterpolatorID:I

.field private mDefaultInterpolatorString:Ljava/lang/String;

.field private mDisabled:Z

.field private mDuration:I

.field private mId:I

.field private mIfTagNotSet:I

.field private mIfTagSet:I

.field mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

.field private mOnStateTransition:I

.field private mPathMotionArc:I

.field private mSetsTag:I

.field private mSharedValueCurrent:I

.field private mSharedValueID:I

.field private mSharedValueTarget:I

.field private mTargetId:I

.field private mTargetString:Ljava/lang/String;

.field private mUpDuration:I

.field mViewTransitionMode:I

.field set:Landroidx/constraintlayout/widget/ConstraintSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const-string v0, "ViewTransition"

    sput-object v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    .line 79
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    .line 86
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    .line 87
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    .line 95
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    .line 96
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 97
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    .line 107
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    .line 108
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    .line 109
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    .line 110
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    .line 115
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    .line 116
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    .line 117
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueCurrent:I

    .line 213
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mContext:Landroid/content/Context;

    .line 214
    const/4 v2, 0x0

    .line 216
    .local v2, "tagName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 217
    .local v3, "key":Landroidx/constraintlayout/motion/widget/Key;
    :try_start_28
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4
    :try_end_2c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_2c} :catch_e8
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_e3

    .line 218
    .local v4, "eventType":I
    :goto_2c
    const/4 v5, 0x1

    if-eq v4, v5, :cond_e2

    .line 220
    const-string v6, "ViewTransition"

    packed-switch v4, :pswitch_data_ee

    :pswitch_34
    goto/16 :goto_db

    .line 246
    :pswitch_36
    :try_start_36
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_db

    .line 247
    return-void

    .line 224
    :pswitch_41
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 225
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_fa

    :cond_4d
    goto :goto_7d

    :sswitch_4e
    const-string v5, "CustomAttribute"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    const/4 v5, 0x3

    goto :goto_7e

    :sswitch_58
    const-string v5, "CustomMethod"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    const/4 v5, 0x4

    goto :goto_7e

    :sswitch_62
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    const/4 v5, 0x0

    goto :goto_7e

    :sswitch_6a
    const-string v6, "KeyFrameSet"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    goto :goto_7e

    :sswitch_73
    const-string v5, "ConstraintOverride"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    const/4 v5, 0x2

    goto :goto_7e

    :goto_7d
    const/4 v5, -0x1

    :goto_7e
    packed-switch v5, :pswitch_data_110

    .line 240
    sget-object v5, Landroidx/constraintlayout/motion/widget/ViewTransition;->TAG:Ljava/lang/String;

    goto :goto_9f

    .line 237
    :pswitch_84
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-static {p1, p2, v5}, Landroidx/constraintlayout/widget/ConstraintAttribute;->parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    .line 238
    goto :goto_d9

    .line 233
    :pswitch_8c
    invoke-static {p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->buildDelta(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 234
    goto :goto_d9

    .line 230
    :pswitch_93
    new-instance v5, Landroidx/constraintlayout/motion/widget/KeyFrames;

    invoke-direct {v5, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyFrames;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    .line 231
    goto :goto_d9

    .line 227
    :pswitch_9b
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->parseViewTransitionTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 228
    goto :goto_d9

    .line 240
    :goto_9f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " unknown tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v5, Landroidx/constraintlayout/motion/widget/ViewTransition;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ".xml:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_d9
    goto :goto_db

    .line 222
    :pswitch_da
    nop

    .line 219
    :cond_db
    :goto_db
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_df} :catch_e8
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_df} :catch_e3

    move v4, v5

    goto/16 :goto_2c

    .line 218
    .end local v3    # "key":Landroidx/constraintlayout/motion/widget/Key;
    .end local v4    # "eventType":I
    :cond_e2
    goto :goto_ec

    .line 256
    :catch_e3
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ed

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :catch_e8
    move-exception v0

    .line 255
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 258
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_ec
    nop

    .line 259
    :goto_ed
    return-void

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_da
        :pswitch_34
        :pswitch_41
        :pswitch_36
    .end packed-switch

    :sswitch_data_fa
    .sparse-switch
        -0x74f4db17 -> :sswitch_73
        -0x49df9cec -> :sswitch_6a
        0x3b205fa -> :sswitch_62
        0x15d883d2 -> :sswitch_58
        0x6acd460b -> :sswitch_4e
    .end sparse-switch

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_93
        :pswitch_8c
        :pswitch_84
        :pswitch_84
    .end packed-switch
.end method

.method private parseViewTransitionTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    .line 262
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 263
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 264
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 265
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_148

    .line 266
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 267
    .local v4, "attr":I
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_android_id:I

    if-ne v4, v5, :cond_23

    .line 268
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    goto/16 :goto_144

    .line 269
    :cond_23
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_motionTarget:I

    const/4 v6, 0x3

    const/4 v7, -0x1

    if-ne v4, v5, :cond_5b

    .line 270
    sget-boolean v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    if-eqz v5, :cond_41

    .line 271
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    .line 272
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    if-ne v5, v7, :cond_144

    .line 273
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    goto/16 :goto_144

    .line 276
    :cond_41
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    iget v5, v5, Landroid/util/TypedValue;->type:I

    if-ne v5, v6, :cond_51

    .line 277
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    goto/16 :goto_144

    .line 279
    :cond_51
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    goto/16 :goto_144

    .line 282
    :cond_5b
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_onStateTransition:I

    if-ne v4, v5, :cond_69

    .line 283
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    goto/16 :goto_144

    .line 284
    :cond_69
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_transitionDisable:I

    if-ne v4, v5, :cond_77

    .line 285
    iget-boolean v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    goto/16 :goto_144

    .line 286
    :cond_77
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_pathMotionArc:I

    if-ne v4, v5, :cond_85

    .line 287
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    goto/16 :goto_144

    .line 288
    :cond_85
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_duration:I

    if-ne v4, v5, :cond_93

    .line 289
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    goto/16 :goto_144

    .line 290
    :cond_93
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_upDuration:I

    if-ne v4, v5, :cond_a1

    .line 291
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    goto/16 :goto_144

    .line 292
    :cond_a1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_viewTransitionMode:I

    if-ne v4, v5, :cond_af

    .line 293
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    goto/16 :goto_144

    .line 294
    :cond_af
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_motionInterpolator:I

    if-ne v4, v5, :cond_f7

    .line 295
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 296
    .local v5, "type":Landroid/util/TypedValue;
    iget v8, v5, Landroid/util/TypedValue;->type:I

    const/4 v9, -0x2

    const/4 v10, 0x1

    if-ne v8, v10, :cond_ca

    .line 297
    invoke-virtual {v1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    .line 298
    iget v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    if-eq v6, v7, :cond_f6

    .line 299
    iput v9, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    goto :goto_f6

    .line 301
    :cond_ca
    iget v8, v5, Landroid/util/TypedValue;->type:I

    if-ne v8, v6, :cond_ee

    .line 302
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 303
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    if-eqz v6, :cond_eb

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_eb

    .line 304
    invoke-virtual {v1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    .line 305
    iput v9, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    goto :goto_f6

    .line 307
    :cond_eb
    iput v7, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    goto :goto_f6

    .line 310
    :cond_ee
    iget v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    .line 312
    .end local v5    # "type":Landroid/util/TypedValue;
    :cond_f6
    :goto_f6
    goto :goto_144

    :cond_f7
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_setsTag:I

    if-ne v4, v5, :cond_104

    .line 313
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    goto :goto_144

    .line 314
    :cond_104
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_clearsTag:I

    if-ne v4, v5, :cond_111

    .line 315
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    goto :goto_144

    .line 316
    :cond_111
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_ifTagSet:I

    if-ne v4, v5, :cond_11e

    .line 317
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    goto :goto_144

    .line 318
    :cond_11e
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_ifTagNotSet:I

    if-ne v4, v5, :cond_12b

    .line 319
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    goto :goto_144

    .line 320
    :cond_12b
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_SharedValueId:I

    if-ne v4, v5, :cond_138

    .line 321
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    goto :goto_144

    .line 322
    :cond_138
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_SharedValue:I

    if-ne v4, v5, :cond_144

    .line 323
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    .line 265
    .end local v4    # "attr":I
    :cond_144
    :goto_144
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    .line 326
    .end local v3    # "i":I
    :cond_148
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 327
    return-void
.end method

.method private updateTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroid/view/View;)V
    .registers 9
    .param p1, "transition"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transition",
            "view"
        }
    .end annotation

    .line 533
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 534
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setDuration(I)V

    .line 536
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setPathMotionArc(I)V

    .line 537
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    invoke-virtual {p1, v0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setInterpolatorInfo(ILjava/lang/String;I)V

    .line 538
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 539
    .local v0, "id":I
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    if-eqz v2, :cond_4a

    .line 540
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/motion/widget/KeyFrames;->getKeyFramesForView(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 541
    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/Key;>;"
    new-instance v2, Landroidx/constraintlayout/motion/widget/KeyFrames;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/KeyFrames;-><init>()V

    .line 542
    .local v2, "keyFrames":Landroidx/constraintlayout/motion/widget/KeyFrames;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/Key;

    .line 543
    .local v4, "key":Landroidx/constraintlayout/motion/widget/Key;
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/Key;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/constraintlayout/motion/widget/Key;->setViewId(I)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 544
    .end local v4    # "key":Landroidx/constraintlayout/motion/widget/Key;
    goto :goto_2f

    .line 546
    :cond_47
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->addKeyFrame(Landroidx/constraintlayout/motion/widget/KeyFrames;)V

    .line 548
    .end local v1    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/Key;>;"
    .end local v2    # "keyFrames":Landroidx/constraintlayout/motion/widget/KeyFrames;
    :cond_4a
    return-void
.end method


# virtual methods
.method applyIndependentTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;)V
    .registers 14
    .param p1, "controller"    # Landroidx/constraintlayout/motion/widget/ViewTransitionController;
    .param p2, "motionLayout"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p3, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controller",
            "motionLayout",
            "view"
        }
    .end annotation

    .line 330
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-direct {v0, p3}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    .line 331
    .local v0, "motionController":Landroidx/constraintlayout/motion/widget/MotionController;
    invoke-virtual {v0, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->setBothStates(Landroid/view/View;)V

    .line 332
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addAllFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 333
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    int-to-float v4, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    .line 334
    new-instance v1, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    iget v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    .line 336
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v7

    iget v8, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    iget v9, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v9}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionController;IIILandroid/view/animation/Interpolator;II)V

    .line 337
    return-void
.end method

.method varargs applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V
    .registers 22
    .param p1, "controller"    # Landroidx/constraintlayout/motion/widget/ViewTransitionController;
    .param p2, "layout"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p3, "fromId"    # I
    .param p4, "current"    # Landroidx/constraintlayout/widget/ConstraintSet;
    .param p5, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controller",
            "layout",
            "fromId",
            "current",
            "views"
        }
    .end annotation

    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    if-eqz v5, :cond_f

    .line 476
    return-void

    .line 478
    :cond_f
    iget v5, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1d

    .line 479
    aget-object v5, v4, v7

    move-object/from16 v6, p1

    invoke-virtual {v0, v6, v1, v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyIndependentTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;)V

    .line 480
    return-void

    .line 482
    :cond_1d
    move-object/from16 v6, p1

    iget v5, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_5d

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v5

    .line 484
    .local v5, "ids":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_29
    array-length v9, v5

    if-ge v8, v9, :cond_5d

    .line 485
    aget v9, v5, v8

    .line 486
    .local v9, "id":I
    if-ne v9, v2, :cond_31

    .line 487
    goto :goto_59

    .line 489
    :cond_31
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v10

    .line 490
    .local v10, "cSet":Landroidx/constraintlayout/widget/ConstraintSet;
    array-length v11, v4

    const/4 v12, 0x0

    :goto_37
    if-ge v12, v11, :cond_59

    aget-object v13, v4, v12

    .line 491
    .local v13, "view":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v14

    invoke-virtual {v10, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v14

    .line 492
    .local v14, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    if-eqz v15, :cond_55

    .line 493
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-virtual {v15, v14}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 494
    iget-object v15, v14, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v15, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 490
    .end local v13    # "view":Landroid/view/View;
    .end local v14    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_55
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x0

    goto :goto_37

    .line 484
    .end local v9    # "id":I
    .end local v10    # "cSet":Landroidx/constraintlayout/widget/ConstraintSet;
    :cond_59
    :goto_59
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto :goto_29

    .line 500
    .end local v5    # "ids":[I
    .end local v8    # "i":I
    :cond_5d
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v5}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 501
    .local v5, "transformedState":Landroidx/constraintlayout/widget/ConstraintSet;
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 502
    array-length v7, v4

    const/4 v8, 0x0

    :goto_67
    if-ge v8, v7, :cond_88

    aget-object v9, v4, v8

    .line 503
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v10

    .line 504
    .local v10, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    if-eqz v11, :cond_85

    .line 505
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-virtual {v11, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 506
    iget-object v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    iget-object v12, v12, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 502
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_85
    add-int/lit8 v8, v8, 0x1

    goto :goto_67

    .line 510
    :cond_88
    invoke-virtual {v1, v2, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 511
    sget v7, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    invoke-virtual {v1, v7, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 512
    sget v7, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(III)V

    .line 513
    new-instance v7, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    sget v10, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    invoke-direct {v7, v8, v9, v10, v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(ILandroidx/constraintlayout/motion/widget/MotionScene;II)V

    .line 514
    .local v7, "tmpTransition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    array-length v8, v4

    const/4 v9, 0x0

    :goto_a1
    if-ge v9, v8, :cond_ab

    aget-object v10, v4, v9

    .line 515
    .local v10, "view":Landroid/view/View;
    invoke-direct {v0, v7, v10}, Landroidx/constraintlayout/motion/widget/ViewTransition;->updateTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroid/view/View;)V

    .line 514
    .end local v10    # "view":Landroid/view/View;
    add-int/lit8 v9, v9, 0x1

    goto :goto_a1

    .line 517
    :cond_ab
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 518
    new-instance v8, Landroidx/constraintlayout/motion/widget/ViewTransition$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0, v4}, Landroidx/constraintlayout/motion/widget/ViewTransition$$ExternalSyntheticLambda0;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V

    invoke-virtual {v1, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd(Ljava/lang/Runnable;)V

    .line 530
    return-void
.end method

.method checkTags(Landroid/view/View;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 607
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_9

    :goto_7
    const/4 v0, 0x1

    goto :goto_13

    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    goto :goto_7

    :cond_12
    const/4 v0, 0x0

    .line 608
    .local v0, "set":Z
    :goto_13
    iget v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    if-ne v4, v3, :cond_19

    :goto_17
    const/4 v3, 0x1

    goto :goto_23

    :cond_19
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_22

    goto :goto_17

    :cond_22
    const/4 v3, 0x0

    .line 609
    .local v3, "notSet":Z
    :goto_23
    if-eqz v0, :cond_28

    if-eqz v3, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1
.end method

.method getId()I
    .registers 2

    .line 551
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    return v0
.end method

.method getInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 182
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_40

    .line 209
    return-object v1

    .line 203
    :pswitch_7
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    return-object v0

    .line 205
    :pswitch_d
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    return-object v0

    .line 207
    :pswitch_13
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object v0

    .line 201
    :pswitch_19
    return-object v1

    .line 199
    :pswitch_1a
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0

    .line 197
    :pswitch_20
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object v0

    .line 195
    :pswitch_26
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object v0

    .line 184
    :pswitch_2c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v0

    .line 185
    .local v0, "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    new-instance v1, Landroidx/constraintlayout/motion/widget/ViewTransition$1;

    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/motion/widget/ViewTransition$1;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransition;Landroidx/constraintlayout/core/motion/utils/Easing;)V

    return-object v1

    .line 192
    .end local v0    # "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    :pswitch_38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_40
    .packed-switch -0x2
        :pswitch_38
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_1a
        :pswitch_19
        :pswitch_13
        :pswitch_d
        :pswitch_7
    .end packed-switch
.end method

.method public getSharedValue()I
    .registers 2

    .line 151
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    return v0
.end method

.method public getSharedValueCurrent()I
    .registers 2

    .line 120
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueCurrent:I

    return v0
.end method

.method public getSharedValueID()I
    .registers 2

    .line 167
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    return v0
.end method

.method public getStateTransition()I
    .registers 2

    .line 133
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    return v0
.end method

.method isEnabled()Z
    .registers 2

    .line 598
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$applyTransition$0$androidx-constraintlayout-motion-widget-ViewTransition([Landroid/view/View;)V
    .registers 10
    .param p1, "views"    # [Landroid/view/View;

    .line 519
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1c

    .line 520
    array-length v0, p1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_1c

    aget-object v4, p1, v3

    .line 521
    .local v4, "view":Landroid/view/View;
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 520
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 524
    :cond_1c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    if-eq v0, v2, :cond_2e

    .line 525
    array-length v0, p1

    :goto_21
    if-ge v1, v0, :cond_2e

    aget-object v2, p1, v1

    .line 526
    .local v2, "view":Landroid/view/View;
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 525
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 529
    :cond_2e
    return-void
.end method

.method matchesView(Landroid/view/View;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 559
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 560
    return v0

    .line 562
    :cond_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 563
    return v0

    .line 565
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->checkTags(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 566
    return v0

    .line 568
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1f

    .line 569
    return v3

    .line 571
    :cond_1f
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    if-nez v1, :cond_24

    .line 572
    return v0

    .line 574
    :cond_24
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 575
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v2, :cond_3f

    .line 576
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    .line 577
    .local v2, "tag":Ljava/lang/String;
    if-eqz v2, :cond_3f

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 578
    return v3

    .line 581
    .end local v2    # "tag":Ljava/lang/String;
    :cond_3f
    return v0
.end method

.method setEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 602
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    .line 603
    return-void
.end method

.method setId(I)V
    .registers 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 555
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    .line 556
    return-void
.end method

.method public setSharedValue(I)V
    .registers 2
    .param p1, "sharedValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedValue"
        }
    .end annotation

    .line 158
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    .line 159
    return-void
.end method

.method public setSharedValueCurrent(I)V
    .registers 2
    .param p1, "sharedValueCurrent"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedValueCurrent"
        }
    .end annotation

    .line 124
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueCurrent:I

    .line 125
    return-void
.end method

.method public setSharedValueID(I)V
    .registers 2
    .param p1, "sharedValueID"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedValueID"
        }
    .end annotation

    .line 174
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    .line 175
    return-void
.end method

.method public setStateTransition(I)V
    .registers 2
    .param p1, "stateTransition"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateTransition"
        }
    .end annotation

    .line 142
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    .line 143
    return-void
.end method

.method supports(I)Z
    .registers 6
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 585
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 586
    if-nez p1, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1

    .line 588
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_13

    .line 589
    if-ne p1, v2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    .line 591
    :cond_13
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1c

    .line 592
    if-nez p1, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    .line 594
    :cond_1c
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewTransition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mContext:Landroid/content/Context;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    invoke-static {v1, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
