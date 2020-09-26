import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/hn_item.dart';
import '../repositories/hn_repository.dart';


class GetBestStory implements UseCase<List<HackerNewsItem>, List>{
  final HackerNewsRepository repository;
  GetBestStory(this.repository);

  // All use cases should expose a call method
  Future<Either<Failure, List<HackerNewsItem> >> call() async {
    return await repository.getBestStories();
  }
}