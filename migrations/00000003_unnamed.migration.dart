import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration3 extends Migration { 
  @override
  Future upgrade() async {
   		database.deleteColumn("_USER", "user");
		database.alterColumn("_USER", "user_password", (c) {c.isUnique = false;});
		database.alterColumn("_Course", "teacher_name", (c) {c.isUnique = false;});
		database.addColumn("_Comment", SchemaColumn.relationship("user", ManagedPropertyType.bigInteger, relatedTableName: "_USER", relatedColumnName: "user_id", rule: DeleteRule.nullify, isNullable: true, isUnique: false));
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    