import 'package:flutter/material.dart';

class LinuxHome extends StatefulWidget {
  const LinuxHome({super.key});

  @override
  State<LinuxHome> createState() => _LinuxHomeState();
}

class _LinuxHomeState extends State<LinuxHome> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [Text('I Am linux, wow its working')],
        ),
      ),
    );
  }
}
