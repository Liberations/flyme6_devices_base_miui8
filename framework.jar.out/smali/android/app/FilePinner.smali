.class public Landroid/app/FilePinner;
.super Ljava/lang/Object;
.source "FilePinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FilePinner$PinTask;
    }
.end annotation


# static fields
.field private static final MAX_LOCK_PAGES:I = 0x3200

.field private static final MAX_PROFILE_COUNT:I = 0xa

.field private static final PROFILE_DELAY:I = 0x1388

.field private static TAG:Ljava/lang/String;

.field private static enablePinAppFile:Z

.field private static mAppsToPin:[Ljava/lang/String;

.field private static mIsSelectedApp:Z

.field private static mPageProfileCount:I

.field private static mPinFileDone:Z

.field private static mfileCaheVecs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    const-string v0, "FilePinner"

    sput-object v0, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "persist.sys.pinappfile"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/FilePinner;->enablePinAppFile:Z

    .line 32
    sput-boolean v1, Landroid/app/FilePinner;->mIsSelectedApp:Z

    .line 33
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, " "

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    .line 34
    sput-boolean v2, Landroid/app/FilePinner;->mPinFileDone:Z

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "x1"    # Landroid/app/LoadedApk;

    .prologue
    .line 28
    invoke-static {p0, p1}, Landroid/app/FilePinner;->getFilesToPin(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-static {p0, p1}, Landroid/app/FilePinner;->recordHotPages(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private static getFilesToPin(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;
    .locals 19
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "pkgInfo"    # Landroid/app/LoadedApk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/app/LoadedApk;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v9, "filesToPin":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "baseApk":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 49
    const-string v1, "arm"

    .line 50
    .local v1, "arch":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v14}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 53
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "64"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    :cond_0
    const/4 v3, 0x0

    .line 57
    .local v3, "baseOdex":Ljava/lang/String;
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x19

    if-lt v14, v15, :cond_4

    .line 59
    :try_start_0
    const-class v14, Ldalvik/system/DexFile;

    const-string v15, "getDexFileOutputPath"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v18, Ljava/lang/String;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-class v18, Ljava/lang/String;

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 61
    .local v10, "method":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    const/16 v16, 0x1

    aput-object v1, v15, v16

    invoke-virtual {v10, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .end local v10    # "method":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v3, :cond_1

    .line 69
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v1    # "arch":Ljava/lang/String;
    .end local v3    # "baseOdex":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 76
    .local v4, "cl":Ljava/lang/ClassLoader;
    instance-of v14, v4, Ldalvik/system/BaseDexClassLoader;

    if-eqz v14, :cond_3

    .line 77
    check-cast v4, Ldalvik/system/BaseDexClassLoader;

    .end local v4    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v4}, Ldalvik/system/BaseDexClassLoader;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "clName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 79
    .local v13, "startIdx":I
    const/4 v8, 0x0

    .line 80
    .local v8, "endIdx":I
    :cond_2
    :goto_1
    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 81
    const-string v14, "dex file \""

    invoke-virtual {v5, v14, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 82
    const-string v14, "\","

    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 83
    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    const/4 v14, -0x1

    if-eq v8, v14, :cond_2

    .line 84
    add-int/lit8 v14, v13, 0xa

    invoke-virtual {v5, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "dexPath":Ljava/lang/String;
    const-string v14, "dex/"

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 86
    .local v12, "p":I
    if-ltz v12, :cond_2

    .line 87
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 88
    .local v11, "odexPath":Ljava/lang/StringBuffer;
    const-string/jumbo v14, "o"

    invoke-virtual {v11, v12, v14}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 95
    .end local v5    # "clName":Ljava/lang/String;
    .end local v6    # "dexPath":Ljava/lang/String;
    .end local v8    # "endIdx":I
    .end local v11    # "odexPath":Ljava/lang/StringBuffer;
    .end local v12    # "p":I
    .end local v13    # "startIdx":I
    :catch_0
    move-exception v7

    .line 96
    .local v7, "e":Ljava/lang/Exception;
    sget-object v14, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    const-string v15, "failed to find dex files"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v9

    .line 62
    .restart local v1    # "arch":Ljava/lang/String;
    .restart local v3    # "baseOdex":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 63
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v14, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    const-string v15, "failed get base odex path"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/oat/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/base.odex"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static handlePinAppFile(Landroid/app/Application;Landroid/app/LoadedApk;Landroid/content/res/Resources;)V
    .locals 9
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "pkgInfo"    # Landroid/app/LoadedApk;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 195
    sget-boolean v5, Landroid/app/FilePinner;->enablePinAppFile:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Landroid/app/FilePinner;->mIsSelectedApp:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Landroid/app/FilePinner;->mPinFileDone:Z

    if-nez v5, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 201
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 205
    if-eqz p2, :cond_2

    .line 207
    const v5, 0x1070060

    :try_start_0
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_2
    :goto_1
    sget-object v5, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 214
    sget-object v5, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    array-length v3, v5

    .line 215
    .local v3, "i":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    .line 216
    sget-object v5, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_3

    sget-object v5, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 220
    :cond_4
    if-gez v3, :cond_6

    .line 221
    sput-boolean v7, Landroid/app/FilePinner;->mIsSelectedApp:Z

    goto :goto_0

    .line 208
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    const-string v6, "failed get app to pin"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    sput-boolean v7, Landroid/app/FilePinner;->mIsSelectedApp:Z

    goto :goto_0

    .line 229
    .restart local v3    # "i":I
    :cond_6
    sget v5, Landroid/app/FilePinner;->mPageProfileCount:I

    if-ge v5, v8, :cond_0

    .line 230
    sget v5, Landroid/app/FilePinner;->mPageProfileCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Landroid/app/FilePinner;->mPageProfileCount:I

    .line 231
    const/4 v2, 0x0

    .line 232
    .local v2, "goodToLock":Z
    sget v5, Landroid/app/FilePinner;->mPageProfileCount:I

    if-ne v5, v8, :cond_7

    .line 233
    const/4 v2, 0x1

    .line 234
    const/4 v5, 0x1

    sput-boolean v5, Landroid/app/FilePinner;->mPinFileDone:Z

    .line 236
    :cond_7
    new-instance v4, Landroid/app/FilePinner$PinTask;

    invoke-direct {v4, v0, p1, v2}, Landroid/app/FilePinner$PinTask;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;Z)V

    .line 237
    .local v4, "pinTask":Landroid/app/FilePinner$PinTask;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static recordHotPages(Ljava/util/ArrayList;Z)V
    .locals 29
    .param p1, "goodToLock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "filesToPin":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .line 105
    .local v26, "totalLockSize":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_8

    .line 106
    new-instance v8, Ljava/io/FileDescriptor;

    invoke-direct {v8}, Ljava/io/FileDescriptor;-><init>()V

    .line 108
    .local v8, "fd":Ljava/io/FileDescriptor;
    const/high16 v11, 0x80000

    .line 109
    .local v11, "LOCAL_O_CLOEXEC":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 111
    .local v24, "pf":Ljava/lang/String;
    :try_start_0
    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    sget v3, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v2, v3

    or-int/2addr v2, v11

    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v8

    .line 115
    invoke-static {v8}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v25

    .line 117
    .local v25, "sb":Landroid/system/StructStat;
    const-wide/16 v2, 0x0

    move-object/from16 v0, v25

    iget-wide v4, v0, Landroid/system/StructStat;->st_size:J

    sget v6, Landroid/system/OsConstants;->PROT_READ:I

    sget v7, Landroid/system/OsConstants;->MAP_PRIVATE:I

    const-wide/16 v9, 0x0

    invoke-static/range {v2 .. v10}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v12

    .line 119
    .local v12, "address":J
    move-object/from16 v0, v25

    iget-wide v2, v0, Landroid/system/StructStat;->st_size:J

    long-to-int v2, v2

    add-int/lit16 v2, v2, 0x1000

    add-int/lit8 v2, v2, -0x1

    div-int/lit16 v0, v2, 0x1000

    move/from16 v27, v0

    .line 120
    .local v27, "vecSize":I
    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v28, v0

    .line 121
    .local v28, "vector":[B
    move-object/from16 v0, v25

    iget-wide v2, v0, Landroid/system/StructStat;->st_size:J

    move-object/from16 v0, v28

    invoke-static {v12, v13, v2, v3, v0}, Landroid/system/Os;->mincore(JJ[B)V

    .line 123
    sget-object v2, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    .line 124
    .local v17, "currentCacheVec":[B
    if-eqz v17, :cond_2

    .line 125
    const/16 v23, 0x0

    .local v23, "pageIndex":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 126
    aget-byte v2, v17, v23

    aget-byte v3, v28, v23

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v17, v23

    .line 125
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 128
    :cond_0
    sget-object v2, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .end local v23    # "pageIndex":I
    :goto_2
    if-nez p1, :cond_3

    .line 134
    move-object/from16 v0, v25

    iget-wide v2, v0, Landroid/system/StructStat;->st_size:J

    invoke-static {v12, v13, v2, v3}, Landroid/system/Os;->munmap(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    :try_start_1
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2

    .line 105
    .end local v12    # "address":J
    .end local v17    # "currentCacheVec":[B
    .end local v25    # "sb":Landroid/system/StructStat;
    .end local v27    # "vecSize":I
    .end local v28    # "vector":[B
    :cond_1
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 130
    .restart local v12    # "address":J
    .restart local v17    # "currentCacheVec":[B
    .restart local v25    # "sb":Landroid/system/StructStat;
    .restart local v27    # "vecSize":I
    .restart local v28    # "vector":[B
    :cond_2
    :try_start_2
    sget-object v2, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 159
    .end local v12    # "address":J
    .end local v17    # "currentCacheVec":[B
    .end local v25    # "sb":Landroid/system/StructStat;
    .end local v27    # "vecSize":I
    .end local v28    # "vector":[B
    :catch_0
    move-exception v18

    .line 160
    .local v18, "e":Landroid/system/ErrnoException;
    :try_start_3
    sget-object v2, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not pin file with error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    :try_start_4
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 165
    :catch_1
    move-exception v19

    .line 166
    .local v19, "eClose":Landroid/system/ErrnoException;
    sget-object v2, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close fd, error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 165
    .end local v18    # "e":Landroid/system/ErrnoException;
    .end local v19    # "eClose":Landroid/system/ErrnoException;
    .restart local v12    # "address":J
    .restart local v17    # "currentCacheVec":[B
    .restart local v25    # "sb":Landroid/system/StructStat;
    .restart local v27    # "vecSize":I
    .restart local v28    # "vector":[B
    :catch_2
    move-exception v19

    .line 166
    .restart local v19    # "eClose":Landroid/system/ErrnoException;
    sget-object v2, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close fd, error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 138
    .end local v19    # "eClose":Landroid/system/ErrnoException;
    :cond_3
    const/16 v22, 0x0

    .line 139
    .local v22, "pageCount":I
    const/16 v16, 0x0

    .line 140
    .local v16, "cachedSize":I
    const/16 v21, 0x0

    .line 141
    .local v21, "lockCount":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 142
    :try_start_5
    aget-byte v2, v17, v22

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_5

    .line 143
    add-int/lit8 v21, v21, 0x1

    .line 155
    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 145
    :cond_5
    if-lez v21, :cond_4

    .line 146
    sub-int v2, v22, v21

    mul-int/lit16 v2, v2, 0x1000

    int-to-long v2, v2

    add-long/2addr v2, v12

    move/from16 v0, v21

    mul-int/lit16 v4, v0, 0x1000

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->mlock(JJ)V

    .line 147
    add-int v16, v16, v21

    .line 148
    add-int v26, v26, v21

    .line 149
    const/16 v21, 0x0

    .line 150
    const/16 v2, 0x3200

    move/from16 v0, v26

    if-le v0, v2, :cond_4

    .line 157
    :cond_6
    mul-int/lit8 v2, v16, 0x64

    int-to-double v2, v2

    move/from16 v0, v27

    int-to-double v4, v0

    div-double v14, v2, v4

    .line 158
    .local v14, "cachedPerc":D
    sget-object v2, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cached "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 162
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    :try_start_6
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_3

    .line 165
    :catch_3
    move-exception v19

    .line 166
    .restart local v19    # "eClose":Landroid/system/ErrnoException;
    sget-object v2, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close fd, error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 162
    .end local v12    # "address":J
    .end local v14    # "cachedPerc":D
    .end local v16    # "cachedSize":I
    .end local v17    # "currentCacheVec":[B
    .end local v19    # "eClose":Landroid/system/ErrnoException;
    .end local v21    # "lockCount":I
    .end local v22    # "pageCount":I
    .end local v25    # "sb":Landroid/system/StructStat;
    .end local v27    # "vecSize":I
    .end local v28    # "vector":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 164
    :try_start_7
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_4

    .line 167
    :cond_7
    :goto_5
    throw v2

    .line 165
    :catch_4
    move-exception v19

    .line 166
    .restart local v19    # "eClose":Landroid/system/ErrnoException;
    sget-object v3, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close fd, error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 171
    .end local v8    # "fd":Ljava/io/FileDescriptor;
    .end local v11    # "LOCAL_O_CLOEXEC":I
    .end local v19    # "eClose":Landroid/system/ErrnoException;
    .end local v24    # "pf":Ljava/lang/String;
    :cond_8
    return-void
.end method
