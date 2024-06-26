.class public Landroidx/core/graphics/TypefaceCompatUtil;
.super Ljava/lang/Object;
.source "TypefaceCompatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/TypefaceCompatUtil$Api19Impl;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = ".font"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "c"    # Ljava/io/Closeable;

    .line 193
    if-eqz p0, :cond_7

    .line 195
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 198
    goto :goto_7

    .line 196
    :catch_6
    move-exception v0

    .line 200
    :cond_7
    :goto_7
    return-void
.end method

.method public static copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .line 136
    invoke-static {p0}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 137
    .local v0, "tmpFile":Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 138
    return-object v1

    .line 141
    :cond_8
    :try_start_8
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1b

    if-nez v2, :cond_13

    .line 142
    nop

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 142
    return-object v1

    .line 144
    :cond_13
    :try_start_13
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1b

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 144
    return-object v1

    .line 146
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 147
    throw v1
.end method

.method public static copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 181
    invoke-static {p0, v0}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 183
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 181
    return v1

    .line 183
    :catchall_e
    move-exception v1

    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 184
    throw v1
.end method

.method public static copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 9
    .param p0, "file"    # Ljava/io/File;
    .param p1, "is"    # Ljava/io/InputStream;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "os":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 157
    .local v1, "old":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    :try_start_6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v0, v3

    .line 158
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 160
    .local v3, "buffer":[B
    :goto_10
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "readLen":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1c

    .line 161
    invoke-virtual {v0, v3, v2, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1b} :catch_27
    .catchall {:try_start_6 .. :try_end_1b} :catchall_25

    goto :goto_10

    .line 163
    :cond_1c
    nop

    .line 168
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 169
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 163
    const/4 v2, 0x1

    return v2

    .line 168
    .end local v3    # "buffer":[B
    .end local v5    # "readLen":I
    :catchall_25
    move-exception v2

    goto :goto_4c

    .line 164
    :catch_27
    move-exception v3

    .line 165
    .local v3, "e":Ljava/io/IOException;
    :try_start_28
    const-string v4, "TypefaceCompatUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error copying resource contents to temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_25

    .line 166
    nop

    .line 168
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 169
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 166
    return v2

    .line 168
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4c
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 169
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 170
    goto :goto_54

    :goto_53
    throw v2

    :goto_54
    goto :goto_53
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 72
    .local v0, "cacheDir":Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 73
    return-object v1

    .line 76
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".font"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "prefix":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_32
    const/16 v4, 0x64

    if-ge v3, v4, :cond_58

    .line 78
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .local v4, "file":Ljava/io/File;
    :try_start_4c
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_50} :catch_54

    if-eqz v5, :cond_53

    .line 81
    return-object v4

    .line 85
    :cond_53
    goto :goto_55

    .line 83
    :catch_54
    move-exception v5

    .line 77
    .end local v4    # "file":Ljava/io/File;
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 87
    .end local v3    # "i":I
    :cond_58
    return-object v1
.end method

.method public static mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    :try_start_5
    const-string/jumbo v2, "r"

    invoke-static {v0, p2, v2, p1}, Landroidx/core/graphics/TypefaceCompatUtil$Api19Impl;->openFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 115
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_15

    .line 116
    nop

    .line 123
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_4d

    .line 116
    :cond_14
    return-object v1

    .line 118
    :cond_15
    :try_start_15
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_41

    .line 119
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 120
    .local v4, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    .line 121
    .local v8, "size":J
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v5
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_37

    .line 122
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_41

    .line 123
    if-eqz v2, :cond_36

    :try_start_33
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_4d

    .line 121
    :cond_36
    return-object v5

    .line 118
    .end local v4    # "channel":Ljava/nio/channels/FileChannel;
    .end local v8    # "size":J
    :catchall_37
    move-exception v4

    :try_start_38
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v5

    :try_start_3d
    invoke-static {v4, v5}, Landroidx/core/content/pm/ShortcutXmlParser$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p2    # "uri":Landroid/net/Uri;
    :goto_40
    throw v4
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_41

    .line 113
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catchall_41
    move-exception v3

    if-eqz v2, :cond_4c

    :try_start_44
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v4

    :try_start_49
    invoke-static {v3, v4}, Landroidx/core/content/pm/ShortcutXmlParser$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p2    # "uri":Landroid/net/Uri;
    :cond_4c
    :goto_4c
    throw v3
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_4d

    .line 123
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catch_4d
    move-exception v2

    .line 124
    .local v2, "e":Ljava/io/IOException;
    return-object v1
.end method

.method private static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 8
    .param p0, "file"    # Ljava/io/File;

    .line 96
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_23

    .line 97
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 98
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    .line 99
    .local v5, "size":J
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    .line 100
    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_23

    .line 99
    return-object v2

    .line 96
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .end local v5    # "size":J
    :catchall_19
    move-exception v1

    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v2

    :try_start_1f
    invoke-static {v1, v2}, Landroidx/core/content/pm/ShortcutXmlParser$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local p0    # "file":Ljava/io/File;
    :goto_22
    throw v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_23

    .line 100
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catch_23
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static readFontInfoIntoByteBuffer(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fonts"    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroidx/core/provider/FontsContractCompat$FontInfo;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v0, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_27

    aget-object v3, p1, v2

    .line 224
    .local v3, "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    invoke-virtual {v3}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v4

    if-eqz v4, :cond_12

    .line 225
    goto :goto_24

    .line 228
    :cond_12
    invoke-virtual {v3}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 229
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 230
    goto :goto_24

    .line 233
    :cond_1d
    invoke-static {p0, p2, v4}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 234
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .end local v3    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 236
    :cond_27
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method
