

import 'package:heroes/heroes.dart';

class Teacher extends ManagedObject<_Teacher> implements _Teacher {}

class _Teacher {
  @primaryKey
  String teacher_id;

  @Column(unique: true)
  String teacher_name;
  
 

  
}