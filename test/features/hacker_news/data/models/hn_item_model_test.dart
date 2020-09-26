import 'package:HackerNews/features/hacker_news/data/models/hn_item_model.dart';
import 'package:HackerNews/features/hacker_news/domain/entities/hn_item.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tHNModel = HackerNewsModel(id: 0);

  test('should be a subclass of hn_item entity', () async {
    // assert
    expect (tHNModel, isA<HackerNewsItem>());

    // act
  });
}