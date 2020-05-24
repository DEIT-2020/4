import 'package:heroes/heroes.dart';
class USER extends ManagedObject<_USER> implements _USER {}

class _USER {
  @primaryKey
  int id;

  @Column(unique: true)
  String nickname;
}