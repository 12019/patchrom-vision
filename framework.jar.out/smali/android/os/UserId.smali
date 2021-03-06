.class public final Landroid/os/UserId;
.super Ljava/lang/Object;
.source "UserId.java"


# static fields
.field public static final MU_ENABLED:Z = true

.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final USER_ALL:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAppId(I)I
    .locals 1
    .parameter "uid"

    .prologue
    .line 106
    const v0, 0x186a0

    rem-int v0, p0, v0

    return v0
.end method

.method public static final getCallingUserId()I
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserId;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static final getUid(II)I
    .locals 2
    .parameter "userId"
    .parameter "appId"

    .prologue
    const v1, 0x186a0

    .line 95
    mul-int v0, p0, v1

    rem-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getUserId(I)I
    .locals 1
    .parameter "uid"

    .prologue
    .line 79
    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method

.method public static isApp(I)Z
    .locals 2
    .parameter "uid"

    .prologue
    const/4 v0, 0x0

    .line 65
    if-lez p0, :cond_0

    .line 66
    invoke-static {p0}, Landroid/os/UserId;->getAppId(I)I

    move-result p0

    .line 67
    const/16 v1, 0x2710

    if-lt p0, v1, :cond_0

    const/16 v1, 0x4e1f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 69
    :cond_0
    return v0
.end method

.method public static final isIsolated(I)Z
    .locals 1
    .parameter "uid"

    .prologue
    .line 60
    invoke-static {p0}, Landroid/os/UserId;->getAppId(I)I

    move-result p0

    .line 61
    const v0, 0x182b8

    if-lt p0, v0, :cond_0

    const v0, 0x1869f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSameApp(II)Z
    .locals 2
    .parameter "uid1"
    .parameter "uid2"

    .prologue
    .line 56
    invoke-static {p0}, Landroid/os/UserId;->getAppId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserId;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSameUser(II)Z
    .locals 2
    .parameter "uid1"
    .parameter "uid2"

    .prologue
    .line 44
    invoke-static {p0}, Landroid/os/UserId;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserId;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final myUserId()I
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserId;->getUserId(I)I

    move-result v0

    return v0
.end method
