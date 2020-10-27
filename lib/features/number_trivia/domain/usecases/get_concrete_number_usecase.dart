import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/error/failures.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';
class GetConcreteNumberTrivia {
  final NumberTriviaRepository repo;

  GetConcreteNumberTrivia(this.repo);

  Future<Either<Failure, NumberTrivia>> call({@required int number}) async {
    return await repo.getConcreteNumberTrivia(number);
  }
}