import 'package:HackerNews/features/hacker_news/domain/entities/hn_item.dart';
import 'package:HackerNews/features/hacker_news/domain/repositories/hn_repository.dart';
import 'package:HackerNews/features/hacker_news/domain/usecases/get_best_stories.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockBestStoriesRepository extends Mock implements HackerNewsRepository{}

void main() {
  /// setUp runs first
  MockBestStoriesRepository mock;
  GetBestStory useCase;

  setUp(() {
    mock = MockBestStoriesRepository();
    useCase = GetBestStory(mock);
  });

  // test number
  final tGetStories = List<HackerNewsItem>(any);

  test('should get ids of best stories', () async {
    // arrange
    when(mock.getBestStories()).thenAnswer((_) async => Right(tGetStories));
    // act
    final result = await useCase.execute();
    // assert
    expect(
      result,
      Right(tGetStories),
    );
    verify(
      mock.getBestStories()
    );
    verifyNoMoreInteractions(mock);
  });
}