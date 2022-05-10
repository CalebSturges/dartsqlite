// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class DefaultColumn extends DataClass implements Insertable<DefaultColumn> {
  final int id;
  final DateTime timestamp;
  final String description;
  DefaultColumn(
      {required this.id, required this.timestamp, required this.description});
  factory DefaultColumn.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DefaultColumn(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    return map;
  }

  DefaultColumnsCompanion toCompanion(bool nullToAbsent) {
    return DefaultColumnsCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
    );
  }

  factory DefaultColumn.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DefaultColumn(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
    };
  }

  DefaultColumn copyWith({int? id, DateTime? timestamp, String? description}) =>
      DefaultColumn(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('DefaultColumn(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, timestamp, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DefaultColumn &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description);
}

class DefaultColumnsCompanion extends UpdateCompanion<DefaultColumn> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  const DefaultColumnsCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
  });
  DefaultColumnsCompanion.insert({
    required int id,
    required DateTime timestamp,
    required String description,
  })  : id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description);
  static Insertable<DefaultColumn> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
    });
  }

  DefaultColumnsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description}) {
    return DefaultColumnsCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DefaultColumnsCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $DefaultColumnsTable extends DefaultColumns
    with TableInfo<$DefaultColumnsTable, DefaultColumn> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DefaultColumnsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, timestamp, description];
  @override
  String get aliasedName => _alias ?? 'default_columns';
  @override
  String get actualTableName => 'default_columns';
  @override
  VerificationContext validateIntegrity(Insertable<DefaultColumn> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  DefaultColumn map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DefaultColumn.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DefaultColumnsTable createAlias(String alias) {
    return $DefaultColumnsTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final int id;
  final DateTime timestamp;
  final String description;
  final int rank;

  ///Closer to 1 is better, must be positive
  final String username;
  final String email;
  final String xmpp;
  final UserType type;
  User(
      {required this.id,
      required this.timestamp,
      required this.description,
      required this.rank,
      required this.username,
      required this.email,
      required this.xmpp,
      required this.type});
  factory User.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return User(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      rank: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rank'])!,
      username: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}username'])!,
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email'])!,
      xmpp: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}xmpp'])!,
      type: $UsersTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type']))!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['rank'] = Variable<int>(rank);
    map['username'] = Variable<String>(username);
    map['email'] = Variable<String>(email);
    map['xmpp'] = Variable<String>(xmpp);
    {
      final converter = $UsersTable.$converter0;
      map['type'] = Variable<int>(converter.mapToSql(type)!);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      rank: Value(rank),
      username: Value(username),
      email: Value(email),
      xmpp: Value(xmpp),
      type: Value(type),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      rank: serializer.fromJson<int>(json['rank']),
      username: serializer.fromJson<String>(json['username']),
      email: serializer.fromJson<String>(json['email']),
      xmpp: serializer.fromJson<String>(json['xmpp']),
      type: serializer.fromJson<UserType>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'rank': serializer.toJson<int>(rank),
      'username': serializer.toJson<String>(username),
      'email': serializer.toJson<String>(email),
      'xmpp': serializer.toJson<String>(xmpp),
      'type': serializer.toJson<UserType>(type),
    };
  }

  User copyWith(
          {int? id,
          DateTime? timestamp,
          String? description,
          int? rank,
          String? username,
          String? email,
          String? xmpp,
          UserType? type}) =>
      User(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        rank: rank ?? this.rank,
        username: username ?? this.username,
        email: email ?? this.email,
        xmpp: xmpp ?? this.xmpp,
        type: type ?? this.type,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('rank: $rank, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('xmpp: $xmpp, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, timestamp, description, rank, username, email, xmpp, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.rank == this.rank &&
          other.username == this.username &&
          other.email == this.email &&
          other.xmpp == this.xmpp &&
          other.type == this.type);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> rank;
  final Value<String> username;
  final Value<String> email;
  final Value<String> xmpp;
  final Value<UserType> type;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.rank = const Value.absent(),
    this.username = const Value.absent(),
    this.email = const Value.absent(),
    this.xmpp = const Value.absent(),
    this.type = const Value.absent(),
  });
  UsersCompanion.insert({
    required int id,
    required DateTime timestamp,
    required String description,
    required int rank,
    required String username,
    required String email,
    required String xmpp,
    required UserType type,
  })  : id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        rank = Value(rank),
        username = Value(username),
        email = Value(email),
        xmpp = Value(xmpp),
        type = Value(type);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? rank,
    Expression<String>? username,
    Expression<String>? email,
    Expression<String>? xmpp,
    Expression<UserType>? type,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (rank != null) 'rank': rank,
      if (username != null) 'username': username,
      if (email != null) 'email': email,
      if (xmpp != null) 'xmpp': xmpp,
      if (type != null) 'type': type,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? rank,
      Value<String>? username,
      Value<String>? email,
      Value<String>? xmpp,
      Value<UserType>? type}) {
    return UsersCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      rank: rank ?? this.rank,
      username: username ?? this.username,
      email: email ?? this.email,
      xmpp: xmpp ?? this.xmpp,
      type: type ?? this.type,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (rank.present) {
      map['rank'] = Variable<int>(rank.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (xmpp.present) {
      map['xmpp'] = Variable<String>(xmpp.value);
    }
    if (type.present) {
      final converter = $UsersTable.$converter0;
      map['type'] = Variable<int>(converter.mapToSql(type.value)!);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('rank: $rank, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('xmpp: $xmpp, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _rankMeta = const VerificationMeta('rank');
  @override
  late final GeneratedColumn<int?> rank = GeneratedColumn<int?>(
      'rank', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  @override
  late final GeneratedColumn<String?> username = GeneratedColumn<String?>(
      'username', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _xmppMeta = const VerificationMeta('xmpp');
  @override
  late final GeneratedColumn<String?> xmpp = GeneratedColumn<String?>(
      'xmpp', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<UserType, int?> type =
      GeneratedColumn<int?>('type', aliasedName, false,
              type: const IntType(), requiredDuringInsert: true)
          .withConverter<UserType>($UsersTable.$converter0);
  @override
  List<GeneratedColumn> get $columns =>
      [id, timestamp, description, rank, username, email, xmpp, type];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('rank')) {
      context.handle(
          _rankMeta, rank.isAcceptableOrUnknown(data['rank']!, _rankMeta));
    } else if (isInserting) {
      context.missing(_rankMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('xmpp')) {
      context.handle(
          _xmppMeta, xmpp.isAcceptableOrUnknown(data['xmpp']!, _xmppMeta));
    } else if (isInserting) {
      context.missing(_xmppMeta);
    }
    context.handle(_typeMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    return User.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }

  static TypeConverter<UserType, int> $converter0 =
      const EnumIndexConverter<UserType>(UserType.values);
}

class PubKey extends DataClass implements Insertable<PubKey> {
  final int id;
  final DateTime timestamp;
  final String description;
  final int rank;
  final int userid;
  final String type;
  final Uint8List publicKey;
  PubKey(
      {required this.id,
      required this.timestamp,
      required this.description,
      required this.rank,
      required this.userid,
      required this.type,
      required this.publicKey});
  factory PubKey.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return PubKey(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      rank: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rank'])!,
      userid: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}userid'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      publicKey: const BlobType()
          .mapFromDatabaseResponse(data['${effectivePrefix}public_key'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['rank'] = Variable<int>(rank);
    map['userid'] = Variable<int>(userid);
    map['type'] = Variable<String>(type);
    map['public_key'] = Variable<Uint8List>(publicKey);
    return map;
  }

  PubKeysCompanion toCompanion(bool nullToAbsent) {
    return PubKeysCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      rank: Value(rank),
      userid: Value(userid),
      type: Value(type),
      publicKey: Value(publicKey),
    );
  }

  factory PubKey.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PubKey(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      rank: serializer.fromJson<int>(json['rank']),
      userid: serializer.fromJson<int>(json['userid']),
      type: serializer.fromJson<String>(json['type']),
      publicKey: serializer.fromJson<Uint8List>(json['publicKey']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'rank': serializer.toJson<int>(rank),
      'userid': serializer.toJson<int>(userid),
      'type': serializer.toJson<String>(type),
      'publicKey': serializer.toJson<Uint8List>(publicKey),
    };
  }

  PubKey copyWith(
          {int? id,
          DateTime? timestamp,
          String? description,
          int? rank,
          int? userid,
          String? type,
          Uint8List? publicKey}) =>
      PubKey(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        rank: rank ?? this.rank,
        userid: userid ?? this.userid,
        type: type ?? this.type,
        publicKey: publicKey ?? this.publicKey,
      );
  @override
  String toString() {
    return (StringBuffer('PubKey(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('rank: $rank, ')
          ..write('userid: $userid, ')
          ..write('type: $type, ')
          ..write('publicKey: $publicKey')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, timestamp, description, rank, userid, type, publicKey);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PubKey &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.rank == this.rank &&
          other.userid == this.userid &&
          other.type == this.type &&
          other.publicKey == this.publicKey);
}

class PubKeysCompanion extends UpdateCompanion<PubKey> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> rank;
  final Value<int> userid;
  final Value<String> type;
  final Value<Uint8List> publicKey;
  const PubKeysCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.rank = const Value.absent(),
    this.userid = const Value.absent(),
    this.type = const Value.absent(),
    this.publicKey = const Value.absent(),
  });
  PubKeysCompanion.insert({
    required int id,
    required DateTime timestamp,
    required String description,
    required int rank,
    required int userid,
    required String type,
    required Uint8List publicKey,
  })  : id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        rank = Value(rank),
        userid = Value(userid),
        type = Value(type),
        publicKey = Value(publicKey);
  static Insertable<PubKey> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? rank,
    Expression<int>? userid,
    Expression<String>? type,
    Expression<Uint8List>? publicKey,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (rank != null) 'rank': rank,
      if (userid != null) 'userid': userid,
      if (type != null) 'type': type,
      if (publicKey != null) 'public_key': publicKey,
    });
  }

  PubKeysCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? rank,
      Value<int>? userid,
      Value<String>? type,
      Value<Uint8List>? publicKey}) {
    return PubKeysCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      rank: rank ?? this.rank,
      userid: userid ?? this.userid,
      type: type ?? this.type,
      publicKey: publicKey ?? this.publicKey,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (rank.present) {
      map['rank'] = Variable<int>(rank.value);
    }
    if (userid.present) {
      map['userid'] = Variable<int>(userid.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (publicKey.present) {
      map['public_key'] = Variable<Uint8List>(publicKey.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PubKeysCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('rank: $rank, ')
          ..write('userid: $userid, ')
          ..write('type: $type, ')
          ..write('publicKey: $publicKey')
          ..write(')'))
        .toString();
  }
}

class $PubKeysTable extends PubKeys with TableInfo<$PubKeysTable, PubKey> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PubKeysTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _rankMeta = const VerificationMeta('rank');
  @override
  late final GeneratedColumn<int?> rank = GeneratedColumn<int?>(
      'rank', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _useridMeta = const VerificationMeta('userid');
  @override
  late final GeneratedColumn<int?> userid = GeneratedColumn<int?>(
      'userid', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _publicKeyMeta = const VerificationMeta('publicKey');
  @override
  late final GeneratedColumn<Uint8List?> publicKey =
      GeneratedColumn<Uint8List?>('public_key', aliasedName, false,
          type: const BlobType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, timestamp, description, rank, userid, type, publicKey];
  @override
  String get aliasedName => _alias ?? 'pub_keys';
  @override
  String get actualTableName => 'pub_keys';
  @override
  VerificationContext validateIntegrity(Insertable<PubKey> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('rank')) {
      context.handle(
          _rankMeta, rank.isAcceptableOrUnknown(data['rank']!, _rankMeta));
    } else if (isInserting) {
      context.missing(_rankMeta);
    }
    if (data.containsKey('userid')) {
      context.handle(_useridMeta,
          userid.isAcceptableOrUnknown(data['userid']!, _useridMeta));
    } else if (isInserting) {
      context.missing(_useridMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('public_key')) {
      context.handle(_publicKeyMeta,
          publicKey.isAcceptableOrUnknown(data['public_key']!, _publicKeyMeta));
    } else if (isInserting) {
      context.missing(_publicKeyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  PubKey map(Map<String, dynamic> data, {String? tablePrefix}) {
    return PubKey.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $PubKeysTable createAlias(String alias) {
    return $PubKeysTable(attachedDatabase, alias);
  }
}

class Signature extends DataClass implements Insertable<Signature> {
  final int id;
  final DateTime timestamp;
  final String description;
  final int publicKeyID;
  final int foreignID;
  final String foreignTableName;
  final DateTime signatureTimestamp;

  /// signature contains both the digital signature and public key
  final Uint8List signature;
  final Uint8List byteSignature;
  Signature(
      {required this.id,
      required this.timestamp,
      required this.description,
      required this.publicKeyID,
      required this.foreignID,
      required this.foreignTableName,
      required this.signatureTimestamp,
      required this.signature,
      required this.byteSignature});
  factory Signature.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Signature(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      publicKeyID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}public_key_i_d'])!,
      foreignID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}foreign_i_d'])!,
      foreignTableName: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}foreign_table_name'])!,
      signatureTimestamp: const DateTimeType().mapFromDatabaseResponse(
          data['${effectivePrefix}signature_timestamp'])!,
      signature: const BlobType()
          .mapFromDatabaseResponse(data['${effectivePrefix}signature'])!,
      byteSignature: const BlobType()
          .mapFromDatabaseResponse(data['${effectivePrefix}byte_signature'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['public_key_i_d'] = Variable<int>(publicKeyID);
    map['foreign_i_d'] = Variable<int>(foreignID);
    map['foreign_table_name'] = Variable<String>(foreignTableName);
    map['signature_timestamp'] = Variable<DateTime>(signatureTimestamp);
    map['signature'] = Variable<Uint8List>(signature);
    map['byte_signature'] = Variable<Uint8List>(byteSignature);
    return map;
  }

  SignaturesCompanion toCompanion(bool nullToAbsent) {
    return SignaturesCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      publicKeyID: Value(publicKeyID),
      foreignID: Value(foreignID),
      foreignTableName: Value(foreignTableName),
      signatureTimestamp: Value(signatureTimestamp),
      signature: Value(signature),
      byteSignature: Value(byteSignature),
    );
  }

  factory Signature.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Signature(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      publicKeyID: serializer.fromJson<int>(json['publicKeyID']),
      foreignID: serializer.fromJson<int>(json['foreignID']),
      foreignTableName: serializer.fromJson<String>(json['foreignTableName']),
      signatureTimestamp:
          serializer.fromJson<DateTime>(json['signatureTimestamp']),
      signature: serializer.fromJson<Uint8List>(json['signature']),
      byteSignature: serializer.fromJson<Uint8List>(json['byteSignature']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'publicKeyID': serializer.toJson<int>(publicKeyID),
      'foreignID': serializer.toJson<int>(foreignID),
      'foreignTableName': serializer.toJson<String>(foreignTableName),
      'signatureTimestamp': serializer.toJson<DateTime>(signatureTimestamp),
      'signature': serializer.toJson<Uint8List>(signature),
      'byteSignature': serializer.toJson<Uint8List>(byteSignature),
    };
  }

  Signature copyWith(
          {int? id,
          DateTime? timestamp,
          String? description,
          int? publicKeyID,
          int? foreignID,
          String? foreignTableName,
          DateTime? signatureTimestamp,
          Uint8List? signature,
          Uint8List? byteSignature}) =>
      Signature(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        publicKeyID: publicKeyID ?? this.publicKeyID,
        foreignID: foreignID ?? this.foreignID,
        foreignTableName: foreignTableName ?? this.foreignTableName,
        signatureTimestamp: signatureTimestamp ?? this.signatureTimestamp,
        signature: signature ?? this.signature,
        byteSignature: byteSignature ?? this.byteSignature,
      );
  @override
  String toString() {
    return (StringBuffer('Signature(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('publicKeyID: $publicKeyID, ')
          ..write('foreignID: $foreignID, ')
          ..write('foreignTableName: $foreignTableName, ')
          ..write('signatureTimestamp: $signatureTimestamp, ')
          ..write('signature: $signature, ')
          ..write('byteSignature: $byteSignature')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      timestamp,
      description,
      publicKeyID,
      foreignID,
      foreignTableName,
      signatureTimestamp,
      signature,
      byteSignature);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Signature &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.publicKeyID == this.publicKeyID &&
          other.foreignID == this.foreignID &&
          other.foreignTableName == this.foreignTableName &&
          other.signatureTimestamp == this.signatureTimestamp &&
          other.signature == this.signature &&
          other.byteSignature == this.byteSignature);
}

class SignaturesCompanion extends UpdateCompanion<Signature> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> publicKeyID;
  final Value<int> foreignID;
  final Value<String> foreignTableName;
  final Value<DateTime> signatureTimestamp;
  final Value<Uint8List> signature;
  final Value<Uint8List> byteSignature;
  const SignaturesCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.publicKeyID = const Value.absent(),
    this.foreignID = const Value.absent(),
    this.foreignTableName = const Value.absent(),
    this.signatureTimestamp = const Value.absent(),
    this.signature = const Value.absent(),
    this.byteSignature = const Value.absent(),
  });
  SignaturesCompanion.insert({
    required int id,
    required DateTime timestamp,
    required String description,
    required int publicKeyID,
    required int foreignID,
    required String foreignTableName,
    required DateTime signatureTimestamp,
    required Uint8List signature,
    required Uint8List byteSignature,
  })  : id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        publicKeyID = Value(publicKeyID),
        foreignID = Value(foreignID),
        foreignTableName = Value(foreignTableName),
        signatureTimestamp = Value(signatureTimestamp),
        signature = Value(signature),
        byteSignature = Value(byteSignature);
  static Insertable<Signature> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? publicKeyID,
    Expression<int>? foreignID,
    Expression<String>? foreignTableName,
    Expression<DateTime>? signatureTimestamp,
    Expression<Uint8List>? signature,
    Expression<Uint8List>? byteSignature,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (publicKeyID != null) 'public_key_i_d': publicKeyID,
      if (foreignID != null) 'foreign_i_d': foreignID,
      if (foreignTableName != null) 'foreign_table_name': foreignTableName,
      if (signatureTimestamp != null) 'signature_timestamp': signatureTimestamp,
      if (signature != null) 'signature': signature,
      if (byteSignature != null) 'byte_signature': byteSignature,
    });
  }

  SignaturesCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? publicKeyID,
      Value<int>? foreignID,
      Value<String>? foreignTableName,
      Value<DateTime>? signatureTimestamp,
      Value<Uint8List>? signature,
      Value<Uint8List>? byteSignature}) {
    return SignaturesCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      publicKeyID: publicKeyID ?? this.publicKeyID,
      foreignID: foreignID ?? this.foreignID,
      foreignTableName: foreignTableName ?? this.foreignTableName,
      signatureTimestamp: signatureTimestamp ?? this.signatureTimestamp,
      signature: signature ?? this.signature,
      byteSignature: byteSignature ?? this.byteSignature,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (publicKeyID.present) {
      map['public_key_i_d'] = Variable<int>(publicKeyID.value);
    }
    if (foreignID.present) {
      map['foreign_i_d'] = Variable<int>(foreignID.value);
    }
    if (foreignTableName.present) {
      map['foreign_table_name'] = Variable<String>(foreignTableName.value);
    }
    if (signatureTimestamp.present) {
      map['signature_timestamp'] = Variable<DateTime>(signatureTimestamp.value);
    }
    if (signature.present) {
      map['signature'] = Variable<Uint8List>(signature.value);
    }
    if (byteSignature.present) {
      map['byte_signature'] = Variable<Uint8List>(byteSignature.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SignaturesCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('publicKeyID: $publicKeyID, ')
          ..write('foreignID: $foreignID, ')
          ..write('foreignTableName: $foreignTableName, ')
          ..write('signatureTimestamp: $signatureTimestamp, ')
          ..write('signature: $signature, ')
          ..write('byteSignature: $byteSignature')
          ..write(')'))
        .toString();
  }
}

