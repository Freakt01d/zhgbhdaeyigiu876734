.class public Landroidx/constraintlayout/utils/widget/ImageFilterButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "ImageFilterButton.java"


# instance fields
.field private mAltDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrossfade:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

.field mLayer:Landroid/graphics/drawable/LayerDrawable;

.field mLayers:[Landroid/graphics/drawable/Drawable;

.field private mOverlay:Z

.field private mPanX:F

.field private mPanY:F

.field private mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field private mRotate:F

.field private mRound:F

.field private mRoundPercent:F

.field mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mZoom:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
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

    .line 102
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    .line 89
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    .line 90
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    .line 95
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 183
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    .line 184
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    .line 185
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    .line 186
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    .line 103
    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    .line 89
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    .line 90
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    .line 95
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 183
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    .line 184
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    .line 185
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    .line 186
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    .line 108
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    new-instance v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    .line 89
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    .line 90
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    .line 95
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 183
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    .line 184
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    .line 185
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    .line 186
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    .line 113
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/utils/widget/ImageFilterButton;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    .line 86
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    return v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/utils/widget/ImageFilterButton;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    .line 86
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setPadding(IIII)V

    .line 118
    if-eqz p2, :cond_135

    .line 119
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView:[I

    .line 120
    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 121
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 122
    .local v2, "N":I
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_altSrc:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v2, :cond_c1

    .line 125
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 126
    .local v4, "attr":I
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_crossfade:I

    const/4 v6, 0x0

    if-ne v4, v5, :cond_30

    .line 127
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    goto/16 :goto_bd

    .line 128
    :cond_30
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_warmth:I

    if-ne v4, v5, :cond_3d

    .line 129
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setWarmth(F)V

    goto/16 :goto_bd

    .line 130
    :cond_3d
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_saturation:I

    if-ne v4, v5, :cond_4a

    .line 131
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setSaturation(F)V

    goto/16 :goto_bd

    .line 132
    :cond_4a
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_contrast:I

    if-ne v4, v5, :cond_56

    .line 133
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setContrast(F)V

    goto :goto_bd

    .line 134
    :cond_56
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_round:I

    const/16 v7, 0x15

    if-ne v4, v5, :cond_68

    .line 135
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_bd

    .line 136
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setRound(F)V

    goto :goto_bd

    .line 138
    :cond_68
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_roundPercent:I

    if-ne v4, v5, :cond_78

    .line 139
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_bd

    .line 140
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setRoundPercent(F)V

    goto :goto_bd

    .line 142
    :cond_78
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_overlay:I

    if-ne v4, v5, :cond_86

    .line 143
    iget-boolean v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-direct {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setOverlay(Z)V

    goto :goto_bd

    .line 144
    :cond_86
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imagePanX:I

    if-ne v4, v5, :cond_94

    .line 145
    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImagePanX(F)V

    goto :goto_bd

    .line 146
    :cond_94
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imagePanY:I

    if-ne v4, v5, :cond_a2

    .line 147
    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImagePanY(F)V

    goto :goto_bd

    .line 148
    :cond_a2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imageRotate:I

    if-ne v4, v5, :cond_b0

    .line 149
    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImageRotate(F)V

    goto :goto_bd

    .line 150
    :cond_b0
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_imageZoom:I

    if-ne v4, v5, :cond_bd

    .line 151
    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImageZoom(F)V

    .line 124
    .end local v4    # "attr":I
    :cond_bd
    :goto_bd
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1d

    .line 154
    .end local v3    # "i":I
    :cond_c1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_11f

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_11f

    .line 159
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v0

    .line 160
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 162
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    .line 163
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 164
    iget-boolean v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    if-nez v3, :cond_119

    .line 165
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v5

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 167
    :cond_119
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_135

    .line 169
    :cond_11f
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 170
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_135

    .line 171
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v0

    .line 175
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "N":I
    :cond_135
    :goto_135
    return-void
.end method

.method private setMatrix()V
    .registers 15

    .line 335
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    .line 336
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    .line 337
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    .line 338
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 340
    return-void

    .line 342
    :cond_21
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_2e

    :cond_2c
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    .line 343
    .local v0, "panX":F
    :goto_2e
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, 0x0

    goto :goto_3a

    :cond_38
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    .line 344
    .local v2, "panY":F
    :goto_3a
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_45

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_47

    :cond_45
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    .line 345
    .local v3, "zoom":F
    :goto_47
    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_50

    goto :goto_52

    :cond_50
    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    .line 346
    .local v1, "rota":F
    :goto_52
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 347
    .local v4, "imageMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 348
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    .line 349
    .local v5, "iw":F
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    .line 350
    .local v6, "ih":F
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getWidth()I

    move-result v7

    int-to-float v7, v7

    .line 351
    .local v7, "sw":F
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getHeight()I

    move-result v8

    int-to-float v8, v8

    .line 352
    .local v8, "sh":F
    mul-float v9, v5, v8

    mul-float v10, v6, v7

    cmpg-float v9, v9, v10

    if-gez v9, :cond_81

    div-float v9, v7, v5

    goto :goto_83

    :cond_81
    div-float v9, v8, v6

    :goto_83
    mul-float v9, v9, v3

    .line 353
    .local v9, "scale":F
    invoke-virtual {v4, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 354
    mul-float v10, v9, v5

    sub-float v10, v7, v10

    mul-float v10, v10, v0

    add-float/2addr v10, v7

    mul-float v11, v9, v5

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v10, v10, v11

    .line 355
    .local v10, "tx":F
    mul-float v12, v9, v6

    sub-float v12, v8, v12

    mul-float v12, v12, v2

    add-float/2addr v12, v8

    mul-float v13, v9, v6

    sub-float/2addr v12, v13

    mul-float v12, v12, v11

    .line 356
    .local v12, "ty":F
    invoke-virtual {v4, v10, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 357
    const/high16 v11, 0x40000000    # 2.0f

    div-float v13, v7, v11

    div-float v11, v8, v11

    invoke-virtual {v4, v1, v13, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 358
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 359
    sget-object v11, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v11}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 360
    return-void
.end method

.method private setOverlay(Z)V
    .registers 2
    .param p1, "overlay"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overlay"
        }
    .end annotation

    .line 370
    iput-boolean p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    .line 371
    return-void
.end method

.method private updateViewMatrix()V
    .registers 2

    .line 323
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    .line 324
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    .line 325
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    .line 326
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 328
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 329
    return-void

    .line 331
    :cond_26
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setMatrix()V

    .line 332
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "clip":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1b

    .line 600
    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_1b

    .line 601
    const/4 v0, 0x1

    .line 602
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 603
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 606
    :cond_1b
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->draw(Landroid/graphics/Canvas;)V

    .line 607
    if-eqz v0, :cond_23

    .line 608
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 610
    :cond_23
    return-void
.end method

.method public getContrast()F
    .registers 2

    .line 410
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    return v0
.end method

.method public getCrossfade()F
    .registers 2

    .line 455
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    return v0
.end method

.method public getImagePanX()F
    .registers 2

    .line 198
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    return v0
.end method

.method public getImagePanY()F
    .registers 2

    .line 211
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    return v0
.end method

.method public getImageRotate()F
    .registers 2

    .line 229
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    return v0
.end method

.method public getImageZoom()F
    .registers 2

    .line 220
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    return v0
.end method

.method public getRound()F
    .registers 2

    .line 593
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    return v0
.end method

.method public getRoundPercent()F
    .registers 2

    .line 584
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    return v0
.end method

.method public getSaturation()F
    .registers 2

    .line 391
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    return v0
.end method

.method public getWarmth()F
    .registers 2

    .line 429
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    return v0
.end method

.method public layout(IIII)V
    .registers 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 614
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageButton;->layout(IIII)V

    .line 615
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setMatrix()V

    .line 616
    return-void
.end method

.method public setAltImageResource(I)V
    .registers 5
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    .line 315
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    .line 316
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    .line 317
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    .line 318
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setCrossfade(F)V

    .line 320
    return-void
.end method

.method public setBrightness(F)V
    .registers 3
    .param p1, "brightness"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    .line 467
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    .line 468
    return-void
.end method

.method public setContrast(F)V
    .registers 3
    .param p1, "contrast"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contrast"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    .line 401
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    .line 402
    return-void
.end method

.method public setCrossfade(F)V
    .registers 6
    .param p1, "crossfade"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crossfade"
        }
    .end annotation

    .line 439
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    .line 440
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_32

    .line 441
    iget-boolean v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    const/high16 v1, 0x437f0000    # 255.0f

    if-nez v0, :cond_1e

    .line 442
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 444
    :cond_1e
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 445
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 447
    :cond_32
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_2e

    .line 283
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 284
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    .line 285
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    .line 286
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    .line 287
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setCrossfade(F)V

    goto :goto_31

    .line 290
    :cond_2e
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :goto_31
    return-void
.end method

.method public setImagePanX(F)V
    .registers 2
    .param p1, "pan"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pan"
        }
    .end annotation

    .line 242
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    .line 243
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->updateViewMatrix()V

    .line 244
    return-void
.end method

.method public setImagePanY(F)V
    .registers 2
    .param p1, "pan"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pan"
        }
    .end annotation

    .line 256
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    .line 257
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->updateViewMatrix()V

    .line 258
    return-void
.end method

.method public setImageResource(I)V
    .registers 5
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_34

    .line 297
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 298
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    .line 299
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    .line 300
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    .line 301
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setCrossfade(F)V

    goto :goto_37

    .line 304
    :cond_34
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    .line 306
    :goto_37
    return-void
.end method

.method public setImageRotate(F)V
    .registers 2
    .param p1, "rotation"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .line 276
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    .line 277
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->updateViewMatrix()V

    .line 278
    return-void
.end method

.method public setImageZoom(F)V
    .registers 2
    .param p1, "zoom"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoom"
        }
    .end annotation

    .line 266
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    .line 267
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->updateViewMatrix()V

    .line 268
    return-void
