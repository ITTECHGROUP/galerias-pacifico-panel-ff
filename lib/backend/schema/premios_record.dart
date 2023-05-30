import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PremiosRecord extends FirestoreRecord {
  PremiosRecord._(
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
  String? _puntos;
  String get puntos => _puntos ?? '';
  bool hasPuntos() => _puntos != null;

  // "Puntosdeventa" field.
  String? _puntosdeventa;
  String get puntosdeventa => _puntosdeventa ?? '';
  bool hasPuntosdeventa() => _puntosdeventa != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Publicado" field.
  DateTime? _publicado;
  DateTime? get publicado => _publicado;
  bool hasPublicado() => _publicado != null;

  // "Vencimiento" field.
  DateTime? _vencimiento;
  DateTime? get vencimiento => _vencimiento;
  bool hasVencimiento() => _vencimiento != null;

  // "Stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "Estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  bool hasEstado() => _estado != null;

  // "UnidadesAotorgar" field.
  String? _unidadesAotorgar;
  String get unidadesAotorgar => _unidadesAotorgar ?? '';
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

  // "PublicacionDelPosteo" field.
  DateTime? _publicacionDelPosteo;
  DateTime? get publicacionDelPosteo => _publicacionDelPosteo;
  bool hasPublicacionDelPosteo() => _publicacionDelPosteo != null;

  // "FechaDeActivacion" field.
  DateTime? _fechaDeActivacion;
  DateTime? get fechaDeActivacion => _fechaDeActivacion;
  bool hasFechaDeActivacion() => _fechaDeActivacion != null;

  // "FechaDeFinalizacion" field.
  DateTime? _fechaDeFinalizacion;
  DateTime? get fechaDeFinalizacion => _fechaDeFinalizacion;
  bool hasFechaDeFinalizacion() => _fechaDeFinalizacion != null;

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

  // "LugarDeObtencion" field.
  String? _lugarDeObtencion;
  String get lugarDeObtencion => _lugarDeObtencion ?? '';
  bool hasLugarDeObtencion() => _lugarDeObtencion != null;

  // "ImagenDelpremio" field.
  String? _imagenDelpremio;
  String get imagenDelpremio => _imagenDelpremio ?? '';
  bool hasImagenDelpremio() => _imagenDelpremio != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _puntos = snapshotData['Puntos'] as String?;
    _puntosdeventa = snapshotData['Puntosdeventa'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _publicado = snapshotData['Publicado'] as DateTime?;
    _vencimiento = snapshotData['Vencimiento'] as DateTime?;
    _stock = snapshotData['Stock'] as int?;
    _estado = snapshotData['Estado'] as bool?;
    _unidadesAotorgar = snapshotData['UnidadesAotorgar'] as String?;
    _puntosRequeridos = snapshotData['PuntosRequeridos'] as int?;
    _categoria = snapshotData['Categoria'] as String?;
    _subCategoria = snapshotData['SubCategoria'] as String?;
    _publicacionDelPosteo = snapshotData['PublicacionDelPosteo'] as DateTime?;
    _fechaDeActivacion = snapshotData['FechaDeActivacion'] as DateTime?;
    _fechaDeFinalizacion = snapshotData['FechaDeFinalizacion'] as DateTime?;
    _tipo = snapshotData['Tipo'] as String?;
    _usuario = snapshotData['Usuario'] as String?;
    _estadoDelPosteo = snapshotData['EstadoDelPosteo'] as bool?;
    _lugarDeObtencion = snapshotData['LugarDeObtencion'] as String?;
    _imagenDelpremio = snapshotData['ImagenDelpremio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Premios');

  static Stream<PremiosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PremiosRecord.fromSnapshot(s));

  static Future<PremiosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PremiosRecord.fromSnapshot(s));

  static PremiosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PremiosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PremiosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PremiosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PremiosRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createPremiosRecordData({
  String? nombre,
  String? puntos,
  String? puntosdeventa,
  String? descripcion,
  DateTime? publicado,
  DateTime? vencimiento,
  int? stock,
  bool? estado,
  String? unidadesAotorgar,
  int? puntosRequeridos,
  String? categoria,
  String? subCategoria,
  DateTime? publicacionDelPosteo,
  DateTime? fechaDeActivacion,
  DateTime? fechaDeFinalizacion,
  String? tipo,
  String? usuario,
  bool? estadoDelPosteo,
  String? lugarDeObtencion,
  String? imagenDelpremio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Puntos': puntos,
      'Puntosdeventa': puntosdeventa,
      'Descripcion': descripcion,
      'Publicado': publicado,
      'Vencimiento': vencimiento,
      'Stock': stock,
      'Estado': estado,
      'UnidadesAotorgar': unidadesAotorgar,
      'PuntosRequeridos': puntosRequeridos,
      'Categoria': categoria,
      'SubCategoria': subCategoria,
      'PublicacionDelPosteo': publicacionDelPosteo,
      'FechaDeActivacion': fechaDeActivacion,
      'FechaDeFinalizacion': fechaDeFinalizacion,
      'Tipo': tipo,
      'Usuario': usuario,
      'EstadoDelPosteo': estadoDelPosteo,
      'LugarDeObtencion': lugarDeObtencion,
      'ImagenDelpremio': imagenDelpremio,
    }.withoutNulls,
  );

  return firestoreData;
}
