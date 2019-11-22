.class public Lapp/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:J

.field public static final b:Ljava/lang/Runnable;

.field static c:J

.field private static final d:Lutil/ay;

.field private static e:Z

.field private static final f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 305
    new-instance v0, Lutil/ay;

    invoke-direct {v0}, Lutil/ay;-><init>()V

    sput-object v0, Lapp/ac;->d:Lutil/ay;

    .line 313
    const/4 v0, 0x0

    sput-boolean v0, Lapp/ac;->e:Z

    .line 339
    new-instance v0, Lapp/ad;

    invoke-direct {v0}, Lapp/ad;-><init>()V

    sput-object v0, Lapp/ac;->f:Ljava/lang/Runnable;

    .line 626
    new-instance v0, Lapp/ae;

    invoke-direct {v0}, Lapp/ae;-><init>()V

    sput-object v0, Lapp/ac;->b:Ljava/lang/Runnable;

    .line 713
    const-wide/16 v0, 0x0

    sput-wide v0, Lapp/ac;->c:J

    return-void
.end method

.method public static a(II)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 63
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 64
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 65
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 66
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 67
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 68
    const/16 v1, 0x7ea

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 69
    const/16 v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 71
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x38

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 74
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 75
    return-object v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 128
    sget v0, Lmodule/j/e;->m:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-boolean v0, Lmodule/bt/v;->g:Z

    if-eqz v0, :cond_1

    sget v0, Lmodule/bt/v;->D:I

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lapp/ac;->a(I)V

    goto :goto_0
.end method

.method public static a(I)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lapp/ac;->c(II)V

    .line 124
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lapp/ac;->c(II)V

    .line 125
    return-void
.end method

.method public static a(IIJ)V
    .locals 14

    .prologue
    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 113
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    .line 114
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 115
    const/16 v12, 0x48

    .line 116
    const/16 v13, 0x101

    move-wide/from16 v2, p2

    move v6, p0

    move v7, p1

    .line 113
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 118
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 119
    return-void
.end method

.method public static a(J)V
    .locals 2

    .prologue
    .line 375
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 680
    if-nez p1, :cond_0

    const/4 v0, 0x2

    .line 682
    :cond_0
    :try_start_0
    invoke-static {}, Lapp/y;->m()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 683
    invoke-static {}, Lapp/y;->m()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :cond_1
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 660
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lutil/bc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_0
    return-void
.end method

