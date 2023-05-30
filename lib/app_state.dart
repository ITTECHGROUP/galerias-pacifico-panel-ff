import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _imageBase64 = prefs.getString('ff_imageBase64') ?? _imageBase64;
    _Puntos =
        prefs.getStringList('ff_Puntos')?.map(int.parse).toList() ?? _Puntos;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _Registrado = false;
  bool get Registrado => _Registrado;
  set Registrado(bool _value) {
    _Registrado = _value;
  }

  bool _Catalogo = true;
  bool get Catalogo => _Catalogo;
  set Catalogo(bool _value) {
    _Catalogo = _value;
  }

  bool _MayorOMenor = false;
  bool get MayorOMenor => _MayorOMenor;
  set MayorOMenor(bool _value) {
    _MayorOMenor = _value;
  }

  String _imageBase64 = '';
  String get imageBase64 => _imageBase64;
  set imageBase64(String _value) {
    _imageBase64 = _value;
    prefs.setString('ff_imageBase64', _value);
  }

  List<int> _Puntos = [];
  List<int> get Puntos => _Puntos;
  set Puntos(List<int> _value) {
    _Puntos = _value;
    prefs.setStringList('ff_Puntos', _value.map((x) => x.toString()).toList());
  }

  void addToPuntos(int _value) {
    _Puntos.add(_value);
    prefs.setStringList('ff_Puntos', _Puntos.map((x) => x.toString()).toList());
  }

  void removeFromPuntos(int _value) {
    _Puntos.remove(_value);
    prefs.setStringList('ff_Puntos', _Puntos.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromPuntos(int _index) {
    _Puntos.removeAt(_index);
    prefs.setStringList('ff_Puntos', _Puntos.map((x) => x.toString()).toList());
  }

  void updatePuntosAtIndex(
    int _index,
    Function(int) updateFn,
  ) {
    updateFn(_Puntos[_index]);
    prefs.setStringList('ff_Puntos', _Puntos.map((x) => x.toString()).toList());
  }

  bool _Calendario = false;
  bool get Calendario => _Calendario;
  set Calendario(bool _value) {
    _Calendario = _value;
  }

  bool _CambioDeFoto = false;
  bool get CambioDeFoto => _CambioDeFoto;
  set CambioDeFoto(bool _value) {
    _CambioDeFoto = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
