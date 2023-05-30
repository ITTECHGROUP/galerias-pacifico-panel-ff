import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Nacimiento" field.
  DateTime? _nacimiento;
  DateTime? get nacimiento => _nacimiento;
  bool hasNacimiento() => _nacimiento != null;

  // "DNI_Number" field.
  int? _dNINumber;
  int get dNINumber => _dNINumber ?? 0;
  bool hasDNINumber() => _dNINumber != null;

  // "Sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "DNI_Frontal" field.
  String? _dNIFrontal;
  String get dNIFrontal => _dNIFrontal ?? '';
  bool hasDNIFrontal() => _dNIFrontal != null;

  // "DNI_Dorsal" field.
  String? _dNIDorsal;
  String get dNIDorsal => _dNIDorsal ?? '';
  bool hasDNIDorsal() => _dNIDorsal != null;

  // "Puntos_User" field.
  int? _puntosUser;
  int get puntosUser => _puntosUser ?? 0;
  bool hasPuntosUser() => _puntosUser != null;

  // "PuntosTotalesCanjeados" field.
  int? _puntosTotalesCanjeados;
  int get puntosTotalesCanjeados => _puntosTotalesCanjeados ?? 0;
  bool hasPuntosTotalesCanjeados() => _puntosTotalesCanjeados != null;

  // "TotaldeCanjes" field.
  int? _totaldeCanjes;
  int get totaldeCanjes => _totaldeCanjes ?? 0;
  bool hasTotaldeCanjes() => _totaldeCanjes != null;

  // "Apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  bool hasApellido() => _apellido != null;

  // "EstadoUser" field.
  bool? _estadoUser;
  bool get estadoUser => _estadoUser ?? false;
  bool hasEstadoUser() => _estadoUser != null;

  // "EstadoDeSolicitud" field.
  String? _estadoDeSolicitud;
  String get estadoDeSolicitud => _estadoDeSolicitud ?? '';
  bool hasEstadoDeSolicitud() => _estadoDeSolicitud != null;

  // "CatalogoBoolean" field.
  bool? _catalogoBoolean;
  bool get catalogoBoolean => _catalogoBoolean ?? false;
  bool hasCatalogoBoolean() => _catalogoBoolean != null;

  // "NacimientoNumber" field.
  String? _nacimientoNumber;
  String get nacimientoNumber => _nacimientoNumber ?? '';
  bool hasNacimientoNumber() => _nacimientoNumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _nacimiento = snapshotData['Nacimiento'] as DateTime?;
    _dNINumber = snapshotData['DNI_Number'] as int?;
    _sexo = snapshotData['Sexo'] as String?;
    _dNIFrontal = snapshotData['DNI_Frontal'] as String?;
    _dNIDorsal = snapshotData['DNI_Dorsal'] as String?;
    _puntosUser = snapshotData['Puntos_User'] as int?;
    _puntosTotalesCanjeados = snapshotData['PuntosTotalesCanjeados'] as int?;
    _totaldeCanjes = snapshotData['TotaldeCanjes'] as int?;
    _apellido = snapshotData['Apellido'] as String?;
    _estadoUser = snapshotData['EstadoUser'] as bool?;
    _estadoDeSolicitud = snapshotData['EstadoDeSolicitud'] as String?;
    _catalogoBoolean = snapshotData['CatalogoBoolean'] as bool?;
    _nacimientoNumber = snapshotData['NacimientoNumber'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? nacimiento,
  int? dNINumber,
  String? sexo,
  String? dNIFrontal,
  String? dNIDorsal,
  int? puntosUser,
  int? puntosTotalesCanjeados,
  int? totaldeCanjes,
  String? apellido,
  bool? estadoUser,
  String? estadoDeSolicitud,
  bool? catalogoBoolean,
  String? nacimientoNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'Nacimiento': nacimiento,
      'DNI_Number': dNINumber,
      'Sexo': sexo,
      'DNI_Frontal': dNIFrontal,
      'DNI_Dorsal': dNIDorsal,
      'Puntos_User': puntosUser,
      'PuntosTotalesCanjeados': puntosTotalesCanjeados,
      'TotaldeCanjes': totaldeCanjes,
      'Apellido': apellido,
      'EstadoUser': estadoUser,
      'EstadoDeSolicitud': estadoDeSolicitud,
      'CatalogoBoolean': catalogoBoolean,
      'NacimientoNumber': nacimientoNumber,
    }.withoutNulls,
  );

  return firestoreData;
}
