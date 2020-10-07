import 'package:meta/meta.dart';

import '../../domain/entities/hn_item.dart';

class HackerNewsModel extends HackerNewsItem {
  HackerNewsModel({@required int id}) : super(id: id);

  factory HackerNewsModel.fromJson(int id) {
    return HackerNewsModel(id: id);
  }

}