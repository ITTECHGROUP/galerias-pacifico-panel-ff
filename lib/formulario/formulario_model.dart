import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FormularioModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SexoRegister widget.
  String? sexoRegisterValue;
  FormFieldController<String>? sexoRegisterValueController;
  // State field(s) for FechaDeNacimiento widget.
  TextEditingController? fechaDeNacimientoController1;
  late bool fechaDeNacimientoVisibility1;
  String? Function(BuildContext, String?)?
      fechaDeNacimientoController1Validator;
  // State field(s) for FechaDeNacimiento widget.
  TextEditingController? fechaDeNacimientoController2;
  late bool fechaDeNacimientoVisibility2;
  String? Function(BuildContext, String?)?
      fechaDeNacimientoController2Validator;
  // State field(s) for FechaDeNacimiento widget.
  TextEditingController? fechaDeNacimientoController3;
  late bool fechaDeNacimientoVisibility3;
  String? Function(BuildContext, String?)?
      fechaDeNacimientoController3Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    fechaDeNacimientoVisibility1 = false;
    fechaDeNacimientoVisibility2 = false;
    fechaDeNacimientoVisibility3 = false;
  }

  void dispose() {
    fechaDeNacimientoController1?.dispose();
    fechaDeNacimientoController2?.dispose();
    fechaDeNacimientoController3?.dispose();
  }

  /// Additional helper methods are added here.

}
