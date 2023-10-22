import 'dart:developer';

import 'package:bank_mas/core/error/failures.dart';
import 'package:bank_mas/data/datasources/menu_and_article_remote_datasource.dart';
import 'package:bank_mas/domain/entities/menu_and_article_entitity.dart';
import 'package:bank_mas/domain/repositories/menu_and_article_repository.dart';
import 'package:dartz/dartz.dart';

class MenuAndArticleRepositoryImpl implements MenuAndArticleRepository {
  MenuAndArticleRepositoryImpl({required this.remoteDataSource});

  final MenuAndArticleRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failures, MenuAndArticleEntity>> getMenuAndArticle() async {
    try {
      final resp = await remoteDataSource.getMenuAndArticle();
      return Right(resp);

      // if (resp.statusCode == 200) return Right(resp);
      // return const Left(ServerFailure('error'));
    } catch (e, stack) {
      log('[$runtimeType]: $e $stack');
      return const Left(ServerFailure('error'));
    }
  }
}
