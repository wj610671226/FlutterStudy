import 'package:flutter/material.dart';
import 'package:demo/generated/l10n.dart';

class InternationalizingTool {
  static BuildContext? _context;
  static S? s;

  static void initialize(BuildContext context) {
    _context = context;
    s = S.of(_context!);
  }
}