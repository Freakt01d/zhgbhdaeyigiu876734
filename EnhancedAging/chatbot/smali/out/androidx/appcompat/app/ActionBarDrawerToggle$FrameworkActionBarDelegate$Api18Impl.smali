.class Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate$Api18Impl;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api18Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    return-void
.end method

.method static setHomeActionContentDescription(Landroid/app/ActionBar;I)V
    .registers 2
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "resId"    # I

    .line 591
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 592
    return-void
.end method

.method static setHomeAsUpIndicator(Landroid/app/ActionBar;Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .line 596
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 597
    return-void
.end method