.class public Lcom/xiaomi/miclick/activity/StartQRScannerActivity;
.super Landroid/app/Activity;
.source "StartQRScannerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 27
    if-nez p3, :cond_0

    .line 36
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*************** odebranie kodu QR barcodeResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "barcodeResult"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " barcodeType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "barcodeType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " barcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "barcode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/miclick/activity/StartQRScannerActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    const-string v1, "hasFromThirdApp"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 18
    const-string v2, "com.miui.barcodescanner"

    const-string v3, "com.miui.barcodescanner.activity.CaptureActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/miclick/activity/StartQRScannerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 22
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 45
    invoke-static {}, Lcom/xiaomi/miclick/util/bf;->a()V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 40
    const-string v0, "start_qr_scanner_page"

    invoke-static {p0, v0}, Lcom/xiaomi/miclick/util/bf;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 41
    return-void
.end method
