import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  /* get theme palate */

  /* show popup status bar */
  Future showStatusBar({
    required String message,
    Duration? duration = const Duration(seconds: 1),
    Function? onPressed,
    Widget? iconWidget,
  }) {
    return Flushbar<void>(
      icon: iconWidget,
      animationDuration: duration ?? const Duration(seconds: 2),
      onTap: (data) => onPressed,
      // titleText: Text(
      //   message,
      //   maxLines: 2,
      // ),
      messageColor: Colors.black,
      message: message,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      borderRadius: BorderRadius.circular(4),
      shouldIconPulse: false,
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      duration: duration ?? const Duration(seconds: 1),
      backgroundColor: Colors.white,
      boxShadows: [
        BoxShadow(
          offset: const Offset(0, 10),
          blurRadius: 50,
          color: Colors.black.withOpacity(0.25),
        )
      ],
    ).show(this);
  }
}
