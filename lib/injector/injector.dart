

import 'package:bank_mas/data/datasources/menu_and_article_remote_datasource.dart';
import 'package:bank_mas/data/repositories/menu_and_article_repository_impl.dart';
import 'package:bank_mas/domain/repositories/menu_and_article_repository.dart';
import 'package:bank_mas/domain/usecases/menu_and_article_usecase.dart';
import 'package:bank_mas/presentation/home/bloc/menu_and_article_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:bank_mas/core/network/api_service.dart';

part 'bloc/bloc_injector.dart';
part 'datasource/datasource_injector.dart';
part 'common/common_injector.dart';
part 'repository/repository_injector.dart';
part 'usecase/usecase_injector.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await BlocInjector.configureBlocInjector();
  await DataSourceInjector.configureDataSourceInjector();
  await HelperInjector.configureHelperInjector();
  await RepositoryInjector.configureRepositoryInjector();
  await UsecaseInjector.configureUsecaseInjector();
}
