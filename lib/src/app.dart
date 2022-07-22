import 'package:boilerplate/src/helpers/helpers.dart';
import 'package:boilerplate/src/providers/theme_provider.dart';
import 'package:boilerplate/src/theme/theme.dart';
import 'package:boilerplate/src/views/home/home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeChanger(ThemeMode.system),
          lazy: false,
        )
      ],
      builder: (context, child) => child!,
      child: ScreenUtilInit(
        designSize: Size(
          int.parse(getEnv('SCREEN_WIDTH') as String).toDouble(),
          int.parse(getEnv('SCREEN_HEIGHT') as String).toDouble(),
        ),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: getEnv('APP_NAME') as String,
          home: child,
          theme: light.theme,
          darkTheme: dark.theme,
          themeMode: Provider.of<ThemeChanger>(context).mode,
        ),
        child: const HomePage(),
      ),
    );
  }
}
