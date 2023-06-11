import 'package:get_it/get_it.dart';
import 'package:ztu/common/di/modules/moduel.dart';

GetIt getIt = GetIt.instance;

class Injection {
  static Future<void> inject() async {
    await BlocModule().provides();
    await ComponentsModule().provides();
    await RepositoryModule().provides();
    await CommonModule().provides();
  }
}
