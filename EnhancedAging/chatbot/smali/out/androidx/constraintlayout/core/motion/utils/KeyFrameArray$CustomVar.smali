.class public Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;
.super Ljava/lang/Object;
.source "KeyFrameArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/KeyFrameArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomVar"
.end annotation


# static fields
.field private static final EMPTY:I = 0x3e7


# instance fields
.field count:I

.field keys:[I

.field values:[Landroidx/constraintlayout/core/motion/CustomVariable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/16 v0, 0x65

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    .line 91
    new-array v0, v0, [Landroidx/constraintlayout/core/motion/CustomVariable;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->values:[Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 96
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->clear()V

    .line 97
    return-void
.end method


# virtual methods
.method public append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "value"    # Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 127
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->values:[Landroidx/constraintlayout/core/motion/CustomVariable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_9

    .line 128
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->remove(I)V

    .line 130
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->values:[Landroidx/constraintlayout/core/motion/CustomVariable;

    aput-object p2, v0, p1

    .line 131
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    aput p1, v0, v1

    .line 132
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 133
    return-void
.end method

.method public clear()V
    .registers 3

    .line 100
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 101
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->values:[Landroidx/constraintlayout/core/motion/CustomVariable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    .line 103
    return-void
.end method

.method public dump()V
    .registers 5

    .line 106
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "K: ["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    if-ge v0, v1, :cond_54

    .line 109
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_3c

    const-string v3, ""

    goto :goto_3e

    :cond_3c
    const-string v3, ", "

    :goto_3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 111
    .end local v0    # "i":I
    :cond_54
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public keyAt(I)I
    .registers 3
    .param p1, "i"    # I

    .line 123
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    aget v0, v0, p1

    return v0
.end method

.method public remove(I)V
    .registers 6
    .param p1, "position"    # I

    .line 136
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->values:[Landroidx/constraintlayout/core/motion/CustomVariable;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 137
    const/4 v0, 0x0

    .local v0, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    if-ge v1, v2, :cond_28

    .line 138
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_19

    .line 139
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    const/16 v3, 0x3e7

    aput v3, v2, v1

    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 142
    :cond_19
    if-eq v1, v0, :cond_23

    .line 143
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    aget v3, v3, v0

    aput v3, v2, v1

    .line 145
    :cond_23
    add-int/lit8 v0, v0, 0x1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 148
    .end local v0    # "j":I
    .end local v1    # "i":I
    :cond_28
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    .line 149
    return-void
.end method

.method public size()I
    .registers 2

    .line 115
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    return v0
.end method

.method public valueAt(I)Landroidx/constraintlayout/core/motion/CustomVariable;
    .registers 4
    .param p1, "i"    # I

    .line 119
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->values:[Landroidx/constraintlayout/core/motion/CustomVariable;

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
