.class Landroidx/fragment/app/FragmentTransitionCompat21$5;
.super Landroid/transition/Transition$EpicenterCallback;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentTransitionCompat21;

.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentTransitionCompat21;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/fragment/app/FragmentTransitionCompat21;

    .line 349
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransitionCompat21$5;->this$0:Landroidx/fragment/app/FragmentTransitionCompat21;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransitionCompat21$5;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 352
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransitionCompat21$5;->val$epicenter:Landroid/graphics/Rect;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransitionCompat21$5;->val$epicenter:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_10

    .line 355
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransitionCompat21$5;->val$epicenter:Landroid/graphics/Rect;

    return-object v0

    .line 353
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method
