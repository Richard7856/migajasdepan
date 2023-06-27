import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PreBuyRecord extends FirestoreRecord {
  PreBuyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Product" field.
  DocumentReference? _product;
  DocumentReference? get product => _product;
  bool hasProduct() => _product != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  // "quanty" field.
  int? _quanty;
  int get quanty => _quanty ?? 0;
  bool hasQuanty() => _quanty != null;

  void _initializeFields() {
    _product = snapshotData['Product'] as DocumentReference?;
    _subTotal = castToType<double>(snapshotData['subTotal']);
    _quanty = castToType<int>(snapshotData['quanty']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pre-buy');

  static Stream<PreBuyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PreBuyRecord.fromSnapshot(s));

  static Future<PreBuyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PreBuyRecord.fromSnapshot(s));

  static PreBuyRecord fromSnapshot(DocumentSnapshot snapshot) => PreBuyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PreBuyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PreBuyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PreBuyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PreBuyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPreBuyRecordData({
  DocumentReference? product,
  double? subTotal,
  int? quanty,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Product': product,
      'subTotal': subTotal,
      'quanty': quanty,
    }.withoutNulls,
  );

  return firestoreData;
}
