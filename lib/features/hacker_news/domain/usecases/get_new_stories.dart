import '../../../../core/error/failures.dart';
import '../entities/hn_item.dart';
import 'package:dartz/dartz.dart';

import '../repositories/hn_repository.dart';
import '../../../../core/usecases/usecase.dart';
class GetNewStories implements UseCase<List<HackerNewsItem>, List>{
  final HackerNewsRepository repository;
  GetNewStories(this.repository);

  // All use cases should expose a call method
  Future<Either<Failure, List<HackerNewsItem> >> call() async {
    return await repository.getNewStories();
  }
}