import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'First_Name')
  String get firstName;

  @nullable
  @BuiltValueField(wireName: 'Last_Name')
  String get lastName;

  @nullable
  @BuiltValueField(wireName: 'Email_Address')
  String get emailAddress;

  @nullable
  @BuiltValueField(wireName: 'Agency_Name')
  String get agencyName;

  @nullable
  @BuiltValueField(wireName: 'Avatar_Image')
  String get avatarImage;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'Password')
  String get password;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..firstName = ''
    ..lastName = ''
    ..emailAddress = ''
    ..agencyName = ''
    ..avatarImage = ''
    ..uid = ''
    ..password = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String firstName,
  String lastName,
  String emailAddress,
  String agencyName,
  String avatarImage,
  String uid,
  String password,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..firstName = firstName
          ..lastName = lastName
          ..emailAddress = emailAddress
          ..agencyName = agencyName
          ..avatarImage = avatarImage
          ..uid = uid
          ..password = password));
