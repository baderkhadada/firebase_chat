import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/extentions/bulid_context_extintions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatsScreen extends ConsumerWidget {
  ChatsScreen({super.key});

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 182, 57, 231),
            automaticallyImplyLeading: false,
            title: Text(
              context.translate.register,
              style: context.textTheme.headlineMedium
                  ?.copyWith(color: Colors.white),
            )));
  }
}
