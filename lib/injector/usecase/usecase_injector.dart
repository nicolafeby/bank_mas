part of '../injector.dart';

class UsecaseInjector {
  static Future<void> configureUsecaseInjector() async {
    sl.registerLazySingleton(() => MenuAndArticleUsecase(repository: sl()));
  }
}
