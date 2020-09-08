/*
对第三方toast封装
 */
import 'package:bot_toast/bot_toast.dart';

class ToastTool {
  static void showText(String message) {
    BotToast.showText(text: message);
  }
}