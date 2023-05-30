import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PasswordModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NameRegister widget.
  TextEditingController? nameRegisterController1;
  String? Function(BuildContext, String?)? nameRegisterController1Validator;
  // State field(s) for NameRegister widget.
  TextEditingController? nameRegisterController2;
  String? Function(BuildContext, String?)? nameRegisterController2Validator;
  // State field(s) for NameRegister widget.
  TextEditingController? nameRegisterController3;
  String? Function(BuildContext, String?)? nameRegisterController3Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nameRegisterController1?.dispose();
    nameRegisterController2?.dispose();
    nameRegisterController3?.dispose();
  }

  /// Additional helper methods are added here.

}
