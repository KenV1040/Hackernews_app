import 'package:dartz/dartz.dart';

import '../entities/hn_item.dart';
import '../../../../core/error/failures.dart';
abstract class HackerNewsRepository {
  Future<Either<Failure, List<HackerNewsItem>>> getBestStories();
  Future<Either<Failure, List<HackerNewsItem>>> getTopStories();
  Future<Either<Failure, List<HackerNewsItem>>> getNewStories();
}