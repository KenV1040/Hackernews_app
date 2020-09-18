import 'package:equatable/equatable.dart';

class HackerNewsItem extends Equatable {
  final int id; // unique id
  final bool deleted; // true if item is deleted
  final String type; // Type of item. "Job", "story", "comment", "poll", or "pollopt".
  final String by; // Author
  final int time; //Creation date in unix time
  final String text; // Quick summary
  final bool dead; // true if item is dead
  final int parent; // id of parent item
  final List<int> kids; // ids of kids
  final String url; // url to story
  final int score; // score
  final List<int> descendants;

  HackerNewsItem(
  {this.id,
    this.deleted,
    this.type,
    this.by,
    this.time,
    this.text,
    this.dead,
    this.parent,
    this.kids,
    this.url,
    this.score,
    this.descendants}) : super([id,deleted,type,by,time,text,dead,parent,kids,url,score,descendants]);

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}