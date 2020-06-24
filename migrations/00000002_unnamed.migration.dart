import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration2 extends Migration { 
  @override
  Future upgrade() async {
   		database.createTable(SchemaTable("_USER", [SchemaColumn("user_id", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("user_nickname", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("user_password", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false)]));
		database.createTable(SchemaTable("_Course", [SchemaColumn("course_id", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("course_name", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("teacher_name", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("score", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false)]));
		database.createTable(SchemaTable("_Comment", [SchemaColumn("comment_id", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("content", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)]));
		database.createTable(SchemaTable("_Teacher", [SchemaColumn("teacher_id", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("teacher_name", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)]));
		database.addColumn("_Comment", SchemaColumn.relationship("user", ManagedPropertyType.bigInteger, relatedTableName: "_USER", relatedColumnName: "user_id", rule: DeleteRule.nullify, isNullable: true, isUnique: false));
		database.addColumn("_Comment", SchemaColumn.relationship("course", ManagedPropertyType.bigInteger, relatedTableName: "_Course", relatedColumnName: "course_id", rule: DeleteRule.nullify, isNullable: true, isUnique: false));
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {
    final userNames = ["Jacky"];
    final userIDs=[1];
    final userPWs=['zzj673191'];
  for (final userName in userNames) {    
    await database.store.execute("INSERT INTO _user (user_nickname) VALUES (@name)", substitutionValues: {
      "name": userName
    });
  }
  for(final userID in userIDs ){
    await database.store.execute('INSERT INTO _user (user_id) VALUES (@ID)',substitutionValues:{
      "ID":userID
    });
  }
  for(final userPW in userPWs ){
    await database.store.execute('INSERT INTO _user (user_password) VALUES (@PW)',substitutionValues:{
      "PW":userPW
    });
  }
  }
}
    