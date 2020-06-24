import 'package:aqueduct/aqueduct.dart';
import 'package:heroes/heroes.dart';
import 'package:heroes/model/comment.dart';
import 'package:heroes/model/user.dart';
class CommentController extends ResourceController {

  CommentController(this.context);

  final ManagedContext context;

   @Operation.post() 
  FutureOr<Response> insertArticle(
      @Bind.body(ignore: ["createData"]) Comment comment) async {
    
    
    
    final insertedComment = await context.insertObject<Comment>(comment);
    return Response.ok(insertedComment);
  }

}