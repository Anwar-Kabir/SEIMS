import 'dart:io';
import 'package:frontend/src/android_ui/android_2nd.dart';
import 'package:frontend/src/android_ui/android_home.dart';
import 'package:frontend/src/ios_ui/ios_home.dart';
import 'package:frontend/src/linux_ui/linux_home.dart';
import 'package:frontend/src/web_ui/web_home.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

final router = GoRouter(
  initialLocation: kIsWeb
      ? '/web-home'
      : Platform.isAndroid
          ? '/android-home'
          : Platform.isIOS
              ? '/ios-home'
              : Platform.isLinux
                  ? '/linux-home'
                  : '/android-home',
  routes: [
    GoRoute(
      name: 'android-home',
      path: '/android-home',
      builder: (context, state) => const AndroidHome(),
    ),
    GoRoute(
      name: 'ios-home',
      path: '/ios-home',
      builder: (context, state) => const IOSHome(),
    ),
    GoRoute(
      name: 'web-home',
      path: '/web-home',
      builder: (context, state) => const SEIMSWeb(),
    ),
    GoRoute(
      name: 'linux-home',
      path: '/linux-home',
      builder: (context, state) => const LinuxHome(),
    ),
     GoRoute(
      name: 'page2',
      path: '/page2',
      builder: (context, state) => const Android2nd(),
    ),
  ],
);
