import 'package:get/get.dart' hide Trans;
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:petya_fox_fit/core/utils/stream_subscriber.dart';
import 'package:petya_fox_fit/data/repository/local/local_repository.dart';
import 'package:petya_fox_fit/data/storage/hive/src/auth_status_storage.dart';
import 'package:petya_fox_fit/ui/router/routing.dart';
// import 'package:petya_fox_fit/ui/shared/alert.dart';
// import 'package:petya_fox_fit/ui/shared/constants/app_colors.dart';

class SplashScreenService extends GetxService with StreamSubscriberMixin {
  SplashScreenService({
    /// ///// ЭТОТ  БОЛЬШЕ НЕ НУЖНО потому что локальный репозиторий реализован иначе
    LocalRepository? repoLocal,
  }) : _repoLocal = repoLocal ?? GetIt.I.get();

  /// ///// ЭТОТ  БОЛЬШЕ НЕ НУЖНО потому что локальный репозиторий реализован иначе
  // ignore: unused_field
  final LocalRepository _repoLocal;

  Future start() async {
    /// создаю и  в хранилище булевую переменную авторизован ли юзер
    final authStatusBox = await Hive.openBox<AuthStatus>('authStatusBox');
    final authStatus = authStatusBox.get('status',
        defaultValue: AuthStatus(isAuthenticated: false));

    if (authStatus?.isAuthenticated == true) {
      // пользователь авторизован, перейти на основной экран
      // Get.offAllNamed(AppRoutes.start);
    } else {
      // пользователь не авторизован, перейдите на экран авторизации
      Get.offAllNamed(AppRoutes.authWelcome);
    }
  }

  @override
  Future onReady() async {
    super.onReady();
  }
}
