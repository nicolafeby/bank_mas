import 'package:bank_mas/core/network/api_service.dart';
import 'package:bank_mas/domain/entities/menu_and_article_entitity.dart';

abstract class MenuAndArticleRemoteDataSource {
  Future<MenuAndArticleEntity> getMenuAndArticle();
}

class MenuAndArticleRemoteDataSourceImpl
    implements MenuAndArticleRemoteDataSource {
  final ApiService apiService;

  MenuAndArticleRemoteDataSourceImpl({required this.apiService});
  @override
  Future<MenuAndArticleEntity> getMenuAndArticle() async {
    final resp = apiService.getMenuAndArticle();
    return resp;
  }
}
