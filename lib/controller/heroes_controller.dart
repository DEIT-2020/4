import 'package:aqueduct/aqueduct.dart';
import 'package:heroes/heroes.dart';
import 'package:heroes/model/hero.dart';
class HeroesController extends ResourceController {
  
  HeroesController(this.context);

  final ManagedContext context;

  @Operation.get()
  Future<Response> getAllHeroes() async {
    // Query<Hero>(context);
    // final heroes = await heroQuery.fetch();

    // return Response.ok(heroes);
    return Response.ok("[]");
  }

  @Operation.post()
  Future<Response> createHero() async {
    
  }
  @Operation.get('id')
  Future<Response> getHeroByID(@Bind.path('id') int id) async {
    final heroQuery = Query<Hero>(context)..where((h) => h.id).equalTo(id);

    final hero = await heroQuery.fetchOne();

    if (hero == null) {
      return Response.notFound();
    }
    return Response.ok(hero);
  }
}
