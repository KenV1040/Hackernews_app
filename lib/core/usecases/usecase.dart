import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failures.dart';

// Params allows you to log parameters in call
abstract class UseCase<Type, Params> {
  // Turn this into a function and print the params if you want to log the
  // call parameter
  Future<Either<Failure, Type>> call();
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}