import 'package:flutter/material.dart';
import 'package:get/get.dart';

showSnackBar({required String title, required String message}) {
  Get.closeAllSnackbars();
  return Get.snackbar(
    title.tr, // title
    message.tr, // message
    backgroundColor: title.isEmpty || title == 'Warning'
        ? const Color(0xffFFCC00)
        : title == "Success"
            ? Colors.green
            : Colors.red,
    colorText:
        title.isEmpty || title == 'Warning' ? Colors.black : Colors.white,
    icon: Icon(
      title.isEmpty || title == 'Warning'
          ? Icons.warning_amber_outlined
          : title == "Success"
              ? Icons.check_circle
              : Icons.error,
      color: title.isEmpty || title == 'Warning' ? Colors.black : Colors.white,
    ),
    onTap: (_) {},
    shouldIconPulse: true,
    barBlur: 10,
    isDismissible: true,
    duration: const Duration(seconds: 2),
  );
}
