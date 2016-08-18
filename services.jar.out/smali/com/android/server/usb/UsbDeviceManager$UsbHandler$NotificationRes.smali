.class public Lcom/android/server/usb/UsbDeviceManager$UsbHandler$NotificationRes;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationRes"
.end annotation


# instance fields
.field public mMessageId:I

.field public mTitleId:I

.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V
    .locals 1
    .parameter
    .parameter "titleId"
    .parameter "messageId"

    .prologue
    const/4 v0, 0x0

    .line 1080
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$NotificationRes;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1078
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$NotificationRes;->mTitleId:I

    .line 1079
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$NotificationRes;->mMessageId:I

    .line 1081
    iput p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$NotificationRes;->mTitleId:I

    .line 1082
    iput p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$NotificationRes;->mMessageId:I

    .line 1083
    return-void
.end method
