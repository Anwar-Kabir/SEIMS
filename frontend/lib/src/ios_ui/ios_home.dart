import 'package:flutter/cupertino.dart';

class IOSHome extends StatefulWidget {
  const IOSHome({super.key});

  @override
  State<IOSHome> createState() => _IOSHomeState();
}

class _IOSHomeState extends State<IOSHome> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Column(
        children: [
          Text('I Am IOS')
        ],
      ),);
  }
}
