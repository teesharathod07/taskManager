import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "isImportant" field.
  bool? _isImportant;
  bool get isImportant => _isImportant ?? false;
  bool hasIsImportant() => _isImportant != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "modifiedAt" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "isFav" field.
  bool? _isFav;
  bool get isFav => _isFav ?? false;
  bool hasIsFav() => _isFav != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userId = snapshotData['userId'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _status = snapshotData['status'] as String?;
    _isImportant = snapshotData['isImportant'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _modifiedAt = snapshotData['modifiedAt'] as DateTime?;
    _isFav = snapshotData['isFav'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('tasks')
          : FirebaseFirestore.instance.collectionGroup('tasks');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('tasks').doc(id);

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksRecordData({
  DocumentReference? userId,
  String? title,
  String? status,
  bool? isImportant,
  DateTime? createdAt,
  String? description,
  DateTime? modifiedAt,
  bool? isFav,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'title': title,
      'status': status,
      'isImportant': isImportant,
      'createdAt': createdAt,
      'description': description,
      'modifiedAt': modifiedAt,
      'isFav': isFav,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.title == e2?.title &&
        e1?.status == e2?.status &&
        e1?.isImportant == e2?.isImportant &&
        e1?.createdAt == e2?.createdAt &&
        e1?.description == e2?.description &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.isFav == e2?.isFav;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.title,
        e?.status,
        e?.isImportant,
        e?.createdAt,
        e?.description,
        e?.modifiedAt,
        e?.isFav
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
