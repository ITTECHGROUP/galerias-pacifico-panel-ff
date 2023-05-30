import '/application/pop_up_register/pop_up_register_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/rellenar_campos_pop_up_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class Register2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NombreRegister widget.
  TextEditingController? nombreRegisterController;
  String? Function(BuildContext, String?)? nombreRegisterControllerValidator;
  // State field(s) for ApellidoRegister widget.
  TextEditingController? apellidoRegisterController;
  String? Function(BuildContext, String?)? apellidoRegisterControllerValidator;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for SexoRegister widget.
  String? sexoRegisterValue;
  FormFieldController<String>? sexoRegisterValueController;
  // State field(s) for NumeroDNI widget.
  TextEditingController? numeroDNIController;
  String? Function(BuildContext, String?)? numeroDNIControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  void dispose() {
    nombreRegisterController?.dispose();
    apellidoRegisterController?.dispose();
    numeroDNIController?.dispose();
  }

  /// Additional helper methods are added here.

}
