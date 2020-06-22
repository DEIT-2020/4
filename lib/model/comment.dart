
import 'package:heroes/model/user.dart';
import 'package:heroes/heroes.dart';
import 'package:heroes/model/course.dart';
class Comment extends ManagedObject<_Comment> implements _Comment {}

class _Comment {
  @primaryKey
  String comment_id;//id=user.id+course.id

  
  
  @Column(unique: true)
  String content;

  @Relate(#comment)
  USER user;

  @Relate(#comment)
  Course course;

}