import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostItemsRecord extends FirestoreRecord {
  PostItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "RefImage1" field.
  String? _refImage1;
  String get refImage1 => _refImage1 ?? '';
  bool hasRefImage1() => _refImage1 != null;

  // "RefImage2" field.
  String? _refImage2;
  String get refImage2 => _refImage2 ?? '';
  bool hasRefImage2() => _refImage2 != null;

  // "RefImage3" field.
  String? _refImage3;
  String get refImage3 => _refImage3 ?? '';
  bool hasRefImage3() => _refImage3 != null;

  // "RefImage4" field.
  String? _refImage4;
  String get refImage4 => _refImage4 ?? '';
  bool hasRefImage4() => _refImage4 != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _description = snapshotData['Description'] as String?;
    _price = castToType<double>(snapshotData['Price']);
    _refImage1 = snapshotData['RefImage1'] as String?;
    _refImage2 = snapshotData['RefImage2'] as String?;
    _refImage3 = snapshotData['RefImage3'] as String?;
    _refImage4 = snapshotData['RefImage4'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post_items');

  static Stream<PostItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostItemsRecord.fromSnapshot(s));

  static Future<PostItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostItemsRecord.fromSnapshot(s));

  static PostItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PostItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostItemsRecordData({
  String? title,
  String? description,
  double? price,
  String? refImage1,
  String? refImage2,
  String? refImage3,
  String? refImage4,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'Description': description,
      'Price': price,
      'RefImage1': refImage1,
      'RefImage2': refImage2,
      'RefImage3': refImage3,
      'RefImage4': refImage4,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostItemsRecordDocumentEquality implements Equality<PostItemsRecord> {
  const PostItemsRecordDocumentEquality();

  @override
  bool equals(PostItemsRecord? e1, PostItemsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.refImage1 == e2?.refImage1 &&
        e1?.refImage2 == e2?.refImage2 &&
        e1?.refImage3 == e2?.refImage3 &&
        e1?.refImage4 == e2?.refImage4;
  }

  @override
  int hash(PostItemsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.price,
        e?.refImage1,
        e?.refImage2,
        e?.refImage3,
        e?.refImage4
      ]);

  @override
  bool isValidKey(Object? o) => o is PostItemsRecord;
}
