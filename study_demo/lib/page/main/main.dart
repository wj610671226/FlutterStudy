import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:study_demo/common/theme/app_theme.dart';
import 'package:study_demo/common/tools/screen_tools.dart';
import 'package:study_demo/generated/l10n.dart';
import 'package:study_demo/provider/collect_notifier.dart';
import 'package:study_demo/provider/login_change_notifier.dart';
import 'package:study_demo/provider/theme_notifier.dart';

import '../../routes/route_config.dart';

//void main() => runApp(
//  ChangeNotifierProvider(
//    create: (context) => LoginChangeNotifier(),
//    child: MyApp(),
//  )
//);

void main() => runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginChangeNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => CollectChangeNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeChangeNotifier(),
        )
      ],
      child: MyApp(),
    )
);


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenFitTool.initialize();
    return Consumer<ThemeChangeNotifier>(
      builder: ((BuildContext context, ThemeChangeNotifier theme, Widget child) {
        return MaterialApp(
          initialRoute: RouterConfig.MainPageRouteName,
          routes: RouterConfig.routesMap,
          onGenerateRoute: RouterConfig.onGenerateRoute,
          theme: theme.themeModel.themeData,
//      darkTheme: MyAppTheme.darkTheme,
          builder: BotToastInit(),
          navigatorObservers: [BotToastNavigatorObserver()],
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            S.delegate
          ],
          supportedLocales: S.delegate.supportedLocales,
        );
      }),
    );
  }
}
