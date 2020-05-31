import 'dart:html';

import 'package:heroes/heroes.dart';
class Teacher extends ManagedObject<_Teacher> implements _Teacher {}

class _Teacher {
  @primaryKey
  String id;

  @Column(unique: true)
  String tcname;
  
  @Column(unique: true)
  String photo;
  
  @Column(unique: true)
  String tccomment;
  
}