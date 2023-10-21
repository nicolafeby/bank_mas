import 'package:bank_mas/core/error/failures.dart';
import 'package:bank_mas/domain/entities/menu_and_article_entitity.dart';
import 'package:dartz/dartz.dart';

abstract class MenuAndArticleRepository {
  Future<Either<Failures, MenuAndArticleEntity>> getMenuAndArticle();
}