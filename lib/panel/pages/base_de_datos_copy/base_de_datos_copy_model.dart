import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/panel/componentes/sidebar/sidebar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BaseDeDatosCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
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
    sidebarModel = createModel(context, () => SidebarModel());
    registerPassword1Visibility = false;
    registerPassword2Visibility = false;
  }

  void dispose() {
    sidebarModel.dispose();
    mailRegisterController?.dispose();
    registerPassword1Controller?.dispose();
    registerPassword2Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
