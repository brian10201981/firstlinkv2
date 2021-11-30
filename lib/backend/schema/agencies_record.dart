import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'agencies_record.g.dart';

abstract class AgenciesRecord
    implements Built<AgenciesRecord, AgenciesRecordBuilder> {
  static Serializer<AgenciesRecord> get serializer =>
      _$agenciesRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'AgencyName')
  String get agencyName;

  @nullable
  String get county;

  @nullable
  @BuiltValueField(wireName: 'CategoryId')
  String get categoryId;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'Agency_Avatar')
  String get agencyAvatar;

  @nullable
  @BuiltValueField(wireName: 'Date_Created')
  DateTime get dateCreated;

  @nullable
  @BuiltValueField(wireName: 'Agency_Description')
  String get agencyDescription;

  @nullable
  @BuiltValueField(wireName: 'Counties_Served')
  String get countiesServed;

  @nullable
  @BuiltValueField(wireName: 'Created_By')
  String get createdBy;

  @nullable
  @BuiltValueField(wireName: 'Street_Address')
  String get streetAddress;

  @nullable
  @BuiltValueField(wireName: 'Suite_Apt')
  String get suiteApt;

  @nullable
  @BuiltValueField(wireName: 'Po_Box')
  String get poBox;

  @nullable
  @BuiltValueField(wireName: 'City')
  String get city;

  @nullable
  @BuiltValueField(wireName: 'State')
  String get state;

  @nullable
  @BuiltValueField(wireName: 'Zip_Code')
  String get zipCode;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AgenciesRecordBuilder builder) => builder
    ..agencyName = ''
    ..county = ''
    ..categoryId = ''
    ..uid = ''
    ..agencyAvatar = ''
    ..agencyDescription = ''
    ..countiesServed = ''
    ..createdBy = ''
    ..streetAddress = ''
    ..suiteApt = ''
    ..poBox = ''
    ..city = ''
    ..state = ''
    ..zipCode = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agencies');

  static Stream<AgenciesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AgenciesRecord._();
  factory AgenciesRecord([void Function(AgenciesRecordBuilder) updates]) =
      _$AgenciesRecord;

  static AgenciesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAgenciesRecordData({
  String agencyName,
  String county,
  String categoryId,
  String uid,
  String agencyAvatar,
  DateTime dateCreated,
  String agencyDescription,
  String countiesServed,
  String createdBy,
  String streetAddress,
  String suiteApt,
  String poBox,
  String city,
  String state,
  String zipCode,
}) =>
    serializers.toFirestore(
        AgenciesRecord.serializer,
        AgenciesRecord((a) => a
          ..agencyName = agencyName
          ..county = county
          ..categoryId = categoryId
          ..uid = uid
          ..agencyAvatar = agencyAvatar
          ..dateCreated = dateCreated
          ..agencyDescription = agencyDescription
          ..countiesServed = countiesServed
          ..createdBy = createdBy
          ..streetAddress = streetAddress
          ..suiteApt = suiteApt
          ..poBox = poBox
          ..city = city
          ..state = state
          ..zipCode = zipCode));