.end method

.method public setRound(F)V
    .registers 11
    .param p1, "round"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    .line 528
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 529
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    .line 530
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    .line 531
    .local v0, "tmp":F
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    .line 532
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setRoundPercent(F)V

    .line 533
    return-void

    .line 535
    .end local v0    # "tmp":F
    :cond_12
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 536
    .local v0, "change":Z
    :goto_1d
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    .line 538
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    const/16 v4, 0x15

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_77

    .line 539
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    if-nez v2, :cond_33

    .line 540
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    .line 542
    :cond_33
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    if-nez v2, :cond_3e

    .line 543
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    .line 545
    :cond_3e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_55

    .line 546
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v2, :cond_52

    .line 547
    new-instance v2, Landroidx/constraintlayout/utils/widget/ImageFilterButton$2;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton$2;-><init>(Landroidx/constraintlayout/utils/widget/ImageFilterButton;)V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 555
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 557
    :cond_52
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setClipToOutline(Z)V

    .line 560
    :cond_55
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getWidth()I

    move-result v1

    .line 561
    .local v1, "w":I
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getHeight()I

    move-result v2

    .line 562
    .local v2, "h":I
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v3, v5, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 563
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 564
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    iget v6, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    iget v7, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 565
    .end local v1    # "w":I
    .end local v2    # "h":I
    goto :goto_7e

    .line 566
    :cond_77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_7e

    .line 567
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setClipToOutline(Z)V

    .line 570
    :cond_7e
    :goto_7e
    if-eqz v0, :cond_87

    .line 571
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_87

    .line 572
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->invalidateOutline()V

    .line 576
    :cond_87
    return-void
