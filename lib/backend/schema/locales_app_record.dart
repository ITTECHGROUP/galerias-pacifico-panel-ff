import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocalesAppRecord extends FirestoreRecord {
  LocalesAppRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre_Local" field.
  String? _nombreLocal;
  String get nombreLocal => _nombreLocal ?? '';
  bool hasNombreLocal() => _nombreLocal != null;

  // "Logo_Local" field.
  String? _logoLocal;
  String get logoLocal => _logoLocal ?? '';
  bool hasLogoLocal() => _logoLocal != null;

  // "Categoria_Local" field.
  String? _categoriaLocal;
  String get categoriaLocal => _categoriaLocal ?? '';
  bool hasCategoriaLocal() => _categoriaLocal != null;

  // "PuntoDeVenta_Local" field.
  int? _puntoDeVentaLocal;
  int get puntoDeVentaLocal => _puntoDeVentaLocal ?? 0;
  bool hasPuntoDeVentaLocal() => _puntoDeVentaLocal != null;

  // "Estado_Local" field.
  bool? _estadoLocal;
  bool get estadoLocal => _estadoLocal ?? false;
  bool hasEstadoLocal() => _estadoLocal != null;

  // "Telefono_Local" field.
  int? _telefonoLocal;
  int get telefonoLocal => _telefonoLocal ?? 0;
  bool hasTelefonoLocal() => _telefonoLocal != null;

  void _initializeFields() {
    _nombreLocal = snapshotData['Nombre_Local'] as String?;
    _logoLocal = snapshotData['Logo_Local'] as String?;
    _categoriaLocal = snapshotData['Categoria_Local'] as String?;
    _puntoDeVentaLocal = snapshotData['PuntoDeVenta_Local'] as int?;
    _estadoLocal = snapshotData['Estado_Local'] as bool?;
    _telefonoLocal = snapshotData['Telefono_Local'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Locales_app');

  static Stream<LocalesAppRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocalesAppRecord.fromSnapshot(s));

  static Future<LocalesAppRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocalesAppRecord.fromSnapshot(s));

  static LocalesAppRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocalesAppRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocalesAppRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocalesAppRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocalesAppRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createLocalesAppRecordData({
  String? nombreLocal,
  String? logoLocal,
  String? categoriaLocal,
  int? puntoDeVentaLocal,
  bool? estadoLocal,
  int? telefonoLocal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre_Local': nombreLocal,
      'Logo_Local': logoLocal,
      'Categoria_Local': categoriaLocal,
      'PuntoDeVenta_Local': puntoDeVentaLocal,
      'Estado_Local': estadoLocal,
      'Telefono_Local': telefonoLocal,
    }.withoutNulls,
  );

  return firestoreData;
}
