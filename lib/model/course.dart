import 'dart:html';

import 'package:heroes/heroes.dart';
class Coutse extends ManagedObject<_Course> implements _Course {}

class _Course {
  @primaryKey
  String id;
  
  @Column(unique: true)
  String cname;
  
  @Column(unique: true)
  String teacherid;

  @Column(unique: true)
  String score;
  
}