class $SignaturesTable extends Signatures
    with TableInfo<$SignaturesTable, Signature> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SignaturesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _publicKeyIDMeta =
      const VerificationMeta('publicKeyID');
  @override
  late final GeneratedColumn<int?> publicKeyID = GeneratedColumn<int?>(
      'public_key_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _foreignIDMeta = const VerificationMeta('foreignID');
  @override
  late final GeneratedColumn<int?> foreignID = GeneratedColumn<int?>(
      'foreign_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _foreignTableNameMeta =
      const VerificationMeta('foreignTableName');
  @override
  late final GeneratedColumn<String?> foreignTableName =
      GeneratedColumn<String?>('foreign_table_name', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _signatureTimestampMeta =
      const VerificationMeta('signatureTimestamp');
  @override
  late final GeneratedColumn<DateTime?> signatureTimestamp =
      GeneratedColumn<DateTime?>('signature_timestamp', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _signatureMeta = const VerificationMeta('signature');
  @override
  late final GeneratedColumn<Uint8List?> signature =
      GeneratedColumn<Uint8List?>('signature', aliasedName, false,
          type: const BlobType(), requiredDuringInsert: true);
  final VerificationMeta _byteSignatureMeta =
      const VerificationMeta('byteSignature');
  @override
  late final GeneratedColumn<Uint8List?> byteSignature =
      GeneratedColumn<Uint8List?>('byte_signature', aliasedName, false,
          type: const BlobType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        timestamp,
        description,
        publicKeyID,
        foreignID,
        foreignTableName,
        signatureTimestamp,
        signature,
        byteSignature
      ];
  @override
  String get aliasedName => _alias ?? 'signatures';
  @override
  String get actualTableName => 'signatures';
  @override
  VerificationContext validateIntegrity(Insertable<Signature> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('public_key_i_d')) {
      context.handle(
          _publicKeyIDMeta,
          publicKeyID.isAcceptableOrUnknown(
              data['public_key_i_d']!, _publicKeyIDMeta));
    } else if (isInserting) {
      context.missing(_publicKeyIDMeta);
    }
    if (data.containsKey('foreign_i_d')) {
      context.handle(
          _foreignIDMeta,
          foreignID.isAcceptableOrUnknown(
              data['foreign_i_d']!, _foreignIDMeta));
    } else if (isInserting) {
      context.missing(_foreignIDMeta);
    }
    if (data.containsKey('foreign_table_name')) {
      context.handle(
          _foreignTableNameMeta,
          foreignTableName.isAcceptableOrUnknown(
              data['foreign_table_name']!, _foreignTableNameMeta));
    } else if (isInserting) {
      context.missing(_foreignTableNameMeta);
    }
    if (data.containsKey('signature_timestamp')) {
      context.handle(
          _signatureTimestampMeta,
          signatureTimestamp.isAcceptableOrUnknown(
              data['signature_timestamp']!, _signatureTimestampMeta));
    } else if (isInserting) {
      context.missing(_signatureTimestampMeta);
    }
    if (data.containsKey('signature')) {
      context.handle(_signatureMeta,
          signature.isAcceptableOrUnknown(data['signature']!, _signatureMeta));
    } else if (isInserting) {
      context.missing(_signatureMeta);
    }
    if (data.containsKey('byte_signature')) {
      context.handle(
          _byteSignatureMeta,
          byteSignature.isAcceptableOrUnknown(
              data['byte_signature']!, _byteSignatureMeta));
    } else if (isInserting) {
      context.missing(_byteSignatureMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Signature map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Signature.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SignaturesTable createAlias(String alias) {
    return $SignaturesTable(attachedDatabase, alias);
  }
}

class RecommendedAddition extends DataClass
    implements Insertable<RecommendedAddition> {
  final int id;
  final DateTime timestamp;
  final String description;
  final String table;
  final int userID;
  final String additionReason;
  RecommendedAddition(
      {required this.id,
      required this.timestamp,
      required this.description,
      required this.table,
      required this.userID,
      required this.additionReason});
  factory RecommendedAddition.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return RecommendedAddition(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      table: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}table'])!,
      userID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_i_d'])!,
      additionReason: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}addition_reason'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['table'] = Variable<String>(table);
    map['user_i_d'] = Variable<int>(userID);
    map['addition_reason'] = Variable<String>(additionReason);
    return map;
  }

  RecommendedAdditionsCompanion toCompanion(bool nullToAbsent) {
    return RecommendedAdditionsCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      table: Value(table),
      userID: Value(userID),
      additionReason: Value(additionReason),
    );
  }

  factory RecommendedAddition.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecommendedAddition(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      table: serializer.fromJson<String>(json['table']),
      userID: serializer.fromJson<int>(json['userID']),
      additionReason: serializer.fromJson<String>(json['additionReason']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'table': serializer.toJson<String>(table),
      'userID': serializer.toJson<int>(userID),
      'additionReason': serializer.toJson<String>(additionReason),
    };
  }

  RecommendedAddition copyWith(
          {int? id,
          DateTime? timestamp,
          String? description,
          String? table,
          int? userID,
          String? additionReason}) =>
      RecommendedAddition(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        table: table ?? this.table,
        userID: userID ?? this.userID,
        additionReason: additionReason ?? this.additionReason,
      );
  @override
  String toString() {
    return (StringBuffer('RecommendedAddition(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('table: $table, ')
          ..write('userID: $userID, ')
          ..write('additionReason: $additionReason')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, timestamp, description, table, userID, additionReason);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecommendedAddition &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.table == this.table &&
          other.userID == this.userID &&
          other.additionReason == this.additionReason);
}

class RecommendedAdditionsCompanion
    extends UpdateCompanion<RecommendedAddition> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<String> table;
  final Value<int> userID;
  final Value<String> additionReason;
  const RecommendedAdditionsCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.table = const Value.absent(),
    this.userID = const Value.absent(),
    this.additionReason = const Value.absent(),
  });
  RecommendedAdditionsCompanion.insert({
    required int id,
    required DateTime timestamp,
    required String description,
    required String table,
    required int userID,
    required String additionReason,
  })  : id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        table = Value(table),
        userID = Value(userID),
        additionReason = Value(additionReason);
  static Insertable<RecommendedAddition> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<String>? table,
    Expression<int>? userID,
    Expression<String>? additionReason,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (table != null) 'table': table,
      if (userID != null) 'user_i_d': userID,
      if (additionReason != null) 'addition_reason': additionReason,
    });
  }

  RecommendedAdditionsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<String>? table,
      Value<int>? userID,
      Value<String>? additionReason}) {
    return RecommendedAdditionsCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      table: table ?? this.table,
      userID: userID ?? this.userID,
      additionReason: additionReason ?? this.additionReason,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (table.present) {
      map['table'] = Variable<String>(table.value);
    }
    if (userID.present) {
      map['user_i_d'] = Variable<int>(userID.value);
    }
    if (additionReason.present) {
      map['addition_reason'] = Variable<String>(additionReason.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecommendedAdditionsCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('table: $table, ')
          ..write('userID: $userID, ')
          ..write('additionReason: $additionReason')
          ..write(')'))
        .toString();
  }
}

class $RecommendedAdditionsTable extends RecommendedAdditions
    with TableInfo<$RecommendedAdditionsTable, RecommendedAddition> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecommendedAdditionsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tableMeta = const VerificationMeta('table');
  @override
  late final GeneratedColumn<String?> table = GeneratedColumn<String?>(
      'table', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<int?> userID = GeneratedColumn<int?>(
      'user_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _additionReasonMeta =
      const VerificationMeta('additionReason');
  @override
  late final GeneratedColumn<String?> additionReason = GeneratedColumn<String?>(
      'addition_reason', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, timestamp, description, table, userID, additionReason];
  @override
  String get aliasedName => _alias ?? 'recommended_additions';
  @override
  String get actualTableName => 'recommended_additions';
  @override
  VerificationContext validateIntegrity(
      Insertable<RecommendedAddition> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('table')) {
      context.handle(
          _tableMeta, table.isAcceptableOrUnknown(data['table']!, _tableMeta));
    } else if (isInserting) {
      context.missing(_tableMeta);
    }
    if (data.containsKey('user_i_d')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_i_d']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('addition_reason')) {
      context.handle(
          _additionReasonMeta,
          additionReason.isAcceptableOrUnknown(
              data['addition_reason']!, _additionReasonMeta));
    } else if (isInserting) {
      context.missing(_additionReasonMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  RecommendedAddition map(Map<String, dynamic> data, {String? tablePrefix}) {
    return RecommendedAddition.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $RecommendedAdditionsTable createAlias(String alias) {
    return $RecommendedAdditionsTable(attachedDatabase, alias);
  }
}

class ContestedAddition extends DataClass
    implements Insertable<ContestedAddition> {
  final int id;
  final DateTime timestamp;
  final String description;
  final String table;
  final int userid;
  final String contestReason;
  final String evidenceLink;
  final String evidenceImage;
  ContestedAddition(
      {required this.id,
      required this.timestamp,
      required this.description,
      required this.table,
      required this.userid,
      required this.contestReason,
      required this.evidenceLink,
      required this.evidenceImage});
  factory ContestedAddition.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ContestedAddition(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      table: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}table'])!,
      userid: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}userid'])!,
      contestReason: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}contest_reason'])!,
      evidenceLink: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}evidence_link'])!,
      evidenceImage: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}evidence_image'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['table'] = Variable<String>(table);
    map['userid'] = Variable<int>(userid);
    map['contest_reason'] = Variable<String>(contestReason);
    map['evidence_link'] = Variable<String>(evidenceLink);
    map['evidence_image'] = Variable<String>(evidenceImage);
    return map;
  }

  ContestedAdditionsCompanion toCompanion(bool nullToAbsent) {
    return ContestedAdditionsCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      table: Value(table),
      userid: Value(userid),
      contestReason: Value(contestReason),
      evidenceLink: Value(evidenceLink),
      evidenceImage: Value(evidenceImage),
    );
  }

  factory ContestedAddition.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ContestedAddition(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      table: serializer.fromJson<String>(json['table']),
      userid: serializer.fromJson<int>(json['userid']),
      contestReason: serializer.fromJson<String>(json['contestReason']),
      evidenceLink: serializer.fromJson<String>(json['evidenceLink']),
      evidenceImage: serializer.fromJson<String>(json['evidenceImage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'table': serializer.toJson<String>(table),
      'userid': serializer.toJson<int>(userid),
      'contestReason': serializer.toJson<String>(contestReason),
      'evidenceLink': serializer.toJson<String>(evidenceLink),
      'evidenceImage': serializer.toJson<String>(evidenceImage),
    };
  }

  ContestedAddition copyWith(
          {int? id,
          DateTime? timestamp,
          String? description,
          String? table,
          int? userid,
          String? contestReason,
          String? evidenceLink,
          String? evidenceImage}) =>
      ContestedAddition(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        table: table ?? this.table,
        userid: userid ?? this.userid,
        contestReason: contestReason ?? this.contestReason,
        evidenceLink: evidenceLink ?? this.evidenceLink,
        evidenceImage: evidenceImage ?? this.evidenceImage,
      );
  @override
  String toString() {
    return (StringBuffer('ContestedAddition(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('table: $table, ')
          ..write('userid: $userid, ')
          ..write('contestReason: $contestReason, ')
          ..write('evidenceLink: $evidenceLink, ')
          ..write('evidenceImage: $evidenceImage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, timestamp, description, table, userid,
      contestReason, evidenceLink, evidenceImage);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContestedAddition &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.table == this.table &&
          other.userid == this.userid &&
          other.contestReason == this.contestReason &&
          other.evidenceLink == this.evidenceLink &&
          other.evidenceImage == this.evidenceImage);
}

class ContestedAdditionsCompanion extends UpdateCompanion<ContestedAddition> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<String> table;
  final Value<int> userid;
  final Value<String> contestReason;
  final Value<String> evidenceLink;
  final Value<String> evidenceImage;
  const ContestedAdditionsCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.table = const Value.absent(),
    this.userid = const Value.absent(),
    this.contestReason = const Value.absent(),
    this.evidenceLink = const Value.absent(),
    this.evidenceImage = const Value.absent(),
  });
  ContestedAdditionsCompanion.insert({
    required int id,
    required DateTime timestamp,
    required String description,
    required String table,
    required int userid,
    required String contestReason,
    required String evidenceLink,
    required String evidenceImage,
  })  : id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        table = Value(table),
        userid = Value(userid),
        contestReason = Value(contestReason),
        evidenceLink = Value(evidenceLink),
        evidenceImage = Value(evidenceImage);
  static Insertable<ContestedAddition> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<String>? table,
    Expression<int>? userid,
    Expression<String>? contestReason,
    Expression<String>? evidenceLink,
    Expression<String>? evidenceImage,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (table != null) 'table': table,
      if (userid != null) 'userid': userid,
      if (contestReason != null) 'contest_reason': contestReason,
      if (evidenceLink != null) 'evidence_link': evidenceLink,
      if (evidenceImage != null) 'evidence_image': evidenceImage,
    });
  }

  ContestedAdditionsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<String>? table,
      Value<int>? userid,
      Value<String>? contestReason,
      Value<String>? evidenceLink,
      Value<String>? evidenceImage}) {
    return ContestedAdditionsCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      table: table ?? this.table,
      userid: userid ?? this.userid,
      contestReason: contestReason ?? this.contestReason,
      evidenceLink: evidenceLink ?? this.evidenceLink,
      evidenceImage: evidenceImage ?? this.evidenceImage,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (table.present) {
      map['table'] = Variable<String>(table.value);
    }
    if (userid.present) {
      map['userid'] = Variable<int>(userid.value);
    }
    if (contestReason.present) {
      map['contest_reason'] = Variable<String>(contestReason.value);
    }
    if (evidenceLink.present) {
      map['evidence_link'] = Variable<String>(evidenceLink.value);
    }
    if (evidenceImage.present) {
      map['evidence_image'] = Variable<String>(evidenceImage.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContestedAdditionsCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('table: $table, ')
          ..write('userid: $userid, ')
          ..write('contestReason: $contestReason, ')
          ..write('evidenceLink: $evidenceLink, ')
          ..write('evidenceImage: $evidenceImage')
          ..write(')'))
        .toString();
  }
}

class $ContestedAdditionsTable extends ContestedAdditions
    with TableInfo<$ContestedAdditionsTable, ContestedAddition> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContestedAdditionsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tableMeta = const VerificationMeta('table');
  @override
  late final GeneratedColumn<String?> table = GeneratedColumn<String?>(
      'table', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _useridMeta = const VerificationMeta('userid');
  @override
  late final GeneratedColumn<int?> userid = GeneratedColumn<int?>(
      'userid', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _contestReasonMeta =
      const VerificationMeta('contestReason');
  @override
  late final GeneratedColumn<String?> contestReason = GeneratedColumn<String?>(
      'contest_reason', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _evidenceLinkMeta =
      const VerificationMeta('evidenceLink');
  @override
  late final GeneratedColumn<String?> evidenceLink = GeneratedColumn<String?>(
      'evidence_link', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _evidenceImageMeta =
      const VerificationMeta('evidenceImage');
  @override
  late final GeneratedColumn<String?> evidenceImage = GeneratedColumn<String?>(
      'evidence_image', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        timestamp,
        description,
        table,
        userid,
        contestReason,
        evidenceLink,
        evidenceImage
      ];
  @override
  String get aliasedName => _alias ?? 'contested_additions';
  @override
  String get actualTableName => 'contested_additions';
  @override
  VerificationContext validateIntegrity(Insertable<ContestedAddition> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('table')) {
      context.handle(
          _tableMeta, table.isAcceptableOrUnknown(data['table']!, _tableMeta));
    } else if (isInserting) {
      context.missing(_tableMeta);
    }
    if (data.containsKey('userid')) {
      context.handle(_useridMeta,
          userid.isAcceptableOrUnknown(data['userid']!, _useridMeta));
    } else if (isInserting) {
      context.missing(_useridMeta);
    }
    if (data.containsKey('contest_reason')) {
      context.handle(
          _contestReasonMeta,
          contestReason.isAcceptableOrUnknown(
              data['contest_reason']!, _contestReasonMeta));
    } else if (isInserting) {
      context.missing(_contestReasonMeta);
    }
    if (data.containsKey('evidence_link')) {
      context.handle(
          _evidenceLinkMeta,
          evidenceLink.isAcceptableOrUnknown(
              data['evidence_link']!, _evidenceLinkMeta));
    } else if (isInserting) {
      context.missing(_evidenceLinkMeta);
    }
    if (data.containsKey('evidence_image')) {
      context.handle(
          _evidenceImageMeta,
          evidenceImage.isAcceptableOrUnknown(
              data['evidence_image']!, _evidenceImageMeta));
    } else if (isInserting) {
      context.missing(_evidenceImageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ContestedAddition map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ContestedAddition.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ContestedAdditionsTable createAlias(String alias) {
    return $ContestedAdditionsTable(attachedDatabase, alias);
  }
}

class Product extends DataClass implements Insertable<Product> {
  final int id;
  final DateTime timestamp;
  final String description;
  final int brandID;
  final int categoryID;
  final int subcategoryID;
  final int? productTypeID;
  final int signatureID;
  Product(
      {required this.id,
      required this.timestamp,
      required this.description,
      required this.brandID,
      required this.categoryID,
      required this.subcategoryID,
      this.productTypeID,
      required this.signatureID});
  factory Product.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Product(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      brandID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}brand_i_d'])!,
      categoryID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category_i_d'])!,
      subcategoryID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}subcategory_i_d'])!,
      productTypeID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}product_type_i_d']),
      signatureID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}signature_i_d'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['brand_i_d'] = Variable<int>(brandID);
    map['category_i_d'] = Variable<int>(categoryID);
    map['subcategory_i_d'] = Variable<int>(subcategoryID);
    if (!nullToAbsent || productTypeID != null) {
      map['product_type_i_d'] = Variable<int?>(productTypeID);
    }
    map['signature_i_d'] = Variable<int>(signatureID);
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      brandID: Value(brandID),
      categoryID: Value(categoryID),
      subcategoryID: Value(subcategoryID),
      productTypeID: productTypeID == null && nullToAbsent
          ? const Value.absent()
          : Value(productTypeID),
      signatureID: Value(signatureID),
    );
  }

  factory Product.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Product(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      brandID: serializer.fromJson<int>(json['brandID']),
      categoryID: serializer.fromJson<int>(json['categoryID']),
      subcategoryID: serializer.fromJson<int>(json['subcategoryID']),
      productTypeID: serializer.fromJson<int?>(json['productTypeID']),
      signatureID: serializer.fromJson<int>(json['signatureID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'brandID': serializer.toJson<int>(brandID),
      'categoryID': serializer.toJson<int>(categoryID),
      'subcategoryID': serializer.toJson<int>(subcategoryID),
      'productTypeID': serializer.toJson<int?>(productTypeID),
      'signatureID': serializer.toJson<int>(signatureID),
    };
  }

  Product copyWith(
          {int? id,
          DateTime? timestamp,
          String? description,
          int? brandID,
          int? categoryID,
          int? subcategoryID,
          int? productTypeID,
          int? signatureID}) =>
      Product(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        brandID: brandID ?? this.brandID,
        categoryID: categoryID ?? this.categoryID,
        subcategoryID: subcategoryID ?? this.subcategoryID,
        productTypeID: productTypeID ?? this.productTypeID,
        signatureID: signatureID ?? this.signatureID,
      );
  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('brandID: $brandID, ')
          ..write('categoryID: $categoryID, ')
          ..write('subcategoryID: $subcategoryID, ')
          ..write('productTypeID: $productTypeID, ')
          ..write('signatureID: $signatureID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, timestamp, description, brandID,
      categoryID, subcategoryID, productTypeID, signatureID);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.brandID == this.brandID &&
          other.categoryID == this.categoryID &&
          other.subcategoryID == this.subcategoryID &&
          other.productTypeID == this.productTypeID &&
          other.signatureID == this.signatureID);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> brandID;
  final Value<int> categoryID;
  final Value<int> subcategoryID;
  final Value<int?> productTypeID;
  final Value<int> signatureID;
  const ProductsCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.brandID = const Value.absent(),
    this.categoryID = const Value.absent(),
    this.subcategoryID = const Value.absent(),
    this.productTypeID = const Value.absent(),
    this.signatureID = const Value.absent(),
  });
  ProductsCompanion.insert({
    required int id,
    required DateTime timestamp,
    required String description,
    required int brandID,
    required int categoryID,
    required int subcategoryID,
    this.productTypeID = const Value.absent(),
    required int signatureID,
  })  : id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        brandID = Value(brandID),
        categoryID = Value(categoryID),
        subcategoryID = Value(subcategoryID),
        signatureID = Value(signatureID);
  static Insertable<Product> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? brandID,
    Expression<int>? categoryID,
    Expression<int>? subcategoryID,
    Expression<int?>? productTypeID,
    Expression<int>? signatureID,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (brandID != null) 'brand_i_d': brandID,
      if (categoryID != null) 'category_i_d': categoryID,
      if (subcategoryID != null) 'subcategory_i_d': subcategoryID,
      if (productTypeID != null) 'product_type_i_d': productTypeID,
      if (signatureID != null) 'signature_i_d': signatureID,
    });
  }

  ProductsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? brandID,
      Value<int>? categoryID,
      Value<int>? subcategoryID,
      Value<int?>? productTypeID,
      Value<int>? signatureID}) {
    return ProductsCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      brandID: brandID ?? this.brandID,
      categoryID: categoryID ?? this.categoryID,
      subcategoryID: subcategoryID ?? this.subcategoryID,
      productTypeID: productTypeID ?? this.productTypeID,
      signatureID: signatureID ?? this.signatureID,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (brandID.present) {
      map['brand_i_d'] = Variable<int>(brandID.value);
    }
    if (categoryID.present) {
      map['category_i_d'] = Variable<int>(categoryID.value);
    }
    if (subcategoryID.present) {
      map['subcategory_i_d'] = Variable<int>(subcategoryID.value);
    }
    if (productTypeID.present) {
      map['product_type_i_d'] = Variable<int?>(productTypeID.value);
    }
    if (signatureID.present) {
      map['signature_i_d'] = Variable<int>(signatureID.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('brandID: $brandID, ')
          ..write('categoryID: $categoryID, ')
          ..write('subcategoryID: $subcategoryID, ')
          ..write('productTypeID: $productTypeID, ')
          ..write('signatureID: $signatureID')
          ..write(')'))
        .toString();
  }
}

