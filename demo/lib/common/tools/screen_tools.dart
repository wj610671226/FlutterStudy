import 'dart:ui';

import 'debug_tools.dart';

class ScreenFitTool {
  static double? screenWidth;
  static double? screenHeight;
  static double? rpx;
  static double? px;
  static double? bottomPadding;
  static double? topPadding;

  static void initialize({double standardWidth = 750}) {
    final physicalWidth = window.physicalSize.width;
    final physicalHeight = window.physicalSize.height;
    final dpr = window.devicePixelRatio;
    bottomPadding = window.padding.bottom / dpr;
    topPadding = window.padding.top / dpr;
    DebugTools.print("bottomPadding = $bottomPadding");
    DebugTools.print('debug: $topPadding');
    screenWidth = physicalWidth / dpr;
    screenHeight = physicalHeight / dpr;
    rpx = screenWidth! / standardWidth;
    px = screenWidth! / standardWidth * 2;
  }

  // 按照像素来设置
  static double setPx(double size) {
    return ScreenFitTool.px! * size;
  }

  // 按照rpx来设置
  static double setRpx(double size) {
    return ScreenFitTool.rpx! * size;
  }
}

extension DoubleFit on double {
  double get px {
    return ScreenFitTool.setPx(this);
  }

  double get rpx {
    return ScreenFitTool.setRpx(this);
  }
}

extension IntFit on int {
  double get px {
    return ScreenFitTool.setPx(toDouble());
  }

  double get rpx {
    return ScreenFitTool.setRpx(toDouble());
  }
}