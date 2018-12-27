import 'package:jaguar/jaguar.dart';
import 'package:jaguar_reflect/jaguar_reflect.dart';
import 'package:testJaguar/src/Controller/ContactApi.dart';


main(List<String> args) async {
  final server = Jaguar(port: 8081);
  server.add(reflect(ContactApi()));
  server.log.onRecord.listen(print);
  await server.serve(logRequests: true);
}