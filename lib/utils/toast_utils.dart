import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

void showCustomToast(BuildContext context, String message) {
  showToast(
    message,
    context: context,
    animation: StyledToastAnimation.slideFromLeft,
    position: StyledToastPosition.top,
    duration: const Duration(seconds: 10),
  );
}
