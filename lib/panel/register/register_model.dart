import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Mail widget.
  TextEditingController? mailController;
  String? Function(BuildContext, String?)? mailControllerValidator;
  // State field(s) for Password1 widget.
  TextEditingController? password1Controller;
  late bool password1Visibility;
  String? Function(BuildContext, String?)? password1ControllerValidator;
  // State field(s) for Password2 widget.
  TextEditingController? password2Controller;
  late bool password2Visibility;
  String? Function(BuildContext, String?)? password2ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    password1Visibility = false;
    password2Visibility = false;
  }

  void dispose() {
    mailController?.dispose();
    password1Controller?.dispose();
    password2Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
