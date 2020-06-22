import 'package:heroes/heroes.dart';

Future main() async {
  //有团队成员 xx 在testbranch中修改
  final app = Application<HeroesChannel>()
      ..options.configurationFilePath = "config.src.yaml"
      ..options.port = 8888;

  final count = Platform.numberOfProcessors ~/ 2;
  await app.start(numberOfInstances: count > 0 ? count : 1);

  print("Application started on port: ${app.options.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");
}