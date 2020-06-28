import 'package:aqueduct/aqueduct.dart';
import 'package:heroes/heroes.dart';
import 'package:heroes/model/comment.dart';
import 'package:heroes/model/user.dart';
class CommentController extends ResourceController {

  CommentController(this.context);

  final ManagedContext context;

   @Operation.post() 
  FutureOr<Response> insertArticle(
      @Bind.body(ignore: ["comment_id"]) Comment comment) async {
       final query = Query<Comment>(context)..values =comment;

    
    
    final insertedComment = await query.insert();
    return Response.ok(insertedComment);
  }

}