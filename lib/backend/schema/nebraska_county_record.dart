import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'nebraska_county_record.g.dart';

abstract class NebraskaCountyRecord
    implements Built<NebraskaCountyRecord, NebraskaCountyRecordBuilder> {
  static Serializer<NebraskaCountyRecord> get serializer =>
      _$nebraskaCountyRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'CountyName')
  String get countyName;

  @nullable
  @BuiltValueField(wireName: 'CountySeat')
  String get countySeat;

  @nullable
  @BuiltValueField(wireName: 'Population')
  int get population;

  @nullable
  @BuiltValueField(wireName: 'CountyAvatar')
  String get countyAvatar;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NebraskaCountyRecordBuilder builder) => builder
    ..countyName = ''
    ..countySeat = ''
    ..population = 0
    ..countyAvatar = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('NebraskaCounty');

  static Stream<NebraskaCountyRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  NebraskaCountyRecord._();
  factory NebraskaCountyRecord(
          [void Function(NebraskaCountyRecordBuilder) updates]) =
      _$NebraskaCountyRecord;

  static NebraskaCountyRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createNebraskaCountyRecordData({
  String countyName,
  String countySeat,
  int population,
  String countyAvatar,
}) =>
    serializers.toFirestore(
        NebraskaCountyRecord.serializer,
        NebraskaCountyRecord((n) => n
          ..countyName = countyName
          ..countySeat = countySeat
          ..population = population
          ..countyAvatar = countyAvatar));
