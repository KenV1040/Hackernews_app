import 'package:equatable/equatable.dart';

class HackerNewsUser extends Equatable {
  final int id;
  final int delay;
  final int created;
  final int karma;
  final String about;
  final List<int> submitted;

  HackerNewsUser({this.id, this.delay, this.created, this.karma, this.about, this.submitted});

  @override
  List<Object> get props => [id, delay, created, karma, about, submitted];

  @override
  bool get stringify => true;
}