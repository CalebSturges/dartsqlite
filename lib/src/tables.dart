import 'package:drift/drift.dart';

class DefaultColumns extends Table {
  IntColumn get id => integer().unique()(); // Random UInt - n^2 max table size
  DateTimeColumn get timestamp => dateTime()(); // Record Creation time
  TextColumn get description => text()();
}

enum UserType { admin, dev, customer, member }

/// User, PubKey and Signature are for administrative purposes
class Users extends DefaultColumns {
  IntColumn get rank => integer()();

  ///Closer to 1 is better, must be positive
  TextColumn get username => text()();
  TextColumn get email => text()();
  TextColumn get xmpp => text()();
  IntColumn get type => intEnum<UserType>()();
}

class PubKeys extends DefaultColumns {
  IntColumn get rank => integer()();
  IntColumn get userID => integer()();
  IntColumn get rankForUser => integer()(); //Higher is better
  TextColumn get authType => text().withDefault(const Constant('Ed25519'))();

  ///Signature Algorithm
  BlobColumn get publicKey => blob()(); //Might Cause error on JavaScript side
}

/// Similar to protonmail but for asymmetric authentication not asymmetric
/// encryption the private key is encrypted client side and stored on the server
/// all
class EncryptedPrivateKeys extends DefaultColumns {
  IntColumn get userID => integer()();
  TextColumn get authType => text().withDefault(const Constant('Ed25519'))();

  ///Signature Algorithm
  TextColumn get encryptionType =>
      text().withDefault(const Constant('AES-256'))();

  ///Encryption Algorithm
  BlobColumn get encryptedPrivateKey =>
      blob()(); //Might Cause error on JavaScript side
}

class Signatures extends DefaultColumns {
  IntColumn get publicKeyID => integer()();
  IntColumn get foreignID => integer()();
  TextColumn get foreignTableName => text()();
  DateTimeColumn get signatureTimestamp => dateTime()();

  /// signature contains both the digital signature and public key
  BlobColumn get signature => blob()(); //Might Cause error on JavaScript side
  BlobColumn get byteSignature => blob()();
}

/// Product, Category, Subcategory, ProductType, Company, Link
/// Region and Image can be Recommended or Contested by Users
class RecommendedAdditions extends DefaultColumns {
  TextColumn get table => text()();
  IntColumn get userID => integer()();
  TextColumn get additionReason => text()();
}

class ContestedAdditions extends DefaultColumns {
  TextColumn get table => text()();
  IntColumn get userid => integer()();
  TextColumn get contestReason => text()();
  TextColumn get evidenceLink => text()();
  TextColumn get evidenceImage => text()();
}

class Products extends DefaultColumns {
  IntColumn get brandID => integer()();
  IntColumn get categoryID => integer()();
  IntColumn get subcategoryID => integer()();
  IntColumn get productTypeID => integer().nullable()();
  IntColumn get signatureID => integer()();
}

class ProductRecommendations extends Products {
  IntColumn get recommendationID => integer()();
  IntColumn get userID => integer()();
}

@DataClassName('Category')
class Categories extends DefaultColumns {
  TextColumn get category => text().withLength(min: 4, max: 32)();
}

class CategoryRecommendations extends Categories {
  IntColumn get recommendationID => integer().unique()();
  IntColumn get exampleProductID => integer()();
}

@DataClassName('Subcategory')
class Subcategories extends DefaultColumns {
  IntColumn get categoryID => integer().references(Categories, #id)();
  TextColumn get subcategory => text().withLength(min: 4, max: 32)();
}

class SubcategoryRecommendation extends Subcategories {
  IntColumn get recommendationID => integer().unique()();
  IntColumn get exampleProductID => integer()();
}

class ProductTypes extends DefaultColumns {
  TextColumn get productType => text().withLength(min: 4, max: 32)();
  TextColumn get description => text()();
}

class ProductTypeRecommendations extends ProductTypes {
  IntColumn get recommendationID => integer().unique()();
  IntColumn get exampleProductID => integer()();
  TextColumn get reason => text()();
}

class Brands extends DefaultColumns {
  IntColumn get companyID => integer()();
  TextColumn get name => text()();
}

class BrandRecommendations extends Brands {
  IntColumn get recommendationID => integer().unique()();
  IntColumn get exampleProductID => integer()();
}

@DataClassName('Company')
class Companies extends DefaultColumns {
  TextColumn get name => text()();
  TextColumn get website => text()(); //Maybe add to link table
  BoolColumn get isStore => boolean()();
}

class CompanyRecommendations extends Companies {
  IntColumn get recommendationID => integer().unique()();
}

class Links extends DefaultColumns {
  TextColumn get foreignTableName => text()();
  IntColumn get foreignID => integer()();
  DateTimeColumn get uploadTime => dateTime()();
  TextColumn get title => text().withLength(min: 3, max: 30)();
  TextColumn get link => text()();
  BoolColumn get secondPartySeller => boolean()();
}

class LinkRecommendations extends Links {
  IntColumn get recommendationID => integer().unique()();
  TextColumn get reason => text()();
}

class Images extends DefaultColumns {
  TextColumn get foreignTableName => text()();
  IntColumn get foreignID => integer()();
  DateTimeColumn get uploadTime => dateTime()();
  TextColumn get title => text().withLength(min: 3, max: 30)();
  TextColumn get content => text().named('body')();
  TextColumn get format => text()();
  BlobColumn get image => blob()();
}

class ImageRecommendations extends Images {
  IntColumn get recommendationID => integer().unique()();
  BoolColumn get approvedToSyndicate => boolean()();
}

/// OK, Message and Comment are all non-administrative user interactions
class Interactions extends DefaultColumns {
  DateTimeColumn get interactionTime => dateTime()();
  BoolColumn get deleted => boolean()();
  IntColumn get userID => integer()();
}

class OKs extends Interactions {
  IntColumn get okID => integer().unique()(); //Similar to likes, get percent
  IntColumn get interactionID => integer().unique()();
  TextColumn get foreignTableName => text()();
  IntColumn get foreignID => integer()();
}

class Messages extends Interactions {
  IntColumn get messageID => integer().unique()();
  IntColumn get sender => integer()();
  IntColumn get receiverID => integer()();
  TextColumn get content => text()();
}

class Comments extends Interactions {
  IntColumn get userid => integer().unique()();
  IntColumn get productID => integer()();
  TextColumn get content => text().named('body')();
}
