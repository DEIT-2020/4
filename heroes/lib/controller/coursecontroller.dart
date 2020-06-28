import 'package:aqueduct/aqueduct.dart';
import 'package:heroes/heroes.dart';
import 'package:heroes/model/comment.dart';
class CourseController extends ResourceController {

  CourseController(this.context);

  final ManagedContext context;

  @Operation.get('course_id') 
  FutureOr<Response>  getHeroByID(@Bind.path('id') String id)async {

    
 final heroQuery = Query<Comment>(context)..where((h) => h.comment_id).equalTo(id);

    final hero = await heroQuery.fetchOne();

   
    return Response.ok(hero);

      }
}