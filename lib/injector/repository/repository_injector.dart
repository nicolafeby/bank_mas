part of '../injector.dart';

class RepositoryInjector {
  static Future<void> configureRepositoryInjector() async {
    sl.registerLazySingleton<MenuAndArticleRepository>(
        () => MenuAndArticleRepositoryImpl(remoteDataSource: sl()));
  }
}
