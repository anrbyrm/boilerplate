import 'dart:ui';

import 'package:boilerplate/src/theme/styles/base_colors.dart';

class LightColors extends BaseColors {
  @override
  Color get scaffoldBgColor => const Color(0xFFFFFFFF);

  @override
  Color get accent => const Color(0xFF000000);

  @override
  Color get primary => const Color.fromARGB(255, 252, 108, 108);

  @override
  Color get secondary => const Color.fromARGB(255, 140, 0, 255);
}
