import 'package:aqueduct/aqueduct.dart';
import 'package:heroes/heroes.dart';
import 'package:heroes/model/course.dart';
import 'package:heroes/model/user.dart';

class SearchController extends ResourceController {
  SearchController(this.context);

  final ManagedContext context;

 
    @Operation.get()
  Future<Response> searchCourse({@Bind.query('name') String name}) async {
  final courseQuery = Query<Course>(context);
  if (name != null) {
    courseQuery.where((q) => q.course_name).contains(name, caseSensitive: false);
  }
  final course = await courseQuery.fetch();

    if (course == null) {
    return Response.notFound();
  }
  else{
    return Response.ok(course);
    }
  }

 }