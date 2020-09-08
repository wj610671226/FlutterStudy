import 'package:flutter/material.dart';

class BasePageState<T extends StatefulWidget> extends State<T> with AutomaticKeepAliveClientMixin {
  // 防止切换tab的时候重新构建
  @override
  bool get wantKeepAlive => true;
}
