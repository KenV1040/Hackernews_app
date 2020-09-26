import 'package:HackerNews/features/hacker_news/domain/entities/hn_item.dart';
import 'package:HackerNews/features/hacker_news/domain/repositories/hn_repository.dart';
import 'package:HackerNews/features/hacker_news/domain/usecases/get_new_stories.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockNewStoriesRepository extends Mock implements HackerNewsRepository{}

void main() {
  /// setUp runs first
  MockNewStoriesRepository mock;
  GetNewStories useCase;

  setUp(() {
    mock = MockNewStoriesRepository();
    useCase = GetNewStories(mock);
  });

  // test list of HackerNewsItems
  final tGetStories = List<HackerNewsItem>();

  test('should get ids of new stories', () async {
    // arrange
    when(mock.getNewStories()).thenAnswer((_) async => Right(tGetStories));
    // act
    // useCase has a call method which allows it to be called without having to
    // write .execute at the end of useCase()
    final result = await useCase();
    // assert
    expect(
      result,
      Right(tGetStories),
    );
    verify(
      mock.getNewStories()
    );
    verifyNoMoreInteractions(mock);
  });
}