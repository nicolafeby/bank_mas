import 'package:bank_mas/core/error/failures.dart';
import 'package:bank_mas/core/usecases/usecase.dart';
import 'package:bank_mas/domain/entities/menu_and_article_entitity.dart';
import 'package:bank_mas/domain/repositories/menu_and_article_repository.dart';
import 'package:dartz/dartz.dart';

class MenuAndArticleUsecase
    implements Usecase<MenuAndArticleEntity, NoParams> {
  MenuAndArticleUsecase({required this.repository});

  MenuAndArticleRepository repository;

  @override
  Future<Either<Failures, MenuAndArticleEntity>> call(
       NoParams params) async {
    return repository.getMenuAndArticle();
  }
}