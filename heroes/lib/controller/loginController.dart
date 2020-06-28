import 'package:aqueduct/aqueduct.dart';
import 'package:heroes/heroes.dart';
import 'package:heroes/model/user.dart';

class LoginController extends ResourceController {
  LoginController(this.context);

  final ManagedContext context;
 
  @Operation.get('user_id')
  Future<Response> getUser(@Bind.path('user_id') String user_id) async {
    var user_now={'user_id','user_password'};
    return Response.ok("登录成功!");
  }
 
}