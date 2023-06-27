import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromoRecord extends FirestoreRecord {
  PromoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "star" field.
  DateTime? _star;
  DateTime? get star => _star;
  bool hasStar() => _star != null;

  // "end" field.
  DateTime? _end;
  DateTime? get end => _end;
  bool hasEnd() => _end != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _star = snapshotData['star'] as DateTime?;
    _end = snapshotData['end'] as DateTime?;
    _active = snapshotData['active'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Promo');

  static Stream<PromoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromoRecord.fromSnapshot(s));

  static Future<PromoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromoRecord.fromSnapshot(s));

  static PromoRecord fromSnapshot(DocumentSnapshot snapshot) => PromoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromoRecordData({
  String? name,
  String? description,
  DateTime? star,
  DateTime? end,
  bool? active,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'star': star,
      'end': end,
      'active': active,
    }.withoutNulls,
  );

  return firestoreData;
}
