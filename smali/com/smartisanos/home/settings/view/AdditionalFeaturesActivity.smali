.class public Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;
.super Lcom/smartisanos/home/settings/BaseActivity;
.source "AdditionalFeaturesActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mSwipeUpSearchSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mSearchDefaultT9KeyboardSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mSearchContactsSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mTransparentThemeGridLinesSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/smartisanos/home/settings/BaseActivity;-><init>()V

    return-void
.end method

.method private findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;
    .locals 4
    .param p1, "idName"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v1, :cond_null

    check-cast v0, Lcom/smartisanos/home/settings/SettingItemSwitch;

    return-object v0

    :cond_null
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "itemSwitch"    # Lcom/smartisanos/home/settings/SettingItemSwitch;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "state"    # Z

    .prologue
    if-eqz p2, :cond_false

    invoke-virtual {p2}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_false

    invoke-static {p3, p4, p0}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateAndNotice(Ljava/lang/String;ZLandroid/content/Context;)V

    const/4 v0, 0x1

    return v0

    :cond_false
    const/4 v0, 0x0

    return v0
.end method

.method private registerCheckedButton()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_swipe

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_swipe
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mTransparentThemeGridLinesSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_swipe_search

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_swipe_search
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSwipeUpSearchSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_t9

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_t9
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchDefaultT9KeyboardSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_contacts

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_contacts
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchContactsSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_end

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_end
    return-void
.end method

.method private syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "itemSwitch"    # Lcom/smartisanos/home/settings/SettingItemSwitch;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Z

    .prologue
    if-eqz p1, :cond_end

    invoke-static {p2, p3}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setChecked(Z)V

    :cond_end
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->finish()V

    const v0, 0x7f050021

    const v1, 0x7f050024

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/smartisanos/home/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/Utils;->applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V

    invoke-static {p0, v4}, Lcom/smartisanos/launcher/data/Utils;->setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "setting_additional_features"

    const-string v2, "layout"

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->setContentView(I)V

    const v0, 0x7f0f0057

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->setupBackBtnOnTitle(I)V

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getTitleView()Lcom/smartisanos/home/widget/sys/Title;

    move-result-object v0

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonText(I)V

    const-string v0, "item_id_hide_navigation_bar"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v0, "item_id_transparent_theme_grid_lines"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mTransparentThemeGridLinesSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v0, "item_id_swipe_up_search"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSwipeUpSearchSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v0, "item_id_search_default_t9_keyboard"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchDefaultT9KeyboardSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v0, "item_id_search_contacts"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchContactsSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->registerCheckedButton()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "state"    # Z

    .prologue
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "launcher_hide_navigation_bar"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_end

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mTransparentThemeGridLinesSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "transparent_theme_grid_lines_enabled"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_end

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSwipeUpSearchSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "swipe_up_search_enabled"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_end

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchDefaultT9KeyboardSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "search_default_t9_keyboard"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_end

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchContactsSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "search_contacts_enabled"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z

    :cond_end
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "launcher_hide_navigation_bar"

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mTransparentThemeGridLinesSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "transparent_theme_grid_lines_enabled"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSwipeUpSearchSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "swipe_up_search_enabled"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchDefaultT9KeyboardSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "search_default_t9_keyboard"

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchContactsSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "search_contacts_enabled"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V

    return-void
.end method
