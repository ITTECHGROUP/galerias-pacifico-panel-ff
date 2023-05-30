// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosStruct extends FFFirebaseStruct {
  UsuariosStruct({
    String? displayName,
    String? mail,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _displayName = displayName,
        _mail = mail,
        super(firestoreUtilData);

  // "Display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;
  bool hasDisplayName() => _displayName != null;

  // "mail" field.
  String? _mail;
  String get mail => _mail ?? '';
  set mail(String? val) => _mail = val;
  bool hasMail() => _mail != null;

  static UsuariosStruct fromMap(Map<String, dynamic> data) => UsuariosStruct(
        displayName: data['Display_name'] as String?,
        mail: data['mail'] as String?,
      );

  static UsuariosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UsuariosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Display_name': _displayName,
        'mail': _mail,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'mail': serializeParam(
          _mail,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsuariosStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsuariosStruct(
        displayName: deserializeParam(
          data['Display_name'],
          ParamType.String,
          false,
        ),
        mail: deserializeParam(
          data['mail'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsuariosStruct(${toMap()})';
}

UsuariosStruct createUsuariosStruct({
  String? displayName,
  String? mail,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UsuariosStruct(
      displayName: displayName,
      mail: mail,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UsuariosStruct? updateUsuariosStruct(
  UsuariosStruct? usuarios, {
  bool clearUnsetFields = true,
}) =>
    usuarios
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addUsuariosStructData(
  Map<String, dynamic> firestoreData,
  UsuariosStruct? usuarios,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (usuarios == null) {
    return;
  }
  if (usuarios.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && usuarios.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final usuariosData = getUsuariosFirestoreData(usuarios, forFieldValue);
  final nestedData = usuariosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = usuarios.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUsuariosFirestoreData(
  UsuariosStruct? usuarios, [
  bool forFieldValue = false,
]) {
  if (usuarios == null) {
    return {};
  }
  final firestoreData = mapToFirestore(usuarios.toMap());

  // Add any Firestore field values
  usuarios.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUsuariosListFirestoreData(
  List<UsuariosStruct>? usuarioss,
) =>
    usuarioss?.map((e) => getUsuariosFirestoreData(e, true)).toList() ?? [];
