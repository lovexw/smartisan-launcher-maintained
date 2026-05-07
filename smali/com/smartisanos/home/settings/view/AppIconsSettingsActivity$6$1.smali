.class Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6$1;
.super Ljava/lang/Object;
.source "AppIconsSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;


# direct methods
.method constructor <init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;

    .prologue
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6$1;->this$1:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6$1;->this$1:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;

    iget-object v0, v0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$1500(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6$1;->this$1:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;

    iget-object v0, v0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$100(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
