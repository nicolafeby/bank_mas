import 'package:flutter/material.dart';
import 'package:bank_mas/core/router/router.dart' as router;
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'injector/injector.dart' as dl;

void main() async {
  await dl.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            color: Color(0xff3f51b5),
          ),
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: router.Router().generateAppRoutes,
      ),
    );
  }
}
