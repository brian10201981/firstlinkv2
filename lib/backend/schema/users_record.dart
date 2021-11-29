import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

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
  @BuiltValueField(wireName: 'DateCreated')
  DateTime get dateCreated;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get email;

  @nullable
  String get firstName;

  @nullable
  String get lastName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..agencyName = ''
    ..avatarImage = ''
    ..uid = ''
    ..password = ''
    ..displayName = ''
    ..photoUrl = ''
    ..phoneNumber = ''
    ..email = ''
    ..firstName = ''
    ..lastName = '';

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
  String agencyName,
  String avatarImage,
  String uid,
  String password,
  DateTime dateCreated,
  String displayName,
  String photoUrl,
  DateTime createdTime,
  String phoneNumber,
  String email,
  String firstName,
  String lastName,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..agencyName = agencyName
          ..avatarImage = avatarImage
          ..uid = uid
          ..password = password
          ..dateCreated = dateCreated
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..email = email
          ..firstName = firstName
          ..lastName = lastName));
