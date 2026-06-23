.class final Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;
.super Ljava/lang/Object;
.source "IconPackChoiceSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackParseResult"
.end annotation


# instance fields
.field componentDrawable:Ljava/lang/String;

.field final drawableNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field packageDrawable:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;->drawableNames:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$1;)V
    .locals 0

    .line 333
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;-><init>()V

    return-void
.end method