class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _brandIDMeta = const VerificationMeta('brandID');
  @override
  late final GeneratedColumn<int?> brandID = GeneratedColumn<int?>(
      'brand_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _categoryIDMeta = const VerificationMeta('categoryID');
  @override
  late final GeneratedColumn<int?> categoryID = GeneratedColumn<int?>(
      'category_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _subcategoryIDMeta =
      const VerificationMeta('subcategoryID');
  @override
  late final GeneratedColumn<int?> subcategoryID = GeneratedColumn<int?>(
      'subcategory_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _productTypeIDMeta =
      const VerificationMeta('productTypeID');
  @override
  late final GeneratedColumn<int?> productTypeID = GeneratedColumn<int?>(
      'product_type_i_d', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _signatureIDMeta =
      const VerificationMeta('signatureID');
  @override
  late final GeneratedColumn<int?> signatureID = GeneratedColumn<int?>(
      'signature_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        timestamp,
        description,
        brandID,
        categoryID,
        subcategoryID,
        productTypeID,
        signatureID
      ];
  @override
  String get aliasedName => _alias ?? 'products';
  @override
  String get actualTableName => 'products';
  @override
  VerificationContext validateIntegrity(Insertable<Product> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('brand_i_d')) {
      context.handle(_brandIDMeta,
          brandID.isAcceptableOrUnknown(data['brand_i_d']!, _brandIDMeta));
    } else if (isInserting) {
      context.missing(_brandIDMeta);
    }
    if (data.containsKey('category_i_d')) {
      context.handle(
          _categoryIDMeta,
          categoryID.isAcceptableOrUnknown(
              data['category_i_d']!, _categoryIDMeta));
    } else if (isInserting) {
      context.missing(_categoryIDMeta);
    }
    if (data.containsKey('subcategory_i_d')) {
      context.handle(
          _subcategoryIDMeta,
          subcategoryID.isAcceptableOrUnknown(
              data['subcategory_i_d']!, _subcategoryIDMeta));
    } else if (isInserting) {
      context.missing(_subcategoryIDMeta);
    }
    if (data.containsKey('product_type_i_d')) {
      context.handle(
          _productTypeIDMeta,
          productTypeID.isAcceptableOrUnknown(
              data['product_type_i_d']!, _productTypeIDMeta));
    }
    if (data.containsKey('signature_i_d')) {
      context.handle(
          _signatureIDMeta,
          signatureID.isAcceptableOrUnknown(
              data['signature_i_d']!, _signatureIDMeta));
    } else if (isInserting) {
      context.missing(_signatureIDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Product.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(attachedDatabase, alias);
  }
}

class ProductRecommendation extends DataClass
    implements Insertable<ProductRecommendation> {
  final int brandID;
  final int categoryID;
  final int subcategoryID;
  final int? productTypeID;
  final int signatureID;
  final int id;
  final DateTime timestamp;
  final String description;
  final int recommendationID;
  final int userID;
  ProductRecommendation(
      {required this.brandID,
      required this.categoryID,
      required this.subcategoryID,
      this.productTypeID,
      required this.signatureID,
      required this.id,
      required this.timestamp,
      required this.description,
      required this.recommendationID,
      required this.userID});
  factory ProductRecommendation.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProductRecommendation(
      brandID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}brand_i_d'])!,
      categoryID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category_i_d'])!,
      subcategoryID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}subcategory_i_d'])!,
      productTypeID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}product_type_i_d']),
      signatureID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}signature_i_d'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      recommendationID: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}recommendation_i_d'])!,
      userID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_i_d'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['brand_i_d'] = Variable<int>(brandID);
    map['category_i_d'] = Variable<int>(categoryID);
    map['subcategory_i_d'] = Variable<int>(subcategoryID);
    if (!nullToAbsent || productTypeID != null) {
      map['product_type_i_d'] = Variable<int?>(productTypeID);
    }
    map['signature_i_d'] = Variable<int>(signatureID);
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['recommendation_i_d'] = Variable<int>(recommendationID);
    map['user_i_d'] = Variable<int>(userID);
    return map;
  }

  ProductRecommendationsCompanion toCompanion(bool nullToAbsent) {
    return ProductRecommendationsCompanion(
      brandID: Value(brandID),
      categoryID: Value(categoryID),
      subcategoryID: Value(subcategoryID),
      productTypeID: productTypeID == null && nullToAbsent
          ? const Value.absent()
          : Value(productTypeID),
      signatureID: Value(signatureID),
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      recommendationID: Value(recommendationID),
      userID: Value(userID),
    );
  }

  factory ProductRecommendation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductRecommendation(
      brandID: serializer.fromJson<int>(json['brandID']),
      categoryID: serializer.fromJson<int>(json['categoryID']),
      subcategoryID: serializer.fromJson<int>(json['subcategoryID']),
      productTypeID: serializer.fromJson<int?>(json['productTypeID']),
      signatureID: serializer.fromJson<int>(json['signatureID']),
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      recommendationID: serializer.fromJson<int>(json['recommendationID']),
      userID: serializer.fromJson<int>(json['userID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'brandID': serializer.toJson<int>(brandID),
      'categoryID': serializer.toJson<int>(categoryID),
      'subcategoryID': serializer.toJson<int>(subcategoryID),
      'productTypeID': serializer.toJson<int?>(productTypeID),
      'signatureID': serializer.toJson<int>(signatureID),
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'recommendationID': serializer.toJson<int>(recommendationID),
      'userID': serializer.toJson<int>(userID),
    };
  }

  ProductRecommendation copyWith(
          {int? brandID,
          int? categoryID,
          int? subcategoryID,
          int? productTypeID,
          int? signatureID,
          int? id,
          DateTime? timestamp,
          String? description,
          int? recommendationID,
          int? userID}) =>
      ProductRecommendation(
        brandID: brandID ?? this.brandID,
        categoryID: categoryID ?? this.categoryID,
        subcategoryID: subcategoryID ?? this.subcategoryID,
        productTypeID: productTypeID ?? this.productTypeID,
        signatureID: signatureID ?? this.signatureID,
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        recommendationID: recommendationID ?? this.recommendationID,
        userID: userID ?? this.userID,
      );
  @override
  String toString() {
    return (StringBuffer('ProductRecommendation(')
          ..write('brandID: $brandID, ')
          ..write('categoryID: $categoryID, ')
          ..write('subcategoryID: $subcategoryID, ')
          ..write('productTypeID: $productTypeID, ')
          ..write('signatureID: $signatureID, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('recommendationID: $recommendationID, ')
          ..write('userID: $userID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      brandID,
      categoryID,
      subcategoryID,
      productTypeID,
      signatureID,
      id,
      timestamp,
      description,
      recommendationID,
      userID);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductRecommendation &&
          other.brandID == this.brandID &&
          other.categoryID == this.categoryID &&
          other.subcategoryID == this.subcategoryID &&
          other.productTypeID == this.productTypeID &&
          other.signatureID == this.signatureID &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.recommendationID == this.recommendationID &&
          other.userID == this.userID);
}

class ProductRecommendationsCompanion
    extends UpdateCompanion<ProductRecommendation> {
  final Value<int> brandID;
  final Value<int> categoryID;
  final Value<int> subcategoryID;
  final Value<int?> productTypeID;
  final Value<int> signatureID;
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> recommendationID;
  final Value<int> userID;
  const ProductRecommendationsCompanion({
    this.brandID = const Value.absent(),
    this.categoryID = const Value.absent(),
    this.subcategoryID = const Value.absent(),
    this.productTypeID = const Value.absent(),
    this.signatureID = const Value.absent(),
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.recommendationID = const Value.absent(),
    this.userID = const Value.absent(),
  });
  ProductRecommendationsCompanion.insert({
    required int brandID,
    required int categoryID,
    required int subcategoryID,
    this.productTypeID = const Value.absent(),
    required int signatureID,
    required int id,
    required DateTime timestamp,
    required String description,
    required int recommendationID,
    required int userID,
  })  : brandID = Value(brandID),
        categoryID = Value(categoryID),
        subcategoryID = Value(subcategoryID),
        signatureID = Value(signatureID),
        id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        recommendationID = Value(recommendationID),
        userID = Value(userID);
  static Insertable<ProductRecommendation> custom({
    Expression<int>? brandID,
    Expression<int>? categoryID,
    Expression<int>? subcategoryID,
    Expression<int?>? productTypeID,
    Expression<int>? signatureID,
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? recommendationID,
    Expression<int>? userID,
  }) {
    return RawValuesInsertable({
      if (brandID != null) 'brand_i_d': brandID,
      if (categoryID != null) 'category_i_d': categoryID,
      if (subcategoryID != null) 'subcategory_i_d': subcategoryID,
      if (productTypeID != null) 'product_type_i_d': productTypeID,
      if (signatureID != null) 'signature_i_d': signatureID,
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (recommendationID != null) 'recommendation_i_d': recommendationID,
      if (userID != null) 'user_i_d': userID,
    });
  }

  ProductRecommendationsCompanion copyWith(
      {Value<int>? brandID,
      Value<int>? categoryID,
      Value<int>? subcategoryID,
      Value<int?>? productTypeID,
      Value<int>? signatureID,
      Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? recommendationID,
      Value<int>? userID}) {
    return ProductRecommendationsCompanion(
      brandID: brandID ?? this.brandID,
      categoryID: categoryID ?? this.categoryID,
      subcategoryID: subcategoryID ?? this.subcategoryID,
      productTypeID: productTypeID ?? this.productTypeID,
      signatureID: signatureID ?? this.signatureID,
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      recommendationID: recommendationID ?? this.recommendationID,
      userID: userID ?? this.userID,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (brandID.present) {
      map['brand_i_d'] = Variable<int>(brandID.value);
    }
    if (categoryID.present) {
      map['category_i_d'] = Variable<int>(categoryID.value);
    }
    if (subcategoryID.present) {
      map['subcategory_i_d'] = Variable<int>(subcategoryID.value);
    }
    if (productTypeID.present) {
      map['product_type_i_d'] = Variable<int?>(productTypeID.value);
    }
    if (signatureID.present) {
      map['signature_i_d'] = Variable<int>(signatureID.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (recommendationID.present) {
      map['recommendation_i_d'] = Variable<int>(recommendationID.value);
    }
    if (userID.present) {
      map['user_i_d'] = Variable<int>(userID.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductRecommendationsCompanion(')
          ..write('brandID: $brandID, ')
          ..write('categoryID: $categoryID, ')
          ..write('subcategoryID: $subcategoryID, ')
          ..write('productTypeID: $productTypeID, ')
          ..write('signatureID: $signatureID, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('recommendationID: $recommendationID, ')
          ..write('userID: $userID')
          ..write(')'))
        .toString();
  }
}

class $ProductRecommendationsTable extends ProductRecommendations
    with TableInfo<$ProductRecommendationsTable, ProductRecommendation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductRecommendationsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _brandIDMeta = const VerificationMeta('brandID');
  @override
  late final GeneratedColumn<int?> brandID = GeneratedColumn<int?>(
      'brand_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _categoryIDMeta = const VerificationMeta('categoryID');
  @override
  late final GeneratedColumn<int?> categoryID = GeneratedColumn<int?>(
      'category_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _subcategoryIDMeta =
      const VerificationMeta('subcategoryID');
  @override
  late final GeneratedColumn<int?> subcategoryID = GeneratedColumn<int?>(
      'subcategory_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _productTypeIDMeta =
      const VerificationMeta('productTypeID');
  @override
  late final GeneratedColumn<int?> productTypeID = GeneratedColumn<int?>(
      'product_type_i_d', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _signatureIDMeta =
      const VerificationMeta('signatureID');
  @override
  late final GeneratedColumn<int?> signatureID = GeneratedColumn<int?>(
      'signature_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _recommendationIDMeta =
      const VerificationMeta('recommendationID');
  @override
  late final GeneratedColumn<int?> recommendationID = GeneratedColumn<int?>(
      'recommendation_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<int?> userID = GeneratedColumn<int?>(
      'user_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        brandID,
        categoryID,
        subcategoryID,
        productTypeID,
        signatureID,
        id,
        timestamp,
        description,
        recommendationID,
        userID
      ];
  @override
  String get aliasedName => _alias ?? 'product_recommendations';
  @override
  String get actualTableName => 'product_recommendations';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProductRecommendation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('brand_i_d')) {
      context.handle(_brandIDMeta,
          brandID.isAcceptableOrUnknown(data['brand_i_d']!, _brandIDMeta));
    } else if (isInserting) {
      context.missing(_brandIDMeta);
    }
    if (data.containsKey('category_i_d')) {
      context.handle(
          _categoryIDMeta,
          categoryID.isAcceptableOrUnknown(
              data['category_i_d']!, _categoryIDMeta));
    } else if (isInserting) {
      context.missing(_categoryIDMeta);
    }
    if (data.containsKey('subcategory_i_d')) {
      context.handle(
          _subcategoryIDMeta,
          subcategoryID.isAcceptableOrUnknown(
              data['subcategory_i_d']!, _subcategoryIDMeta));
    } else if (isInserting) {
      context.missing(_subcategoryIDMeta);
    }
    if (data.containsKey('product_type_i_d')) {
      context.handle(
          _productTypeIDMeta,
          productTypeID.isAcceptableOrUnknown(
              data['product_type_i_d']!, _productTypeIDMeta));
    }
    if (data.containsKey('signature_i_d')) {
      context.handle(
          _signatureIDMeta,
          signatureID.isAcceptableOrUnknown(
              data['signature_i_d']!, _signatureIDMeta));
    } else if (isInserting) {
      context.missing(_signatureIDMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('recommendation_i_d')) {
      context.handle(
          _recommendationIDMeta,
          recommendationID.isAcceptableOrUnknown(
              data['recommendation_i_d']!, _recommendationIDMeta));
    } else if (isInserting) {
      context.missing(_recommendationIDMeta);
    }
    if (data.containsKey('user_i_d')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_i_d']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ProductRecommendation map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProductRecommendation.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProductRecommendationsTable createAlias(String alias) {
    return $ProductRecommendationsTable(attachedDatabase, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final int id;
  final DateTime timestamp;
  final String description;
  final String category;
  Category(
      {required this.id,
      required this.timestamp,
      required this.description,
      required this.category});
  factory Category.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Category(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      category: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['category'] = Variable<String>(category);
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      category: Value(category),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      category: serializer.fromJson<String>(json['category']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'category': serializer.toJson<String>(category),
    };
  }

  Category copyWith(
          {int? id,
          DateTime? timestamp,
          String? description,
          String? category}) =>
      Category(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        category: category ?? this.category,
      );
  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, timestamp, description, category);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.category == this.category);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<String> category;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.category = const Value.absent(),
  });
  CategoriesCompanion.insert({
    required int id,
    required DateTime timestamp,
    required String description,
    required String category,
  })  : id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        category = Value(category);
  static Insertable<Category> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<String>? category,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (category != null) 'category': category,
    });
  }

  CategoriesCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<String>? category}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      category: category ?? this.category,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumn<String?> category = GeneratedColumn<String?>(
      'category', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 4, maxTextLength: 32),
      type: const StringType(),
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, timestamp, description, category];
  @override
  String get aliasedName => _alias ?? 'categories';
  @override
  String get actualTableName => 'categories';
  @override
  VerificationContext validateIntegrity(Insertable<Category> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Category.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }
}

class CategoryRecommendation extends DataClass
    implements Insertable<CategoryRecommendation> {
  final String category;
  final int id;
  final DateTime timestamp;
  final String description;
  final int recommendationID;
  final int exampleProductID;
  CategoryRecommendation(
      {required this.category,
      required this.id,
      required this.timestamp,
      required this.description,
      required this.recommendationID,
      required this.exampleProductID});
  factory CategoryRecommendation.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CategoryRecommendation(
      category: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      recommendationID: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}recommendation_i_d'])!,
      exampleProductID: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}example_product_i_d'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['category'] = Variable<String>(category);
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['recommendation_i_d'] = Variable<int>(recommendationID);
    map['example_product_i_d'] = Variable<int>(exampleProductID);
    return map;
  }

  CategoryRecommendationsCompanion toCompanion(bool nullToAbsent) {
    return CategoryRecommendationsCompanion(
      category: Value(category),
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      recommendationID: Value(recommendationID),
      exampleProductID: Value(exampleProductID),
    );
  }

  factory CategoryRecommendation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryRecommendation(
      category: serializer.fromJson<String>(json['category']),
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      recommendationID: serializer.fromJson<int>(json['recommendationID']),
      exampleProductID: serializer.fromJson<int>(json['exampleProductID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'category': serializer.toJson<String>(category),
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'recommendationID': serializer.toJson<int>(recommendationID),
      'exampleProductID': serializer.toJson<int>(exampleProductID),
    };
  }

  CategoryRecommendation copyWith(
          {String? category,
          int? id,
          DateTime? timestamp,
          String? description,
          int? recommendationID,
          int? exampleProductID}) =>
      CategoryRecommendation(
        category: category ?? this.category,
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        recommendationID: recommendationID ?? this.recommendationID,
        exampleProductID: exampleProductID ?? this.exampleProductID,
      );
  @override
  String toString() {
    return (StringBuffer('CategoryRecommendation(')
          ..write('category: $category, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('recommendationID: $recommendationID, ')
          ..write('exampleProductID: $exampleProductID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      category, id, timestamp, description, recommendationID, exampleProductID);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryRecommendation &&
          other.category == this.category &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.recommendationID == this.recommendationID &&
          other.exampleProductID == this.exampleProductID);
}

class CategoryRecommendationsCompanion
    extends UpdateCompanion<CategoryRecommendation> {
  final Value<String> category;
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> recommendationID;
  final Value<int> exampleProductID;
  const CategoryRecommendationsCompanion({
    this.category = const Value.absent(),
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.recommendationID = const Value.absent(),
    this.exampleProductID = const Value.absent(),
  });
  CategoryRecommendationsCompanion.insert({
    required String category,
    required int id,
    required DateTime timestamp,
    required String description,
    required int recommendationID,
    required int exampleProductID,
  })  : category = Value(category),
        id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        recommendationID = Value(recommendationID),
        exampleProductID = Value(exampleProductID);
  static Insertable<CategoryRecommendation> custom({
    Expression<String>? category,
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? recommendationID,
    Expression<int>? exampleProductID,
  }) {
    return RawValuesInsertable({
      if (category != null) 'category': category,
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (recommendationID != null) 'recommendation_i_d': recommendationID,
      if (exampleProductID != null) 'example_product_i_d': exampleProductID,
    });
  }

  CategoryRecommendationsCompanion copyWith(
      {Value<String>? category,
      Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? recommendationID,
      Value<int>? exampleProductID}) {
    return CategoryRecommendationsCompanion(
      category: category ?? this.category,
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      recommendationID: recommendationID ?? this.recommendationID,
      exampleProductID: exampleProductID ?? this.exampleProductID,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (recommendationID.present) {
      map['recommendation_i_d'] = Variable<int>(recommendationID.value);
    }
    if (exampleProductID.present) {
      map['example_product_i_d'] = Variable<int>(exampleProductID.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryRecommendationsCompanion(')
          ..write('category: $category, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('recommendationID: $recommendationID, ')
          ..write('exampleProductID: $exampleProductID')
          ..write(')'))
        .toString();
  }
}

class $CategoryRecommendationsTable extends CategoryRecommendations
    with TableInfo<$CategoryRecommendationsTable, CategoryRecommendation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryRecommendationsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumn<String?> category = GeneratedColumn<String?>(
      'category', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 4, maxTextLength: 32),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _recommendationIDMeta =
      const VerificationMeta('recommendationID');
  @override
  late final GeneratedColumn<int?> recommendationID = GeneratedColumn<int?>(
      'recommendation_i_d', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _exampleProductIDMeta =
      const VerificationMeta('exampleProductID');
  @override
  late final GeneratedColumn<int?> exampleProductID = GeneratedColumn<int?>(
      'example_product_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        category,
        id,
        timestamp,
        description,
        recommendationID,
        exampleProductID
      ];
  @override
  String get aliasedName => _alias ?? 'category_recommendations';
  @override
  String get actualTableName => 'category_recommendations';
  @override
  VerificationContext validateIntegrity(
      Insertable<CategoryRecommendation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('recommendation_i_d')) {
      context.handle(
          _recommendationIDMeta,
          recommendationID.isAcceptableOrUnknown(
              data['recommendation_i_d']!, _recommendationIDMeta));
    } else if (isInserting) {
      context.missing(_recommendationIDMeta);
    }
    if (data.containsKey('example_product_i_d')) {
      context.handle(
          _exampleProductIDMeta,
          exampleProductID.isAcceptableOrUnknown(
              data['example_product_i_d']!, _exampleProductIDMeta));
    } else if (isInserting) {
      context.missing(_exampleProductIDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  CategoryRecommendation map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CategoryRecommendation.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CategoryRecommendationsTable createAlias(String alias) {
    return $CategoryRecommendationsTable(attachedDatabase, alias);
  }
}

class Subcategory extends DataClass implements Insertable<Subcategory> {
  final int id;
  final DateTime timestamp;
  final String description;
  final int categoryID;
  final String subcategory;
  Subcategory(
      {required this.id,
      required this.timestamp,
      required this.description,
      required this.categoryID,
      required this.subcategory});
  factory Subcategory.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Subcategory(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      categoryID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category_i_d'])!,
      subcategory: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}subcategory'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['category_i_d'] = Variable<int>(categoryID);
    map['subcategory'] = Variable<String>(subcategory);
    return map;
  }

  SubcategoriesCompanion toCompanion(bool nullToAbsent) {
    return SubcategoriesCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      categoryID: Value(categoryID),
      subcategory: Value(subcategory),
    );
  }

  factory Subcategory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Subcategory(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      categoryID: serializer.fromJson<int>(json['categoryID']),
      subcategory: serializer.fromJson<String>(json['subcategory']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'categoryID': serializer.toJson<int>(categoryID),
      'subcategory': serializer.toJson<String>(subcategory),
    };
  }

  Subcategory copyWith(
          {int? id,
          DateTime? timestamp,
          String? description,
          int? categoryID,
          String? subcategory}) =>
      Subcategory(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        categoryID: categoryID ?? this.categoryID,
        subcategory: subcategory ?? this.subcategory,
      );
  @override
  String toString() {
    return (StringBuffer('Subcategory(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('categoryID: $categoryID, ')
          ..write('subcategory: $subcategory')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, timestamp, description, categoryID, subcategory);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Subcategory &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.categoryID == this.categoryID &&
          other.subcategory == this.subcategory);
}

class SubcategoriesCompanion extends UpdateCompanion<Subcategory> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> categoryID;
  final Value<String> subcategory;
  const SubcategoriesCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.categoryID = const Value.absent(),
    this.subcategory = const Value.absent(),
  });
  SubcategoriesCompanion.insert({
    required int id,
    required DateTime timestamp,
    required String description,
    required int categoryID,
    required String subcategory,
  })  : id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        categoryID = Value(categoryID),
        subcategory = Value(subcategory);
  static Insertable<Subcategory> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? categoryID,
    Expression<String>? subcategory,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (categoryID != null) 'category_i_d': categoryID,
      if (subcategory != null) 'subcategory': subcategory,
    });
  }

  SubcategoriesCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? categoryID,
      Value<String>? subcategory}) {
    return SubcategoriesCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      categoryID: categoryID ?? this.categoryID,
      subcategory: subcategory ?? this.subcategory,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (categoryID.present) {
      map['category_i_d'] = Variable<int>(categoryID.value);
    }
    if (subcategory.present) {
      map['subcategory'] = Variable<String>(subcategory.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubcategoriesCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('categoryID: $categoryID, ')
          ..write('subcategory: $subcategory')
          ..write(')'))
        .toString();
  }
}

class $SubcategoriesTable extends Subcategories
    with TableInfo<$SubcategoriesTable, Subcategory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SubcategoriesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _categoryIDMeta = const VerificationMeta('categoryID');
  @override
  late final GeneratedColumn<int?> categoryID = GeneratedColumn<int?>(
      'category_i_d', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES categories (id)');
  final VerificationMeta _subcategoryMeta =
      const VerificationMeta('subcategory');
  @override
  late final GeneratedColumn<String?> subcategory = GeneratedColumn<String?>(
      'subcategory', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 4, maxTextLength: 32),
      type: const StringType(),
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, timestamp, description, categoryID, subcategory];
  @override
  String get aliasedName => _alias ?? 'subcategories';
  @override
  String get actualTableName => 'subcategories';
  @override
  VerificationContext validateIntegrity(Insertable<Subcategory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('category_i_d')) {
      context.handle(
          _categoryIDMeta,
          categoryID.isAcceptableOrUnknown(
              data['category_i_d']!, _categoryIDMeta));
    } else if (isInserting) {
      context.missing(_categoryIDMeta);
    }
    if (data.containsKey('subcategory')) {
      context.handle(
          _subcategoryMeta,
          subcategory.isAcceptableOrUnknown(
              data['subcategory']!, _subcategoryMeta));
    } else if (isInserting) {
      context.missing(_subcategoryMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Subcategory map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Subcategory.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SubcategoriesTable createAlias(String alias) {
    return $SubcategoriesTable(attachedDatabase, alias);
  }
}

class SubcategoryRecommendationData extends DataClass
    implements Insertable<SubcategoryRecommendationData> {
  final int categoryID;
  final String subcategory;
  final int id;
  final DateTime timestamp;
  final String description;
  final int recommendationID;
  final int exampleProductID;
  SubcategoryRecommendationData(
      {required this.categoryID,
      required this.subcategory,
      required this.id,
      required this.timestamp,
      required this.description,
      required this.recommendationID,
      required this.exampleProductID});
  factory SubcategoryRecommendationData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SubcategoryRecommendationData(
      categoryID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category_i_d'])!,
      subcategory: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}subcategory'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      recommendationID: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}recommendation_i_d'])!,
      exampleProductID: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}example_product_i_d'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['category_i_d'] = Variable<int>(categoryID);
    map['subcategory'] = Variable<String>(subcategory);
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['recommendation_i_d'] = Variable<int>(recommendationID);
    map['example_product_i_d'] = Variable<int>(exampleProductID);
    return map;
  }

  SubcategoryRecommendationCompanion toCompanion(bool nullToAbsent) {
    return SubcategoryRecommendationCompanion(
      categoryID: Value(categoryID),
      subcategory: Value(subcategory),
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      recommendationID: Value(recommendationID),
      exampleProductID: Value(exampleProductID),
    );
  }

  factory SubcategoryRecommendationData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SubcategoryRecommendationData(
      categoryID: serializer.fromJson<int>(json['categoryID']),
      subcategory: serializer.fromJson<String>(json['subcategory']),
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      recommendationID: serializer.fromJson<int>(json['recommendationID']),
      exampleProductID: serializer.fromJson<int>(json['exampleProductID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'categoryID': serializer.toJson<int>(categoryID),
      'subcategory': serializer.toJson<String>(subcategory),
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'recommendationID': serializer.toJson<int>(recommendationID),
      'exampleProductID': serializer.toJson<int>(exampleProductID),
    };
  }

  SubcategoryRecommendationData copyWith(
          {int? categoryID,
          String? subcategory,
          int? id,
          DateTime? timestamp,
          String? description,
          int? recommendationID,
          int? exampleProductID}) =>
      SubcategoryRecommendationData(
        categoryID: categoryID ?? this.categoryID,
        subcategory: subcategory ?? this.subcategory,
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        recommendationID: recommendationID ?? this.recommendationID,
        exampleProductID: exampleProductID ?? this.exampleProductID,
      );
  @override
  String toString() {
    return (StringBuffer('SubcategoryRecommendationData(')
          ..write('categoryID: $categoryID, ')
          ..write('subcategory: $subcategory, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('recommendationID: $recommendationID, ')
          ..write('exampleProductID: $exampleProductID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(categoryID, subcategory, id, timestamp,
      description, recommendationID, exampleProductID);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SubcategoryRecommendationData &&
          other.categoryID == this.categoryID &&
          other.subcategory == this.subcategory &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.recommendationID == this.recommendationID &&
          other.exampleProductID == this.exampleProductID);
}

class SubcategoryRecommendationCompanion
    extends UpdateCompanion<SubcategoryRecommendationData> {
  final Value<int> categoryID;
  final Value<String> subcategory;
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> recommendationID;
  final Value<int> exampleProductID;
  const SubcategoryRecommendationCompanion({
    this.categoryID = const Value.absent(),
    this.subcategory = const Value.absent(),
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.recommendationID = const Value.absent(),
    this.exampleProductID = const Value.absent(),
  });
  SubcategoryRecommendationCompanion.insert({
    required int categoryID,
    required String subcategory,
    required int id,
    required DateTime timestamp,
    required String description,
    required int recommendationID,
    required int exampleProductID,
  })  : categoryID = Value(categoryID),
        subcategory = Value(subcategory),
        id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        recommendationID = Value(recommendationID),
        exampleProductID = Value(exampleProductID);
  static Insertable<SubcategoryRecommendationData> custom({
    Expression<int>? categoryID,
    Expression<String>? subcategory,
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? recommendationID,
    Expression<int>? exampleProductID,
  }) {
    return RawValuesInsertable({
      if (categoryID != null) 'category_i_d': categoryID,
      if (subcategory != null) 'subcategory': subcategory,
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (recommendationID != null) 'recommendation_i_d': recommendationID,
      if (exampleProductID != null) 'example_product_i_d': exampleProductID,
    });
  }

  SubcategoryRecommendationCompanion copyWith(
      {Value<int>? categoryID,
      Value<String>? subcategory,
      Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? recommendationID,
      Value<int>? exampleProductID}) {
    return SubcategoryRecommendationCompanion(
      categoryID: categoryID ?? this.categoryID,
      subcategory: subcategory ?? this.subcategory,
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      recommendationID: recommendationID ?? this.recommendationID,
      exampleProductID: exampleProductID ?? this.exampleProductID,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (categoryID.present) {
      map['category_i_d'] = Variable<int>(categoryID.value);
    }
    if (subcategory.present) {
      map['subcategory'] = Variable<String>(subcategory.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (recommendationID.present) {
      map['recommendation_i_d'] = Variable<int>(recommendationID.value);
    }
    if (exampleProductID.present) {
      map['example_product_i_d'] = Variable<int>(exampleProductID.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubcategoryRecommendationCompanion(')
          ..write('categoryID: $categoryID, ')
          ..write('subcategory: $subcategory, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('recommendationID: $recommendationID, ')
          ..write('exampleProductID: $exampleProductID')
          ..write(')'))
        .toString();
  }
}

class $SubcategoryRecommendationTable extends SubcategoryRecommendation
    with
        TableInfo<$SubcategoryRecommendationTable,
            SubcategoryRecommendationData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SubcategoryRecommendationTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _categoryIDMeta = const VerificationMeta('categoryID');
  @override
  late final GeneratedColumn<int?> categoryID = GeneratedColumn<int?>(
      'category_i_d', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES categories (id)');
  final VerificationMeta _subcategoryMeta =
      const VerificationMeta('subcategory');
  @override
  late final GeneratedColumn<String?> subcategory = GeneratedColumn<String?>(
      'subcategory', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 4, maxTextLength: 32),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _recommendationIDMeta =
      const VerificationMeta('recommendationID');
  @override
  late final GeneratedColumn<int?> recommendationID = GeneratedColumn<int?>(
      'recommendation_i_d', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _exampleProductIDMeta =
      const VerificationMeta('exampleProductID');
  @override
  late final GeneratedColumn<int?> exampleProductID = GeneratedColumn<int?>(
      'example_product_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        categoryID,
        subcategory,
        id,
        timestamp,
        description,
        recommendationID,
        exampleProductID
      ];
  @override
  String get aliasedName => _alias ?? 'subcategory_recommendation';
  @override
  String get actualTableName => 'subcategory_recommendation';
  @override
  VerificationContext validateIntegrity(
      Insertable<SubcategoryRecommendationData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('category_i_d')) {
      context.handle(
          _categoryIDMeta,
          categoryID.isAcceptableOrUnknown(
              data['category_i_d']!, _categoryIDMeta));
    } else if (isInserting) {
      context.missing(_categoryIDMeta);
    }
    if (data.containsKey('subcategory')) {
      context.handle(
          _subcategoryMeta,
          subcategory.isAcceptableOrUnknown(
              data['subcategory']!, _subcategoryMeta));
    } else if (isInserting) {
      context.missing(_subcategoryMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('recommendation_i_d')) {
      context.handle(
          _recommendationIDMeta,
          recommendationID.isAcceptableOrUnknown(
              data['recommendation_i_d']!, _recommendationIDMeta));
    } else if (isInserting) {
      context.missing(_recommendationIDMeta);
    }
    if (data.containsKey('example_product_i_d')) {
      context.handle(
          _exampleProductIDMeta,
          exampleProductID.isAcceptableOrUnknown(
              data['example_product_i_d']!, _exampleProductIDMeta));
    } else if (isInserting) {
      context.missing(_exampleProductIDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  SubcategoryRecommendationData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return SubcategoryRecommendationData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SubcategoryRecommendationTable createAlias(String alias) {
    return $SubcategoryRecommendationTable(attachedDatabase, alias);
  }
}

class ProductType extends DataClass implements Insertable<ProductType> {
  final int id;
  final DateTime timestamp;
  final String description;
  final String productType;
  ProductType(
      {required this.id,
      required this.timestamp,
      required this.description,
      required this.productType});
  factory ProductType.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProductType(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      productType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}product_type'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['product_type'] = Variable<String>(productType);
    return map;
  }

  ProductTypesCompanion toCompanion(bool nullToAbsent) {
    return ProductTypesCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      productType: Value(productType),
    );
  }

  factory ProductType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductType(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      productType: serializer.fromJson<String>(json['productType']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'productType': serializer.toJson<String>(productType),
    };
  }

  ProductType copyWith(
          {int? id,
          DateTime? timestamp,
          String? description,
          String? productType}) =>
      ProductType(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        productType: productType ?? this.productType,
      );
  @override
  String toString() {
    return (StringBuffer('ProductType(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('productType: $productType')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, timestamp, description, productType);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductType &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.productType == this.productType);
}

class ProductTypesCompanion extends UpdateCompanion<ProductType> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<String> productType;
  const ProductTypesCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.productType = const Value.absent(),
  });
  ProductTypesCompanion.insert({
    required int id,
    required DateTime timestamp,
    required String description,
    required String productType,
  })  : id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        productType = Value(productType);
  static Insertable<ProductType> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<String>? productType,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (productType != null) 'product_type': productType,
    });
  }

  ProductTypesCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<String>? productType}) {
    return ProductTypesCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      productType: productType ?? this.productType,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (productType.present) {
      map['product_type'] = Variable<String>(productType.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductTypesCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('productType: $productType')
          ..write(')'))
        .toString();
  }
}

class $ProductTypesTable extends ProductTypes
    with TableInfo<$ProductTypesTable, ProductType> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductTypesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _productTypeMeta =
      const VerificationMeta('productType');
  @override
  late final GeneratedColumn<String?> productType = GeneratedColumn<String?>(
      'product_type', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 4, maxTextLength: 32),
      type: const StringType(),
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, timestamp, description, productType];
  @override
  String get aliasedName => _alias ?? 'product_types';
  @override
  String get actualTableName => 'product_types';
  @override
  VerificationContext validateIntegrity(Insertable<ProductType> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('product_type')) {
      context.handle(
          _productTypeMeta,
          productType.isAcceptableOrUnknown(
              data['product_type']!, _productTypeMeta));
    } else if (isInserting) {
      context.missing(_productTypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ProductType map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProductType.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProductTypesTable createAlias(String alias) {
    return $ProductTypesTable(attachedDatabase, alias);
  }
}

class ProductTypeRecommendation extends DataClass
    implements Insertable<ProductTypeRecommendation> {
  final String productType;
  final String description;
  final int id;
  final DateTime timestamp;
  final int recommendationID;
  final int exampleProductID;
  final String reason;
  ProductTypeRecommendation(
      {required this.productType,
      required this.description,
      required this.id,
      required this.timestamp,
      required this.recommendationID,
      required this.exampleProductID,
      required this.reason});
  factory ProductTypeRecommendation.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProductTypeRecommendation(
      productType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}product_type'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      recommendationID: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}recommendation_i_d'])!,
      exampleProductID: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}example_product_i_d'])!,
      reason: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}reason'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['product_type'] = Variable<String>(productType);
    map['description'] = Variable<String>(description);
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['recommendation_i_d'] = Variable<int>(recommendationID);
    map['example_product_i_d'] = Variable<int>(exampleProductID);
    map['reason'] = Variable<String>(reason);
    return map;
  }

  ProductTypeRecommendationsCompanion toCompanion(bool nullToAbsent) {
    return ProductTypeRecommendationsCompanion(
      productType: Value(productType),
      description: Value(description),
      id: Value(id),
      timestamp: Value(timestamp),
      recommendationID: Value(recommendationID),
      exampleProductID: Value(exampleProductID),
      reason: Value(reason),
    );
  }

  factory ProductTypeRecommendation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductTypeRecommendation(
      productType: serializer.fromJson<String>(json['productType']),
      description: serializer.fromJson<String>(json['description']),
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      recommendationID: serializer.fromJson<int>(json['recommendationID']),
      exampleProductID: serializer.fromJson<int>(json['exampleProductID']),
      reason: serializer.fromJson<String>(json['reason']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'productType': serializer.toJson<String>(productType),
      'description': serializer.toJson<String>(description),
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'recommendationID': serializer.toJson<int>(recommendationID),
      'exampleProductID': serializer.toJson<int>(exampleProductID),
      'reason': serializer.toJson<String>(reason),
    };
  }

  ProductTypeRecommendation copyWith(
          {String? productType,
          String? description,
          int? id,
          DateTime? timestamp,
          int? recommendationID,
          int? exampleProductID,
          String? reason}) =>
      ProductTypeRecommendation(
        productType: productType ?? this.productType,
        description: description ?? this.description,
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        recommendationID: recommendationID ?? this.recommendationID,
        exampleProductID: exampleProductID ?? this.exampleProductID,
        reason: reason ?? this.reason,
      );
  @override
  String toString() {
    return (StringBuffer('ProductTypeRecommendation(')
          ..write('productType: $productType, ')
          ..write('description: $description, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('recommendationID: $recommendationID, ')
          ..write('exampleProductID: $exampleProductID, ')
          ..write('reason: $reason')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(productType, description, id, timestamp,
      recommendationID, exampleProductID, reason);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductTypeRecommendation &&
          other.productType == this.productType &&
          other.description == this.description &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.recommendationID == this.recommendationID &&
          other.exampleProductID == this.exampleProductID &&
          other.reason == this.reason);
}

class ProductTypeRecommendationsCompanion
    extends UpdateCompanion<ProductTypeRecommendation> {
  final Value<String> productType;
  final Value<String> description;
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<int> recommendationID;
  final Value<int> exampleProductID;
  final Value<String> reason;
  const ProductTypeRecommendationsCompanion({
    this.productType = const Value.absent(),
    this.description = const Value.absent(),
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.recommendationID = const Value.absent(),
    this.exampleProductID = const Value.absent(),
    this.reason = const Value.absent(),
  });
  ProductTypeRecommendationsCompanion.insert({
    required String productType,
    required String description,
    required int id,
    required DateTime timestamp,
    required int recommendationID,
    required int exampleProductID,
    required String reason,
  })  : productType = Value(productType),
        description = Value(description),
        id = Value(id),
        timestamp = Value(timestamp),
        recommendationID = Value(recommendationID),
        exampleProductID = Value(exampleProductID),
        reason = Value(reason);
  static Insertable<ProductTypeRecommendation> custom({
    Expression<String>? productType,
    Expression<String>? description,
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<int>? recommendationID,
    Expression<int>? exampleProductID,
    Expression<String>? reason,
  }) {
    return RawValuesInsertable({
      if (productType != null) 'product_type': productType,
      if (description != null) 'description': description,
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (recommendationID != null) 'recommendation_i_d': recommendationID,
      if (exampleProductID != null) 'example_product_i_d': exampleProductID,
      if (reason != null) 'reason': reason,
    });
  }

  ProductTypeRecommendationsCompanion copyWith(
      {Value<String>? productType,
      Value<String>? description,
      Value<int>? id,
      Value<DateTime>? timestamp,
      Value<int>? recommendationID,
      Value<int>? exampleProductID,
      Value<String>? reason}) {
    return ProductTypeRecommendationsCompanion(
      productType: productType ?? this.productType,
      description: description ?? this.description,
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      recommendationID: recommendationID ?? this.recommendationID,
      exampleProductID: exampleProductID ?? this.exampleProductID,
      reason: reason ?? this.reason,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (productType.present) {
      map['product_type'] = Variable<String>(productType.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (recommendationID.present) {
      map['recommendation_i_d'] = Variable<int>(recommendationID.value);
    }
    if (exampleProductID.present) {
      map['example_product_i_d'] = Variable<int>(exampleProductID.value);
    }
    if (reason.present) {
      map['reason'] = Variable<String>(reason.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductTypeRecommendationsCompanion(')
          ..write('productType: $productType, ')
          ..write('description: $description, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('recommendationID: $recommendationID, ')
          ..write('exampleProductID: $exampleProductID, ')
          ..write('reason: $reason')
          ..write(')'))
        .toString();
  }
}

class $ProductTypeRecommendationsTable extends ProductTypeRecommendations
    with
        TableInfo<$ProductTypeRecommendationsTable, ProductTypeRecommendation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductTypeRecommendationsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _productTypeMeta =
      const VerificationMeta('productType');
  @override
  late final GeneratedColumn<String?> productType = GeneratedColumn<String?>(
      'product_type', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 4, maxTextLength: 32),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _recommendationIDMeta =
      const VerificationMeta('recommendationID');
  @override
  late final GeneratedColumn<int?> recommendationID = GeneratedColumn<int?>(
      'recommendation_i_d', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _exampleProductIDMeta =
      const VerificationMeta('exampleProductID');
  @override
  late final GeneratedColumn<int?> exampleProductID = GeneratedColumn<int?>(
      'example_product_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _reasonMeta = const VerificationMeta('reason');
  @override
  late final GeneratedColumn<String?> reason = GeneratedColumn<String?>(
      'reason', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        productType,
        description,
        id,
        timestamp,
        recommendationID,
        exampleProductID,
        reason
      ];
  @override
  String get aliasedName => _alias ?? 'product_type_recommendations';
  @override
  String get actualTableName => 'product_type_recommendations';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProductTypeRecommendation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('product_type')) {
      context.handle(
          _productTypeMeta,
          productType.isAcceptableOrUnknown(
              data['product_type']!, _productTypeMeta));
    } else if (isInserting) {
      context.missing(_productTypeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('recommendation_i_d')) {
      context.handle(
          _recommendationIDMeta,
          recommendationID.isAcceptableOrUnknown(
              data['recommendation_i_d']!, _recommendationIDMeta));
    } else if (isInserting) {
      context.missing(_recommendationIDMeta);
    }
    if (data.containsKey('example_product_i_d')) {
      context.handle(
          _exampleProductIDMeta,
          exampleProductID.isAcceptableOrUnknown(
              data['example_product_i_d']!, _exampleProductIDMeta));
    } else if (isInserting) {
      context.missing(_exampleProductIDMeta);
    }
    if (data.containsKey('reason')) {
      context.handle(_reasonMeta,
          reason.isAcceptableOrUnknown(data['reason']!, _reasonMeta));
    } else if (isInserting) {
      context.missing(_reasonMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ProductTypeRecommendation map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return ProductTypeRecommendation.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProductTypeRecommendationsTable createAlias(String alias) {
    return $ProductTypeRecommendationsTable(attachedDatabase, alias);
  }
}

class Brand extends DataClass implements Insertable<Brand> {
  final int id;
  final DateTime timestamp;
  final String description;
  final int companyID;
  final String name;
  Brand(
      {required this.id,
      required this.timestamp,
      required this.description,
      required this.companyID,
      required this.name});
  factory Brand.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Brand(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      companyID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}company_i_d'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['company_i_d'] = Variable<int>(companyID);
    map['name'] = Variable<String>(name);
    return map;
  }

  BrandsCompanion toCompanion(bool nullToAbsent) {
    return BrandsCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      companyID: Value(companyID),
      name: Value(name),
    );
  }

  factory Brand.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Brand(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      companyID: serializer.fromJson<int>(json['companyID']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'companyID': serializer.toJson<int>(companyID),
      'name': serializer.toJson<String>(name),
    };
  }

  Brand copyWith(
          {int? id,
          DateTime? timestamp,
          String? description,
          int? companyID,
          String? name}) =>
      Brand(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        companyID: companyID ?? this.companyID,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('Brand(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('companyID: $companyID, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, timestamp, description, companyID, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Brand &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.companyID == this.companyID &&
          other.name == this.name);
}

class BrandsCompanion extends UpdateCompanion<Brand> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> companyID;
  final Value<String> name;
  const BrandsCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.companyID = const Value.absent(),
    this.name = const Value.absent(),
  });
  BrandsCompanion.insert({
    required int id,
    required DateTime timestamp,
    required String description,
    required int companyID,
    required String name,
  })  : id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        companyID = Value(companyID),
        name = Value(name);
  static Insertable<Brand> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? companyID,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (companyID != null) 'company_i_d': companyID,
      if (name != null) 'name': name,
    });
  }

  BrandsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? companyID,
      Value<String>? name}) {
    return BrandsCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      companyID: companyID ?? this.companyID,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (companyID.present) {
      map['company_i_d'] = Variable<int>(companyID.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BrandsCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('companyID: $companyID, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $BrandsTable extends Brands with TableInfo<$BrandsTable, Brand> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BrandsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _companyIDMeta = const VerificationMeta('companyID');
  @override
  late final GeneratedColumn<int?> companyID = GeneratedColumn<int?>(
      'company_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, timestamp, description, companyID, name];
  @override
  String get aliasedName => _alias ?? 'brands';
  @override
  String get actualTableName => 'brands';
  @override
  VerificationContext validateIntegrity(Insertable<Brand> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('company_i_d')) {
      context.handle(
          _companyIDMeta,
          companyID.isAcceptableOrUnknown(
              data['company_i_d']!, _companyIDMeta));
    } else if (isInserting) {
      context.missing(_companyIDMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Brand map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Brand.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $BrandsTable createAlias(String alias) {
    return $BrandsTable(attachedDatabase, alias);
  }
}

class BrandRecommendation extends DataClass
    implements Insertable<BrandRecommendation> {
  final int companyID;
  final String name;
  final int id;
  final DateTime timestamp;
  final String description;
  final int recommendationID;
  final int exampleProductID;
  BrandRecommendation(
      {required this.companyID,
      required this.name,
      required this.id,
      required this.timestamp,
      required this.description,
      required this.recommendationID,
      required this.exampleProductID});
  factory BrandRecommendation.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return BrandRecommendation(
      companyID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}company_i_d'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      recommendationID: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}recommendation_i_d'])!,
      exampleProductID: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}example_product_i_d'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['company_i_d'] = Variable<int>(companyID);
    map['name'] = Variable<String>(name);
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['recommendation_i_d'] = Variable<int>(recommendationID);
    map['example_product_i_d'] = Variable<int>(exampleProductID);
    return map;
  }

  BrandRecommendationsCompanion toCompanion(bool nullToAbsent) {
    return BrandRecommendationsCompanion(
      companyID: Value(companyID),
      name: Value(name),
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      recommendationID: Value(recommendationID),
      exampleProductID: Value(exampleProductID),
    );
  }

  factory BrandRecommendation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BrandRecommendation(
      companyID: serializer.fromJson<int>(json['companyID']),
      name: serializer.fromJson<String>(json['name']),
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      recommendationID: serializer.fromJson<int>(json['recommendationID']),
      exampleProductID: serializer.fromJson<int>(json['exampleProductID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'companyID': serializer.toJson<int>(companyID),
      'name': serializer.toJson<String>(name),
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'recommendationID': serializer.toJson<int>(recommendationID),
      'exampleProductID': serializer.toJson<int>(exampleProductID),
    };
  }

  BrandRecommendation copyWith(
          {int? companyID,
          String? name,
          int? id,
          DateTime? timestamp,
          String? description,
          int? recommendationID,
          int? exampleProductID}) =>
      BrandRecommendation(
        companyID: companyID ?? this.companyID,
        name: name ?? this.name,
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        recommendationID: recommendationID ?? this.recommendationID,
        exampleProductID: exampleProductID ?? this.exampleProductID,
      );
  @override
  String toString() {
    return (StringBuffer('BrandRecommendation(')
          ..write('companyID: $companyID, ')
          ..write('name: $name, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('recommendationID: $recommendationID, ')
          ..write('exampleProductID: $exampleProductID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(companyID, name, id, timestamp, description,
      recommendationID, exampleProductID);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BrandRecommendation &&
          other.companyID == this.companyID &&
          other.name == this.name &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.recommendationID == this.recommendationID &&
          other.exampleProductID == this.exampleProductID);
}

class BrandRecommendationsCompanion
    extends UpdateCompanion<BrandRecommendation> {
  final Value<int> companyID;
  final Value<String> name;
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> recommendationID;
  final Value<int> exampleProductID;
  const BrandRecommendationsCompanion({
    this.companyID = const Value.absent(),
    this.name = const Value.absent(),
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.recommendationID = const Value.absent(),
    this.exampleProductID = const Value.absent(),
  });
  BrandRecommendationsCompanion.insert({
    required int companyID,
    required String name,
    required int id,
    required DateTime timestamp,
    required String description,
    required int recommendationID,
    required int exampleProductID,
  })  : companyID = Value(companyID),
        name = Value(name),
        id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        recommendationID = Value(recommendationID),
        exampleProductID = Value(exampleProductID);
  static Insertable<BrandRecommendation> custom({
    Expression<int>? companyID,
    Expression<String>? name,
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? recommendationID,
    Expression<int>? exampleProductID,
  }) {
    return RawValuesInsertable({
      if (companyID != null) 'company_i_d': companyID,
      if (name != null) 'name': name,
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (recommendationID != null) 'recommendation_i_d': recommendationID,
      if (exampleProductID != null) 'example_product_i_d': exampleProductID,
    });
  }

  BrandRecommendationsCompanion copyWith(
      {Value<int>? companyID,
      Value<String>? name,
      Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? recommendationID,
      Value<int>? exampleProductID}) {
    return BrandRecommendationsCompanion(
      companyID: companyID ?? this.companyID,
      name: name ?? this.name,
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      recommendationID: recommendationID ?? this.recommendationID,
      exampleProductID: exampleProductID ?? this.exampleProductID,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (companyID.present) {
      map['company_i_d'] = Variable<int>(companyID.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (recommendationID.present) {
      map['recommendation_i_d'] = Variable<int>(recommendationID.value);
    }
    if (exampleProductID.present) {
      map['example_product_i_d'] = Variable<int>(exampleProductID.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BrandRecommendationsCompanion(')
          ..write('companyID: $companyID, ')
          ..write('name: $name, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('recommendationID: $recommendationID, ')
          ..write('exampleProductID: $exampleProductID')
          ..write(')'))
        .toString();
  }
}

class $BrandRecommendationsTable extends BrandRecommendations
    with TableInfo<$BrandRecommendationsTable, BrandRecommendation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BrandRecommendationsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _companyIDMeta = const VerificationMeta('companyID');
  @override
  late final GeneratedColumn<int?> companyID = GeneratedColumn<int?>(
      'company_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _recommendationIDMeta =
      const VerificationMeta('recommendationID');
  @override
  late final GeneratedColumn<int?> recommendationID = GeneratedColumn<int?>(
      'recommendation_i_d', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _exampleProductIDMeta =
      const VerificationMeta('exampleProductID');
  @override
  late final GeneratedColumn<int?> exampleProductID = GeneratedColumn<int?>(
      'example_product_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        companyID,
        name,
        id,
        timestamp,
        description,
        recommendationID,
        exampleProductID
      ];
  @override
  String get aliasedName => _alias ?? 'brand_recommendations';
  @override
  String get actualTableName => 'brand_recommendations';
  @override
  VerificationContext validateIntegrity(
      Insertable<BrandRecommendation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('company_i_d')) {
      context.handle(
          _companyIDMeta,
          companyID.isAcceptableOrUnknown(
              data['company_i_d']!, _companyIDMeta));
    } else if (isInserting) {
      context.missing(_companyIDMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('recommendation_i_d')) {
      context.handle(
          _recommendationIDMeta,
          recommendationID.isAcceptableOrUnknown(
              data['recommendation_i_d']!, _recommendationIDMeta));
    } else if (isInserting) {
      context.missing(_recommendationIDMeta);
    }
    if (data.containsKey('example_product_i_d')) {
      context.handle(
          _exampleProductIDMeta,
          exampleProductID.isAcceptableOrUnknown(
              data['example_product_i_d']!, _exampleProductIDMeta));
    } else if (isInserting) {
      context.missing(_exampleProductIDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  BrandRecommendation map(Map<String, dynamic> data, {String? tablePrefix}) {
    return BrandRecommendation.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $BrandRecommendationsTable createAlias(String alias) {
    return $BrandRecommendationsTable(attachedDatabase, alias);
  }
}

class Company extends DataClass implements Insertable<Company> {
  final int id;
  final DateTime timestamp;
  final String description;
  final String name;
  final String website;
  final bool isStore;
  Company(
      {required this.id,
      required this.timestamp,
      required this.description,
      required this.name,
      required this.website,
      required this.isStore});
  factory Company.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Company(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      website: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}website'])!,
      isStore: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_store'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['name'] = Variable<String>(name);
    map['website'] = Variable<String>(website);
    map['is_store'] = Variable<bool>(isStore);
    return map;
  }

  CompaniesCompanion toCompanion(bool nullToAbsent) {
    return CompaniesCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      name: Value(name),
      website: Value(website),
      isStore: Value(isStore),
    );
  }

  factory Company.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Company(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      name: serializer.fromJson<String>(json['name']),
      website: serializer.fromJson<String>(json['website']),
      isStore: serializer.fromJson<bool>(json['isStore']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'name': serializer.toJson<String>(name),
      'website': serializer.toJson<String>(website),
      'isStore': serializer.toJson<bool>(isStore),
    };
  }

  Company copyWith(
          {int? id,
          DateTime? timestamp,
          String? description,
          String? name,
          String? website,
          bool? isStore}) =>
      Company(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        name: name ?? this.name,
        website: website ?? this.website,
        isStore: isStore ?? this.isStore,
      );
  @override
  String toString() {
    return (StringBuffer('Company(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('name: $name, ')
          ..write('website: $website, ')
          ..write('isStore: $isStore')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, timestamp, description, name, website, isStore);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Company &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.name == this.name &&
          other.website == this.website &&
          other.isStore == this.isStore);
}

class CompaniesCompanion extends UpdateCompanion<Company> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<String> name;
  final Value<String> website;
  final Value<bool> isStore;
  const CompaniesCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.name = const Value.absent(),
    this.website = const Value.absent(),
    this.isStore = const Value.absent(),
  });
  CompaniesCompanion.insert({
    required int id,
    required DateTime timestamp,
    required String description,
    required String name,
    required String website,
    required bool isStore,
  })  : id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        name = Value(name),
        website = Value(website),
        isStore = Value(isStore);
  static Insertable<Company> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<String>? name,
    Expression<String>? website,
    Expression<bool>? isStore,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (name != null) 'name': name,
      if (website != null) 'website': website,
      if (isStore != null) 'is_store': isStore,
    });
  }

  CompaniesCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<String>? name,
      Value<String>? website,
      Value<bool>? isStore}) {
    return CompaniesCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      name: name ?? this.name,
      website: website ?? this.website,
      isStore: isStore ?? this.isStore,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (website.present) {
      map['website'] = Variable<String>(website.value);
    }
    if (isStore.present) {
      map['is_store'] = Variable<bool>(isStore.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompaniesCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('name: $name, ')
          ..write('website: $website, ')
          ..write('isStore: $isStore')
          ..write(')'))
        .toString();
  }
}

class $CompaniesTable extends Companies
    with TableInfo<$CompaniesTable, Company> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompaniesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _websiteMeta = const VerificationMeta('website');
  @override
  late final GeneratedColumn<String?> website = GeneratedColumn<String?>(
      'website', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _isStoreMeta = const VerificationMeta('isStore');
  @override
  late final GeneratedColumn<bool?> isStore = GeneratedColumn<bool?>(
      'is_store', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_store IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns =>
      [id, timestamp, description, name, website, isStore];
  @override
  String get aliasedName => _alias ?? 'companies';
  @override
  String get actualTableName => 'companies';
  @override
  VerificationContext validateIntegrity(Insertable<Company> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('website')) {
      context.handle(_websiteMeta,
          website.isAcceptableOrUnknown(data['website']!, _websiteMeta));
    } else if (isInserting) {
      context.missing(_websiteMeta);
    }
    if (data.containsKey('is_store')) {
      context.handle(_isStoreMeta,
          isStore.isAcceptableOrUnknown(data['is_store']!, _isStoreMeta));
    } else if (isInserting) {
      context.missing(_isStoreMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Company map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Company.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CompaniesTable createAlias(String alias) {
    return $CompaniesTable(attachedDatabase, alias);
  }
}

class CompanyRecommendation extends DataClass
    implements Insertable<CompanyRecommendation> {
  final String name;
  final String website;
  final bool isStore;
  final int id;
  final DateTime timestamp;
  final String description;
  final int recommendationID;
  CompanyRecommendation(
      {required this.name,
      required this.website,
      required this.isStore,
      required this.id,
      required this.timestamp,
      required this.description,
      required this.recommendationID});
  factory CompanyRecommendation.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CompanyRecommendation(
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      website: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}website'])!,
      isStore: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_store'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      recommendationID: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}recommendation_i_d'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['name'] = Variable<String>(name);
    map['website'] = Variable<String>(website);
    map['is_store'] = Variable<bool>(isStore);
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['recommendation_i_d'] = Variable<int>(recommendationID);
    return map;
  }

  CompanyRecommendationsCompanion toCompanion(bool nullToAbsent) {
    return CompanyRecommendationsCompanion(
      name: Value(name),
      website: Value(website),
      isStore: Value(isStore),
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      recommendationID: Value(recommendationID),
    );
  }

  factory CompanyRecommendation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CompanyRecommendation(
      name: serializer.fromJson<String>(json['name']),
      website: serializer.fromJson<String>(json['website']),
      isStore: serializer.fromJson<bool>(json['isStore']),
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      recommendationID: serializer.fromJson<int>(json['recommendationID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'website': serializer.toJson<String>(website),
      'isStore': serializer.toJson<bool>(isStore),
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'recommendationID': serializer.toJson<int>(recommendationID),
    };
  }

  CompanyRecommendation copyWith(
          {String? name,
          String? website,
          bool? isStore,
          int? id,
          DateTime? timestamp,
          String? description,
          int? recommendationID}) =>
      CompanyRecommendation(
        name: name ?? this.name,
        website: website ?? this.website,
        isStore: isStore ?? this.isStore,
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        recommendationID: recommendationID ?? this.recommendationID,
      );
  @override
  String toString() {
    return (StringBuffer('CompanyRecommendation(')
          ..write('name: $name, ')
          ..write('website: $website, ')
          ..write('isStore: $isStore, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('recommendationID: $recommendationID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      name, website, isStore, id, timestamp, description, recommendationID);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompanyRecommendation &&
          other.name == this.name &&
          other.website == this.website &&
          other.isStore == this.isStore &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.recommendationID == this.recommendationID);
}

class CompanyRecommendationsCompanion
    extends UpdateCompanion<CompanyRecommendation> {
  final Value<String> name;
  final Value<String> website;
  final Value<bool> isStore;
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> recommendationID;
  const CompanyRecommendationsCompanion({
    this.name = const Value.absent(),
    this.website = const Value.absent(),
    this.isStore = const Value.absent(),
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.recommendationID = const Value.absent(),
  });
  CompanyRecommendationsCompanion.insert({
    required String name,
    required String website,
    required bool isStore,
    required int id,
    required DateTime timestamp,
    required String description,
    required int recommendationID,
  })  : name = Value(name),
        website = Value(website),
        isStore = Value(isStore),
        id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        recommendationID = Value(recommendationID);
  static Insertable<CompanyRecommendation> custom({
    Expression<String>? name,
    Expression<String>? website,
    Expression<bool>? isStore,
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? recommendationID,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (website != null) 'website': website,
      if (isStore != null) 'is_store': isStore,
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (recommendationID != null) 'recommendation_i_d': recommendationID,
    });
  }

  CompanyRecommendationsCompanion copyWith(
      {Value<String>? name,
      Value<String>? website,
      Value<bool>? isStore,
      Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? recommendationID}) {
    return CompanyRecommendationsCompanion(
      name: name ?? this.name,
      website: website ?? this.website,
      isStore: isStore ?? this.isStore,
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      recommendationID: recommendationID ?? this.recommendationID,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (website.present) {
      map['website'] = Variable<String>(website.value);
    }
    if (isStore.present) {
      map['is_store'] = Variable<bool>(isStore.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (recommendationID.present) {
      map['recommendation_i_d'] = Variable<int>(recommendationID.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompanyRecommendationsCompanion(')
          ..write('name: $name, ')
          ..write('website: $website, ')
          ..write('isStore: $isStore, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('recommendationID: $recommendationID')
          ..write(')'))
        .toString();
  }
}

class $CompanyRecommendationsTable extends CompanyRecommendations
    with TableInfo<$CompanyRecommendationsTable, CompanyRecommendation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompanyRecommendationsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _websiteMeta = const VerificationMeta('website');
  @override
  late final GeneratedColumn<String?> website = GeneratedColumn<String?>(
      'website', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _isStoreMeta = const VerificationMeta('isStore');
  @override
  late final GeneratedColumn<bool?> isStore = GeneratedColumn<bool?>(
      'is_store', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_store IN (0, 1))');
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _recommendationIDMeta =
      const VerificationMeta('recommendationID');
  @override
  late final GeneratedColumn<int?> recommendationID = GeneratedColumn<int?>(
      'recommendation_i_d', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  @override
  List<GeneratedColumn> get $columns =>
      [name, website, isStore, id, timestamp, description, recommendationID];
  @override
  String get aliasedName => _alias ?? 'company_recommendations';
  @override
  String get actualTableName => 'company_recommendations';
  @override
  VerificationContext validateIntegrity(
      Insertable<CompanyRecommendation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('website')) {
      context.handle(_websiteMeta,
          website.isAcceptableOrUnknown(data['website']!, _websiteMeta));
    } else if (isInserting) {
      context.missing(_websiteMeta);
    }
    if (data.containsKey('is_store')) {
      context.handle(_isStoreMeta,
          isStore.isAcceptableOrUnknown(data['is_store']!, _isStoreMeta));
    } else if (isInserting) {
      context.missing(_isStoreMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('recommendation_i_d')) {
      context.handle(
          _recommendationIDMeta,
          recommendationID.isAcceptableOrUnknown(
              data['recommendation_i_d']!, _recommendationIDMeta));
    } else if (isInserting) {
      context.missing(_recommendationIDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  CompanyRecommendation map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CompanyRecommendation.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CompanyRecommendationsTable createAlias(String alias) {
    return $CompanyRecommendationsTable(attachedDatabase, alias);
  }
}

class Link extends DataClass implements Insertable<Link> {
  final int id;
  final DateTime timestamp;
  final String description;
  final String foreignTableName;
  final int foreignID;
  final DateTime uploadTime;
  final String title;
  final String link;
  final bool secondPartySeller;
  Link(
      {required this.id,
      required this.timestamp,
      required this.description,
      required this.foreignTableName,
      required this.foreignID,
      required this.uploadTime,
      required this.title,
      required this.link,
      required this.secondPartySeller});
  factory Link.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Link(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      foreignTableName: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}foreign_table_name'])!,
      foreignID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}foreign_i_d'])!,
      uploadTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}upload_time'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      link: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}link'])!,
      secondPartySeller: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}second_party_seller'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['foreign_table_name'] = Variable<String>(foreignTableName);
    map['foreign_i_d'] = Variable<int>(foreignID);
    map['upload_time'] = Variable<DateTime>(uploadTime);
    map['title'] = Variable<String>(title);
    map['link'] = Variable<String>(link);
    map['second_party_seller'] = Variable<bool>(secondPartySeller);
    return map;
  }

  LinksCompanion toCompanion(bool nullToAbsent) {
    return LinksCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      foreignTableName: Value(foreignTableName),
      foreignID: Value(foreignID),
      uploadTime: Value(uploadTime),
      title: Value(title),
      link: Value(link),
      secondPartySeller: Value(secondPartySeller),
    );
  }

  factory Link.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Link(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      foreignTableName: serializer.fromJson<String>(json['foreignTableName']),
      foreignID: serializer.fromJson<int>(json['foreignID']),
      uploadTime: serializer.fromJson<DateTime>(json['uploadTime']),
      title: serializer.fromJson<String>(json['title']),
      link: serializer.fromJson<String>(json['link']),
      secondPartySeller: serializer.fromJson<bool>(json['secondPartySeller']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'foreignTableName': serializer.toJson<String>(foreignTableName),
      'foreignID': serializer.toJson<int>(foreignID),
      'uploadTime': serializer.toJson<DateTime>(uploadTime),
      'title': serializer.toJson<String>(title),
      'link': serializer.toJson<String>(link),
      'secondPartySeller': serializer.toJson<bool>(secondPartySeller),
    };
  }

  Link copyWith(
          {int? id,
          DateTime? timestamp,
          String? description,
          String? foreignTableName,
          int? foreignID,
          DateTime? uploadTime,
          String? title,
          String? link,
          bool? secondPartySeller}) =>
      Link(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        foreignTableName: foreignTableName ?? this.foreignTableName,
        foreignID: foreignID ?? this.foreignID,
        uploadTime: uploadTime ?? this.uploadTime,
        title: title ?? this.title,
        link: link ?? this.link,
        secondPartySeller: secondPartySeller ?? this.secondPartySeller,
      );
  @override
  String toString() {
    return (StringBuffer('Link(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('foreignTableName: $foreignTableName, ')
          ..write('foreignID: $foreignID, ')
          ..write('uploadTime: $uploadTime, ')
          ..write('title: $title, ')
          ..write('link: $link, ')
          ..write('secondPartySeller: $secondPartySeller')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, timestamp, description, foreignTableName,
      foreignID, uploadTime, title, link, secondPartySeller);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Link &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.foreignTableName == this.foreignTableName &&
          other.foreignID == this.foreignID &&
          other.uploadTime == this.uploadTime &&
          other.title == this.title &&
          other.link == this.link &&
          other.secondPartySeller == this.secondPartySeller);
}

class LinksCompanion extends UpdateCompanion<Link> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<String> foreignTableName;
  final Value<int> foreignID;
  final Value<DateTime> uploadTime;
  final Value<String> title;
  final Value<String> link;
  final Value<bool> secondPartySeller;
  const LinksCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.foreignTableName = const Value.absent(),
    this.foreignID = const Value.absent(),
    this.uploadTime = const Value.absent(),
    this.title = const Value.absent(),
    this.link = const Value.absent(),
    this.secondPartySeller = const Value.absent(),
  });
  LinksCompanion.insert({
    required int id,
    required DateTime timestamp,
    required String description,
    required String foreignTableName,
    required int foreignID,
    required DateTime uploadTime,
    required String title,
    required String link,
    required bool secondPartySeller,
  })  : id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        foreignTableName = Value(foreignTableName),
        foreignID = Value(foreignID),
        uploadTime = Value(uploadTime),
        title = Value(title),
        link = Value(link),
        secondPartySeller = Value(secondPartySeller);
  static Insertable<Link> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<String>? foreignTableName,
    Expression<int>? foreignID,
    Expression<DateTime>? uploadTime,
    Expression<String>? title,
    Expression<String>? link,
    Expression<bool>? secondPartySeller,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (foreignTableName != null) 'foreign_table_name': foreignTableName,
      if (foreignID != null) 'foreign_i_d': foreignID,
      if (uploadTime != null) 'upload_time': uploadTime,
      if (title != null) 'title': title,
      if (link != null) 'link': link,
      if (secondPartySeller != null) 'second_party_seller': secondPartySeller,
    });
  }

  LinksCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<String>? foreignTableName,
      Value<int>? foreignID,
      Value<DateTime>? uploadTime,
      Value<String>? title,
      Value<String>? link,
      Value<bool>? secondPartySeller}) {
    return LinksCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      foreignTableName: foreignTableName ?? this.foreignTableName,
      foreignID: foreignID ?? this.foreignID,
      uploadTime: uploadTime ?? this.uploadTime,
      title: title ?? this.title,
      link: link ?? this.link,
      secondPartySeller: secondPartySeller ?? this.secondPartySeller,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (foreignTableName.present) {
      map['foreign_table_name'] = Variable<String>(foreignTableName.value);
    }
    if (foreignID.present) {
      map['foreign_i_d'] = Variable<int>(foreignID.value);
    }
    if (uploadTime.present) {
      map['upload_time'] = Variable<DateTime>(uploadTime.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (link.present) {
      map['link'] = Variable<String>(link.value);
    }
    if (secondPartySeller.present) {
      map['second_party_seller'] = Variable<bool>(secondPartySeller.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LinksCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('foreignTableName: $foreignTableName, ')
          ..write('foreignID: $foreignID, ')
          ..write('uploadTime: $uploadTime, ')
          ..write('title: $title, ')
          ..write('link: $link, ')
          ..write('secondPartySeller: $secondPartySeller')
          ..write(')'))
        .toString();
  }
}

class $LinksTable extends Links with TableInfo<$LinksTable, Link> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LinksTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _foreignTableNameMeta =
      const VerificationMeta('foreignTableName');
  @override
  late final GeneratedColumn<String?> foreignTableName =
      GeneratedColumn<String?>('foreign_table_name', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _foreignIDMeta = const VerificationMeta('foreignID');
  @override
  late final GeneratedColumn<int?> foreignID = GeneratedColumn<int?>(
      'foreign_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _uploadTimeMeta = const VerificationMeta('uploadTime');
  @override
  late final GeneratedColumn<DateTime?> uploadTime = GeneratedColumn<DateTime?>(
      'upload_time', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 30),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _linkMeta = const VerificationMeta('link');
  @override
  late final GeneratedColumn<String?> link = GeneratedColumn<String?>(
      'link', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _secondPartySellerMeta =
      const VerificationMeta('secondPartySeller');
  @override
  late final GeneratedColumn<bool?> secondPartySeller = GeneratedColumn<bool?>(
      'second_party_seller', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (second_party_seller IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        timestamp,
        description,
        foreignTableName,
        foreignID,
        uploadTime,
        title,
        link,
        secondPartySeller
      ];
  @override
  String get aliasedName => _alias ?? 'links';
  @override
  String get actualTableName => 'links';
  @override
  VerificationContext validateIntegrity(Insertable<Link> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('foreign_table_name')) {
      context.handle(
          _foreignTableNameMeta,
          foreignTableName.isAcceptableOrUnknown(
              data['foreign_table_name']!, _foreignTableNameMeta));
    } else if (isInserting) {
      context.missing(_foreignTableNameMeta);
    }
    if (data.containsKey('foreign_i_d')) {
      context.handle(
          _foreignIDMeta,
          foreignID.isAcceptableOrUnknown(
              data['foreign_i_d']!, _foreignIDMeta));
    } else if (isInserting) {
      context.missing(_foreignIDMeta);
    }
    if (data.containsKey('upload_time')) {
      context.handle(
          _uploadTimeMeta,
          uploadTime.isAcceptableOrUnknown(
              data['upload_time']!, _uploadTimeMeta));
    } else if (isInserting) {
      context.missing(_uploadTimeMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('link')) {
      context.handle(
          _linkMeta, link.isAcceptableOrUnknown(data['link']!, _linkMeta));
    } else if (isInserting) {
      context.missing(_linkMeta);
    }
    if (data.containsKey('second_party_seller')) {
      context.handle(
          _secondPartySellerMeta,
          secondPartySeller.isAcceptableOrUnknown(
              data['second_party_seller']!, _secondPartySellerMeta));
    } else if (isInserting) {
      context.missing(_secondPartySellerMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Link map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Link.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LinksTable createAlias(String alias) {
    return $LinksTable(attachedDatabase, alias);
  }
}

class LinkRecommendation extends DataClass
    implements Insertable<LinkRecommendation> {
  final String foreignTableName;
  final int foreignID;
  final DateTime uploadTime;
  final String title;
  final String link;
  final bool secondPartySeller;
  final int id;
  final DateTime timestamp;
  final String description;
  final int recommendationID;
  final String reason;
  LinkRecommendation(
      {required this.foreignTableName,
      required this.foreignID,
      required this.uploadTime,
      required this.title,
      required this.link,
      required this.secondPartySeller,
      required this.id,
      required this.timestamp,
      required this.description,
      required this.recommendationID,
      required this.reason});
  factory LinkRecommendation.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return LinkRecommendation(
      foreignTableName: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}foreign_table_name'])!,
      foreignID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}foreign_i_d'])!,
      uploadTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}upload_time'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      link: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}link'])!,
      secondPartySeller: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}second_party_seller'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      recommendationID: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}recommendation_i_d'])!,
      reason: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}reason'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['foreign_table_name'] = Variable<String>(foreignTableName);
    map['foreign_i_d'] = Variable<int>(foreignID);
    map['upload_time'] = Variable<DateTime>(uploadTime);
    map['title'] = Variable<String>(title);
    map['link'] = Variable<String>(link);
    map['second_party_seller'] = Variable<bool>(secondPartySeller);
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['recommendation_i_d'] = Variable<int>(recommendationID);
    map['reason'] = Variable<String>(reason);
    return map;
  }

  LinkRecommendationsCompanion toCompanion(bool nullToAbsent) {
    return LinkRecommendationsCompanion(
      foreignTableName: Value(foreignTableName),
      foreignID: Value(foreignID),
      uploadTime: Value(uploadTime),
      title: Value(title),
      link: Value(link),
      secondPartySeller: Value(secondPartySeller),
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      recommendationID: Value(recommendationID),
      reason: Value(reason),
    );
  }

  factory LinkRecommendation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LinkRecommendation(
      foreignTableName: serializer.fromJson<String>(json['foreignTableName']),
      foreignID: serializer.fromJson<int>(json['foreignID']),
      uploadTime: serializer.fromJson<DateTime>(json['uploadTime']),
      title: serializer.fromJson<String>(json['title']),
      link: serializer.fromJson<String>(json['link']),
      secondPartySeller: serializer.fromJson<bool>(json['secondPartySeller']),
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      recommendationID: serializer.fromJson<int>(json['recommendationID']),
      reason: serializer.fromJson<String>(json['reason']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'foreignTableName': serializer.toJson<String>(foreignTableName),
      'foreignID': serializer.toJson<int>(foreignID),
      'uploadTime': serializer.toJson<DateTime>(uploadTime),
      'title': serializer.toJson<String>(title),
      'link': serializer.toJson<String>(link),
      'secondPartySeller': serializer.toJson<bool>(secondPartySeller),
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'recommendationID': serializer.toJson<int>(recommendationID),
      'reason': serializer.toJson<String>(reason),
    };
  }

  LinkRecommendation copyWith(
          {String? foreignTableName,
          int? foreignID,
          DateTime? uploadTime,
          String? title,
          String? link,
          bool? secondPartySeller,
          int? id,
          DateTime? timestamp,
          String? description,
          int? recommendationID,
          String? reason}) =>
      LinkRecommendation(
        foreignTableName: foreignTableName ?? this.foreignTableName,
        foreignID: foreignID ?? this.foreignID,
        uploadTime: uploadTime ?? this.uploadTime,
        title: title ?? this.title,
        link: link ?? this.link,
        secondPartySeller: secondPartySeller ?? this.secondPartySeller,
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        recommendationID: recommendationID ?? this.recommendationID,
        reason: reason ?? this.reason,
      );
  @override
  String toString() {
    return (StringBuffer('LinkRecommendation(')
          ..write('foreignTableName: $foreignTableName, ')
          ..write('foreignID: $foreignID, ')
          ..write('uploadTime: $uploadTime, ')
          ..write('title: $title, ')
          ..write('link: $link, ')
          ..write('secondPartySeller: $secondPartySeller, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('recommendationID: $recommendationID, ')
          ..write('reason: $reason')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      foreignTableName,
      foreignID,
      uploadTime,
      title,
      link,
      secondPartySeller,
      id,
      timestamp,
      description,
      recommendationID,
      reason);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LinkRecommendation &&
          other.foreignTableName == this.foreignTableName &&
          other.foreignID == this.foreignID &&
          other.uploadTime == this.uploadTime &&
          other.title == this.title &&
          other.link == this.link &&
          other.secondPartySeller == this.secondPartySeller &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.recommendationID == this.recommendationID &&
          other.reason == this.reason);
}

class LinkRecommendationsCompanion extends UpdateCompanion<LinkRecommendation> {
  final Value<String> foreignTableName;
  final Value<int> foreignID;
  final Value<DateTime> uploadTime;
  final Value<String> title;
  final Value<String> link;
  final Value<bool> secondPartySeller;
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> recommendationID;
  final Value<String> reason;
  const LinkRecommendationsCompanion({
    this.foreignTableName = const Value.absent(),
    this.foreignID = const Value.absent(),
    this.uploadTime = const Value.absent(),
    this.title = const Value.absent(),
    this.link = const Value.absent(),
    this.secondPartySeller = const Value.absent(),
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.recommendationID = const Value.absent(),
    this.reason = const Value.absent(),
  });
  LinkRecommendationsCompanion.insert({
    required String foreignTableName,
    required int foreignID,
    required DateTime uploadTime,
    required String title,
    required String link,
    required bool secondPartySeller,
    required int id,
    required DateTime timestamp,
    required String description,
    required int recommendationID,
    required String reason,
  })  : foreignTableName = Value(foreignTableName),
        foreignID = Value(foreignID),
        uploadTime = Value(uploadTime),
        title = Value(title),
        link = Value(link),
        secondPartySeller = Value(secondPartySeller),
        id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        recommendationID = Value(recommendationID),
        reason = Value(reason);
  static Insertable<LinkRecommendation> custom({
    Expression<String>? foreignTableName,
    Expression<int>? foreignID,
    Expression<DateTime>? uploadTime,
    Expression<String>? title,
    Expression<String>? link,
    Expression<bool>? secondPartySeller,
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? recommendationID,
    Expression<String>? reason,
  }) {
    return RawValuesInsertable({
      if (foreignTableName != null) 'foreign_table_name': foreignTableName,
      if (foreignID != null) 'foreign_i_d': foreignID,
      if (uploadTime != null) 'upload_time': uploadTime,
      if (title != null) 'title': title,
      if (link != null) 'link': link,
      if (secondPartySeller != null) 'second_party_seller': secondPartySeller,
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (recommendationID != null) 'recommendation_i_d': recommendationID,
      if (reason != null) 'reason': reason,
    });
  }

  LinkRecommendationsCompanion copyWith(
      {Value<String>? foreignTableName,
      Value<int>? foreignID,
      Value<DateTime>? uploadTime,
      Value<String>? title,
      Value<String>? link,
      Value<bool>? secondPartySeller,
      Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? recommendationID,
      Value<String>? reason}) {
    return LinkRecommendationsCompanion(
      foreignTableName: foreignTableName ?? this.foreignTableName,
      foreignID: foreignID ?? this.foreignID,
      uploadTime: uploadTime ?? this.uploadTime,
      title: title ?? this.title,
      link: link ?? this.link,
      secondPartySeller: secondPartySeller ?? this.secondPartySeller,
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      recommendationID: recommendationID ?? this.recommendationID,
      reason: reason ?? this.reason,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (foreignTableName.present) {
      map['foreign_table_name'] = Variable<String>(foreignTableName.value);
    }
    if (foreignID.present) {
      map['foreign_i_d'] = Variable<int>(foreignID.value);
    }
    if (uploadTime.present) {
      map['upload_time'] = Variable<DateTime>(uploadTime.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (link.present) {
      map['link'] = Variable<String>(link.value);
    }
    if (secondPartySeller.present) {
      map['second_party_seller'] = Variable<bool>(secondPartySeller.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (recommendationID.present) {
      map['recommendation_i_d'] = Variable<int>(recommendationID.value);
    }
    if (reason.present) {
      map['reason'] = Variable<String>(reason.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LinkRecommendationsCompanion(')
          ..write('foreignTableName: $foreignTableName, ')
          ..write('foreignID: $foreignID, ')
          ..write('uploadTime: $uploadTime, ')
          ..write('title: $title, ')
          ..write('link: $link, ')
          ..write('secondPartySeller: $secondPartySeller, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('recommendationID: $recommendationID, ')
          ..write('reason: $reason')
          ..write(')'))
        .toString();
  }
}

class $LinkRecommendationsTable extends LinkRecommendations
    with TableInfo<$LinkRecommendationsTable, LinkRecommendation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LinkRecommendationsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _foreignTableNameMeta =
      const VerificationMeta('foreignTableName');
  @override
  late final GeneratedColumn<String?> foreignTableName =
      GeneratedColumn<String?>('foreign_table_name', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _foreignIDMeta = const VerificationMeta('foreignID');
  @override
  late final GeneratedColumn<int?> foreignID = GeneratedColumn<int?>(
      'foreign_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _uploadTimeMeta = const VerificationMeta('uploadTime');
  @override
  late final GeneratedColumn<DateTime?> uploadTime = GeneratedColumn<DateTime?>(
      'upload_time', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 30),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _linkMeta = const VerificationMeta('link');
  @override
  late final GeneratedColumn<String?> link = GeneratedColumn<String?>(
      'link', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _secondPartySellerMeta =
      const VerificationMeta('secondPartySeller');
  @override
  late final GeneratedColumn<bool?> secondPartySeller = GeneratedColumn<bool?>(
      'second_party_seller', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (second_party_seller IN (0, 1))');
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _recommendationIDMeta =
      const VerificationMeta('recommendationID');
  @override
  late final GeneratedColumn<int?> recommendationID = GeneratedColumn<int?>(
      'recommendation_i_d', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _reasonMeta = const VerificationMeta('reason');
  @override
  late final GeneratedColumn<String?> reason = GeneratedColumn<String?>(
      'reason', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        foreignTableName,
        foreignID,
        uploadTime,
        title,
        link,
        secondPartySeller,
        id,
        timestamp,
        description,
        recommendationID,
        reason
      ];
  @override
  String get aliasedName => _alias ?? 'link_recommendations';
  @override
  String get actualTableName => 'link_recommendations';
  @override
  VerificationContext validateIntegrity(Insertable<LinkRecommendation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('foreign_table_name')) {
      context.handle(
          _foreignTableNameMeta,
          foreignTableName.isAcceptableOrUnknown(
              data['foreign_table_name']!, _foreignTableNameMeta));
    } else if (isInserting) {
      context.missing(_foreignTableNameMeta);
    }
    if (data.containsKey('foreign_i_d')) {
      context.handle(
          _foreignIDMeta,
          foreignID.isAcceptableOrUnknown(
              data['foreign_i_d']!, _foreignIDMeta));
    } else if (isInserting) {
      context.missing(_foreignIDMeta);
    }
    if (data.containsKey('upload_time')) {
      context.handle(
          _uploadTimeMeta,
          uploadTime.isAcceptableOrUnknown(
              data['upload_time']!, _uploadTimeMeta));
    } else if (isInserting) {
      context.missing(_uploadTimeMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('link')) {
      context.handle(
          _linkMeta, link.isAcceptableOrUnknown(data['link']!, _linkMeta));
    } else if (isInserting) {
      context.missing(_linkMeta);
    }
    if (data.containsKey('second_party_seller')) {
      context.handle(
          _secondPartySellerMeta,
          secondPartySeller.isAcceptableOrUnknown(
              data['second_party_seller']!, _secondPartySellerMeta));
    } else if (isInserting) {
      context.missing(_secondPartySellerMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('recommendation_i_d')) {
      context.handle(
          _recommendationIDMeta,
          recommendationID.isAcceptableOrUnknown(
              data['recommendation_i_d']!, _recommendationIDMeta));
    } else if (isInserting) {
      context.missing(_recommendationIDMeta);
    }
    if (data.containsKey('reason')) {
      context.handle(_reasonMeta,
          reason.isAcceptableOrUnknown(data['reason']!, _reasonMeta));
    } else if (isInserting) {
      context.missing(_reasonMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  LinkRecommendation map(Map<String, dynamic> data, {String? tablePrefix}) {
    return LinkRecommendation.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LinkRecommendationsTable createAlias(String alias) {
    return $LinkRecommendationsTable(attachedDatabase, alias);
  }
}

class Image extends DataClass implements Insertable<Image> {
  final int id;
  final DateTime timestamp;
  final String description;
  final String foreignTableName;
  final int foreignID;
  final DateTime uploadTime;
  final String title;
  final String content;
  final String format;
  final Uint8List image;
  Image(
      {required this.id,
      required this.timestamp,
      required this.description,
      required this.foreignTableName,
      required this.foreignID,
      required this.uploadTime,
      required this.title,
      required this.content,
      required this.format,
      required this.image});
  factory Image.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Image(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      foreignTableName: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}foreign_table_name'])!,
      foreignID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}foreign_i_d'])!,
      uploadTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}upload_time'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      content: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}body'])!,
      format: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}format'])!,
      image: const BlobType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['foreign_table_name'] = Variable<String>(foreignTableName);
    map['foreign_i_d'] = Variable<int>(foreignID);
    map['upload_time'] = Variable<DateTime>(uploadTime);
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(content);
    map['format'] = Variable<String>(format);
    map['image'] = Variable<Uint8List>(image);
    return map;
  }

  ImagesCompanion toCompanion(bool nullToAbsent) {
    return ImagesCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      foreignTableName: Value(foreignTableName),
      foreignID: Value(foreignID),
      uploadTime: Value(uploadTime),
      title: Value(title),
      content: Value(content),
      format: Value(format),
      image: Value(image),
    );
  }

  factory Image.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Image(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      foreignTableName: serializer.fromJson<String>(json['foreignTableName']),
      foreignID: serializer.fromJson<int>(json['foreignID']),
      uploadTime: serializer.fromJson<DateTime>(json['uploadTime']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      format: serializer.fromJson<String>(json['format']),
      image: serializer.fromJson<Uint8List>(json['image']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'foreignTableName': serializer.toJson<String>(foreignTableName),
      'foreignID': serializer.toJson<int>(foreignID),
      'uploadTime': serializer.toJson<DateTime>(uploadTime),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'format': serializer.toJson<String>(format),
      'image': serializer.toJson<Uint8List>(image),
    };
  }

  Image copyWith(
          {int? id,
          DateTime? timestamp,
          String? description,
          String? foreignTableName,
          int? foreignID,
          DateTime? uploadTime,
          String? title,
          String? content,
          String? format,
          Uint8List? image}) =>
      Image(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        foreignTableName: foreignTableName ?? this.foreignTableName,
        foreignID: foreignID ?? this.foreignID,
        uploadTime: uploadTime ?? this.uploadTime,
        title: title ?? this.title,
        content: content ?? this.content,
        format: format ?? this.format,
        image: image ?? this.image,
      );
  @override
  String toString() {
    return (StringBuffer('Image(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('foreignTableName: $foreignTableName, ')
          ..write('foreignID: $foreignID, ')
          ..write('uploadTime: $uploadTime, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('format: $format, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, timestamp, description, foreignTableName,
      foreignID, uploadTime, title, content, format, image);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Image &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.foreignTableName == this.foreignTableName &&
          other.foreignID == this.foreignID &&
          other.uploadTime == this.uploadTime &&
          other.title == this.title &&
          other.content == this.content &&
          other.format == this.format &&
          other.image == this.image);
}

class ImagesCompanion extends UpdateCompanion<Image> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<String> foreignTableName;
  final Value<int> foreignID;
  final Value<DateTime> uploadTime;
  final Value<String> title;
  final Value<String> content;
  final Value<String> format;
  final Value<Uint8List> image;
  const ImagesCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.foreignTableName = const Value.absent(),
    this.foreignID = const Value.absent(),
    this.uploadTime = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.format = const Value.absent(),
    this.image = const Value.absent(),
  });
  ImagesCompanion.insert({
    required int id,
    required DateTime timestamp,
    required String description,
    required String foreignTableName,
    required int foreignID,
    required DateTime uploadTime,
    required String title,
    required String content,
    required String format,
    required Uint8List image,
  })  : id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        foreignTableName = Value(foreignTableName),
        foreignID = Value(foreignID),
        uploadTime = Value(uploadTime),
        title = Value(title),
        content = Value(content),
        format = Value(format),
        image = Value(image);
  static Insertable<Image> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<String>? foreignTableName,
    Expression<int>? foreignID,
    Expression<DateTime>? uploadTime,
    Expression<String>? title,
    Expression<String>? content,
    Expression<String>? format,
    Expression<Uint8List>? image,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (foreignTableName != null) 'foreign_table_name': foreignTableName,
      if (foreignID != null) 'foreign_i_d': foreignID,
      if (uploadTime != null) 'upload_time': uploadTime,
      if (title != null) 'title': title,
      if (content != null) 'body': content,
      if (format != null) 'format': format,
      if (image != null) 'image': image,
    });
  }

  ImagesCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<String>? foreignTableName,
      Value<int>? foreignID,
      Value<DateTime>? uploadTime,
      Value<String>? title,
      Value<String>? content,
      Value<String>? format,
      Value<Uint8List>? image}) {
    return ImagesCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      foreignTableName: foreignTableName ?? this.foreignTableName,
      foreignID: foreignID ?? this.foreignID,
      uploadTime: uploadTime ?? this.uploadTime,
      title: title ?? this.title,
      content: content ?? this.content,
      format: format ?? this.format,
      image: image ?? this.image,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (foreignTableName.present) {
      map['foreign_table_name'] = Variable<String>(foreignTableName.value);
    }
    if (foreignID.present) {
      map['foreign_i_d'] = Variable<int>(foreignID.value);
    }
    if (uploadTime.present) {
      map['upload_time'] = Variable<DateTime>(uploadTime.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['body'] = Variable<String>(content.value);
    }
    if (format.present) {
      map['format'] = Variable<String>(format.value);
    }
    if (image.present) {
      map['image'] = Variable<Uint8List>(image.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ImagesCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('foreignTableName: $foreignTableName, ')
          ..write('foreignID: $foreignID, ')
          ..write('uploadTime: $uploadTime, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('format: $format, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }
}

class $ImagesTable extends Images with TableInfo<$ImagesTable, Image> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ImagesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _foreignTableNameMeta =
      const VerificationMeta('foreignTableName');
  @override
  late final GeneratedColumn<String?> foreignTableName =
      GeneratedColumn<String?>('foreign_table_name', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _foreignIDMeta = const VerificationMeta('foreignID');
  @override
  late final GeneratedColumn<int?> foreignID = GeneratedColumn<int?>(
      'foreign_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _uploadTimeMeta = const VerificationMeta('uploadTime');
  @override
  late final GeneratedColumn<DateTime?> uploadTime = GeneratedColumn<DateTime?>(
      'upload_time', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 30),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _contentMeta = const VerificationMeta('content');
  @override
  late final GeneratedColumn<String?> content = GeneratedColumn<String?>(
      'body', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _formatMeta = const VerificationMeta('format');
  @override
  late final GeneratedColumn<String?> format = GeneratedColumn<String?>(
      'format', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<Uint8List?> image = GeneratedColumn<Uint8List?>(
      'image', aliasedName, false,
      type: const BlobType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        timestamp,
        description,
        foreignTableName,
        foreignID,
        uploadTime,
        title,
        content,
        format,
        image
      ];
  @override
  String get aliasedName => _alias ?? 'images';
  @override
  String get actualTableName => 'images';
  @override
  VerificationContext validateIntegrity(Insertable<Image> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('foreign_table_name')) {
      context.handle(
          _foreignTableNameMeta,
          foreignTableName.isAcceptableOrUnknown(
              data['foreign_table_name']!, _foreignTableNameMeta));
    } else if (isInserting) {
      context.missing(_foreignTableNameMeta);
    }
    if (data.containsKey('foreign_i_d')) {
      context.handle(
          _foreignIDMeta,
          foreignID.isAcceptableOrUnknown(
              data['foreign_i_d']!, _foreignIDMeta));
    } else if (isInserting) {
      context.missing(_foreignIDMeta);
    }
    if (data.containsKey('upload_time')) {
      context.handle(
          _uploadTimeMeta,
          uploadTime.isAcceptableOrUnknown(
              data['upload_time']!, _uploadTimeMeta));
    } else if (isInserting) {
      context.missing(_uploadTimeMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('body')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['body']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('format')) {
      context.handle(_formatMeta,
          format.isAcceptableOrUnknown(data['format']!, _formatMeta));
    } else if (isInserting) {
      context.missing(_formatMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Image map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Image.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ImagesTable createAlias(String alias) {
    return $ImagesTable(attachedDatabase, alias);
  }
}

class ImageRecommendation extends DataClass
    implements Insertable<ImageRecommendation> {
  final String foreignTableName;
  final int foreignID;
  final DateTime uploadTime;
  final String title;
  final String content;
  final String format;
  final Uint8List image;
  final int id;
  final DateTime timestamp;
  final String description;
  final int recommendationID;
  final bool approvedToSyndicate;
  ImageRecommendation(
      {required this.foreignTableName,
      required this.foreignID,
      required this.uploadTime,
      required this.title,
      required this.content,
      required this.format,
      required this.image,
      required this.id,
      required this.timestamp,
      required this.description,
      required this.recommendationID,
      required this.approvedToSyndicate});
  factory ImageRecommendation.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ImageRecommendation(
      foreignTableName: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}foreign_table_name'])!,
      foreignID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}foreign_i_d'])!,
      uploadTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}upload_time'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      content: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}body'])!,
      format: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}format'])!,
      image: const BlobType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      recommendationID: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}recommendation_i_d'])!,
      approvedToSyndicate: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}approved_to_syndicate'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['foreign_table_name'] = Variable<String>(foreignTableName);
    map['foreign_i_d'] = Variable<int>(foreignID);
    map['upload_time'] = Variable<DateTime>(uploadTime);
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(content);
    map['format'] = Variable<String>(format);
    map['image'] = Variable<Uint8List>(image);
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['recommendation_i_d'] = Variable<int>(recommendationID);
    map['approved_to_syndicate'] = Variable<bool>(approvedToSyndicate);
    return map;
  }

  ImageRecommendationsCompanion toCompanion(bool nullToAbsent) {
    return ImageRecommendationsCompanion(
      foreignTableName: Value(foreignTableName),
      foreignID: Value(foreignID),
      uploadTime: Value(uploadTime),
      title: Value(title),
      content: Value(content),
      format: Value(format),
      image: Value(image),
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      recommendationID: Value(recommendationID),
      approvedToSyndicate: Value(approvedToSyndicate),
    );
  }

  factory ImageRecommendation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ImageRecommendation(
      foreignTableName: serializer.fromJson<String>(json['foreignTableName']),
      foreignID: serializer.fromJson<int>(json['foreignID']),
      uploadTime: serializer.fromJson<DateTime>(json['uploadTime']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      format: serializer.fromJson<String>(json['format']),
      image: serializer.fromJson<Uint8List>(json['image']),
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      recommendationID: serializer.fromJson<int>(json['recommendationID']),
      approvedToSyndicate:
          serializer.fromJson<bool>(json['approvedToSyndicate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'foreignTableName': serializer.toJson<String>(foreignTableName),
      'foreignID': serializer.toJson<int>(foreignID),
      'uploadTime': serializer.toJson<DateTime>(uploadTime),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'format': serializer.toJson<String>(format),
      'image': serializer.toJson<Uint8List>(image),
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'recommendationID': serializer.toJson<int>(recommendationID),
      'approvedToSyndicate': serializer.toJson<bool>(approvedToSyndicate),
    };
  }

  ImageRecommendation copyWith(
          {String? foreignTableName,
          int? foreignID,
          DateTime? uploadTime,
          String? title,
          String? content,
          String? format,
          Uint8List? image,
          int? id,
          DateTime? timestamp,
          String? description,
          int? recommendationID,
          bool? approvedToSyndicate}) =>
      ImageRecommendation(
        foreignTableName: foreignTableName ?? this.foreignTableName,
        foreignID: foreignID ?? this.foreignID,
        uploadTime: uploadTime ?? this.uploadTime,
        title: title ?? this.title,
        content: content ?? this.content,
        format: format ?? this.format,
        image: image ?? this.image,
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        recommendationID: recommendationID ?? this.recommendationID,
        approvedToSyndicate: approvedToSyndicate ?? this.approvedToSyndicate,
      );
  @override
  String toString() {
    return (StringBuffer('ImageRecommendation(')
          ..write('foreignTableName: $foreignTableName, ')
          ..write('foreignID: $foreignID, ')
          ..write('uploadTime: $uploadTime, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('format: $format, ')
          ..write('image: $image, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('recommendationID: $recommendationID, ')
          ..write('approvedToSyndicate: $approvedToSyndicate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      foreignTableName,
      foreignID,
      uploadTime,
      title,
      content,
      format,
      image,
      id,
      timestamp,
      description,
      recommendationID,
      approvedToSyndicate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ImageRecommendation &&
          other.foreignTableName == this.foreignTableName &&
          other.foreignID == this.foreignID &&
          other.uploadTime == this.uploadTime &&
          other.title == this.title &&
          other.content == this.content &&
          other.format == this.format &&
          other.image == this.image &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.recommendationID == this.recommendationID &&
          other.approvedToSyndicate == this.approvedToSyndicate);
}

class ImageRecommendationsCompanion
    extends UpdateCompanion<ImageRecommendation> {
  final Value<String> foreignTableName;
  final Value<int> foreignID;
  final Value<DateTime> uploadTime;
  final Value<String> title;
  final Value<String> content;
  final Value<String> format;
  final Value<Uint8List> image;
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> recommendationID;
  final Value<bool> approvedToSyndicate;
  const ImageRecommendationsCompanion({
    this.foreignTableName = const Value.absent(),
    this.foreignID = const Value.absent(),
    this.uploadTime = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.format = const Value.absent(),
    this.image = const Value.absent(),
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.recommendationID = const Value.absent(),
    this.approvedToSyndicate = const Value.absent(),
  });
  ImageRecommendationsCompanion.insert({
    required String foreignTableName,
    required int foreignID,
    required DateTime uploadTime,
    required String title,
    required String content,
    required String format,
    required Uint8List image,
    required int id,
    required DateTime timestamp,
    required String description,
    required int recommendationID,
    required bool approvedToSyndicate,
  })  : foreignTableName = Value(foreignTableName),
        foreignID = Value(foreignID),
        uploadTime = Value(uploadTime),
        title = Value(title),
        content = Value(content),
        format = Value(format),
        image = Value(image),
        id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        recommendationID = Value(recommendationID),
        approvedToSyndicate = Value(approvedToSyndicate);
  static Insertable<ImageRecommendation> custom({
    Expression<String>? foreignTableName,
    Expression<int>? foreignID,
    Expression<DateTime>? uploadTime,
    Expression<String>? title,
    Expression<String>? content,
    Expression<String>? format,
    Expression<Uint8List>? image,
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? recommendationID,
    Expression<bool>? approvedToSyndicate,
  }) {
    return RawValuesInsertable({
      if (foreignTableName != null) 'foreign_table_name': foreignTableName,
      if (foreignID != null) 'foreign_i_d': foreignID,
      if (uploadTime != null) 'upload_time': uploadTime,
      if (title != null) 'title': title,
      if (content != null) 'body': content,
      if (format != null) 'format': format,
      if (image != null) 'image': image,
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (recommendationID != null) 'recommendation_i_d': recommendationID,
      if (approvedToSyndicate != null)
        'approved_to_syndicate': approvedToSyndicate,
    });
  }

  ImageRecommendationsCompanion copyWith(
      {Value<String>? foreignTableName,
      Value<int>? foreignID,
      Value<DateTime>? uploadTime,
      Value<String>? title,
      Value<String>? content,
      Value<String>? format,
      Value<Uint8List>? image,
      Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? recommendationID,
      Value<bool>? approvedToSyndicate}) {
    return ImageRecommendationsCompanion(
      foreignTableName: foreignTableName ?? this.foreignTableName,
      foreignID: foreignID ?? this.foreignID,
      uploadTime: uploadTime ?? this.uploadTime,
      title: title ?? this.title,
      content: content ?? this.content,
      format: format ?? this.format,
      image: image ?? this.image,
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      recommendationID: recommendationID ?? this.recommendationID,
      approvedToSyndicate: approvedToSyndicate ?? this.approvedToSyndicate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (foreignTableName.present) {
      map['foreign_table_name'] = Variable<String>(foreignTableName.value);
    }
    if (foreignID.present) {
      map['foreign_i_d'] = Variable<int>(foreignID.value);
    }
    if (uploadTime.present) {
      map['upload_time'] = Variable<DateTime>(uploadTime.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['body'] = Variable<String>(content.value);
    }
    if (format.present) {
      map['format'] = Variable<String>(format.value);
    }
    if (image.present) {
      map['image'] = Variable<Uint8List>(image.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (recommendationID.present) {
      map['recommendation_i_d'] = Variable<int>(recommendationID.value);
    }
    if (approvedToSyndicate.present) {
      map['approved_to_syndicate'] = Variable<bool>(approvedToSyndicate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ImageRecommendationsCompanion(')
          ..write('foreignTableName: $foreignTableName, ')
          ..write('foreignID: $foreignID, ')
          ..write('uploadTime: $uploadTime, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('format: $format, ')
          ..write('image: $image, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('recommendationID: $recommendationID, ')
          ..write('approvedToSyndicate: $approvedToSyndicate')
          ..write(')'))
        .toString();
  }
}

class $ImageRecommendationsTable extends ImageRecommendations
    with TableInfo<$ImageRecommendationsTable, ImageRecommendation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ImageRecommendationsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _foreignTableNameMeta =
      const VerificationMeta('foreignTableName');
  @override
  late final GeneratedColumn<String?> foreignTableName =
      GeneratedColumn<String?>('foreign_table_name', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _foreignIDMeta = const VerificationMeta('foreignID');
  @override
  late final GeneratedColumn<int?> foreignID = GeneratedColumn<int?>(
      'foreign_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _uploadTimeMeta = const VerificationMeta('uploadTime');
  @override
  late final GeneratedColumn<DateTime?> uploadTime = GeneratedColumn<DateTime?>(
      'upload_time', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 30),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _contentMeta = const VerificationMeta('content');
  @override
  late final GeneratedColumn<String?> content = GeneratedColumn<String?>(
      'body', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _formatMeta = const VerificationMeta('format');
  @override
  late final GeneratedColumn<String?> format = GeneratedColumn<String?>(
      'format', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<Uint8List?> image = GeneratedColumn<Uint8List?>(
      'image', aliasedName, false,
      type: const BlobType(), requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _recommendationIDMeta =
      const VerificationMeta('recommendationID');
  @override
  late final GeneratedColumn<int?> recommendationID = GeneratedColumn<int?>(
      'recommendation_i_d', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _approvedToSyndicateMeta =
      const VerificationMeta('approvedToSyndicate');
  @override
  late final GeneratedColumn<bool?> approvedToSyndicate =
      GeneratedColumn<bool?>('approved_to_syndicate', aliasedName, false,
          type: const BoolType(),
          requiredDuringInsert: true,
          defaultConstraints: 'CHECK (approved_to_syndicate IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns => [
        foreignTableName,
        foreignID,
        uploadTime,
        title,
        content,
        format,
        image,
        id,
        timestamp,
        description,
        recommendationID,
        approvedToSyndicate
      ];
  @override
  String get aliasedName => _alias ?? 'image_recommendations';
  @override
  String get actualTableName => 'image_recommendations';
  @override
  VerificationContext validateIntegrity(
      Insertable<ImageRecommendation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('foreign_table_name')) {
      context.handle(
          _foreignTableNameMeta,
          foreignTableName.isAcceptableOrUnknown(
              data['foreign_table_name']!, _foreignTableNameMeta));
    } else if (isInserting) {
      context.missing(_foreignTableNameMeta);
    }
    if (data.containsKey('foreign_i_d')) {
      context.handle(
          _foreignIDMeta,
          foreignID.isAcceptableOrUnknown(
              data['foreign_i_d']!, _foreignIDMeta));
    } else if (isInserting) {
      context.missing(_foreignIDMeta);
    }
    if (data.containsKey('upload_time')) {
      context.handle(
          _uploadTimeMeta,
          uploadTime.isAcceptableOrUnknown(
              data['upload_time']!, _uploadTimeMeta));
    } else if (isInserting) {
      context.missing(_uploadTimeMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('body')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['body']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('format')) {
      context.handle(_formatMeta,
          format.isAcceptableOrUnknown(data['format']!, _formatMeta));
    } else if (isInserting) {
      context.missing(_formatMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('recommendation_i_d')) {
      context.handle(
          _recommendationIDMeta,
          recommendationID.isAcceptableOrUnknown(
              data['recommendation_i_d']!, _recommendationIDMeta));
    } else if (isInserting) {
      context.missing(_recommendationIDMeta);
    }
    if (data.containsKey('approved_to_syndicate')) {
      context.handle(
          _approvedToSyndicateMeta,
          approvedToSyndicate.isAcceptableOrUnknown(
              data['approved_to_syndicate']!, _approvedToSyndicateMeta));
    } else if (isInserting) {
      context.missing(_approvedToSyndicateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ImageRecommendation map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ImageRecommendation.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ImageRecommendationsTable createAlias(String alias) {
    return $ImageRecommendationsTable(attachedDatabase, alias);
  }
}

class Interaction extends DataClass implements Insertable<Interaction> {
  final int id;
  final DateTime timestamp;
  final String description;
  final DateTime interactionTime;
  final bool deleted;
  final int userID;
  Interaction(
      {required this.id,
      required this.timestamp,
      required this.description,
      required this.interactionTime,
      required this.deleted,
      required this.userID});
  factory Interaction.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Interaction(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      interactionTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}interaction_time'])!,
      deleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted'])!,
      userID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_i_d'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['interaction_time'] = Variable<DateTime>(interactionTime);
    map['deleted'] = Variable<bool>(deleted);
    map['user_i_d'] = Variable<int>(userID);
    return map;
  }

  InteractionsCompanion toCompanion(bool nullToAbsent) {
    return InteractionsCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      interactionTime: Value(interactionTime),
      deleted: Value(deleted),
      userID: Value(userID),
    );
  }

  factory Interaction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Interaction(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      interactionTime: serializer.fromJson<DateTime>(json['interactionTime']),
      deleted: serializer.fromJson<bool>(json['deleted']),
      userID: serializer.fromJson<int>(json['userID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'interactionTime': serializer.toJson<DateTime>(interactionTime),
      'deleted': serializer.toJson<bool>(deleted),
      'userID': serializer.toJson<int>(userID),
    };
  }

  Interaction copyWith(
          {int? id,
          DateTime? timestamp,
          String? description,
          DateTime? interactionTime,
          bool? deleted,
          int? userID}) =>
      Interaction(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        interactionTime: interactionTime ?? this.interactionTime,
        deleted: deleted ?? this.deleted,
        userID: userID ?? this.userID,
      );
  @override
  String toString() {
    return (StringBuffer('Interaction(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('interactionTime: $interactionTime, ')
          ..write('deleted: $deleted, ')
          ..write('userID: $userID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, timestamp, description, interactionTime, deleted, userID);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Interaction &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.interactionTime == this.interactionTime &&
          other.deleted == this.deleted &&
          other.userID == this.userID);
}

class InteractionsCompanion extends UpdateCompanion<Interaction> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<DateTime> interactionTime;
  final Value<bool> deleted;
  final Value<int> userID;
  const InteractionsCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.interactionTime = const Value.absent(),
    this.deleted = const Value.absent(),
    this.userID = const Value.absent(),
  });
  InteractionsCompanion.insert({
    required int id,
    required DateTime timestamp,
    required String description,
    required DateTime interactionTime,
    required bool deleted,
    required int userID,
  })  : id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        interactionTime = Value(interactionTime),
        deleted = Value(deleted),
        userID = Value(userID);
  static Insertable<Interaction> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<DateTime>? interactionTime,
    Expression<bool>? deleted,
    Expression<int>? userID,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (interactionTime != null) 'interaction_time': interactionTime,
      if (deleted != null) 'deleted': deleted,
      if (userID != null) 'user_i_d': userID,
    });
  }

  InteractionsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<DateTime>? interactionTime,
      Value<bool>? deleted,
      Value<int>? userID}) {
    return InteractionsCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      interactionTime: interactionTime ?? this.interactionTime,
      deleted: deleted ?? this.deleted,
      userID: userID ?? this.userID,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (interactionTime.present) {
      map['interaction_time'] = Variable<DateTime>(interactionTime.value);
    }
    if (deleted.present) {
      map['deleted'] = Variable<bool>(deleted.value);
    }
    if (userID.present) {
      map['user_i_d'] = Variable<int>(userID.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('InteractionsCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('interactionTime: $interactionTime, ')
          ..write('deleted: $deleted, ')
          ..write('userID: $userID')
          ..write(')'))
        .toString();
  }
}

class $InteractionsTable extends Interactions
    with TableInfo<$InteractionsTable, Interaction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $InteractionsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _interactionTimeMeta =
      const VerificationMeta('interactionTime');
  @override
  late final GeneratedColumn<DateTime?> interactionTime =
      GeneratedColumn<DateTime?>('interaction_time', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<bool?> deleted = GeneratedColumn<bool?>(
      'deleted', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (deleted IN (0, 1))');
  final VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<int?> userID = GeneratedColumn<int?>(
      'user_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, timestamp, description, interactionTime, deleted, userID];
  @override
  String get aliasedName => _alias ?? 'interactions';
  @override
  String get actualTableName => 'interactions';
  @override
  VerificationContext validateIntegrity(Insertable<Interaction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('interaction_time')) {
      context.handle(
          _interactionTimeMeta,
          interactionTime.isAcceptableOrUnknown(
              data['interaction_time']!, _interactionTimeMeta));
    } else if (isInserting) {
      context.missing(_interactionTimeMeta);
    }
    if (data.containsKey('deleted')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['deleted']!, _deletedMeta));
    } else if (isInserting) {
      context.missing(_deletedMeta);
    }
    if (data.containsKey('user_i_d')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_i_d']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Interaction map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Interaction.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $InteractionsTable createAlias(String alias) {
    return $InteractionsTable(attachedDatabase, alias);
  }
}

class OK extends DataClass implements Insertable<OK> {
  final DateTime interactionTime;
  final bool deleted;
  final int userID;
  final int id;
  final DateTime timestamp;
  final String description;
  final int okID;
  final int interactionID;
  final String foreignTableName;
  final int foreignID;
  OK(
      {required this.interactionTime,
      required this.deleted,
      required this.userID,
      required this.id,
      required this.timestamp,
      required this.description,
      required this.okID,
      required this.interactionID,
      required this.foreignTableName,
      required this.foreignID});
  factory OK.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return OK(
      interactionTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}interaction_time'])!,
      deleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted'])!,
      userID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_i_d'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      okID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ok_i_d'])!,
      interactionID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}interaction_i_d'])!,
      foreignTableName: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}foreign_table_name'])!,
      foreignID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}foreign_i_d'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['interaction_time'] = Variable<DateTime>(interactionTime);
    map['deleted'] = Variable<bool>(deleted);
    map['user_i_d'] = Variable<int>(userID);
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['ok_i_d'] = Variable<int>(okID);
    map['interaction_i_d'] = Variable<int>(interactionID);
    map['foreign_table_name'] = Variable<String>(foreignTableName);
    map['foreign_i_d'] = Variable<int>(foreignID);
    return map;
  }

  OKsCompanion toCompanion(bool nullToAbsent) {
    return OKsCompanion(
      interactionTime: Value(interactionTime),
      deleted: Value(deleted),
      userID: Value(userID),
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      okID: Value(okID),
      interactionID: Value(interactionID),
      foreignTableName: Value(foreignTableName),
      foreignID: Value(foreignID),
    );
  }

  factory OK.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OK(
      interactionTime: serializer.fromJson<DateTime>(json['interactionTime']),
      deleted: serializer.fromJson<bool>(json['deleted']),
      userID: serializer.fromJson<int>(json['userID']),
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      okID: serializer.fromJson<int>(json['okID']),
      interactionID: serializer.fromJson<int>(json['interactionID']),
      foreignTableName: serializer.fromJson<String>(json['foreignTableName']),
      foreignID: serializer.fromJson<int>(json['foreignID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'interactionTime': serializer.toJson<DateTime>(interactionTime),
      'deleted': serializer.toJson<bool>(deleted),
      'userID': serializer.toJson<int>(userID),
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'okID': serializer.toJson<int>(okID),
      'interactionID': serializer.toJson<int>(interactionID),
      'foreignTableName': serializer.toJson<String>(foreignTableName),
      'foreignID': serializer.toJson<int>(foreignID),
    };
  }

  OK copyWith(
          {DateTime? interactionTime,
          bool? deleted,
          int? userID,
          int? id,
          DateTime? timestamp,
          String? description,
          int? okID,
          int? interactionID,
          String? foreignTableName,
          int? foreignID}) =>
      OK(
        interactionTime: interactionTime ?? this.interactionTime,
        deleted: deleted ?? this.deleted,
        userID: userID ?? this.userID,
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        okID: okID ?? this.okID,
        interactionID: interactionID ?? this.interactionID,
        foreignTableName: foreignTableName ?? this.foreignTableName,
        foreignID: foreignID ?? this.foreignID,
      );
  @override
  String toString() {
    return (StringBuffer('OK(')
          ..write('interactionTime: $interactionTime, ')
          ..write('deleted: $deleted, ')
          ..write('userID: $userID, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('okID: $okID, ')
          ..write('interactionID: $interactionID, ')
          ..write('foreignTableName: $foreignTableName, ')
          ..write('foreignID: $foreignID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(interactionTime, deleted, userID, id,
      timestamp, description, okID, interactionID, foreignTableName, foreignID);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OK &&
          other.interactionTime == this.interactionTime &&
          other.deleted == this.deleted &&
          other.userID == this.userID &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.okID == this.okID &&
          other.interactionID == this.interactionID &&
          other.foreignTableName == this.foreignTableName &&
          other.foreignID == this.foreignID);
}

class OKsCompanion extends UpdateCompanion<OK> {
  final Value<DateTime> interactionTime;
  final Value<bool> deleted;
  final Value<int> userID;
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> okID;
  final Value<int> interactionID;
  final Value<String> foreignTableName;
  final Value<int> foreignID;
  const OKsCompanion({
    this.interactionTime = const Value.absent(),
    this.deleted = const Value.absent(),
    this.userID = const Value.absent(),
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.okID = const Value.absent(),
    this.interactionID = const Value.absent(),
    this.foreignTableName = const Value.absent(),
    this.foreignID = const Value.absent(),
  });
  OKsCompanion.insert({
    required DateTime interactionTime,
    required bool deleted,
    required int userID,
    required int id,
    required DateTime timestamp,
    required String description,
    required int okID,
    required int interactionID,
    required String foreignTableName,
    required int foreignID,
  })  : interactionTime = Value(interactionTime),
        deleted = Value(deleted),
        userID = Value(userID),
        id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        okID = Value(okID),
        interactionID = Value(interactionID),
        foreignTableName = Value(foreignTableName),
        foreignID = Value(foreignID);
  static Insertable<OK> custom({
    Expression<DateTime>? interactionTime,
    Expression<bool>? deleted,
    Expression<int>? userID,
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? okID,
    Expression<int>? interactionID,
    Expression<String>? foreignTableName,
    Expression<int>? foreignID,
  }) {
    return RawValuesInsertable({
      if (interactionTime != null) 'interaction_time': interactionTime,
      if (deleted != null) 'deleted': deleted,
      if (userID != null) 'user_i_d': userID,
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (okID != null) 'ok_i_d': okID,
      if (interactionID != null) 'interaction_i_d': interactionID,
      if (foreignTableName != null) 'foreign_table_name': foreignTableName,
      if (foreignID != null) 'foreign_i_d': foreignID,
    });
  }

  OKsCompanion copyWith(
      {Value<DateTime>? interactionTime,
      Value<bool>? deleted,
      Value<int>? userID,
      Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? okID,
      Value<int>? interactionID,
      Value<String>? foreignTableName,
      Value<int>? foreignID}) {
    return OKsCompanion(
      interactionTime: interactionTime ?? this.interactionTime,
      deleted: deleted ?? this.deleted,
      userID: userID ?? this.userID,
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      okID: okID ?? this.okID,
      interactionID: interactionID ?? this.interactionID,
      foreignTableName: foreignTableName ?? this.foreignTableName,
      foreignID: foreignID ?? this.foreignID,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (interactionTime.present) {
      map['interaction_time'] = Variable<DateTime>(interactionTime.value);
    }
    if (deleted.present) {
      map['deleted'] = Variable<bool>(deleted.value);
    }
    if (userID.present) {
      map['user_i_d'] = Variable<int>(userID.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (okID.present) {
      map['ok_i_d'] = Variable<int>(okID.value);
    }
    if (interactionID.present) {
      map['interaction_i_d'] = Variable<int>(interactionID.value);
    }
    if (foreignTableName.present) {
      map['foreign_table_name'] = Variable<String>(foreignTableName.value);
    }
    if (foreignID.present) {
      map['foreign_i_d'] = Variable<int>(foreignID.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OKsCompanion(')
          ..write('interactionTime: $interactionTime, ')
          ..write('deleted: $deleted, ')
          ..write('userID: $userID, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('okID: $okID, ')
          ..write('interactionID: $interactionID, ')
          ..write('foreignTableName: $foreignTableName, ')
          ..write('foreignID: $foreignID')
          ..write(')'))
        .toString();
  }
}

class $OKsTable extends OKs with TableInfo<$OKsTable, OK> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OKsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _interactionTimeMeta =
      const VerificationMeta('interactionTime');
  @override
  late final GeneratedColumn<DateTime?> interactionTime =
      GeneratedColumn<DateTime?>('interaction_time', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<bool?> deleted = GeneratedColumn<bool?>(
      'deleted', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (deleted IN (0, 1))');
  final VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<int?> userID = GeneratedColumn<int?>(
      'user_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _okIDMeta = const VerificationMeta('okID');
  @override
  late final GeneratedColumn<int?> okID = GeneratedColumn<int?>(
      'ok_i_d', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _interactionIDMeta =
      const VerificationMeta('interactionID');
  @override
  late final GeneratedColumn<int?> interactionID = GeneratedColumn<int?>(
      'interaction_i_d', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _foreignTableNameMeta =
      const VerificationMeta('foreignTableName');
  @override
  late final GeneratedColumn<String?> foreignTableName =
      GeneratedColumn<String?>('foreign_table_name', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _foreignIDMeta = const VerificationMeta('foreignID');
  @override
  late final GeneratedColumn<int?> foreignID = GeneratedColumn<int?>(
      'foreign_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        interactionTime,
        deleted,
        userID,
        id,
        timestamp,
        description,
        okID,
        interactionID,
        foreignTableName,
        foreignID
      ];
  @override
  String get aliasedName => _alias ?? 'o_ks';
  @override
  String get actualTableName => 'o_ks';
  @override
  VerificationContext validateIntegrity(Insertable<OK> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('interaction_time')) {
      context.handle(
          _interactionTimeMeta,
          interactionTime.isAcceptableOrUnknown(
              data['interaction_time']!, _interactionTimeMeta));
    } else if (isInserting) {
      context.missing(_interactionTimeMeta);
    }
    if (data.containsKey('deleted')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['deleted']!, _deletedMeta));
    } else if (isInserting) {
      context.missing(_deletedMeta);
    }
    if (data.containsKey('user_i_d')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_i_d']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('ok_i_d')) {
      context.handle(
          _okIDMeta, okID.isAcceptableOrUnknown(data['ok_i_d']!, _okIDMeta));
    } else if (isInserting) {
      context.missing(_okIDMeta);
    }
    if (data.containsKey('interaction_i_d')) {
      context.handle(
          _interactionIDMeta,
          interactionID.isAcceptableOrUnknown(
              data['interaction_i_d']!, _interactionIDMeta));
    } else if (isInserting) {
      context.missing(_interactionIDMeta);
    }
    if (data.containsKey('foreign_table_name')) {
      context.handle(
          _foreignTableNameMeta,
          foreignTableName.isAcceptableOrUnknown(
              data['foreign_table_name']!, _foreignTableNameMeta));
    } else if (isInserting) {
      context.missing(_foreignTableNameMeta);
    }
    if (data.containsKey('foreign_i_d')) {
      context.handle(
          _foreignIDMeta,
          foreignID.isAcceptableOrUnknown(
              data['foreign_i_d']!, _foreignIDMeta));
    } else if (isInserting) {
      context.missing(_foreignIDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  OK map(Map<String, dynamic> data, {String? tablePrefix}) {
    return OK.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $OKsTable createAlias(String alias) {
    return $OKsTable(attachedDatabase, alias);
  }
}

class Message extends DataClass implements Insertable<Message> {
  final DateTime interactionTime;
  final bool deleted;
  final int userID;
  final int id;
  final DateTime timestamp;
  final String description;
  final int messageID;
  final int sender;
  final int receiverID;
  final String content;
  Message(
      {required this.interactionTime,
      required this.deleted,
      required this.userID,
      required this.id,
      required this.timestamp,
      required this.description,
      required this.messageID,
      required this.sender,
      required this.receiverID,
      required this.content});
  factory Message.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Message(
      interactionTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}interaction_time'])!,
      deleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted'])!,
      userID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_i_d'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      messageID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}message_i_d'])!,
      sender: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sender'])!,
      receiverID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}receiver_i_d'])!,
      content: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}content'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['interaction_time'] = Variable<DateTime>(interactionTime);
    map['deleted'] = Variable<bool>(deleted);
    map['user_i_d'] = Variable<int>(userID);
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['message_i_d'] = Variable<int>(messageID);
    map['sender'] = Variable<int>(sender);
    map['receiver_i_d'] = Variable<int>(receiverID);
    map['content'] = Variable<String>(content);
    return map;
  }

  MessagesCompanion toCompanion(bool nullToAbsent) {
    return MessagesCompanion(
      interactionTime: Value(interactionTime),
      deleted: Value(deleted),
      userID: Value(userID),
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      messageID: Value(messageID),
      sender: Value(sender),
      receiverID: Value(receiverID),
      content: Value(content),
    );
  }

  factory Message.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Message(
      interactionTime: serializer.fromJson<DateTime>(json['interactionTime']),
      deleted: serializer.fromJson<bool>(json['deleted']),
      userID: serializer.fromJson<int>(json['userID']),
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      messageID: serializer.fromJson<int>(json['messageID']),
      sender: serializer.fromJson<int>(json['sender']),
      receiverID: serializer.fromJson<int>(json['receiverID']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'interactionTime': serializer.toJson<DateTime>(interactionTime),
      'deleted': serializer.toJson<bool>(deleted),
      'userID': serializer.toJson<int>(userID),
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'messageID': serializer.toJson<int>(messageID),
      'sender': serializer.toJson<int>(sender),
      'receiverID': serializer.toJson<int>(receiverID),
      'content': serializer.toJson<String>(content),
    };
  }

  Message copyWith(
          {DateTime? interactionTime,
          bool? deleted,
          int? userID,
          int? id,
          DateTime? timestamp,
          String? description,
          int? messageID,
          int? sender,
          int? receiverID,
          String? content}) =>
      Message(
        interactionTime: interactionTime ?? this.interactionTime,
        deleted: deleted ?? this.deleted,
        userID: userID ?? this.userID,
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        messageID: messageID ?? this.messageID,
        sender: sender ?? this.sender,
        receiverID: receiverID ?? this.receiverID,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('Message(')
          ..write('interactionTime: $interactionTime, ')
          ..write('deleted: $deleted, ')
          ..write('userID: $userID, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('messageID: $messageID, ')
          ..write('sender: $sender, ')
          ..write('receiverID: $receiverID, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(interactionTime, deleted, userID, id,
      timestamp, description, messageID, sender, receiverID, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Message &&
          other.interactionTime == this.interactionTime &&
          other.deleted == this.deleted &&
          other.userID == this.userID &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.messageID == this.messageID &&
          other.sender == this.sender &&
          other.receiverID == this.receiverID &&
          other.content == this.content);
}

class MessagesCompanion extends UpdateCompanion<Message> {
  final Value<DateTime> interactionTime;
  final Value<bool> deleted;
  final Value<int> userID;
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> messageID;
  final Value<int> sender;
  final Value<int> receiverID;
  final Value<String> content;
  const MessagesCompanion({
    this.interactionTime = const Value.absent(),
    this.deleted = const Value.absent(),
    this.userID = const Value.absent(),
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.messageID = const Value.absent(),
    this.sender = const Value.absent(),
    this.receiverID = const Value.absent(),
    this.content = const Value.absent(),
  });
  MessagesCompanion.insert({
    required DateTime interactionTime,
    required bool deleted,
    required int userID,
    required int id,
    required DateTime timestamp,
    required String description,
    required int messageID,
    required int sender,
    required int receiverID,
    required String content,
  })  : interactionTime = Value(interactionTime),
        deleted = Value(deleted),
        userID = Value(userID),
        id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        messageID = Value(messageID),
        sender = Value(sender),
        receiverID = Value(receiverID),
        content = Value(content);
  static Insertable<Message> custom({
    Expression<DateTime>? interactionTime,
    Expression<bool>? deleted,
    Expression<int>? userID,
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? messageID,
    Expression<int>? sender,
    Expression<int>? receiverID,
    Expression<String>? content,
  }) {
    return RawValuesInsertable({
      if (interactionTime != null) 'interaction_time': interactionTime,
      if (deleted != null) 'deleted': deleted,
      if (userID != null) 'user_i_d': userID,
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (messageID != null) 'message_i_d': messageID,
      if (sender != null) 'sender': sender,
      if (receiverID != null) 'receiver_i_d': receiverID,
      if (content != null) 'content': content,
    });
  }

  MessagesCompanion copyWith(
      {Value<DateTime>? interactionTime,
      Value<bool>? deleted,
      Value<int>? userID,
      Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? messageID,
      Value<int>? sender,
      Value<int>? receiverID,
      Value<String>? content}) {
    return MessagesCompanion(
      interactionTime: interactionTime ?? this.interactionTime,
      deleted: deleted ?? this.deleted,
      userID: userID ?? this.userID,
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      messageID: messageID ?? this.messageID,
      sender: sender ?? this.sender,
      receiverID: receiverID ?? this.receiverID,
      content: content ?? this.content,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (interactionTime.present) {
      map['interaction_time'] = Variable<DateTime>(interactionTime.value);
    }
    if (deleted.present) {
      map['deleted'] = Variable<bool>(deleted.value);
    }
    if (userID.present) {
      map['user_i_d'] = Variable<int>(userID.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (messageID.present) {
      map['message_i_d'] = Variable<int>(messageID.value);
    }
    if (sender.present) {
      map['sender'] = Variable<int>(sender.value);
    }
    if (receiverID.present) {
      map['receiver_i_d'] = Variable<int>(receiverID.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MessagesCompanion(')
          ..write('interactionTime: $interactionTime, ')
          ..write('deleted: $deleted, ')
          ..write('userID: $userID, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('messageID: $messageID, ')
          ..write('sender: $sender, ')
          ..write('receiverID: $receiverID, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }
}

class $MessagesTable extends Messages with TableInfo<$MessagesTable, Message> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MessagesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _interactionTimeMeta =
      const VerificationMeta('interactionTime');
  @override
  late final GeneratedColumn<DateTime?> interactionTime =
      GeneratedColumn<DateTime?>('interaction_time', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<bool?> deleted = GeneratedColumn<bool?>(
      'deleted', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (deleted IN (0, 1))');
  final VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<int?> userID = GeneratedColumn<int?>(
      'user_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _messageIDMeta = const VerificationMeta('messageID');
  @override
  late final GeneratedColumn<int?> messageID = GeneratedColumn<int?>(
      'message_i_d', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _senderMeta = const VerificationMeta('sender');
  @override
  late final GeneratedColumn<int?> sender = GeneratedColumn<int?>(
      'sender', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _receiverIDMeta = const VerificationMeta('receiverID');
  @override
  late final GeneratedColumn<int?> receiverID = GeneratedColumn<int?>(
      'receiver_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _contentMeta = const VerificationMeta('content');
  @override
  late final GeneratedColumn<String?> content = GeneratedColumn<String?>(
      'content', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        interactionTime,
        deleted,
        userID,
        id,
        timestamp,
        description,
        messageID,
        sender,
        receiverID,
        content
      ];
  @override
  String get aliasedName => _alias ?? 'messages';
  @override
  String get actualTableName => 'messages';
  @override
  VerificationContext validateIntegrity(Insertable<Message> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('interaction_time')) {
      context.handle(
          _interactionTimeMeta,
          interactionTime.isAcceptableOrUnknown(
              data['interaction_time']!, _interactionTimeMeta));
    } else if (isInserting) {
      context.missing(_interactionTimeMeta);
    }
    if (data.containsKey('deleted')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['deleted']!, _deletedMeta));
    } else if (isInserting) {
      context.missing(_deletedMeta);
    }
    if (data.containsKey('user_i_d')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_i_d']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('message_i_d')) {
      context.handle(
          _messageIDMeta,
          messageID.isAcceptableOrUnknown(
              data['message_i_d']!, _messageIDMeta));
    } else if (isInserting) {
      context.missing(_messageIDMeta);
    }
    if (data.containsKey('sender')) {
      context.handle(_senderMeta,
          sender.isAcceptableOrUnknown(data['sender']!, _senderMeta));
    } else if (isInserting) {
      context.missing(_senderMeta);
    }
    if (data.containsKey('receiver_i_d')) {
      context.handle(
          _receiverIDMeta,
          receiverID.isAcceptableOrUnknown(
              data['receiver_i_d']!, _receiverIDMeta));
    } else if (isInserting) {
      context.missing(_receiverIDMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Message map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Message.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MessagesTable createAlias(String alias) {
    return $MessagesTable(attachedDatabase, alias);
  }
}

class Comment extends DataClass implements Insertable<Comment> {
  final DateTime interactionTime;
  final bool deleted;
  final int userID;
  final int id;
  final DateTime timestamp;
  final String description;
  final int userid;
  final int productID;
  final String content;
  Comment(
      {required this.interactionTime,
      required this.deleted,
      required this.userID,
      required this.id,
      required this.timestamp,
      required this.description,
      required this.userid,
      required this.productID,
      required this.content});
  factory Comment.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Comment(
      interactionTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}interaction_time'])!,
      deleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted'])!,
      userID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_i_d'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      timestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timestamp'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      userid: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}userid'])!,
      productID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}product_i_d'])!,
      content: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}body'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['interaction_time'] = Variable<DateTime>(interactionTime);
    map['deleted'] = Variable<bool>(deleted);
    map['user_i_d'] = Variable<int>(userID);
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['description'] = Variable<String>(description);
    map['userid'] = Variable<int>(userid);
    map['product_i_d'] = Variable<int>(productID);
    map['body'] = Variable<String>(content);
    return map;
  }

  CommentsCompanion toCompanion(bool nullToAbsent) {
    return CommentsCompanion(
      interactionTime: Value(interactionTime),
      deleted: Value(deleted),
      userID: Value(userID),
      id: Value(id),
      timestamp: Value(timestamp),
      description: Value(description),
      userid: Value(userid),
      productID: Value(productID),
      content: Value(content),
    );
  }

  factory Comment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Comment(
      interactionTime: serializer.fromJson<DateTime>(json['interactionTime']),
      deleted: serializer.fromJson<bool>(json['deleted']),
      userID: serializer.fromJson<int>(json['userID']),
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String>(json['description']),
      userid: serializer.fromJson<int>(json['userid']),
      productID: serializer.fromJson<int>(json['productID']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'interactionTime': serializer.toJson<DateTime>(interactionTime),
      'deleted': serializer.toJson<bool>(deleted),
      'userID': serializer.toJson<int>(userID),
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String>(description),
      'userid': serializer.toJson<int>(userid),
      'productID': serializer.toJson<int>(productID),
      'content': serializer.toJson<String>(content),
    };
  }

  Comment copyWith(
          {DateTime? interactionTime,
          bool? deleted,
          int? userID,
          int? id,
          DateTime? timestamp,
          String? description,
          int? userid,
          int? productID,
          String? content}) =>
      Comment(
        interactionTime: interactionTime ?? this.interactionTime,
        deleted: deleted ?? this.deleted,
        userID: userID ?? this.userID,
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        description: description ?? this.description,
        userid: userid ?? this.userid,
        productID: productID ?? this.productID,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('Comment(')
          ..write('interactionTime: $interactionTime, ')
          ..write('deleted: $deleted, ')
          ..write('userID: $userID, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('userid: $userid, ')
          ..write('productID: $productID, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(interactionTime, deleted, userID, id,
      timestamp, description, userid, productID, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Comment &&
          other.interactionTime == this.interactionTime &&
          other.deleted == this.deleted &&
          other.userID == this.userID &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.description == this.description &&
          other.userid == this.userid &&
          other.productID == this.productID &&
          other.content == this.content);
}

class CommentsCompanion extends UpdateCompanion<Comment> {
  final Value<DateTime> interactionTime;
  final Value<bool> deleted;
  final Value<int> userID;
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> description;
  final Value<int> userid;
  final Value<int> productID;
  final Value<String> content;
  const CommentsCompanion({
    this.interactionTime = const Value.absent(),
    this.deleted = const Value.absent(),
    this.userID = const Value.absent(),
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
    this.userid = const Value.absent(),
    this.productID = const Value.absent(),
    this.content = const Value.absent(),
  });
  CommentsCompanion.insert({
    required DateTime interactionTime,
    required bool deleted,
    required int userID,
    required int id,
    required DateTime timestamp,
    required String description,
    required int userid,
    required int productID,
    required String content,
  })  : interactionTime = Value(interactionTime),
        deleted = Value(deleted),
        userID = Value(userID),
        id = Value(id),
        timestamp = Value(timestamp),
        description = Value(description),
        userid = Value(userid),
        productID = Value(productID),
        content = Value(content);
  static Insertable<Comment> custom({
    Expression<DateTime>? interactionTime,
    Expression<bool>? deleted,
    Expression<int>? userID,
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
    Expression<int>? userid,
    Expression<int>? productID,
    Expression<String>? content,
  }) {
    return RawValuesInsertable({
      if (interactionTime != null) 'interaction_time': interactionTime,
      if (deleted != null) 'deleted': deleted,
      if (userID != null) 'user_i_d': userID,
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
      if (userid != null) 'userid': userid,
      if (productID != null) 'product_i_d': productID,
      if (content != null) 'body': content,
    });
  }

  CommentsCompanion copyWith(
      {Value<DateTime>? interactionTime,
      Value<bool>? deleted,
      Value<int>? userID,
      Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? description,
      Value<int>? userid,
      Value<int>? productID,
      Value<String>? content}) {
    return CommentsCompanion(
      interactionTime: interactionTime ?? this.interactionTime,
      deleted: deleted ?? this.deleted,
      userID: userID ?? this.userID,
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
      userid: userid ?? this.userid,
      productID: productID ?? this.productID,
      content: content ?? this.content,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (interactionTime.present) {
      map['interaction_time'] = Variable<DateTime>(interactionTime.value);
    }
    if (deleted.present) {
      map['deleted'] = Variable<bool>(deleted.value);
    }
    if (userID.present) {
      map['user_i_d'] = Variable<int>(userID.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (userid.present) {
      map['userid'] = Variable<int>(userid.value);
    }
    if (productID.present) {
      map['product_i_d'] = Variable<int>(productID.value);
    }
    if (content.present) {
      map['body'] = Variable<String>(content.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CommentsCompanion(')
          ..write('interactionTime: $interactionTime, ')
          ..write('deleted: $deleted, ')
          ..write('userID: $userID, ')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description, ')
          ..write('userid: $userid, ')
          ..write('productID: $productID, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }
}

class $CommentsTable extends Comments with TableInfo<$CommentsTable, Comment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CommentsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _interactionTimeMeta =
      const VerificationMeta('interactionTime');
  @override
  late final GeneratedColumn<DateTime?> interactionTime =
      GeneratedColumn<DateTime?>('interaction_time', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<bool?> deleted = GeneratedColumn<bool?>(
      'deleted', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (deleted IN (0, 1))');
  final VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<int?> userID = GeneratedColumn<int?>(
      'user_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime?> timestamp = GeneratedColumn<DateTime?>(
      'timestamp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _useridMeta = const VerificationMeta('userid');
  @override
  late final GeneratedColumn<int?> userid = GeneratedColumn<int?>(
      'userid', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _productIDMeta = const VerificationMeta('productID');
  @override
  late final GeneratedColumn<int?> productID = GeneratedColumn<int?>(
      'product_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _contentMeta = const VerificationMeta('content');
  @override
  late final GeneratedColumn<String?> content = GeneratedColumn<String?>(
      'body', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        interactionTime,
        deleted,
        userID,
        id,
        timestamp,
        description,
        userid,
        productID,
        content
      ];
  @override
  String get aliasedName => _alias ?? 'comments';
  @override
  String get actualTableName => 'comments';
  @override
  VerificationContext validateIntegrity(Insertable<Comment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('interaction_time')) {
      context.handle(
          _interactionTimeMeta,
          interactionTime.isAcceptableOrUnknown(
              data['interaction_time']!, _interactionTimeMeta));
    } else if (isInserting) {
      context.missing(_interactionTimeMeta);
    }
    if (data.containsKey('deleted')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['deleted']!, _deletedMeta));
    } else if (isInserting) {
      context.missing(_deletedMeta);
    }
    if (data.containsKey('user_i_d')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_i_d']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('userid')) {
      context.handle(_useridMeta,
          userid.isAcceptableOrUnknown(data['userid']!, _useridMeta));
    } else if (isInserting) {
      context.missing(_useridMeta);
    }
    if (data.containsKey('product_i_d')) {
      context.handle(
          _productIDMeta,
          productID.isAcceptableOrUnknown(
              data['product_i_d']!, _productIDMeta));
    } else if (isInserting) {
      context.missing(_productIDMeta);
    }
    if (data.containsKey('body')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['body']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Comment map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Comment.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CommentsTable createAlias(String alias) {
    return $CommentsTable(attachedDatabase, alias);
  }
}

abstract class _$SharedDatabase extends GeneratedDatabase {
  _$SharedDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $DefaultColumnsTable defaultColumns = $DefaultColumnsTable(this);
  late final $UsersTable users = $UsersTable(this);
  late final $PubKeysTable pubKeys = $PubKeysTable(this);
  late final $SignaturesTable signatures = $SignaturesTable(this);
  late final $RecommendedAdditionsTable recommendedAdditions =
      $RecommendedAdditionsTable(this);
  late final $ContestedAdditionsTable contestedAdditions =
      $ContestedAdditionsTable(this);
  late final $ProductsTable products = $ProductsTable(this);
  late final $ProductRecommendationsTable productRecommendations =
      $ProductRecommendationsTable(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $CategoryRecommendationsTable categoryRecommendations =
      $CategoryRecommendationsTable(this);
  late final $SubcategoriesTable subcategories = $SubcategoriesTable(this);
  late final $SubcategoryRecommendationTable subcategoryRecommendation =
      $SubcategoryRecommendationTable(this);
  late final $ProductTypesTable productTypes = $ProductTypesTable(this);
  late final $ProductTypeRecommendationsTable productTypeRecommendations =
      $ProductTypeRecommendationsTable(this);
  late final $BrandsTable brands = $BrandsTable(this);
  late final $BrandRecommendationsTable brandRecommendations =
      $BrandRecommendationsTable(this);
  late final $CompaniesTable companies = $CompaniesTable(this);
  late final $CompanyRecommendationsTable companyRecommendations =
      $CompanyRecommendationsTable(this);
  late final $LinksTable links = $LinksTable(this);
  late final $LinkRecommendationsTable linkRecommendations =
      $LinkRecommendationsTable(this);
  late final $ImagesTable images = $ImagesTable(this);
  late final $ImageRecommendationsTable imageRecommendations =
      $ImageRecommendationsTable(this);
  late final $InteractionsTable interactions = $InteractionsTable(this);
  late final $OKsTable oKs = $OKsTable(this);
  late final $MessagesTable messages = $MessagesTable(this);
  late final $CommentsTable comments = $CommentsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        defaultColumns,
        users,
        pubKeys,
        signatures,
        recommendedAdditions,
        contestedAdditions,
        products,
        productRecommendations,
        categories,
        categoryRecommendations,
        subcategories,
        subcategoryRecommendation,
        productTypes,
        productTypeRecommendations,
        brands,
        brandRecommendations,
        companies,
        companyRecommendations,
        links,
        linkRecommendations,
        images,
        imageRecommendations,
        interactions,
        oKs,
        messages,
        comments
      ];
}
