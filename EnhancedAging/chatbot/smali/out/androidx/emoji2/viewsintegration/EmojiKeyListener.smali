.class final Landroidx/emoji2/viewsintegration/EmojiKeyListener;
.super Ljava/lang/Object;
.source "EmojiKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/viewsintegration/EmojiKeyListener$EmojiCompatHandleKeyDownHelper;
    }
.end annotation


# instance fields
.field private final mEmojiCompatHandleKeyDownHelper:Landroidx/emoji2/viewsintegration/EmojiKeyListener$EmojiCompatHandleKeyDownHelper;

.field private final mKeyListener:Landroid/text/method/KeyListener;


# direct methods
.method constructor <init>(Landroid/text/method/KeyListener;)V
    .registers 3
    .param p1, "keyListener"    # Landroid/text/method/KeyListener;

    .line 40
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiKeyListener$EmojiCompatHandleKeyDownHelper;

    invoke-direct {v0}, Landroidx/emoji2/viewsintegration/EmojiKeyListener$EmojiCompatHandleKeyDownHelper;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/emoji2/viewsintegration/EmojiKeyListener;-><init>(Landroid/text/method/KeyListener;Landroidx/emoji2/viewsintegration/EmojiKeyListener$EmojiCompatHandleKeyDownHelper;)V

    .line 41
    return-void
.end method

.method constructor <init>(Landroid/text/method/KeyListener;Landroidx/emoji2/viewsintegration/EmojiKeyListener$EmojiCompatHandleKeyDownHelper;)V
    .registers 3
    .param p1, "keyListener"    # Landroid/text/method/KeyListener;
    .param p2, "emojiCompatKeydownHelper"    # Landroidx/emoji2/viewsintegration/EmojiKeyListener$EmojiCompatHandleKeyDownHelper;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;->mKeyListener:Landroid/text/method/KeyListener;

    .line 46
    iput-object p2, p0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;->mEmojiCompatHandleKeyDownHelper:Landroidx/emoji2/viewsintegration/EmojiKeyListener$EmojiCompatHandleKeyDownHelper;

    .line 47
    return-void
.end method


# virtual methods
.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "states"    # I

    .line 73
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V

    .line 74
    return-void
.end method

.method public getInputType()I
    .registers 2

    .line 51
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 56
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;->mEmojiCompatHandleKeyDownHelper:Landroidx/emoji2/viewsintegration/EmojiKeyListener$EmojiCompatHandleKeyDownHelper;

    .line 57
    invoke-virtual {v0, p2, p3, p4}, Landroidx/emoji2/viewsintegration/EmojiKeyListener$EmojiCompatHandleKeyDownHelper;->handleKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 58
    .local v0, "result":Z
    if-nez v0, :cond_13

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "text"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 68
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "text"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 63
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
