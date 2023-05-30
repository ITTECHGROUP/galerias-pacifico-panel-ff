// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JsonTakePhotoResponseStruct extends FFFirebaseStruct {
  JsonTakePhotoResponseStruct({
    String? message,
    String? base64String,
    bool? success,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _message = message,
        _base64String = base64String,
        _success = success,
        super(firestoreUtilData);

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;
  bool hasMessage() => _message != null;

  // "base64String" field.
  String? _base64String;
  String get base64String => _base64String ?? '';
  set base64String(String? val) => _base64String = val;
  bool hasBase64String() => _base64String != null;

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;
  bool hasSuccess() => _success != null;

  static JsonTakePhotoResponseStruct fromMap(Map<String, dynamic> data) =>
      JsonTakePhotoResponseStruct(
        message: data['message'] as String?,
        base64String: data['base64String'] as String?,
        success: data['success'] as bool?,
      );

  static JsonTakePhotoResponseStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? JsonTakePhotoResponseStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'base64String': _base64String,
        'success': _success,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'base64String': serializeParam(
          _base64String,
          ParamType.String,
        ),
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
      }.withoutNulls;

  static JsonTakePhotoResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      JsonTakePhotoResponseStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        base64String: deserializeParam(
          data['base64String'],
          ParamType.String,
          false,
        ),
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'JsonTakePhotoResponseStruct(${toMap()})';
}

JsonTakePhotoResponseStruct createJsonTakePhotoResponseStruct({
  String? message,
  String? base64String,
  bool? success,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    JsonTakePhotoResponseStruct(
      message: message,
      base64String: base64String,
      success: success,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

JsonTakePhotoResponseStruct? updateJsonTakePhotoResponseStruct(
  JsonTakePhotoResponseStruct? jsonTakePhotoResponse, {
  bool clearUnsetFields = true,
}) =>
    jsonTakePhotoResponse
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addJsonTakePhotoResponseStructData(
  Map<String, dynamic> firestoreData,
  JsonTakePhotoResponseStruct? jsonTakePhotoResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (jsonTakePhotoResponse == null) {
    return;
  }
  if (jsonTakePhotoResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue &&
      jsonTakePhotoResponse.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final jsonTakePhotoResponseData = getJsonTakePhotoResponseFirestoreData(
      jsonTakePhotoResponse, forFieldValue);
  final nestedData =
      jsonTakePhotoResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = jsonTakePhotoResponse.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getJsonTakePhotoResponseFirestoreData(
  JsonTakePhotoResponseStruct? jsonTakePhotoResponse, [
  bool forFieldValue = false,
]) {
  if (jsonTakePhotoResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(jsonTakePhotoResponse.toMap());

  // Add any Firestore field values
  jsonTakePhotoResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getJsonTakePhotoResponseListFirestoreData(
  List<JsonTakePhotoResponseStruct>? jsonTakePhotoResponses,
) =>
    jsonTakePhotoResponses
        ?.map((e) => getJsonTakePhotoResponseFirestoreData(e, true))
        .toList() ??
    [];
