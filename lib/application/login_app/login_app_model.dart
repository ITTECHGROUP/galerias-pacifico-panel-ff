import '/application/pop_up_register/pop_up_register_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginAppModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MailRegister widget.
  TextEditingController? mailRegisterController1;
  String? Function(BuildContext, String?)? mailRegisterController1Validator;
  // State field(s) for MailRegister widget.
  TextEditingController? mailRegisterController2;
  late bool mailRegisterVisibility;
  String? Function(BuildContext, String?)? mailRegisterController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mailRegisterVisibility = false;
  }

  void dispose() {
    mailRegisterController1?.dispose();
    mailRegisterController2?.dispose();
  }

  /// Additional helper methods are added here.

}
