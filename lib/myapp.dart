import 'package:butuhuang_app/screens/splash/splash.screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'material_color.dart';
import 'styles/styles.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // locale: DevicePreview.of(context).locale, // <--- /!\ Add the locale
      // builder: DevicePreview.appBuilder, // <--- /!\ Add the builder
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.black),
        primarySwatch: generateMaterialColor(blue),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}