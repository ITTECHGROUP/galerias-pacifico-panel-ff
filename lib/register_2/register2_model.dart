import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/pop_up_register_app_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Register2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NombreRegister widget.
  TextEditingController? nombreRegisterController;
  String? Function(BuildContext, String?)? nombreRegisterControllerValidator;
  // State field(s) for ApellidoRegister widget.
  TextEditingController? apellidoRegisterController;
  String? Function(BuildContext, String?)? apellidoRegisterControllerValidator;
  // State field(s) for NacimientoRegister widget.
  TextEditingController? nacimientoRegisterController;
  String? Function(BuildContext, String?)?
      nacimientoRegisterControllerValidator;
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

  void initState(BuildContext context) {}

  void dispose() {
    nombreRegisterController?.dispose();
    apellidoRegisterController?.dispose();
    nacimientoRegisterController?.dispose();
    numeroDNIController?.dispose();
  }

  /// Additional helper methods are added here.

}
