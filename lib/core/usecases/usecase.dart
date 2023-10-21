import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:bank_mas/core/error/failures.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failures, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
