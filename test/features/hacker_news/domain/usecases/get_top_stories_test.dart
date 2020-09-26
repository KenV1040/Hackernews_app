import 'package:HackerNews/features/hacker_news/domain/entities/hn_item.dart';
import 'package:HackerNews/features/hacker_news/domain/repositories/hn_repository.dart';
import 'package:HackerNews/features/hacker_news/domain/usecases/get_top_stories.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockTopStoriesRepository extends Mock implements HackerNewsRepository{}

void main() {
  /// setUp runs first
  MockTopStoriesRepository mock;
  GetTopStories useCase;

  setUp(() {
    mock = MockTopStoriesRepository();
    useCase = GetTopStories(mock);
  });

  // test list of HackerNewsItems
  final tGetStories = List<HackerNewsItem>();

  test('should get ids of top stories', () async {
    // arrange
    when(mock.getTopStories()).thenAnswer((_) async => Right(tGetStories));
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
      mock.getTopStories()
    );
    verifyNoMoreInteractions(mock);
  });
}