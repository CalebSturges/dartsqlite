import 'dart:math';
import 'package:drift/drift.dart';

// this will generate a table called "todos" for us. The rows of that table will
// be represented by a class called "Todo".
class Product extends Table {
  IntColumn get id => integer().autoIncrement()();
  ProductID get product_id => integer();
  TextColumn get category => text().withLength(min: 4, max: 32)();
  TextColumn get subcategory => text()().nullable()();
  TextColumn get type => text()().nullable()();
  BlobColumn get signatureid => integer()(); //Might Cause error on JavaScript side
}

class ProductRecomendation extends Product {
  IntColumn get id => integer().autoIncrement()();
  RecomendationID
  
}

class User extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get userid => integer();
  IntColumn get rank => integer();
  TextColumn get username => Text();
  TextColumn get type => text()();
  BlobColumn get pubkey => blob()(); //Might Cause error on JavaScript side
  BlobColumn get signingpubkey => blob()(); //Might Cause error on JavaScript side
}

class PubKey extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get pubkeyid => integer()();
  IntColumn get rank => integer()();
  IntColumn get userid => integer()();
  TextColumn get type => text()(); //Signature Algorithm
  BlobColumn get pubkey => blob()(); //Might Cause error on JavaScript side
}

class Signature extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get signatureid => integer()(); //Might Cause error on JavaScript side
  IntColumn get pubkeyid => integer()();
  IntColumn get foreinid => integer()();
  TextColumn get tablename => text()();
  TextColumn get signaturetimestamp => text()();
  // Signiture will initially contain both the digital signiture and pubkey
  BlobColumn get signature => blob()(); //Might Cause error on JavaScript side
}

class Image extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get tablename => text()();
  IntColumn get foreinid => integer();
  IntColumn get okcount => integer(); //Similar to likes
  TextColumn get title => text().withLength(min: 3, max: 30)();
  TextColumn get content => text().named('body')();
  TextColumn get format => text()();
  BlobColumn get image => blob()();
}

class ImageRecomendation extends Image {
  IntColumn get id => integer().autoIncrement()();
}

class OK extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get okid => integer(); //Similar to likes
  TextColumn get tablename => text()();
  IntColumn get foreinid => integer();
  IntColumn get pubkeyid => integer(); 
}

class Messages extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recieverid => integer();
  TextColumn get content => text().named('body')();
}

@DriftDatabase(tables: [ContactList])
class SharedDatabase extends _$MyDatabase {
  // we tell the database where to store the data with this constructor
  SharedDatabase() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return SharedDatabase(file);
  });
}
