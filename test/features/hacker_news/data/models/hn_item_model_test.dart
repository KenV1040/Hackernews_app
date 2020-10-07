import 'dart:convert';

import 'package:HackerNews/features/hacker_news/data/models/hn_item_model.dart';
import 'package:HackerNews/features/hacker_news/domain/entities/hn_item.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

// Note: For Unit tests, you never want to reach out to the outer world, and keep all the tests ran locally.

void main() {
  final tHNModel = HackerNewsModel(id: 0);

  test('should be a subclass of hn_item entity', () async {
    // assert
    expect(tHNModel, isA<HackerNewsItem>());

    // act
  });

  group('fromJson', () {
    test('should return a valid model', () async {
      // arrange
      final Map<String, dynamic> jsonMap = jsonDecode(fixture('live_data.json'));
      
      //act
      final result = HackerNewsModel.fromJson(jsonMap.values.toList()[0]);
      // assert
      // you can ommit the equal if you expect it to be the same type
      expect(result, equals(tHNModel));
    });
  });
}
