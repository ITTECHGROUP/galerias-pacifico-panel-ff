import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/rellenar_campos_pop_up_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class FormularioModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Local widget.
  String? localValue;
  FormFieldController<String>? localValueController;
  // State field(s) for NumeroDeFactura widget.
  TextEditingController? numeroDeFacturaController;
  String? Function(BuildContext, String?)? numeroDeFacturaControllerValidator;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for Importe widget.
  TextEditingController? importeController;
  String? Function(BuildContext, String?)? importeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  void dispose() {
    numeroDeFacturaController?.dispose();
    importeController?.dispose();
  }

  /// Additional helper methods are added here.

}
