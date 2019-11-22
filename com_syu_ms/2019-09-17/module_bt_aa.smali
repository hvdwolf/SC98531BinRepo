.class Lmodule/bt/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lutil/w;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 594
    if-nez p1, :cond_0

    sget v0, Lmodule/bt/v;->D:I

    if-eqz v0, :cond_0

    .line 595
    sget v0, Lmodule/j/e;->m:I

    if-nez v0, :cond_0

    .line 596
    sget-boolean v0, Lmodule/bt/v;->ad:Z

    if-eqz v0, :cond_0

    .line 597
    sget-boolean v0, Lmodule/bt/v;->ae:Z

    if-nez v0, :cond_0

    .line 598
    const-string v0, "com.syu.bt"

    # DISABLED BY HVDW (prevent BT always on top): invoke-static {v0}, Lutil/z;->a(Ljava/lang/String;)I

    .line 600
    :cond_0
    return-void
.end method
