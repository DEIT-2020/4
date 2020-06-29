import 'package:aqueduct/aqueduct.dart';
import 'package:heroes/heroes.dart';
import 'package:heroes/model/course.dart';
import 'package:heroes/model/user.dart';

class SearchController extends ResourceController {
  final courseids=[1];
    final coursenames=["学习技术系统开发"];
    final courseteachers=['冯翔'];

 
    @Operation.get()
  Future<Response> searchCourse({@Bind.query('course_name') String name}) async {
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