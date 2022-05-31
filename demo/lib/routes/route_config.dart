import 'package:demo/common/tools/debug_tools.dart';
import 'package:flutter/material.dart';
import 'package:demo/common/widgets/common_webview.dart';
import 'package:demo/page/kitchen/page/search_page.dart';
import 'package:demo/page/kitchen/page/upload_page.dart';
import 'package:demo/page/login/login_page.dart';
import 'package:demo/page/main/main_page.dart';
import 'package:demo/page/mine/mine_page.dart';
import 'package:demo/page/setting/setting_page.dart';
import '../page/bazaar/bazaar_page.dart';

class RouterConfig {
  static const bazaarPageRouteName = "/bazaar";
  static const loginPageRouteName = "/login";
  static const mainPageRouteName = "/main";
  static const minePageRouteName = "/mine";
  static const commonWebViewPageRouteName = "/webview";
  static const searchPageRouteName = "/search";
  static const uploadPageRouteName = "/upload";
  static const kitchenDetailPageRouteName = "/detail";
  static const settingPageRouteName = "/setting";

  static final Map<String, WidgetBuilder> routesMap = {
    RouterConfig.mainPageRouteName: (context) => const MainPage(),
    RouterConfig.bazaarPageRouteName: (context) => const BazaarPage(),
    RouterConfig.minePageRouteName: (context) => const MinePage(),
    RouterConfig.settingPageRouteName: (context) => const SettingPage(),
    RouterConfig.searchPageRouteName: (context) => const SearchPage(),
    RouterConfig.uploadPageRouteName: (context) => UploadPage(),
  };

  // static final RouteFactory onGenerateRoute = (RouteSettings settings) {
  //   final Map<String, dynamic> arguments = settings.arguments;
  //   print("setting.arguments = ${settings.arguments}");
  //   if (settings.name == RouterConfig.commonWebViewPageRouteName) {
  //     return MaterialPageRoute(builder: (context) {
  //       return CommonWebView(
  //         urlString: arguments["url"],
  //         title: arguments["title"] == null ? "" : arguments["title"],
  //       );
  //     });
  //   } else if (settings.name == RouterConfig.loginPageRouteName) {
  //     return MaterialPageRoute(builder: (context) {
  //       return arguments["title"] == null
  //           ? LoginPage(
  //               isShowAppBar: arguments["isShowAppBar"],
  //               loginSuccessPop: arguments["loginSuccessPop"],
  //             )
  //           : LoginPage(
  //               isShowAppBar: arguments["isShowAppBar"],
  //               title: arguments["title"],
  //               loginSuccessPop: arguments["loginSuccessPop"],
  //             );
  //     });
  //   }
  //   return null;
  // };

  static MaterialPageRoute? onGenerateRoute(RouteSettings settings) {
    if (settings.name == "null" || settings.name == '/') {
      return null;
    }

    debugPrint("name = ${settings.name}");
    debugPrint("name = ${settings.arguments}");

    final Map<String, dynamic> arguments = settings.arguments as Map<String, dynamic>;
    if (settings.name == RouterConfig.commonWebViewPageRouteName) {
      return MaterialPageRoute(builder: (context) {
        return CommonWebView(
          urlString: arguments["url"],
          title: arguments["title"] ?? "",
        );
      });
    } else if (settings.name == RouterConfig.loginPageRouteName) {
      return MaterialPageRoute(builder: (context) {
        return arguments["title"] == null
            ? LoginPage(
          isShowAppBar: arguments["isShowAppBar"],
          loginSuccessPop: arguments["loginSuccessPop"],
        )
            : LoginPage(
          isShowAppBar: arguments["isShowAppBar"],
          title: arguments["title"],
          loginSuccessPop: arguments["loginSuccessPop"],
        );
      });
    }
    return null;
  }
}
