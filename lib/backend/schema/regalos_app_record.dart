import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegalosAppRecord extends FirestoreRecord {
  RegalosAppRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Puntos" field.
  int? _puntos;
  int get puntos => _puntos ?? 0;
  bool hasPuntos() => _puntos != null;

  // "PuntosDeVenta" field.
  String? _puntosDeVenta;
  String get puntosDeVenta => _puntosDeVenta ?? '';
  bool hasPuntosDeVenta() => _puntosDeVenta != null;

  // "Descripcin" field.
  String? _descripcin;
  String get descripcin => _descripcin ?? '';
  bool hasDescripcin() => _descripcin != null;

  // "Publicado" field.
  DateTime? _publicado;
  DateTime? get publicado => _publicado;
  bool hasPublicado() => _publicado != null;

  // "Stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "Estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  bool hasEstado() => _estado != null;

  // "UnidadesAotorgar" field.
  int? _unidadesAotorgar;
  int get unidadesAotorgar => _unidadesAotorgar ?? 0;
  bool hasUnidadesAotorgar() => _unidadesAotorgar != null;

  // "PuntosRequeridos" field.
  int? _puntosRequeridos;
  int get puntosRequeridos => _puntosRequeridos ?? 0;
  bool hasPuntosRequeridos() => _puntosRequeridos != null;

  // "Categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "SubCategoria" field.
  String? _subCategoria;
  String get subCategoria => _subCategoria ?? '';
  bool hasSubCategoria() => _subCategoria != null;

  // "Publicacion" field.
  DateTime? _publicacion;
  DateTime? get publicacion => _publicacion;
  bool hasPublicacion() => _publicacion != null;

  // "FechaDeActivacion" field.
  DateTime? _fechaDeActivacion;
  DateTime? get fechaDeActivacion => _fechaDeActivacion;
  bool hasFechaDeActivacion() => _fechaDeActivacion != null;

  // "Tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "Usuario" field.
  String? _usuario;
  String get usuario => _usuario ?? '';
  bool hasUsuario() => _usuario != null;

  // "EstadoDelPosteo" field.
  bool? _estadoDelPosteo;
  bool get estadoDelPosteo => _estadoDelPosteo ?? false;
  bool hasEstadoDelPosteo() => _estadoDelPosteo != null;

  // "ImagenDelPremio" field.
  String? _imagenDelPremio;
  String get imagenDelPremio => _imagenDelPremio ?? '';
  bool hasImagenDelPremio() => _imagenDelPremio != null;

  // "Local" field.
  String? _local;
  String get local => _local ?? '';
  bool hasLocal() => _local != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _puntos = snapshotData['Puntos'] as int?;
    _puntosDeVenta = snapshotData['PuntosDeVenta'] as String?;
    _descripcin = snapshotData['Descripcin'] as String?;
    _publicado = snapshotData['Publicado'] as DateTime?;
    _stock = snapshotData['Stock'] as int?;
    _estado = snapshotData['Estado'] as bool?;
    _unidadesAotorgar = snapshotData['UnidadesAotorgar'] as int?;
    _puntosRequeridos = snapshotData['PuntosRequeridos'] as int?;
    _categoria = snapshotData['Categoria'] as String?;
    _subCategoria = snapshotData['SubCategoria'] as String?;
    _publicacion = snapshotData['Publicacion'] as DateTime?;
    _fechaDeActivacion = snapshotData['FechaDeActivacion'] as DateTime?;
    _tipo = snapshotData['Tipo'] as String?;
    _usuario = snapshotData['Usuario'] as String?;
    _estadoDelPosteo = snapshotData['EstadoDelPosteo'] as bool?;
    _imagenDelPremio = snapshotData['ImagenDelPremio'] as String?;
    _local = snapshotData['Local'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Regalos_App');

  static Stream<RegalosAppRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegalosAppRecord.fromSnapshot(s));

  static Future<RegalosAppRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegalosAppRecord.fromSnapshot(s));

  static RegalosAppRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegalosAppRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegalosAppRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegalosAppRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegalosAppRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createRegalosAppRecordData({
  String? nombre,
  int? puntos,
  String? puntosDeVenta,
  String? descripcin,
  DateTime? publicado,
  int? stock,
  bool? estado,
  int? unidadesAotorgar,
  int? puntosRequeridos,
  String? categoria,
  String? subCategoria,
  DateTime? publicacion,
  DateTime? fechaDeActivacion,
  String? tipo,
  String? usuario,
  bool? estadoDelPosteo,
  String? imagenDelPremio,
  String? local,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Puntos': puntos,
      'PuntosDeVenta': puntosDeVenta,
      'Descripcin': descripcin,
      'Publicado': publicado,
      'Stock': stock,
      'Estado': estado,
      'UnidadesAotorgar': unidadesAotorgar,
      'PuntosRequeridos': puntosRequeridos,
      'Categoria': categoria,
      'SubCategoria': subCategoria,
      'Publicacion': publicacion,
      'FechaDeActivacion': fechaDeActivacion,
      'Tipo': tipo,
      'Usuario': usuario,
      'EstadoDelPosteo': estadoDelPosteo,
      'ImagenDelPremio': imagenDelPremio,
      'Local': local,
    }.withoutNulls,
  );

  return firestoreData;
}
