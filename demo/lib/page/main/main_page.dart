import 'package:demo/common/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo/common/theme/app_theme_tool.dart';
import 'package:demo/common/tools/Internationalizing_tools.dart';
import 'package:demo/page/bazaar/bazaar_page.dart';
import 'package:demo/page/classroom/classroom_page.dart';
import 'package:demo/page/collect/collect_page.dart';
import 'package:demo/page/kitchen/kitchen_page.dart';
import 'package:demo/page/mine/mine_page.dart';
import 'package:demo/provider/theme_notifier.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

//class _MainPageState extends State<MainPage> {
//
//  int _currentIndex = 0;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: IndexedStack(
//        index: _currentIndex,
//        children: <Widget>[
//          KitchenPage(),
//          BazaarPage(),
//          ClassroomPage(),
//          CollectPage(),
//          MinePage(),
//        ],
//      ),
//      bottomNavigationBar: BottomNavigationBar(
//        items: [
//          BottomNavigationBarItem(icon: Image.asset("assets/images/tab/tabADeselected~iphone.png", width: 25,), activeIcon: Image.asset("assets/images/tab/tabASelected~iphone.png", width: 25,), title: Text("下厨房")),
//          BottomNavigationBarItem(icon: Icon(Icons.collections), activeIcon: Icon(Icons.collections, color: Colors.red,), title: Text("市集")),
//          BottomNavigationBarItem(icon: Icon(Icons.room), activeIcon: Icon(Icons.room, color: Colors.red,), title: Text("课堂")),
//          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), activeIcon: Icon(Icons.favorite_border, color: Colors.red,), title: Text("收藏")),
//          BottomNavigationBarItem(icon: Icon(Icons.my_location), activeIcon: Icon(Icons.my_location, color: Colors.red,), title: Text("我")),
//        ],
//        type: BottomNavigationBarType.fixed,
//        currentIndex: _currentIndex,
//        selectedFontSize: 12.0,
//        selectedItemColor: Colors.red,
//        unselectedItemColor: Colors.black,
//        onTap: ((index) {
//          setState(() {
//            _currentIndex = index;
//          });
//        }),
//      ),
//    );
//  }
//}


class _MainPageState extends State<MainPage> {

  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  final List tabLists = [
    {"selectedImageString": "assets/images/tab/tabASelected~iphone.png", "unSelectedImageString": "assets/images/tab/tabADeselected~iphone.png", "title": "下厨房"},
    {"selectedImageString": "assets/images/tab/tabBSelected~iphone.png", "unSelectedImageString": "assets/images/tab/tabBDeselected~iphone.png", "title": "市集"},
    {"selectedImageString": "assets/images/tab/tabCSelected~iphone.png", "unSelectedImageString": "assets/images/tab/tabCDeselected~iphone.png", "title": "课堂"},
    {"selectedImageString": "assets/images/tab/tabDSelected~iphone.png", "unSelectedImageString": "assets/images/tab/tabDDeselected~iphone.png", "title": "收藏"},
    {"selectedImageString": "assets/images/tab/tabESelected~iphone.png", "unSelectedImageString": "assets/images/tab/tabEDeselected~iphone.png", "title": "我"},
  ];

  @override
  Widget build(BuildContext context) {
    // 初始化
    InternationalizingTool.initialize(context);
    ThemeModelTool.initialize(context);
    BottomNavigationBarThemeCustom bottomNavigationBarTheme = Provider.of<ThemeChangeNotifier>(context).themeModel.bottomNavigationBarTheme;
    return Scaffold(
      body: PageView(
        controller: _pageController,
        // 禁止PageView左右滑动
        physics: const NeverScrollableScrollPhysics(),
        allowImplicitScrolling: true,
        children: const <Widget>[
           KitchenPage(),
           BazaarPage(),
           ClassroomPage(),
           CollectPage(),
           MinePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: tabLists.map((item) {
          return _getBottomItems(item["selectedImageString"], item["unSelectedImageString"], item["title"]);
        }).toList(),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedFontSize: 12.0,
        selectedItemColor: bottomNavigationBarTheme.selectedItemColor,
        unselectedItemColor: bottomNavigationBarTheme.unselectedItemColor,
        backgroundColor: bottomNavigationBarTheme.backgroundColor,
        onTap: ((index) {
          _pageController.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        }),
      ),
    );
  }

  BottomNavigationBarItem _getBottomItems(String selectedImageString, String unSelectedImageString, String title, [double size = 25]) {
    return BottomNavigationBarItem(
        icon: Image.asset(unSelectedImageString, width: size, gaplessPlayback: true,),
        activeIcon: Image.asset(selectedImageString, width: size, gaplessPlayback: true),
        label: title);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}