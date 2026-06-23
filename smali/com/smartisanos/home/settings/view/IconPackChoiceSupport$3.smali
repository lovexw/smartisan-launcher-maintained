.class Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;
.super Ljava/lang/Object;
.source "IconPackChoiceSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->showAllChooser(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

.field final synthetic val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

.field final synthetic val$packs:Ljava/util/ArrayList;

.field final synthetic val$search:Landroid/widget/EditText;

.field final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/widget/Spinner;Ljava/util/ArrayList;Landroid/widget/EditText;Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$spinner:Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$packs:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$search:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iput-object p5, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 172
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$packs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_2

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$packs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$search:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$search:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v2, v0}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->access$000(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;

    .line 178
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->drawableName:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_3
    goto :goto_1

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

    invoke-virtual {v0, v2}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 181
    return-void

    .line 172
    :cond_5
    :goto_2
    return-void
.end method
