.class public Lcom/xiaomi/miclick/e/f;
.super Landroid/support/v4/app/Fragment;
.source "MainImageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private P:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 26
    const v0, 0x7f03001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    if-eqz v0, :cond_1

    .line 28
    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 29
    if-eqz v1, :cond_0

    .line 30
    const v2, 0x7f020147

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iput-object v0, p0, Lcom/xiaomi/miclick/e/f;->P:Landroid/view/ViewGroup;

    .line 36
    :cond_1
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 41
    const-string v0, "http://miuipolska.pl"

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const-string v0, "http://miuipolska.pl"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 43
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/xiaomi/miclick/e/f;->a(Landroid/content/Intent;)V

    .line 45
    const-string v0, "banner_click"

    const-string v1, "banner2"

    invoke-static {v0, v1}, Lcom/xiaomi/miclick/util/bf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/xiaomi/miclick/user/UserConfiguration;->getInstance()Lcom/xiaomi/miclick/user/UserConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miclick/e/f;->P:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "banner2"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miclick/user/UserConfiguration;->increaseMiClickCount(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/xiaomi/miclick/user/UserConfiguration;->getInstance()Lcom/xiaomi/miclick/user/UserConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miclick/e/f;->P:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "handbook"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miclick/user/UserConfiguration;->increaseTopBannerClickCount(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method
