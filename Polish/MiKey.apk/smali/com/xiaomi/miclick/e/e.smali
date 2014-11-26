.class public Lcom/xiaomi/miclick/e/e;
.super Landroid/support/v4/app/Fragment;
.source "MainImageDFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private P:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 28
    const v0, 0x7f03001d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 29
    if-eqz v0, :cond_1

    .line 30
    const v1, 0x7f0a0071

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 31
    if-eqz v1, :cond_0

    .line 32
    const v2, 0x7f020146

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iput-object v0, p0, Lcom/xiaomi/miclick/e/e;->P:Landroid/view/ViewGroup;

    .line 38
    :cond_1
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 43
    const-string v0, "http://forum.android.com.pl/forum.php"

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string v0, "http://forum.android.com.pl/forum.php"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 45
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/xiaomi/miclick/e/e;->a(Landroid/content/Intent;)V

    .line 47
    const-string v0, "banner_click"

    const-string v1, "banner5"

    invoke-static {v0, v1}, Lcom/xiaomi/miclick/util/bf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/xiaomi/miclick/user/UserConfiguration;->getInstance()Lcom/xiaomi/miclick/user/UserConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miclick/e/e;->P:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "banner5"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miclick/user/UserConfiguration;->increaseMiClickCount(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/xiaomi/miclick/user/UserConfiguration;->getInstance()Lcom/xiaomi/miclick/user/UserConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miclick/e/e;->P:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "search"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miclick/user/UserConfiguration;->increaseTopBannerClickCount(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method
