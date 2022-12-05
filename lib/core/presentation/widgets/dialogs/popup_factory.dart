part of popup_dialog.dart;

class PopupDialog extends _$PopupDialog {
  static Color get _errorColor => Utils.foldTheme(light: () => Palette.errorRedDark, dark: () => Palette.errorRedLight);

  PopupDialog.success({
    String? title,
    Widget? titleWidget,
    String? message,
    Widget? messageWidget,
    Duration? duration,
    bool? autoDismiss,
    TextStyle? titleStyle,
    TextStyle? messageStyle,
    bool? show,
    void Function(dynamic)? onTap,
    PopupDialogStyle? alertStyle,
    PopupDialogPosition? position,
    bool? callbackOnRender,
    void Function(dynamic)? callback,
    void Function(PopupDialogStatus?)? listener,
  }) : super(
          type: _PopupDialogType.flushbar,
          title: title,
          titleWidget: titleWidget,
          message: message,
          show: show,
          messageWidget: messageWidget,
          popupIcon: Icon(
            Utils.isPlatform(
              material: Icons.check_circle,
              cupertino: CupertinoIcons.check_mark_circled,
            ),
            color: Palette.successGreen,
          ),
          duration: duration,
          isDismissible: true,
          autoDismiss: autoDismiss,
          blockBackgroundTouch: true,
          titleStyle: titleStyle,
          messageStyle: messageStyle,
          shouldIconPulse: false,
          onTap: onTap,
          overlayColor: Palette.surface,
          overlayOpacity: 0.4,
          alertStyle: alertStyle,
          position: position,
          flushbarListener: listener,
          dismissDirection: PopupDialogDismissDirection.vertical,
          leftBarIndicatorColor: Palette.successGreen,
          callbackOnRender: callbackOnRender,
          callback: callback,
        );

  PopupDialog.info({
    String? title,
    String? message,
    Duration? duration,
    TextStyle? titleStyle,
    TextStyle? messageStyle,
    bool? show,
    Widget? button,
    PopupDialogPosition? position,
    bool? callbackOnRender,
    void Function(dynamic)? callback,
    void Function(PopupDialogStatus?)? listener,
  }) : super(
          type: _PopupDialogType.flushbar,
          title: title,
          show: show,
          message: message,
          popupIcon: Icon(
            Utils.isPlatform(
              material: Icons.info,
              cupertino: CupertinoIcons.info_circle_fill,
            ),
            color: Palette.infoBlue,
          ),
          duration: duration ?? const Duration(seconds: 1, milliseconds: 500),
          isDismissible: true,
          autoDismiss: true,
          blockBackgroundTouch: false,
          titleStyle: titleStyle,
          messageStyle: messageStyle,
          shouldIconPulse: false,
          position: position,
          mainButton: button,
          flushbarListener: listener,
          dismissDirection: PopupDialogDismissDirection.vertical,
          leftBarIndicatorColor: Palette.infoBlue,
          callbackOnRender: callbackOnRender,
          callback: callback,
        );

  PopupDialog.error({
    String? title,
    Widget? titleWidget,
    String? message,
    Widget? messageWidget,
    Duration duration = const Duration(seconds: 8),
    bool? isDismissible,
    bool? autoDismiss,
    TextStyle? titleStyle,
    TextStyle? messageStyle,
    bool? show,
    void Function(dynamic)? onTap,
    PopupDialogStyle? alertStyle,
    PopupDialogPosition? position,
    PopupDialogDismissDirection? dismissDirection,
    bool? callbackOnRender,
    void Function(dynamic)? callback,
    void Function(PopupDialogStatus?)? listener,
  }) : super(
          type: _PopupDialogType.flushbar,
          title: title,
          show: show,
          titleWidget: titleWidget,
          message: message,
          messageWidget: messageWidget,
          popupIcon: Icon(
            Utils.isPlatform(
              material: Icons.error,
              cupertino: CupertinoIcons.exclamationmark_triangle_fill,
            ),
            color: _errorColor,
          ),
          duration: duration,
          isDismissible: isDismissible,
          autoDismiss: autoDismiss,
          blockBackgroundTouch: false,
          titleStyle: titleStyle,
          messageStyle: messageStyle,
          shouldIconPulse: true,
          onTap: onTap,
          alertStyle: alertStyle,
          position: position,
          flushbarListener: listener,
          dismissDirection: dismissDirection,
          leftBarIndicatorColor: _errorColor,
          callbackOnRender: callbackOnRender,
          callback: callback,
        );

  PopupDialog.confirmation({
    String? title,
    required String description,
    Icon? popupIcon,
    Color? popupIconColor,
    String postiveButtonText = 'OK',
    String negativeButtonText = 'Cancel',
    Color positiveButtonColor = Colors.white,
    Color negativeButtonColor = Colors.white,
    IconData? positiveButtonIcon,
    IconData? negativeButtonIcon,
    required FutureOr<void> Function()? onPositiveButtonPressed,
    FutureOr<void> Function()? onNegativeButtonPressed,
    bool autoDismiss = true,
    bool isDismissible = true,
    bool awaitFuture = false,
    ConfirmationDialogColor bgColor = ConfirmationDialogColor.kdefault,
  }) : super(
          type: _PopupDialogType.confirmation,
          title: title,
          message: description,
          popupIcon: popupIcon,
          popupIconColor: popupIconColor,
          postiveButtonText: postiveButtonText,
          negativeButtonText: negativeButtonText,
          positiveButtonColor: positiveButtonColor,
          negativeButtonColor: negativeButtonColor,
          positiveButtonIcon: positiveButtonIcon,
          negativeButtonIcon: negativeButtonIcon,
          onPositiveButtonPressed: onPositiveButtonPressed,
          onNegativeButtonPressed: onNegativeButtonPressed,
          autoDismiss: autoDismiss,
          colorScheme: bgColor,
        );
}
