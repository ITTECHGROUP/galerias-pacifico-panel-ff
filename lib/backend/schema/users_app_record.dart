import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersAppRecord extends FirestoreRecord {
  UsersAppRecord._(
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

  // "TotalDeCanjes" field.
  int? _totalDeCanjes;
  int get totalDeCanjes => _totalDeCanjes ?? 0;
  bool hasTotalDeCanjes() => _totalDeCanjes != null;

  // "Apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  bool hasApellido() => _apellido != null;

  // "Estado_User" field.
  bool? _estadoUser;
  bool get estadoUser => _estadoUser ?? false;
  bool hasEstadoUser() => _estadoUser != null;

  // "EstadoSolicitud" field.
  String? _estadoSolicitud;
  String get estadoSolicitud => _estadoSolicitud ?? '';
  bool hasEstadoSolicitud() => _estadoSolicitud != null;

  // "CatalogoBoolean" field.
  bool? _catalogoBoolean;
  bool get catalogoBoolean => _catalogoBoolean ?? false;
  bool hasCatalogoBoolean() => _catalogoBoolean != null;

  // "Calendar" field.
  bool? _calendar;
  bool get calendar => _calendar ?? false;
  bool hasCalendar() => _calendar != null;

  // "TerminoRegistro" field.
  bool? _terminoRegistro;
  bool get terminoRegistro => _terminoRegistro ?? false;
  bool hasTerminoRegistro() => _terminoRegistro != null;

  // "Notas" field.
  String? _notas;
  String get notas => _notas ?? '';
  bool hasNotas() => _notas != null;

  // "RazondelRechazo" field.
  String? _razondelRechazo;
  String get razondelRechazo => _razondelRechazo ?? '';
  bool hasRazondelRechazo() => _razondelRechazo != null;

  // "Notas2" field.
  List<String>? _notas2;
  List<String> get notas2 => _notas2 ?? const [];
  bool hasNotas2() => _notas2 != null;

  // "Notificacion" field.
  bool? _notificacion;
  bool get notificacion => _notificacion ?? false;
  bool hasNotificacion() => _notificacion != null;

  // "PuntosPendientes" field.
  int? _puntosPendientes;
  int get puntosPendientes => _puntosPendientes ?? 0;
  bool hasPuntosPendientes() => _puntosPendientes != null;

  // "PuntoDeVenta" field.
  String? _puntoDeVenta;
  String get puntoDeVenta => _puntoDeVenta ?? '';
  bool hasPuntoDeVenta() => _puntoDeVenta != null;

  // "Stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "Vencimiento" field.
  DateTime? _vencimiento;
  DateTime? get vencimiento => _vencimiento;
  bool hasVencimiento() => _vencimiento != null;

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
    _totalDeCanjes = snapshotData['TotalDeCanjes'] as int?;
    _apellido = snapshotData['Apellido'] as String?;
    _estadoUser = snapshotData['Estado_User'] as bool?;
    _estadoSolicitud = snapshotData['EstadoSolicitud'] as String?;
    _catalogoBoolean = snapshotData['CatalogoBoolean'] as bool?;
    _calendar = snapshotData['Calendar'] as bool?;
    _terminoRegistro = snapshotData['TerminoRegistro'] as bool?;
    _notas = snapshotData['Notas'] as String?;
    _razondelRechazo = snapshotData['RazondelRechazo'] as String?;
    _notas2 = getDataList(snapshotData['Notas2']);
    _notificacion = snapshotData['Notificacion'] as bool?;
    _puntosPendientes = snapshotData['PuntosPendientes'] as int?;
    _puntoDeVenta = snapshotData['PuntoDeVenta'] as String?;
    _stock = snapshotData['Stock'] as int?;
    _vencimiento = snapshotData['Vencimiento'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users_App');

  static Stream<UsersAppRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersAppRecord.fromSnapshot(s));

  static Future<UsersAppRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersAppRecord.fromSnapshot(s));

  static UsersAppRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsersAppRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersAppRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersAppRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersAppRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createUsersAppRecordData({
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
  int? totalDeCanjes,
  String? apellido,
  bool? estadoUser,
  String? estadoSolicitud,
  bool? catalogoBoolean,
  bool? calendar,
  bool? terminoRegistro,
  String? notas,
  String? razondelRechazo,
  bool? notificacion,
  int? puntosPendientes,
  String? puntoDeVenta,
  int? stock,
  DateTime? vencimiento,
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
      'TotalDeCanjes': totalDeCanjes,
      'Apellido': apellido,
      'Estado_User': estadoUser,
      'EstadoSolicitud': estadoSolicitud,
      'CatalogoBoolean': catalogoBoolean,
      'Calendar': calendar,
      'TerminoRegistro': terminoRegistro,
      'Notas': notas,
      'RazondelRechazo': razondelRechazo,
      'Notificacion': notificacion,
      'PuntosPendientes': puntosPendientes,
      'PuntoDeVenta': puntoDeVenta,
      'Stock': stock,
      'Vencimiento': vencimiento,
    }.withoutNulls,
  );

  return firestoreData;
}
