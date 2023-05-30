import '/back_office/componentes/sidebar/sidebar_widget.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NuevoPremioModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for NombreRecompensa widget.
  TextEditingController? nombreRecompensaController;
  String? Function(BuildContext, String?)? nombreRecompensaControllerValidator;
  // State field(s) for DescripcionRecompensa widget.
  TextEditingController? descripcionRecompensaController;
  String? Function(BuildContext, String?)?
      descripcionRecompensaControllerValidator;
  // State field(s) for FechaDeActivacionCalendar widget.
  DateTimeRange? fechaDeActivacionCalendarSelectedDay;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for Stock widget.
  TextEditingController? stockController;
  String? Function(BuildContext, String?)? stockControllerValidator;
  // State field(s) for PuntosRequeridos widget.
  TextEditingController? puntosRequeridosController;
  String? Function(BuildContext, String?)? puntosRequeridosControllerValidator;
  // State field(s) for LugarDeObtencion widget.
  TextEditingController? lugarDeObtencionController;
  String? Function(BuildContext, String?)? lugarDeObtencionControllerValidator;
  // State field(s) for Subcagetoria widget.
  String? subcagetoriaValue;
  FormFieldController<String>? subcagetoriaValueController;
  // State field(s) for ActivacionDelPosteo widget.
  bool? activacionDelPosteoValue;
  // State field(s) for FechadeActivacion widget.
  TextEditingController? fechadeActivacionController;
  String? Function(BuildContext, String?)? fechadeActivacionControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    fechaDeActivacionCalendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  void dispose() {
    sidebarModel.dispose();
    nombreRecompensaController?.dispose();
    descripcionRecompensaController?.dispose();
    stockController?.dispose();
    puntosRequeridosController?.dispose();
    lugarDeObtencionController?.dispose();
    fechadeActivacionController?.dispose();
  }

  /// Additional helper methods are added here.

}
