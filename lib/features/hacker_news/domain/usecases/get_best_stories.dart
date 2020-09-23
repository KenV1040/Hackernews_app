import 'package:HackerNews/core/error/failures.dart';
import 'package:HackerNews/features/hacker_news/domain/entities/hn_item.dart';
import 'package:dartz/dartz.dart';

import '../repositories/hn_repository.dart';
import 'package:meta/meta.dart';
class GetBestStory {
  final HackerNewsRepository repository;
  GetBestStory(this.repository);

  Future<Either<Failure, List<HackerNewsItem> >> call() async {
    return await repository.getBestStories();
  }
}