import 'package:flutter/material.dart';
import 'package:study_demo/common/widgets/common_webview.dart';
import 'package:study_demo/page/kitchen/page/kitchen_detail_page.dart';
import 'package:study_demo/page/kitchen/page/search_page.dart';
import 'package:study_demo/page/kitchen/page/upload_page.dart';
import 'package:study_demo/page/login/login_page.dart';
import 'package:study_demo/page/main/main_page.dart';
import 'package:study_demo/page/mine/mine_page.dart';
import 'package:study_demo/page/setting/setting_page.dart';
import '../page/bazaar/bazaar_page.dart';

class RouterConfig {

  static const BazaarPageRouteName = "/bazaar";
  static const LoginPageRouteName = "/login";
  static const MainPageRouteName = "/main";
  static const MinePageRouteName = "/mine";
  static const CommonWebViewPageRouteName = "/webview";
  static const SearchPageRouteName = "/search";
  static const UploadPageRouteName = "/upload";
  static const KitchenDetailPageRouteName = "/detail";
  static const SettingPageRouteName = "/setting";

  static final Map<String, WidgetBuilder> routesMap = {
    RouterConfig.MainPageRouteName: (context) => MainPage(),
    RouterConfig.BazaarPageRouteName: (context) => BazaarPage(),
    RouterConfig.SettingPageRouteName: (context) => SettingPage(),
    RouterConfig.MinePageRouteName: (context) => MinePage(),
    RouterConfig.SearchPageRouteName: (context) => SearchPage(),
    RouterConfig.UploadPageRouteName: (context) => UploadPage(),
  };

  static final RouteFactory onGenerateRoute = (RouteSettings settings) {
    final Map<String, dynamic> arguments = settings.arguments;
    print("setting.arguments = ${settings.arguments}");
    if (settings.name == RouterConfig.CommonWebViewPageRouteName) {
      return MaterialPageRoute(builder: (context) {
        return CommonWebView(
          urlString: arguments["url"],
          title: arguments["title"] == null ? "" : arguments["title"],
        );
      });
    } else if (settings.name == RouterConfig.LoginPageRouteName) {
      return MaterialPageRoute(builder: (context) {
        return arguments["title"] == null ? LoginPage(
          isShowAppBar: arguments["isShowAppBar"],
          loginSuccessPop: arguments["loginSuccessPop"],
        ): LoginPage(
          isShowAppBar: arguments["isShowAppBar"],
          title: arguments["title"],
          loginSuccessPop: arguments["loginSuccessPop"],
        );
      });
    }
    return null;
  };
}