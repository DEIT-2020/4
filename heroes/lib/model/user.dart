import 'package:heroes/heroes.dart';
import 'package:heroes/model/comment.dart';
class USER extends ManagedObject<_USER> implements _USER {}

class _USER {
  @primaryKey
  int user_id;

  @Column(unique: true)
  String user_nickname;

  @Column(unique: false)
  String user_password;

 
  
}