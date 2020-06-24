import 'package:aqueduct/aqueduct.dart';
import 'package:heroes/heroes.dart';
import 'package:heroes/model/user.dart';

class LoginController extends ResourceController {
  LoginController(this.context);

  final ManagedContext context;

  @Operation.get('user_nickname')
  Future<Response> getUser() async {
    return Response.ok("登录成功!");
  }
}