.method public static a(Lutil/b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutil/b",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 617
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 621
    :cond_0
    return-void

    .line 617
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 618
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lutil/b;->b(Ljava/lang/Comparable;I)I

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 405
    if-nez p1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_2

    sget-object v1, Lmodule/j/e;->bA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 407
    const-string v1, "cld.navi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 397
    if-nez p0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lapp/j;->c:Lutil/d;

    invoke-virtual {v1, p0, v0}, Lutil/d;->a(Ljava/lang/Comparable;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 399
    sget-object v1, Lmodule/j/e;->bA:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 400
    const-string v1, "cld.navi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 689
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 692
    :goto_0
    return p1

    .line 690
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(II)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 83
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 84
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 85
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 86
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 87
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 88
    const/16 v1, 0x7de

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 89
    const/16 v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 91
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x38

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 94
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 95
    return-object v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 133
    const/16 v0, 0x52

    invoke-static {v0}, Lapp/ac;->a(I)V

    .line 134
    return-void
.end method

.method public static b(I)V
    .locals 3

    .prologue
    .line 149
    sget-object v0, Lapp/ac;->d:Lutil/ay;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lutil/ay;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 150
    :cond_0
    sget-object v0, Lb/c;->b:Lutil/ai;

    invoke-virtual {v0}, Lutil/ai;->a()V

    .line 151
    packed-switch p0, :pswitch_data_0

    .line 161
    :pswitch_0
    const/16 v0, 0x58

    invoke-static {v0}, Lapp/ac;->p(I)V

    goto :goto_0

    .line 154
    :pswitch_1
    sget-object v0, Lmodule/j/e;->c:[Lutil/ag;

    const/16 v1, 0x25

    const/4 v2, 0x4

    invoke-static {v0, v1, p0, v2}, Lutil/ag;->a([Lutil/ag;III)V

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-static {}, Lmodule/b/cgi;->g()V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 411
    const-string v0, "sys.navi.packagename"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lutil/bc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    const-string v0, "sys.navi.packagename"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 138
    sget v0, Lmodule/j/e;->m:I

    if-ne v0, v4, :cond_0

    .line 143
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lapp/ac;->a:J

    .line 140
    const/4 v0, 0x0

    sget-wide v2, Lapp/ac;->a:J

    invoke-static {v0, v5, v2, v3}, Lapp/ac;->a(IIJ)V

    .line 141
    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Lapp/ac;->a(J)V

    .line 142
    sget-wide v0, Lapp/ac;->a:J

    invoke-static {v4, v5, v0, v1}, Lapp/ac;->a(IIJ)V

    goto :goto_0
.end method

.method public static c(I)V
    .locals 3

    .prologue
    .line 167
    sget-object v0, Lapp/ac;->d:Lutil/ay;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lutil/ay;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 168
    :cond_0
    sget-object v0, Lb/c;->a:Lutil/ai;

    invoke-virtual {v0}, Lutil/ai;->a()V

    .line 169
    packed-switch p0, :pswitch_data_0

    .line 178
    :pswitch_0
    const/16 v0, 0x57

    invoke-static {v0}, Lapp/ac;->p(I)V

    goto :goto_0

    .line 171
    :pswitch_1
    sget-object v0, Lmodule/j/e;->c:[Lutil/ag;

    const/16 v1, 0x25

    const/4 v2, 0x5

    invoke-static {v0, v1, p0, v2}, Lutil/ag;->a([Lutil/ag;III)V

    goto :goto_0

    .line 174
    :pswitch_2
    invoke-static {}, Lmodule/b/cgi;->h()V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static c(II)V
    .locals 14

    .prologue
    const/4 v8, 0x0

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 104
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 105
    new-instance v1, Landroid/view/KeyEvent;

    .line 106
    const/4 v10, -0x1

    .line 107
    const/16 v13, 0x101

    move-wide v4, v2

    move v6, p0

    move v7, p1

    move v9, v8

    move v11, v8

    move v12, v8

    .line 105
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 108
    const/4 v2, 0x2

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 109
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 443
    if-nez p0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lapp/j;->c:Lutil/d;

    invoke-virtual {v1, p0, v0}, Lutil/d;->a(Ljava/lang/Comparable;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    invoke-static {p0}, Lapp/ac;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(I)V
    .locals 3

    .prologue
    .line 184
    sget-object v0, Lapp/ac;->d:Lutil/ay;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lutil/ay;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 185
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 192
    const/16 v0, 0x7e

    invoke-static {v0}, Lapp/ac;->p(I)V

    goto :goto_0

    .line 188
    :pswitch_0
    sget-object v0, Lmodule/j/e;->c:[Lutil/ag;

    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lutil/ag;->a([Lutil/ag;III)V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static d(II)V
    .locals 5

    .prologue
    .line 279
    sget-object v0, Lapp/ac;->d:Lutil/ay;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lutil/ay;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 280
    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 282
    :pswitch_0
    sget-object v0, Lmodule/j/e;->c:[Lutil/ag;

    const/16 v1, 0x25

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x8

    aput v4, v2, v3

    const/4 v3, 0x2

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Lutil/ag;->a([Lutil/ag;I[I)V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 310
    invoke-static {}, Lapp/y;->s()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 448
    if-eqz p0, :cond_0

    const-string v0, "youtube"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 315
    invoke-static {}, Lapp/y;->s()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 316
    if-eq v0, v2, :cond_0

    .line 317
    if-nez v0, :cond_1

    .line 318
    :cond_0
    invoke-static {}, Lchip/ax;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 319
    :cond_1
    invoke-static {}, Lapp/y;->s()Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 320
    sput-boolean v2, Lapp/ac;->e:Z

    .line 322
    :cond_2
    return-void
.end method

.method public static e(I)V
    .locals 3

    .prologue
    .line 198
    sget-object v0, Lapp/ac;->d:Lutil/ay;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lutil/ay;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 199
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 205
    const/16 v0, 0x7f

    invoke-static {v0}, Lapp/ac;->p(I)V

    goto :goto_0

    .line 201
    :pswitch_0
    sget-object v0, Lmodule/j/e;->c:[Lutil/ag;

    const/16 v1, 0x25

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, v2}, Lutil/ag;->a([Lutil/ag;III)V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static e(II)V
    .locals 5

    .prologue
    .line 645
    invoke-static {}, Lapp/y;->p()Landroid/media/AudioManager;

    move-result-object v0

    .line 646
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 647
    sget-boolean v2, Lmodule/sound/z;->a:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lmodule/sound/ap;->a:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lmodule/sound/at;->a:Z

    if-eqz v2, :cond_1

    .line 648
    :cond_0
    const-string v2, "sound"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "streamType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currtVol = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " toVol = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/16 v2, 0xa

    if-ne p0, v2, :cond_1

    .line 650
    invoke-static {}, Lapp/y;->i()Lf/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "streamType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currtVol = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " toVol = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf/b;->a(Ljava/lang/String;)V

    .line 653
    :cond_1
    if-eq v1, p1, :cond_2

    .line 654
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 656
    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 471
    if-nez p0, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lapp/j;->c:Lutil/d;

    invoke-virtual {v1, p0, v0}, Lutil/d;->a(Ljava/lang/Comparable;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 325
    sget-boolean v0, Lapp/ac;->e:Z

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x0

    sput-boolean v0, Lapp/ac;->e:Z

    .line 327
    invoke-static {}, Lapp/ac;->h()V

    .line 329
    :cond_0
    return-void
.end method

.method public static f(I)V
    .locals 3

    .prologue
    .line 211
    sget-object v0, Lapp/ac;->d:Lutil/ay;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lutil/ay;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 212
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 219
    const/16 v0, 0x55

    invoke-static {v0}, Lapp/ac;->p(I)V

    goto :goto_0

    .line 215
    :pswitch_0
    sget-object v0, Lmodule/j/e;->c:[Lutil/ag;

    const/16 v1, 0x25

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lutil/ag;->a([Lutil/ag;III)V

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static f(II)V
    .locals 6

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, p0, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 295
    sget-object v2, Lmodule/j/e;->dn:Ljava/lang/String;

    invoke-static {v2}, Lutil/z;->i(Ljava/lang/String;)I

    move-result v2

    .line 296
    const-string v3, "kuwo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "========  code : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-object v3, Lmodule/j/e;->dn:Ljava/lang/String;

    const-string v4, "kuwo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1130

    if-ge v2, v3, :cond_0

    .line 298
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 299
    invoke-static {}, Lapp/App;->a()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lapp/App;->sendBroadcast(Landroid/content/Intent;)V

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-static {}, Lapp/y;->p()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 483
    if-nez p0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lapp/j;->c:Lutil/d;

    invoke-virtual {v1, p0, v0}, Lutil/d;->a(Ljava/lang/Comparable;I)I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static g()V
    .locals 4

    .prologue
    .line 332
    sget-boolean v0, Lapp/ac;->e:Z

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x0

    sput-boolean v0, Lapp/ac;->e:Z

    .line 334
    invoke-static {}, Lapp/ac;->h()V

    .line 335
    invoke-static {}, Lutil/o;->a()Lutil/o;

    move-result-object v0

    sget-object v1, Lapp/ac;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lutil/o;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 338
    :cond_0
    return-void
.end method

.method public static g(I)V
    .locals 3

    .prologue
    .line 225
    sget-object v0, Lapp/ac;->d:Lutil/ay;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lutil/ay;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 226
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 232
    const/16 v0, 0x56

    invoke-static {v0}, Lapp/ac;->p(I)V

    goto :goto_0

    .line 228
    :pswitch_0
    sget-object v0, Lmodule/j/e;->c:[Lutil/ag;

    const/16 v1, 0x25

    const/4 v2, 0x3

    invoke-static {v0, v1, p0, v2}, Lutil/ag;->a([Lutil/ag;III)V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 494
    if-nez p0, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lapp/j;->c:Lutil/d;

    invoke-virtual {v1, p0, v0}, Lutil/d;->a(Ljava/lang/Comparable;I)I

    move-result v1

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static h()V
    .locals 2

    .prologue
    .line 350
    const-string v0, "close"

    const-string v1, "persist.sys.wifi.states"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    const-string v0, "persist.sys.wifi.states"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    invoke-static {}, Lapp/y;->s()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 354
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 355
    invoke-static {}, Lapp/y;->s()Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 357
    :cond_1
    return-void
.end method

.method public static h(I)V
    .locals 3

    .prologue
    .line 238
    sget-object v0, Lapp/ac;->d:Lutil/ay;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lutil/ay;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 239
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 245
    const/16 v0, 0x59

    invoke-static {v0}, Lapp/ac;->p(I)V

    goto :goto_0

    .line 241
    :pswitch_0
    sget-object v0, Lmodule/j/e;->c:[Lutil/ag;

    const/16 v1, 0x25

    const/4 v2, 0x7

    invoke-static {v0, v1, p0, v2}, Lutil/ag;->a([Lutil/ag;III)V

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static h(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 548
    invoke-static {}, Lapp/y;->n()Landroid/app/ActivityManager;

    move-result-object v0

    .line 550
    :try_start_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    const/4 v1, 0x0

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 553
    :cond_0
    invoke-static {p0}, Lapp/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 554
    invoke-static {p0}, Lapp/ac;->j(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 556
    sget-object v0, La/p;->c:Lutil/aj;

    invoke-virtual {v0, p0}, Lutil/aj;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_1
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 559
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static i()V
    .locals 4

    .prologue
    .line 384
    invoke-static {}, Lapp/y;->q()Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 385
    return-void
.end method

.method public static i(I)V
    .locals 3

    .prologue
    .line 251
    sget-object v0, Lapp/ac;->d:Lutil/ay;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lutil/ay;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 252
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 258
    const/16 v0, 0x5a

    invoke-static {v0}, Lapp/ac;->p(I)V

    goto :goto_0

    .line 254
    :pswitch_0
    sget-object v0, Lmodule/j/e;->c:[Lutil/ag;

    const/16 v1, 0x25

    const/4 v2, 0x6

    invoke-static {v0, v1, p0, v2}, Lutil/ag;->a([Lutil/ag;III)V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 667
    if-nez p0, :cond_1

    .line 676
    :cond_0
    :goto_0
    return v2

    .line 668
    :cond_1
    invoke-static {}, Lapp/y;->n()Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 669
    if-eqz v3, :cond_0

    move v1, v2

    .line 670
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 671
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    const/4 v2, 0x1

    goto :goto_0

    .line 670
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static j()V
    .locals 2

    .prologue
    .line 389
    invoke-static {}, Lapp/y;->q()Landroid/os/PowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Lapp/y;->q()Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method

.method public static j(I)V
    .locals 3

    .prologue
    .line 264
    sget-object v0, Lapp/ac;->d:Lutil/ay;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lutil/ay;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 265
    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 268
    :pswitch_0
    sget-object v0, Lmodule/j/e;->c:[Lutil/ag;

    const/16 v1, 0x25

    const/16 v2, 0x9

    invoke-static {v0, v1, p0, v2}, Lutil/ag;->a([Lutil/ag;III)V

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static j(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 569
    :try_start_0
    invoke-static {}, Lapp/y;->n()Landroid/app/ActivityManager;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 570
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    :goto_1
    return-void

    .line 570
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 571
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lapp/y;->n()Landroid/app/ActivityManager;

    move-result-object v3

    const-string v4, "removeTask"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Lutil/ao;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-static {}, Lapp/y;->i()Lf/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeTast = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lf/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 503
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    invoke-static {}, Lapp/y;->m()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 506
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static k(I)Z
    .locals 1

    .prologue
    .line 425
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    invoke-static {}, Lapp/y;->m()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 515
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.wallpaper.WallpaperService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    const/4 v2, 0x4

    .line 514
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 517
    return-object v0
.end method

.method public static l(I)Z
    .locals 1

    .prologue
    .line 437
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    invoke-static {}, Lapp/y;->m()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 526
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.view.InputMethod"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    const/4 v2, 0x4

    .line 525
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 528
    return-object v0
.end method

.method public static m(I)Z
    .locals 1

    .prologue
    .line 465
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n()V
    .locals 0

    .prologue
    .line 541
    # DISABLED BY HVDW (nokill): invoke-static {}, Lapp/ac;->o()V

    .line 542
    return-void
.end method

.method public static n(I)Z
    .locals 1

    .prologue
    .line 489
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static o()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 589
    invoke-static {}, Lapp/y;->n()Landroid/app/ActivityManager;

    move-result-object v0

    .line 590
    new-instance v1, Lutil/b;

    invoke-direct {v1, v5}, Lutil/b;-><init>(I)V

    .line 592
    invoke-static {}, Lapp/ac;->k()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lutil/b;->b(Ljava/lang/Comparable;I)I

    .line 594
    invoke-static {}, Lapp/ac;->l()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lapp/ac;->a(Lutil/b;Ljava/util/List;)V

    .line 596
    invoke-static {}, Lapp/ac;->m()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lapp/ac;->a(Lutil/b;Ljava/util/List;)V

    .line 603
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 604
    if-eqz v0, :cond_1

    .line 605
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 614
    :cond_1
    return-void

    .line 605
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 606
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Lutil/b;->a(Ljava/lang/Comparable;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 607
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v3}, Lutil/z;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 609
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, "com.antutu"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 610
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v0}, Lapp/ac;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static o(I)V
    .locals 6

    .prologue
    .line 716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 717
    sget-wide v2, Lapp/ac;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 725
    :goto_0
    return-void

    .line 718
    :cond_0
    sput-wide v0, Lapp/ac;->c:J

    .line 719
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 720
    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const-string v1, "KEY_TYPE"

    const/16 v2, 0x272b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    const-string v1, "EXTRA_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 723
    const-string v1, "EXTRA_OPERA"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 724
    invoke-static {}, Lapp/App;->a()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lapp/App;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static p(I)V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lapp/ac;->f(II)V

    .line 289
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lapp/ac;->f(II)V

    .line 290
    return-void
.end method
