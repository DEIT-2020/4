import 'package:aqueduct/aqueduct.dart';
import 'package:heroes/heroes.dart';
import 'package:heroes/model/course.dart';
import 'package:heroes/model/user.dart';

class SearchController extends ResourceController {
  SearchController(this.context);

  final ManagedContext context;
//   @Operation.get()
// Future<Response> getAllHeroes({@Bind.query('name') String name}) async {
//   final heroQuery = Query<Hero>(context);
//   if (name != null) {
//     heroQuery.where((h) => h.name).contains(name, caseSensitive: false);
//   }
//   final heroes = await heroQuery.fetch();

//   return Response.ok(heroes);
// }
 
    @Operation.get()
  Future<Response> searchCourse({@Bind.query('name') String name}) async {
  final courseQuery = Query<Course>(context);
  if (name != null) {
    courseQuery.where((q) => q.course_name).contains(name, caseSensitive: false);
  }
  final question = await courseQuery.fetch();

    if (question == null) {
    return Response.notFound();
  }
  else{
    return Response.ok(question);
    }
  }

 }