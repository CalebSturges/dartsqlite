import 'package:drift/drift.dart';

class DefaultTable extends Table {
  IntColumn get id => integer().unique()(); // Random UInt - n^2 max table size
  DateTimeColumn get timestamp => dateTime()(); // Record Creation time
  TextColumn get description => text()();
}

enum UserType { admin, dev, customer, member }

/// User, PubKey and Signature are for administrative purposes
class User extends DefaultTable {
  IntColumn get rank => integer()();

  ///Closer to 1 is better, must be positive
  TextColumn get username => text()();
  TextColumn get email => text()();
  TextColumn get xmpp => text()();
  IntColumn get type => intEnum<UserType>()();
}

class PubKey extends DefaultTable {
  IntColumn get rank => integer()();
  IntColumn get userid => integer()();
  TextColumn get type => text()(); //Signature Algorithm
  BlobColumn get pubkey => blob()(); //Might Cause error on JavaScript side
}

class Signature extends DefaultTable {
  IntColumn get pubkeyid => integer()();
  IntColumn get foreinid => integer()();
  TextColumn get tablename => text()();
  DateTimeColumn get signaturetimestamp => dateTime()();

  /// signature contains both the digital signiture and pubkey
  BlobColumn get signature => blob()(); //Might Cause error on JavaScript side
  BlobColumn get bytesignature => blob()();
}

/// Product, Category, Subcategory, ProductType, Company, Link
/// Region and Image can be Recomemnded or Contested by Users
class RecommendedAddition extends DefaultTable {
  TextColumn get table => text()();
  IntColumn get userid => integer()();
  TextColumn get additionreason => text()();
}

class ContestedAddition extends DefaultTable {
  TextColumn get table => text()();
  IntColumn get userid => integer()();
  TextColumn get contestreason => text()();
  TextColumn get evidencelink => text()();
  TextColumn get evidenceimage => text()();
}

class Product extends DefaultTable {
  IntColumn get brandid => integer()();
  IntColumn get categoryid => integer()();
  IntColumn get subcategoryid => integer()();
  IntColumn get producttypeid => integer().nullable()();
  IntColumn get signatureid => integer()();
}

class ProductRecommendation extends Product {
  IntColumn get recommendationid => integer()();
  IntColumn get userid => integer()();
}

class Category extends DefaultTable {
  TextColumn get category => text().withLength(min: 4, max: 32)();
}

class CategoryRecommendation extends Category {
  IntColumn get recommendationid => integer().unique()();
  IntColumn get exampleproductid => integer()();
}

class Subcategory extends DefaultTable {
  IntColumn get categoryid => integer().references(Category, #id)();
  TextColumn get subcategory => text().withLength(min: 4, max: 32)();
}

class SubcategoryRecommendation extends Subcategory {
  IntColumn get recommendationid => integer().unique()();
  IntColumn get exampleproductid => integer()();
}

class ProductType extends DefaultTable {
  IntColumn get producttypeid => integer().unique()();
  TextColumn get producttype => text().withLength(min: 4, max: 32)();
  TextColumn get description => text()();
}

class ProductTypeRecommendation extends ProductType {
  TextColumn get description => text()();
}

class Brand extends DefaultTable {
  IntColumn get companyid => integer()();
  TextColumn get name => text()();
}

class BrandRecommendation extends Brand {
  IntColumn get recommendationid => integer().unique()();
  IntColumn get exampleproductid => integer()();
}

class Company extends DefaultTable {
  TextColumn get name => text()();
  TextColumn get website => text()(); //Maybe add to link table
  BoolColumn get isstore => boolean()();
}

class CompanyRecommendation extends DefaultTable {
  IntColumn get userid => integer()();
}

class Link extends DefaultTable {
  TextColumn get tablename => text()();
  IntColumn get foreinid => integer()();
  DateTimeColumn get uploadtime => dateTime()();
  TextColumn get title => text().withLength(min: 3, max: 30)();
  TextColumn get link => text()();
  BoolColumn get secondpartyseller => boolean()();
}

class LinkRecommendation extends Link {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get tablename => text()();
  IntColumn get foreinid => integer()();
  DateTimeColumn get uploadtime => dateTime()();
  TextColumn get title => text().withLength(min: 3, max: 30)();
  TextColumn get link => text()();
  BoolColumn get secondpartyseller => boolean()();
}

class Image extends DefaultTable {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get tablename => text()();
  IntColumn get foreinid => integer()();
  DateTimeColumn get uploadtime => dateTime()();
  TextColumn get title => text().withLength(min: 3, max: 30)();
  TextColumn get content => text().named('body')();
  TextColumn get format => text()();
  BlobColumn get image => blob()();
}

class ImageRecommendation extends Image {
  IntColumn get recid => integer().unique()();
  BoolColumn get approvedtosyndicate => boolean()();
}

/// OK, Message and Comment are all non-administrative user interactions
class Interaction extends DefaultTable {
  DateTimeColumn get interactiontime => dateTime()();
  BoolColumn get deleted => boolean()();
}

class OK extends Interaction {
  IntColumn get okid => integer().unique()(); //Similar to likes, get percent
  IntColumn get interactionid => integer().unique()();
  TextColumn get tablename => text()();
  IntColumn get foreinid => integer()();
}

class Message extends Interaction {
  IntColumn get messageid => integer().unique()();
  IntColumn get sender => integer()();
  IntColumn get recieverid => integer()();
  TextColumn get content => text()();
}

class Comment extends Interaction {
  IntColumn get userid => integer().unique()();
  IntColumn get productid => integer()();
  TextColumn get content => text().named('body')();
}

/*
@DriftDatabase(tables: kftables)
class SharedDatabase extends _$MyDatabase {
  // we tell the database where to store the data with this constructor
  SharedDatabase() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 1;
}
*/