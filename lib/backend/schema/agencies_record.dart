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
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AgenciesRecordBuilder builder) => builder
    ..agencyName = ''
    ..county = ''
    ..categoryId = '';

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
}) =>
    serializers.toFirestore(
        AgenciesRecord.serializer,
        AgenciesRecord((a) => a
          ..agencyName = agencyName
          ..county = county
          ..categoryId = categoryId));
