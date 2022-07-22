import 'dart:ui';

import 'package:boilerplate/src/theme/styles/base_colors.dart';

class DarkColors extends BaseColors {
  @override
  Color get scaffoldBgColor => const Color(0xFF000000);

  @override
  Color get accent => const Color(0xFFFFFFFF);

  @override
  Color get primary => const Color.fromARGB(255, 112, 112, 255);

  @override
  Color get secondary => const Color.fromARGB(255, 168, 168, 253);
}
