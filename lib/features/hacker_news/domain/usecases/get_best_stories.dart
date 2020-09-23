import 'package:HackerNews/core/error/failures.dart';
import 'package:HackerNews/features/hacker_news/domain/entities/hn_item.dart';
import 'package:dartz/dartz.dart';

import '../repositories/hn_repository.dart';
import 'package:HackerNews/core/usecases/usecase.dart';
class GetBestStory implements UseCase<List<HackerNewsItem>, List>{
  final HackerNewsRepository repository;
  GetBestStory(this.repository);

  // All use cases should expose a call method
  Future<Either<Failure, List<HackerNewsItem> >> call() async {
    return await repository.getBestStories();
  }
}