import 'package:ztu/blocs/auth/auth_bloc.dart';
import 'package:ztu/common/di/injection/injection.dart';
import 'package:ztu/repositories/auth/auth_repository.dart';
import 'package:ztu/repositories/user/user_repository.dart';
import '../../base/di_module.dart';

class BlocModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt.registerLazySingleton(
      () => AuthBloc(
        authRepository: getIt.get<AuthRepository>(),
        userRepository: getIt.get<UserRepository>(),
      ),
    );
  }
}
