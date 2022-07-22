import 'package:boilerplate/src/providers/theme_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ThemeMode mode = Provider.of<ThemeChanger>(context).mode;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Sample Flutter Application',
                style: TextStyle(
                  fontSize: 50.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (mode == ThemeMode.light) {
                          mode = ThemeMode.dark;
                          Provider.of<ThemeChanger>(context, listen: false)
                              .setTheme(ThemeMode.dark);
                        } else {
                          mode = ThemeMode.light;
                          Provider.of<ThemeChanger>(context, listen: false)
                              .setTheme(ThemeMode.light);
                        }
                      });
                    },
                    child: Text(
                      'Switch Theme',
                      style: TextStyle(
                        fontSize: 35.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
