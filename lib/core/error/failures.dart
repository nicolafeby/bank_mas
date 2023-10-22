import 'package:equatable/equatable.dart';

class Failures extends Equatable {
  const Failures(this.message);

  final String message;

  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failures {
  const ServerFailure(String message) : super(message);
}
