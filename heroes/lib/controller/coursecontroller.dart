import 'package:aqueduct/aqueduct.dart';
import 'package:heroes/heroes.dart';
import 'package:heroes/model/comment.dart';
class CourseController extends ResourceController {

 final course=[
   {'course_id':1,'course_name':'学习技术系统开发','teacher_name':'冯翔'}
 ];
  CourseController(this.context);

  final ManagedContext context;

  @Operation.get('course_id') 
  FutureOr<Response>  getHeroByID(@Bind.path('course_id') String id)async {

    
 final heroQuery = Query<Comment>(context)..where((h) => h.comment_id).equalTo(id);

    final hero = await heroQuery.fetchOne();

   
    return Response.ok(hero);

      }
}