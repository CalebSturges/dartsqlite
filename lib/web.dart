// web.dart
/*
import 'package:drift/web.dart';

SharedDatabase constructDb() {
  return SharedDatabase(WebDatabase('db'));
}
*/
import 'package:drift/web.dart';
import 'database.dart';

/*
@DriftDatabase( include: {'src/tables.drift'})
class SharedDatabase extends _$SharedDatabase {
  // here, "app" is the name of the database - you can choose any name you want
  MyDatabase() : super(WebDatabase('app'));

}

*/
//@DriftDatabase( include: {'src/tables.drift'})
SharedDatabase constructDb() {
  return SharedDatabase(WebDatabase('db'));
  //Web worker example: github.com/simolus3/drift/blob/develop/examples/web_worker_example/web/worker.dart
  //return SharedDatabase(WebDatabase.withStorage(await DriftWebStorage.indexedDbIfSupported('db')));
}
