import 'package:aqueduct/aqueduct.dart';
import 'package:heroes/heroes.dart';
import 'package:heroes/model/comment.dart';
class CourseController extends ResourceController {

  CourseController(this.context);

  final ManagedContext context;

  @Operation.post() 
  FutureOr<Response> insertComment(
      @Bind.body(ignore: ["createData"]) Comment comment) async {

    
//插入一条数据
    final insertedComment = await context.insertObject<Comment>(comment);
    return Response.ok(insertedComment);

      }
}