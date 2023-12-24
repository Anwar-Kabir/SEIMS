import 'package:flutter/material.dart';

class Android2nd extends StatefulWidget {
  const Android2nd({super.key});

  @override
  State<Android2nd> createState() => _Android2ndState();
}

class _Android2ndState extends State<Android2nd> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(child:   Scaffold(
      body: Text('2nd'),
    ));
  }
}