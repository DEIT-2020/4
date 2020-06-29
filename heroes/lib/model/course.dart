
import 'package:heroes/model/comment.dart';
import 'package:heroes/model/teacher.dart';
import 'package:heroes/heroes.dart';
class Course extends ManagedObject<_Course> implements _Course {}

class _Course {
  @primaryKey
  String course_id;
  
  @Column(unique: true)
  String course_name;
  
  @Column(unique:false)
  String teacher_name;

  @Column(unique:false)
  String score;
 
  
  
}