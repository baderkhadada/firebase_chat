import 'package:flutter_application_1/app/moudules/auth/domain/provider/controler/auth_controller.dart';
import 'package:flutter_application_1/app/moudules/auth/domain/provider/controler/test_form_provider.dart';
import 'package:flutter_application_1/app/moudules/auth/domain/provider/state/auth_state.dart';
import 'package:flutter_application_1/app/moudules/auth/domain/repo/auth_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

final authFormController =
    ChangeNotifierProvider((ref) => MyAuthFormController());

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(FirebaseAuth.instance);
});

final authStateProvider = StreamProvider<User?>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  ref.read(authControllerProvider);
  return authRepository.authStateChanges;
});

final authControllerProvider = StateNotifierProvider<AuthController, AuthState>(
  (ref) {
    return AuthController(
      AuthState(),
      ref.watch(authRepositoryProvider),
    );
  },
);

final checkIfAuthinticated =
    FutureProvider((ref) => ref.watch(authStateProvider));
