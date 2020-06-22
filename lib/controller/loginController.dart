import 'package:aqueduct/aqueduct.dart';
import 'package:heroes/heroes.dart';
import 'package:heroes/model/user.dart';

class loginController extends ResourceController {

  loginController(this.context);

  final ManagedContext context;

  @Operation.get('user_id')
  Future<Response> getUserbyID() async {
    return Response.ok("登录成功！");
  }
}