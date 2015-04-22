.class public Lcom/xiaomi/miclick/activity/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[I

.field private static final d:[I


# instance fields
.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/ImageButton;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/ImageButton;

.field private v:Landroid/widget/TextView;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 43
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "http://m.baidu.com"

    aput-object v1, v0, v3

    const-string v1, "http://google.pl"

    aput-object v1, v0, v4

    const-string v1, "http://wap.iciba.com"

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/miclick/activity/SearchActivity;->a:[Ljava/lang/String;

    .line 44
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "/s?word="

    aput-object v1, v0, v3

    const-string v1, "/#safe=off&q="

    aput-object v1, v0, v4

    const-string v1, "/cword/"

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/miclick/activity/SearchActivity;->b:[Ljava/lang/String;

    .line 45
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/miclick/activity/SearchActivity;->c:[I

    .line 46
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/miclick/activity/SearchActivity;->d:[I

    return-void

    .line 45
    nop

    :array_0
    .array-data 4
        0x7f02011d
        0x7f02011f
        0x7f02011e
    .end array-data

    .line 46
    :array_1
    .array-data 4
        0x7f0c00e1
        0x7f0c00e2
        0x7f0c00e3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->j:I

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->k:I

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->l:I

    .line 57
    iput-boolean v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->m:Z

    .line 58
    iput-boolean v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->n:Z

    .line 69
    iput v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->w:I

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miclick/activity/SearchActivity;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->w:I

    return v0
.end method

.method static synthetic a(Lcom/xiaomi/miclick/activity/SearchActivity;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->w:I

    return p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 196
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/xiaomi/miclick/activity/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 199
    sget-object v0, Lcom/xiaomi/miclick/activity/SearchActivity;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->j:I

    aget-object v0, v0, v1

    .line 201
    iget-object v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/miclick/activity/SearchActivity;->b:[Ljava/lang/String;

    iget v3, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->j:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 206
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 207
    invoke-virtual {p0}, Lcom/xiaomi/miclick/activity/SearchActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0, v1}, Lcom/xiaomi/miclick/activity/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/miclick/activity/SearchActivity;->finish()V

    .line 213
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 382
    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 383
    new-instance v1, Lcom/xiaomi/miclick/activity/aj;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/miclick/activity/aj;-><init>(Lcom/xiaomi/miclick/activity/SearchActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 406
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 407
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 225
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 226
    new-instance v1, Lcom/xiaomi/miclick/activity/ad;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/miclick/activity/ad;-><init>(Lcom/xiaomi/miclick/activity/SearchActivity;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 302
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 303
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/miclick/activity/SearchActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->p:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/miclick/activity/SearchActivity;->a(Landroid/view/View;Landroid/view/View;)V

    .line 375
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->s:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->t:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/miclick/activity/SearchActivity;->a(Landroid/view/View;Landroid/view/View;)V

    .line 377
    invoke-direct {p0}, Lcom/xiaomi/miclick/activity/SearchActivity;->e()V

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->n:Z

    .line 379
    return-void
.end method

.method private b(Landroid/view/View;Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 306
    const/high16 v0, 0x7f050000

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 307
    new-instance v1, Lcom/xiaomi/miclick/activity/ag;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/miclick/activity/ag;-><init>(Lcom/xiaomi/miclick/activity/SearchActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 322
    new-instance v1, Lcom/xiaomi/miclick/activity/ah;

    invoke-direct {v1, p0, p3, p1}, Lcom/xiaomi/miclick/activity/ah;-><init>(Lcom/xiaomi/miclick/activity/SearchActivity;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 370
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 371
    return-void
.end method

.method static synthetic c(Lcom/xiaomi/miclick/activity/SearchActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 410
    iget-boolean v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->m:Z

    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 414
    :cond_0
    iget v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->j:I

    packed-switch v0, :pswitch_data_0

    .line 429
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->q:Landroid/widget/ImageButton;

    sget-object v1, Lcom/xiaomi/miclick/activity/SearchActivity;->c:[I

    iget v2, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->k:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 430
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->r:Landroid/widget/TextView;

    sget-object v1, Lcom/xiaomi/miclick/activity/SearchActivity;->d:[I

    iget v2, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->k:I

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/xiaomi/miclick/activity/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->u:Landroid/widget/ImageButton;

    sget-object v1, Lcom/xiaomi/miclick/activity/SearchActivity;->c:[I

    iget v2, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->l:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 432
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->v:Landroid/widget/TextView;

    sget-object v1, Lcom/xiaomi/miclick/activity/SearchActivity;->d:[I

    iget v2, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->l:I

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/xiaomi/miclick/activity/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iput-boolean v3, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->m:Z

    goto :goto_0

    .line 416
    :pswitch_0
    iput v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->k:I

    .line 417
    iput v2, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->l:I

    goto :goto_1

    .line 420
    :pswitch_1
    iput v3, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->k:I

    .line 421
    iput v2, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->l:I

    goto :goto_1

    .line 424
    :pswitch_2
    iput v3, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->k:I

    .line 425
    iput v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->l:I

    goto :goto_1

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/xiaomi/miclick/activity/SearchActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->n:Z

    if-nez v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/xiaomi/miclick/activity/SearchActivity;->c()V

    .line 439
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->p:Landroid/view/View;

    const v2, 0x7f040003

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/miclick/activity/SearchActivity;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 440
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->s:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->t:Landroid/view/View;

    const v2, 0x7f040004

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/miclick/activity/SearchActivity;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->n:Z

    .line 447
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->p:Landroid/view/View;

    const v2, 0x7f040006

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/miclick/activity/SearchActivity;->b(Landroid/view/View;Landroid/view/View;I)V

    .line 444
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->s:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->t:Landroid/view/View;

    const v2, 0x7f040007

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/miclick/activity/SearchActivity;->b(Landroid/view/View;Landroid/view/View;I)V

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->n:Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/xiaomi/miclick/activity/SearchActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->m:Z

    .line 451
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->f:Landroid/widget/ImageButton;

    sget-object v1, Lcom/xiaomi/miclick/activity/SearchActivity;->c:[I

    iget v2, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->j:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 452
    invoke-direct {p0}, Lcom/xiaomi/miclick/activity/SearchActivity;->c()V

    .line 453
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->e:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/xiaomi/miclick/activity/SearchActivity;->finish()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->i:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 171
    invoke-direct {p0}, Lcom/xiaomi/miclick/activity/SearchActivity;->a()V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->h:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 173
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/xiaomi/miclick/activity/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 175
    invoke-virtual {p0}, Lcom/xiaomi/miclick/activity/SearchActivity;->finish()V

    goto :goto_0

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->f:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    .line 177
    invoke-direct {p0}, Lcom/xiaomi/miclick/activity/SearchActivity;->d()V

    goto :goto_0

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->o:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 179
    iget v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->k:I

    iput v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->j:I

    .line 180
    invoke-direct {p0}, Lcom/xiaomi/miclick/activity/SearchActivity;->b()V

    goto :goto_0

    .line 181
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->s:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 182
    iget v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->l:I

    iput v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->j:I

    .line 183
    invoke-direct {p0}, Lcom/xiaomi/miclick/activity/SearchActivity;->b()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0b00a2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/xiaomi/miclick/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "search_type"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->j:I

    .line 76
    iget v2, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->j:I

    if-ne v2, v0, :cond_2

    .line 77
    iput v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->k:I

    move v1, v0

    .line 84
    :cond_0
    :goto_0
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/xiaomi/miclick/activity/SearchActivity;->setContentView(I)V

    .line 86
    invoke-virtual {p0, v4}, Lcom/xiaomi/miclick/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->e:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/miclick/activity/ab;

    invoke-direct {v2, p0}, Lcom/xiaomi/miclick/activity/ab;-><init>(Lcom/xiaomi/miclick/activity/SearchActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 106
    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Lcom/xiaomi/miclick/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->f:Landroid/widget/ImageButton;

    .line 107
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f0b00a5

    invoke-virtual {p0, v0}, Lcom/xiaomi/miclick/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->g:Landroid/widget/EditText;

    .line 110
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 111
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->g:Landroid/widget/EditText;

    new-instance v2, Lcom/xiaomi/miclick/activity/ac;

    invoke-direct {v2, p0}, Lcom/xiaomi/miclick/activity/ac;-><init>(Lcom/xiaomi/miclick/activity/SearchActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    const v0, 0x7f0b00a6

    invoke-virtual {p0, v0}, Lcom/xiaomi/miclick/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->h:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v0, 0x7f0b00a7

    invoke-virtual {p0, v0}, Lcom/xiaomi/miclick/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->i:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p0, v4}, Lcom/xiaomi/miclick/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 149
    const v0, 0x7f0b00ad

    invoke-virtual {p0, v0}, Lcom/xiaomi/miclick/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->o:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->o:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Lcom/xiaomi/miclick/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->p:Landroid/view/View;

    .line 152
    const v0, 0x7f0b00b0

    invoke-virtual {p0, v0}, Lcom/xiaomi/miclick/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->q:Landroid/widget/ImageButton;

    .line 153
    const v0, 0x7f0b00af

    invoke-virtual {p0, v0}, Lcom/xiaomi/miclick/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->r:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0b00a9

    invoke-virtual {p0, v0}, Lcom/xiaomi/miclick/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->s:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->s:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v0, 0x7f0b00aa

    invoke-virtual {p0, v0}, Lcom/xiaomi/miclick/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->t:Landroid/view/View;

    .line 158
    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lcom/xiaomi/miclick/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->u:Landroid/widget/ImageButton;

    .line 159
    const v0, 0x7f0b00ab

    invoke-virtual {p0, v0}, Lcom/xiaomi/miclick/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->v:Landroid/widget/TextView;

    .line 161
    if-eqz v1, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/xiaomi/miclick/activity/SearchActivity;->e()V

    .line 164
    :cond_1
    return-void

    .line 78
    :cond_2
    iget v2, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->j:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 79
    iput v1, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->k:I

    .line 80
    iput v0, p0, Lcom/xiaomi/miclick/activity/SearchActivity;->l:I

    move v1, v0

    goto/16 :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/xiaomi/miclick/activity/SearchActivity;->a()V

    .line 219
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/xiaomi/miclick/activity/SearchActivity;->finish()V

    .line 192
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 461
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 462
    invoke-static {}, Lcom/xiaomi/miclick/util/bf;->a()V

    .line 463
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 457
    const-string v0, "search_page"

    invoke-static {p0, v0}, Lcom/xiaomi/miclick/util/bf;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 458
    return-void
.end method
