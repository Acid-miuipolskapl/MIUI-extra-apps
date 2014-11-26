.class Lcom/xiaomi/miclick/core/action/ae;
.super Ljava/lang/Object;
.source "OpenAppAction.java"

# interfaces
.implements Lcom/xiaomi/miclick/core/i;


# instance fields
.field final synthetic a:Lcom/xiaomi/miclick/core/action/OpenAppAction;


# direct methods
.method constructor <init>(Lcom/xiaomi/miclick/core/action/OpenAppAction;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/xiaomi/miclick/core/action/ae;->a:Lcom/xiaomi/miclick/core/action/OpenAppAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 116
    new-instance v0, Lcom/xiaomi/miclick/a/b;

    iget-object v1, p0, Lcom/xiaomi/miclick/core/action/ae;->a:Lcom/xiaomi/miclick/core/action/OpenAppAction;

    invoke-virtual {v1}, Lcom/xiaomi/miclick/core/action/OpenAppAction;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030009

    iget-object v3, p0, Lcom/xiaomi/miclick/core/action/ae;->a:Lcom/xiaomi/miclick/core/action/OpenAppAction;

    invoke-virtual {v3}, Lcom/xiaomi/miclick/core/action/OpenAppAction;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/xiaomi/miclick/util/bh;->a(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/miclick/a/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "Wybierz aplikacj\u0119: "

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public a(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 133
    check-cast p1, Lcom/xiaomi/miclick/util/al;

    invoke-virtual {p1}, Lcom/xiaomi/miclick/util/al;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 134
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miclick/util/bi;

    .line 135
    iget-object v0, v0, Lcom/xiaomi/miclick/util/bi;->d:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/xiaomi/miclick/core/action/ae;->a:Lcom/xiaomi/miclick/core/action/OpenAppAction;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/xiaomi/miclick/core/action/OpenAppAction;->a([Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method
