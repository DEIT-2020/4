import 'dart:html';

import 'package:heroes/heroes.dart';
class Comment extends ManagedObject<_Comment> implements _Comment {}

class _Comment {
  @primaryKey
  String id;//id=user.id+course.id

  @Column(unique: true)
  String nickname;
  
  @Column(unique: true)
  String content;
  
  @Column()
  Bollen likes;
  
}