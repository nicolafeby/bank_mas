import 'package:bank_mas/core/models/response/menu_and_article_model.dart';
import 'package:bank_mas/domain/entities/menu_and_article_entitity.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:bank_mas/core/utils/app_constants.dart';

import 'package:ua_client_hints/ua_client_hints.dart';

class ApiService with DioMixin implements Dio {
  @override
  HttpClientAdapter get httpClientAdapter => DefaultHttpClientAdapter();

  @override
  Interceptors get interceptors => Interceptors()
    ..add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      request: true,
      requestHeader: true,
      responseHeader: true,
    ))
    ..add(InterceptorsWrapper(onRequest: (options, handler) async {
      options.headers.addAll(await userAgentClientHintsHeader());
      handler.next(options);
      return;
    }));

  @override
  BaseOptions get options => BaseOptions(
        baseUrl: AppConstant.baseUrl,
        contentType: 'application/json',
      );

  Future<MenuAndArticleEntity> getMenuAndArticle() async {
    var response = await get('home');
    return MenuAndArticleModel.fromJson(response.data);
  }
}
