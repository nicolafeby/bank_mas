part of '../injector.dart';

class DataSourceInjector {
  static Future<void> configureDataSourceInjector() async {
    sl.registerLazySingleton<MenuAndArticleRemoteDataSource>(
        () => MenuAndArticleRemoteDataSourceImpl(apiService: sl()));
  }
}
