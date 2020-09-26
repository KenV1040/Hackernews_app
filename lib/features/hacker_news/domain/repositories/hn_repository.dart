import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/hn_item.dart';
abstract class HackerNewsRepository {
  Future<Either<Failure, List<HackerNewsItem>>> getBestStories();
  Future<Either<Failure, List<HackerNewsItem>>> getTopStories();
  Future<Either<Failure, List<HackerNewsItem>>> getNewStories();
}