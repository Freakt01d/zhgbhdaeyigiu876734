.class Landroidx/core/location/LocationCompat$Api18Impl;
.super Ljava/lang/Object;
.source "LocationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api18Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isMock(Landroid/location/Location;)Z
    .registers 2
    .param p0, "location"    # Landroid/location/Location;

    .line 494
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v0

    return v0
.end method
