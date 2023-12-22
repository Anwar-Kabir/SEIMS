import 'package:flutter/material.dart';
import 'package:frontend/src/android_ui/android_home.dart';
import 'dart:io' show Platform;
import 'package:frontend/src/ios_ui/ios_home.dart';
import 'package:frontend/src/linux_ui/linux_home.dart';
import 'package:frontend/src/web_ui/web_home.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget homeWidget;

    if (kIsWeb) {
      homeWidget = const SEIMSWeb();
    } else if (Platform.isAndroid) {
      homeWidget = const AndroidHome();
    } else if (Platform.isIOS) {
      homeWidget = const IOSHome();
    } else if (Platform.isLinux) {
      homeWidget = const LinuxHome();
    } 
    // else if (Platform.isFuchsia) {
    //   // Add handling for Fuchsia if needed
    //   homeWidget = const AndroidHome();
    // } 
    //else if (Platform.isMacOS) {
    //   // Add handling for MacOS if needed
    //   homeWidget = const AndroidHome();
    // } else if (Platform.isWindows) {
    //   // Add handling for Windows if needed
    //   homeWidget = const AndroidHome();
    // } 
    else {
      homeWidget = const AndroidHome();
    }

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: homeWidget,
    );
  }
}

