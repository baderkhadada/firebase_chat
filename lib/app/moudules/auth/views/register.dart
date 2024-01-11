import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/extentions/bulid_context_extintions.dart';
import 'package:flutter_application_1/app/moudules/auth/domain/provider/auth_providers.dart';
import 'package:flutter_application_1/app/moudules/auth/domain/provider/controler/auth_controller.dart';
import 'package:flutter_application_1/app/moudules/auth/widgets/my_form_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterScreen extends ConsumerWidget {
  RegisterScreen({super.key});

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AuthController = ref.read(authControllerProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 182, 57, 231),
        automaticallyImplyLeading: false,
        title: Text(
          context.translate.register,
          style:
              context.textTheme.headlineMedium?.copyWith(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyFromFields(formkey: formkey),
              SizedBox(height: context.screenHeight * 0.04),
              ElevatedButton(
                  onPressed: () {}, child: Text(context.translate.googleSign)),
              TextButton(
                  onPressed: () {},
                  child: Text(context.translate.register,
                      style: context.textTheme.bodyLarge))
            ],
          ),
        ),
      ),
    );
  }
}
