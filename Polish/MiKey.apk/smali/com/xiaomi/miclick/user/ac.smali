.class Lcom/xiaomi/miclick/user/ac;
.super Ljava/lang/Object;
.source "TestUser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/miclick/user/ab;


# direct methods
.method constructor <init>(Lcom/xiaomi/miclick/user/ab;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/xiaomi/miclick/user/ac;->a:Lcom/xiaomi/miclick/user/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 58
    const-string v0, "http://miuipolska.pl/forum/topic/3621-mikey-3xx-pl/"

    invoke-static {v0}, Lcom/xiaomi/miclick/util/bh;->a(Ljava/lang/String;)V

    .line 59
    const-string v0, "setting"

    const-class v1, Lcom/xiaomi/miclick/user/TestUser;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/miclick/util/bf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
