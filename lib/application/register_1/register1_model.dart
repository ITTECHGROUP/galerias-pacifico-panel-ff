import '/auth/firebase_auth/auth_util.dart';
import '/components/rellenar_campos_pop_up_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Register1Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MailRegister widget.
  TextEditingController? mailRegisterController;
  String? Function(BuildContext, String?)? mailRegisterControllerValidator;
  // State field(s) for RegisterPassword1 widget.
  TextEditingController? registerPassword1Controller;
  late bool registerPassword1Visibility;
  String? Function(BuildContext, String?)? registerPassword1ControllerValidator;
  // State field(s) for RegisterPassword2 widget.
  TextEditingController? registerPassword2Controller;
  late bool registerPassword2Visibility;
  String? Function(BuildContext, String?)? registerPassword2ControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    registerPassword1Visibility = false;
    registerPassword2Visibility = false;
  }

  void dispose() {
    mailRegisterController?.dispose();
    registerPassword1Controller?.dispose();
    registerPassword2Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
