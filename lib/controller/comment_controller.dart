import 'package:aqueduct/aqueduct.dart';
import 'package:heroes/heroes.dart';
import 'package:heroes/model/hero.dart';
class CommentController extends ResourceController {
  
  CommentController(this.context);

  final ManagedContext context;
  

  @override
  Future<RequestOrResponse> handle(Request request) async {
    return Response.ok(_Comment);
  }
  @Operation.get()
  

  @Operation.get('id')
  @Operation.add()//增加评论
  @Operation.delete()//删除评论
  @Operation.set()//修改评论
  }
}
