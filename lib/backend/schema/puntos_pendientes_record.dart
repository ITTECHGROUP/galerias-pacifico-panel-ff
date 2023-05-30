import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PuntosPendientesRecord extends FirestoreRecord {
  PuntosPendientesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NumeroDeLaFactura" field.
  int? _numeroDeLaFactura;
  int get numeroDeLaFactura => _numeroDeLaFactura ?? 0;
  bool hasNumeroDeLaFactura() => _numeroDeLaFactura != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "ImporteMonto" field.
  int? _importeMonto;
  int get importeMonto => _importeMonto ?? 0;
  bool hasImporteMonto() => _importeMonto != null;

  // "FacturaPico" field.
  String? _facturaPico;
  String get facturaPico => _facturaPico ?? '';
  bool hasFacturaPico() => _facturaPico != null;

  // "Local" field.
  String? _local;
  String get local => _local ?? '';
  bool hasLocal() => _local != null;

  // "FechaDeLaCompra" field.
  String? _fechaDeLaCompra;
  String get fechaDeLaCompra => _fechaDeLaCompra ?? '';
  bool hasFechaDeLaCompra() => _fechaDeLaCompra != null;

  // "FechaDeSolicitud" field.
  DateTime? _fechaDeSolicitud;
  DateTime? get fechaDeSolicitud => _fechaDeSolicitud;
  bool hasFechaDeSolicitud() => _fechaDeSolicitud != null;

  void _initializeFields() {
    _numeroDeLaFactura = snapshotData['NumeroDeLaFactura'] as int?;
    _fecha = snapshotData['Fecha'] as DateTime?;
    _importeMonto = snapshotData['ImporteMonto'] as int?;
    _facturaPico = snapshotData['FacturaPico'] as String?;
    _local = snapshotData['Local'] as String?;
    _fechaDeLaCompra = snapshotData['FechaDeLaCompra'] as String?;
    _fechaDeSolicitud = snapshotData['FechaDeSolicitud'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PuntosPendientes');

  static Stream<PuntosPendientesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PuntosPendientesRecord.fromSnapshot(s));

  static Future<PuntosPendientesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PuntosPendientesRecord.fromSnapshot(s));

  static PuntosPendientesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PuntosPendientesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PuntosPendientesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PuntosPendientesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PuntosPendientesRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createPuntosPendientesRecordData({
  int? numeroDeLaFactura,
  DateTime? fecha,
  int? importeMonto,
  String? facturaPico,
  String? local,
  String? fechaDeLaCompra,
  DateTime? fechaDeSolicitud,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NumeroDeLaFactura': numeroDeLaFactura,
      'Fecha': fecha,
      'ImporteMonto': importeMonto,
      'FacturaPico': facturaPico,
      'Local': local,
      'FechaDeLaCompra': fechaDeLaCompra,
      'FechaDeSolicitud': fechaDeSolicitud,
    }.withoutNulls,
  );

  return firestoreData;
}
