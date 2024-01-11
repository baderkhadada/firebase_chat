import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/extentions/bulid_context_extintions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Container(
            height: context.screenHeight * 0.3,
            width: MediaQuery.of(context).size.width * 0.3,
            color: Colors.amber,
            child: Center(child: Text("connect"))),
      ),
    );
  }
}