.end method

.method public setRoundPercent(F)V
    .registers 11
    .param p1, "round"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    .line 478
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 479
    .local v0, "change":Z
    :goto_b
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    .line 480
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    const/16 v4, 0x15

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_6d

    .line 481
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    if-nez v2, :cond_21

    .line 482
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    .line 484
    :cond_21
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    if-nez v2, :cond_2c

    .line 485
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    .line 487
    :cond_2c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_43

    .line 488
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v2, :cond_40

    .line 489
    new-instance v2, Landroidx/constraintlayout/utils/widget/ImageFilterButton$1;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton$1;-><init>(Landroidx/constraintlayout/utils/widget/ImageFilterButton;)V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 498
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 500
    :cond_40
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setClipToOutline(Z)V

    .line 502
    :cond_43
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getWidth()I

    move-result v1

    .line 503
    .local v1, "w":I
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getHeight()I

    move-result v2

    .line 504
    .local v2, "h":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget v6, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    mul-float v3, v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    .line 505
    .local v3, "r":F
    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v2

    invoke-virtual {v6, v5, v5, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 506
    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 507
    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v3, v3, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 508
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "r":F
    goto :goto_74

    .line 509
    :cond_6d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_74

    .line 510
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setClipToOutline(Z)V

    .line 513
    :cond_74
    :goto_74
    if-eqz v0, :cond_7d

    .line 514
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_7d

    .line 515
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->invalidateOutline()V

    .line 519
    :cond_7d
    return-void
.end method

.method public setSaturation(F)V
    .registers 3
    .param p1, "saturation"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saturation"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    .line 382
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    .line 383
    return-void
.end method

.method public setWarmth(F)V
    .registers 3
    .param p1, "warmth"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warmth"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    .line 420
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    .line 421
    return-void
.end method