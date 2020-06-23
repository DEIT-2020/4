import 'package:aqueduct/aqueduct.dart';
import 'package:heroes/heroes.dart';
class CourseController extends ResourceController {

  CourseController(this.context);

  final ManagedContext context;

  @Operation.get('user_id')
  Future<Response> getUserbyID() async {
    return Response.ok("登录成功！");
  }
}