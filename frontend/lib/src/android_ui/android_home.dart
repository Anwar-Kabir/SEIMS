import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AndroidHome extends StatefulWidget {
  const AndroidHome({super.key});

  @override
  State<AndroidHome> createState() => _AndroidHomeState();
}

class _AndroidHomeState extends State<AndroidHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text('I Am android,, wow'),
            Text(
              AppLocalizations.of(context)?.language ?? 'Default Language',
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () => context.goNamed("page2"),
                child: const Text('go 2nd page'))
          ],
        ),
      ),
    );
  }
}
