.class public Landroidx/appcompat/widget/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/DrawableUtils$Api29Impl;,
        Landroidx/appcompat/widget/DrawableUtils$Api18Impl;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field public static final INSETS_NONE:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->CHECKED_STATE_SET:[I

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->EMPTY_STATE_SET:[I

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 10
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-lt v0, v2, :cond_8

    .line 109
    return v1

    .line 112
    :cond_8
    nop

    .line 114
    nop

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_14

    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_14

    .line 119
    return v3

    .line 122
    :cond_14
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_38

    .line 124
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 125
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v2, :cond_37

    .line 126
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 128
    .local v2, "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_29
    if-ge v6, v5, :cond_37

    aget-object v7, v4, v6

    .line 129
    .local v7, "child":Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-nez v8, :cond_34

    .line 130
    return v3

    .line 128
    .end local v7    # "child":Landroid/graphics/drawable/Drawable;
    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 134
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v2    # "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    :cond_37
    goto :goto_68

    :cond_38
    instance-of v0, p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v0, :cond_48

    .line 135
    move-object v0, p0

    check-cast v0, Landroidx/core/graphics/drawable/WrappedDrawable;

    invoke-interface {v0}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 136
    :cond_48
    instance-of v0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;

    if-eqz v0, :cond_58

    .line 137
    move-object v0, p0

    check-cast v0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 138
    :cond_58
    instance-of v0, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v0, :cond_68

    .line 139
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 142
    :cond_68
    :goto_68
    return v1
.end method

.method static fixDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "className":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1a

    .line 90
    const-string v1, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 93
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils;->forceDrawableStateChange(Landroid/graphics/drawable/Drawable;)V

    goto :goto_31

    .line 94
    :cond_1a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_31

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_31

    .line 95
    const-string v1, "android.graphics.drawable.ColorStateListDrawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 98
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils;->forceDrawableStateChange(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_31
    :goto_31
    return-void
.end method

.method private static forceDrawableStateChange(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 149
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 150
    .local v0, "originalState":[I
    if-eqz v0, :cond_10

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_10

    .line 155
    :cond_a
    sget-object v1, Landroidx/appcompat/widget/DrawableUtils;->EMPTY_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_15

    .line 152
    :cond_10
    :goto_10
    sget-object v1, Landroidx/appcompat/widget/DrawableUtils;->CHECKED_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 158
    :goto_15
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 159
    return-void
.end method

.method public static getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .registers 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_18

    .line 66
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils$Api29Impl;->getOpticalInsets(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Insets;

    move-result-object v0

    .line 67
    .local v0, "insets":Landroid/graphics/Insets;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->left:I

    iget v3, v0, Landroid/graphics/Insets;->top:I

    iget v4, v0, Landroid/graphics/Insets;->right:I

    iget v5, v0, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    .line 73
    .end local v0    # "insets":Landroid/graphics/Insets;
    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_27

    .line 74
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->getOpticalInsets(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 79
    :cond_27
    sget-object v0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 165
    sparse-switch p0, :sswitch_data_16

    .line 179
    return-object p1

    .line 177
    :sswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 175
    :sswitch_7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 173
    :sswitch_a
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 171
    :sswitch_d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 169
    :sswitch_10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 167
    :sswitch_13
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :sswitch_data_16
    .sparse-switch
        0x3 -> :sswitch_13
        0x5 -> :sswitch_10
        0x9 -> :sswitch_d
        0xe -> :sswitch_a
        0xf -> :sswitch_7
        0x10 -> :sswitch_4
    .end sparse-switch
.end method
