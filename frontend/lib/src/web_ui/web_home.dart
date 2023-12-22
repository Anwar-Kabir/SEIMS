import 'package:flutter/material.dart';

class SEIMSWeb extends StatefulWidget {
  const SEIMSWeb({super.key});

  @override
  State<SEIMSWeb> createState() => _SEIMSWebState();
}

class _SEIMSWebState extends State<SEIMSWeb> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Text('I Am web, wow')],
      ),
    );
  }
}
