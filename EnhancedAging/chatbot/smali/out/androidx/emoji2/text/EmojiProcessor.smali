.class final Landroidx/emoji2/text/EmojiProcessor;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;,
        Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;
    }
.end annotation


# static fields
.field private static final ACTION_ADVANCE_BOTH:I = 0x1

.field private static final ACTION_ADVANCE_END:I = 0x2

.field private static final ACTION_FLUSH:I = 0x3


# instance fields
.field private final mEmojiAsDefaultStyleExceptions:[I

.field private mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

.field private final mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

.field private final mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

.field private final mUseEmojiAsDefaultStyle:Z


# direct methods
.method constructor <init>(Landroidx/emoji2/text/MetadataRepo;Landroidx/emoji2/text/EmojiCompat$SpanFactory;Landroidx/emoji2/text/EmojiCompat$GlyphChecker;Z[I)V
    .registers 6
    .param p1, "metadataRepo"    # Landroidx/emoji2/text/MetadataRepo;
    .param p2, "spanFactory"    # Landroidx/emoji2/text/EmojiCompat$SpanFactory;
    .param p3, "glyphChecker"    # Landroidx/emoji2/text/EmojiCompat$GlyphChecker;
    .param p4, "useEmojiAsDefaultStyle"    # Z
    .param p5, "emojiAsDefaultStyleExceptions"    # [I

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Landroidx/emoji2/text/EmojiProcessor;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    .line 114
    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 115
    iput-object p3, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 116
    iput-boolean p4, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    .line 117
    iput-object p5, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    .line 118
    return-void
.end method

.method private addEmoji(Landroid/text/Spannable;Landroidx/emoji2/text/EmojiMetadata;II)V
    .registers 7
    .param p1, "spannable"    # Landroid/text/Spannable;
    .param p2, "metadata"    # Landroidx/emoji2/text/EmojiMetadata;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 490
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    invoke-virtual {v0, p2}, Landroidx/emoji2/text/EmojiCompat$SpanFactory;->createSpan(Landroidx/emoji2/text/EmojiMetadata;)Landroidx/emoji2/text/EmojiSpan;

    move-result-object v0

    .line 491
    .local v0, "span":Landroidx/emoji2/text/EmojiSpan;
    const/16 v1, 0x21

    invoke-interface {p1, v0, p3, p4, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 492
    return-void
.end method

.method private static delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .registers 12
    .param p0, "content"    # Landroid/text/Editable;
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "forwardDelete"    # Z

    .line 375
    invoke-static {p1}, Landroidx/emoji2/text/EmojiProcessor;->hasModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 376
    return v1

    .line 379
    :cond_8
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 380
    .local v0, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 381
    .local v2, "end":I
    invoke-static {v0, v2}, Landroidx/emoji2/text/EmojiProcessor;->hasInvalidSelection(II)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 382
    return v1

    .line 385
    :cond_17
    const-class v3, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {p0, v0, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/emoji2/text/EmojiSpan;

    .line 386
    .local v3, "spans":[Landroidx/emoji2/text/EmojiSpan;
    if-eqz v3, :cond_46

    array-length v4, v3

    if-lez v4, :cond_46

    .line 387
    array-length v4, v3

    .line 388
    .local v4, "length":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_26
    if-ge v5, v4, :cond_46

    .line 389
    aget-object v6, v3, v5

    .line 390
    .local v6, "span":Landroidx/emoji2/text/EmojiSpan;
    invoke-interface {p0, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 391
    .local v7, "spanStart":I
    invoke-interface {p0, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 392
    .local v8, "spanEnd":I
    if-eqz p2, :cond_36

    if-eq v7, v0, :cond_3e

    :cond_36
    if-nez p2, :cond_3a

    if-eq v8, v0, :cond_3e

    :cond_3a
    if-le v0, v7, :cond_43

    if-ge v0, v8, :cond_43

    .line 395
    :cond_3e
    invoke-interface {p0, v7, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 396
    const/4 v1, 0x1

    return v1

    .line 388
    .end local v6    # "span":Landroidx/emoji2/text/EmojiSpan;
    .end local v7    # "spanStart":I
    .end local v8    # "spanEnd":I
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 401
    .end local v4    # "length":I
    .end local v5    # "index":I
    :cond_46
    return v1
.end method

.method static handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .registers 16
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I
    .param p4, "inCodePoints"    # Z

    .line 424
    const/4 v0, 0x0

    if-eqz p1, :cond_85

    if-nez p0, :cond_7

    goto/16 :goto_85

    .line 428
    :cond_7
    if-ltz p2, :cond_84

    if-gez p3, :cond_d

    goto/16 :goto_84

    .line 432
    :cond_d
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 433
    .local v1, "selectionStart":I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 435
    .local v2, "selectionEnd":I
    invoke-static {v1, v2}, Landroidx/emoji2/text/EmojiProcessor;->hasInvalidSelection(II)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 436
    return v0

    .line 441
    :cond_1c
    if-eqz p4, :cond_36

    .line 443
    nop

    .line 444
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 443
    invoke-static {p1, v1, v3}, Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;->findIndexBackward(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 445
    .local v3, "start":I
    nop

    .line 446
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 445
    invoke-static {p1, v2, v4}, Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;->findIndexForward(Ljava/lang/CharSequence;II)I

    move-result v4

    .line 448
    .local v4, "end":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_35

    if-ne v4, v5, :cond_46

    .line 450
    :cond_35
    return v0

    .line 453
    .end local v3    # "start":I
    .end local v4    # "end":I
    :cond_36
    sub-int v3, v1, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 454
    .restart local v3    # "start":I
    add-int v4, v2, p3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 457
    .restart local v4    # "end":I
    :cond_46
    const-class v5, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroidx/emoji2/text/EmojiSpan;

    .line 458
    .local v5, "spans":[Landroidx/emoji2/text/EmojiSpan;
    if-eqz v5, :cond_83

    array-length v6, v5

    if-lez v6, :cond_83

    .line 459
    array-length v6, v5

    .line 460
    .local v6, "length":I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_55
    if-ge v7, v6, :cond_6c

    .line 461
    aget-object v8, v5, v7

    .line 462
    .local v8, "span":Landroidx/emoji2/text/EmojiSpan;
    invoke-interface {p1, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 463
    .local v9, "spanStart":I
    invoke-interface {p1, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 464
    .local v10, "spanEnd":I
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 465
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 460
    .end local v8    # "span":Landroidx/emoji2/text/EmojiSpan;
    .end local v9    # "spanStart":I
    .end local v10    # "spanEnd":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    .line 468
    .end local v7    # "index":I
    :cond_6c
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 469
    .end local v3    # "start":I
    .local v0, "start":I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 471
    .end local v4    # "end":I
    .local v3, "end":I
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 472
    invoke-interface {p1, v0, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 473
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 474
    const/4 v4, 0x1

    return v4

    .line 477
    .end local v0    # "start":I
    .end local v6    # "length":I
    .local v3, "start":I
    .restart local v4    # "end":I
    :cond_83
    return v0

    .line 429
    .end local v1    # "selectionStart":I
    .end local v2    # "selectionEnd":I
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "spans":[Landroidx/emoji2/text/EmojiSpan;
    :cond_84
    :goto_84
    return v0

    .line 425
    :cond_85
    :goto_85
    return v0
.end method

.method static handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 353
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_18

    .line 361
    const/4 v2, 0x0

    .local v2, "handled":Z
    goto :goto_11

    .line 358
    .end local v2    # "handled":Z
    :sswitch_7
    invoke-static {p0, p2, v0}, Landroidx/emoji2/text/EmojiProcessor;->delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    move-result v2

    .line 359
    .restart local v2    # "handled":Z
    goto :goto_11

    .line 355
    .end local v2    # "handled":Z
    :sswitch_c
    invoke-static {p0, p2, v1}, Landroidx/emoji2/text/EmojiProcessor;->delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    move-result v2

    .line 356
    .restart local v2    # "handled":Z
    nop

    .line 365
    :goto_11
    if-eqz v2, :cond_17

    .line 366
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 367
    return v0

    .line 370
    :cond_17
    return v1

    :sswitch_data_18
    .sparse-switch
        0x43 -> :sswitch_c
        0x70 -> :sswitch_7
    .end sparse-switch
.end method

.method private hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/EmojiMetadata;)Z
    .registers 7
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "metadata"    # Landroidx/emoji2/text/EmojiMetadata;

    .line 509
    invoke-virtual {p4}, Landroidx/emoji2/text/EmojiMetadata;->getHasGlyph()I

    move-result v0

    if-nez v0, :cond_13

    .line 510
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 511
    invoke-virtual {p4}, Landroidx/emoji2/text/EmojiMetadata;->getSdkAdded()S

    move-result v1

    .line 510
    invoke-interface {v0, p1, p2, p3, v1}, Landroidx/emoji2/text/EmojiCompat$GlyphChecker;->hasGlyph(Ljava/lang/CharSequence;III)Z

    move-result v0

    .line 512
    .local v0, "hasGlyph":Z
    invoke-virtual {p4, v0}, Landroidx/emoji2/text/EmojiMetadata;->setHasGlyph(Z)V

    .line 515
    .end local v0    # "hasGlyph":Z
    :cond_13
    invoke-virtual {p4}, Landroidx/emoji2/text/EmojiMetadata;->getHasGlyph()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method private static hasInvalidSelection(II)Z
    .registers 3
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 481
    const/4 v0, -0x1

    if-eq p0, v0, :cond_a

    if-eq p1, v0, :cond_a

    if-eq p0, p1, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method

.method private static hasModifiers(Landroid/view/KeyEvent;)Z
    .registers 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .line 485
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method getEmojiMatch(Ljava/lang/CharSequence;)I
    .registers 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 122
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getMetadataVersion()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/emoji2/text/EmojiProcessor;->getEmojiMatch(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method getEmojiMatch(Ljava/lang/CharSequence;I)I
    .registers 12
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "metadataVersion"    # I

    .line 128
    new-instance v0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;

    iget-object v1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataRepo;->getRootNode()Landroidx/emoji2/text/MetadataRepo$Node;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    iget-object v3, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    invoke-direct {v0, v1, v2, v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;-><init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V

    .line 130
    .local v0, "sm":Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 131
    .local v1, "end":I
    const/4 v2, 0x0

    .line 132
    .local v2, "currentOffset":I
    const/4 v3, 0x0

    .line 133
    .local v3, "potentialSubsequenceMatch":I
    const/4 v4, 0x0

    .line 135
    .local v4, "subsequenceMatch":I
    :goto_16
    if-ge v2, v1, :cond_4d

    .line 136
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 137
    .local v5, "codePoint":I
    invoke-virtual {v0, v5}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->check(I)I

    move-result v6

    .line 138
    .local v6, "action":I
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v7

    .line 139
    .local v7, "currentNode":Landroidx/emoji2/text/EmojiMetadata;
    packed-switch v6, :pswitch_data_68

    goto :goto_42

    .line 143
    :pswitch_28
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v7

    .line 144
    invoke-virtual {v7}, Landroidx/emoji2/text/EmojiMetadata;->getCompatAdded()S

    move-result v8

    if-gt v8, p2, :cond_42

    .line 145
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 155
    :pswitch_35
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v2, v8

    goto :goto_42

    .line 150
    :pswitch_3b
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v2, v8

    .line 152
    const/4 v3, 0x0

    .line 153
    nop

    .line 159
    :cond_42
    :goto_42
    if-eqz v7, :cond_4c

    invoke-virtual {v7}, Landroidx/emoji2/text/EmojiMetadata;->getCompatAdded()S

    move-result v8

    if-gt v8, p2, :cond_4c

    .line 160
    add-int/lit8 v3, v3, 0x1

    .line 162
    .end local v5    # "codePoint":I
    .end local v6    # "action":I
    .end local v7    # "currentNode":Landroidx/emoji2/text/EmojiMetadata;
    :cond_4c
    goto :goto_16

    .line 164
    :cond_4d
    const/4 v5, 0x2

    if-eqz v4, :cond_51

    .line 167
    return v5

    .line 170
    :cond_51
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isInFlushableState()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 173
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v6

    .line 174
    .local v6, "exactMatch":Landroidx/emoji2/text/EmojiMetadata;
    invoke-virtual {v6}, Landroidx/emoji2/text/EmojiMetadata;->getCompatAdded()S

    move-result v7

    if-gt v7, p2, :cond_63

    .line 175
    const/4 v5, 0x1

    return v5

    .line 179
    .end local v6    # "exactMatch":Landroidx/emoji2/text/EmojiMetadata;
    :cond_63
    if-nez v3, :cond_67

    .line 180
    const/4 v5, 0x0

    return v5

    .line 182
    :cond_67
    return v5

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_35
        :pswitch_28
    .end packed-switch
.end method

.method process(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;
    .registers 15
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "maxEmojiCount"    # I
    .param p5, "replaceAll"    # Z

    .line 210
    instance-of v0, p1, Landroidx/emoji2/text/SpannableBuilder;

    .line 211
    .local v0, "isSpannableBuilder":Z
    if-eqz v0, :cond_a

    .line 212
    move-object v1, p1

    check-cast v1, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {v1}, Landroidx/emoji2/text/SpannableBuilder;->beginBatchEdit()V

    .line 216
    :cond_a
    const/4 v1, 0x0

    .line 220
    .local v1, "spannable":Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
    if-nez v0, :cond_2c

    :try_start_d
    instance-of v2, p1, Landroid/text/Spannable;

    if-eqz v2, :cond_12

    goto :goto_2c

    .line 222
    :cond_12
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_35

    .line 225
    move-object v2, p1

    check-cast v2, Landroid/text/Spanned;

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x1

    const-class v5, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 228
    .local v2, "nextSpanTransition":I
    if-gt v2, p3, :cond_35

    .line 229
    new-instance v3, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    invoke-direct {v3, p1}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v3

    goto :goto_35

    .line 221
    .end local v2    # "nextSpanTransition":I
    :cond_2c
    :goto_2c
    new-instance v2, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    move-object v3, p1

    check-cast v3, Landroid/text/Spannable;

    invoke-direct {v2, v3}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;-><init>(Landroid/text/Spannable;)V

    move-object v1, v2

    .line 233
    :cond_35
    :goto_35
    if-eqz v1, :cond_64

    .line 234
    const-class v2, Landroidx/emoji2/text/EmojiSpan;

    invoke-virtual {v1, p2, p3, v2}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/emoji2/text/EmojiSpan;

    .line 235
    .local v2, "spans":[Landroidx/emoji2/text/EmojiSpan;
    if-eqz v2, :cond_64

    array-length v3, v2

    if-lez v3, :cond_64

    .line 238
    array-length v3, v2

    .line 239
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_46
    if-ge v4, v3, :cond_64

    .line 240
    aget-object v5, v2, v4

    .line 241
    .local v5, "span":Landroidx/emoji2/text/EmojiSpan;
    invoke-virtual {v1, v5}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 242
    .local v6, "spanStart":I
    invoke-virtual {v1, v5}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 247
    .local v7, "spanEnd":I
    if-eq v6, p3, :cond_57

    .line 248
    invoke-virtual {v1, v5}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->removeSpan(Ljava/lang/Object;)V

    .line 250
    :cond_57
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    move p2, v8

    .line 251
    invoke-static {v7, p3}, Ljava/lang/Math;->max(II)I

    move-result v8

    move p3, v8

    .line 239
    .end local v5    # "span":Landroidx/emoji2/text/EmojiSpan;
    .end local v6    # "spanStart":I
    .end local v7    # "spanEnd":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 256
    .end local v2    # "spans":[Landroidx/emoji2/text/EmojiSpan;
    .end local v3    # "length":I
    .end local v4    # "index":I
    :cond_64
    if-eq p2, p3, :cond_126

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt p2, v2, :cond_6e

    goto/16 :goto_126

    .line 262
    :cond_6e
    const v2, 0x7fffffff

    if-eq p4, v2, :cond_84

    if-eqz v1, :cond_84

    .line 263
    invoke-virtual {v1}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->length()I

    move-result v2

    const-class v3, Landroidx/emoji2/text/EmojiSpan;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/emoji2/text/EmojiSpan;

    array-length v2, v2

    sub-int/2addr p4, v2

    .line 266
    :cond_84
    const/4 v2, 0x0

    .line 267
    .local v2, "addedCount":I
    new-instance v3, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;

    iget-object v4, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v4}, Landroidx/emoji2/text/MetadataRepo;->getRootNode()Landroidx/emoji2/text/MetadataRepo$Node;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    iget-object v6, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    invoke-direct {v3, v4, v5, v6}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;-><init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V

    .line 270
    .local v3, "sm":Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;
    move v4, p2

    .line 271
    .local v4, "currentOffset":I
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 273
    .local v5, "codePoint":I
    :goto_99
    if-ge v4, p3, :cond_e8

    if-ge v2, p4, :cond_e8

    .line 274
    invoke-virtual {v3, v5}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->check(I)I

    move-result v6

    .line 276
    .local v6, "action":I
    packed-switch v6, :pswitch_data_13c

    goto :goto_e7

    .line 291
    :pswitch_a5
    if-nez p5, :cond_b1

    .line 292
    invoke-virtual {v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v7

    .line 291
    invoke-direct {p0, p1, p2, v4, v7}, Landroidx/emoji2/text/EmojiProcessor;->hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/EmojiMetadata;)Z

    move-result v7

    if-nez v7, :cond_c7

    .line 293
    :cond_b1
    if-nez v1, :cond_be

    .line 294
    new-instance v7, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v7, v8}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;-><init>(Landroid/text/Spannable;)V

    move-object v1, v7

    .line 297
    :cond_be
    invoke-virtual {v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v7

    invoke-direct {p0, v1, v7, p2, v4}, Landroidx/emoji2/text/EmojiProcessor;->addEmoji(Landroid/text/Spannable;Landroidx/emoji2/text/EmojiMetadata;II)V

    .line 298
    add-int/lit8 v2, v2, 0x1

    .line 300
    :cond_c7
    move p2, v4

    goto :goto_e7

    .line 285
    :pswitch_c9
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    .line 286
    if-ge v4, p3, :cond_e7

    .line 287
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    move v5, v7

    goto :goto_e7

    .line 278
    :pswitch_d6
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr p2, v7

    .line 279
    move v4, p2

    .line 280
    if-ge v4, p3, :cond_e7

    .line 281
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    move v5, v7

    .line 303
    .end local v6    # "action":I
    :cond_e7
    :goto_e7
    goto :goto_99

    .line 309
    :cond_e8
    invoke-virtual {v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isInFlushableState()Z

    move-result v6

    if-eqz v6, :cond_10d

    if-ge v2, p4, :cond_10d

    .line 310
    if-nez p5, :cond_fc

    .line 311
    invoke-virtual {v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v6

    .line 310
    invoke-direct {p0, p1, p2, v4, v6}, Landroidx/emoji2/text/EmojiProcessor;->hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/EmojiMetadata;)Z

    move-result v6

    if-nez v6, :cond_10d

    .line 312
    :cond_fc
    if-nez v1, :cond_104

    .line 313
    new-instance v6, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    invoke-direct {v6, p1}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v6

    .line 315
    :cond_104
    invoke-virtual {v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v6

    invoke-direct {p0, v1, v6, p2, v4}, Landroidx/emoji2/text/EmojiProcessor;->addEmoji(Landroid/text/Spannable;Landroidx/emoji2/text/EmojiMetadata;II)V

    .line 316
    add-int/lit8 v2, v2, 0x1

    .line 320
    :cond_10d
    if-eqz v1, :cond_11c

    .line 321
    invoke-virtual {v1}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getUnwrappedSpannable()Landroid/text/Spannable;

    move-result-object v6
    :try_end_113
    .catchall {:try_start_d .. :try_end_113} :catchall_130

    .line 326
    if-eqz v0, :cond_11b

    .line 327
    move-object v7, p1

    check-cast v7, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {v7}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    .line 321
    :cond_11b
    return-object v6

    .line 323
    :cond_11c
    nop

    .line 326
    if-eqz v0, :cond_125

    .line 327
    move-object v6, p1

    check-cast v6, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {v6}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    .line 323
    :cond_125
    return-object p1

    .line 257
    .end local v2    # "addedCount":I
    .end local v3    # "sm":Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;
    .end local v4    # "currentOffset":I
    .end local v5    # "codePoint":I
    :cond_126
    :goto_126
    nop

    .line 326
    if-eqz v0, :cond_12f

    .line 327
    move-object v2, p1

    check-cast v2, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {v2}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    .line 257
    :cond_12f
    return-object p1

    .line 326
    .end local v1    # "spannable":Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
    :catchall_130
    move-exception v1

    if-eqz v0, :cond_139

    .line 327
    move-object v2, p1

    check-cast v2, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {v2}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    .line 329
    :cond_139
    goto :goto_13b

    :goto_13a
    throw v1

    :goto_13b
    goto :goto_13a

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_d6
        :pswitch_c9
        :pswitch_a5
    .end packed-switch
.end method
