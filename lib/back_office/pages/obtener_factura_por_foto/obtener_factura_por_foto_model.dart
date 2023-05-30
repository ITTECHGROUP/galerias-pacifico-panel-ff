import '/auth/firebase_auth/auth_util.dart';
import '/back_office/componentes/sidebar/sidebar_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ObtenerFacturaPorFotoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Stores action output result for [Custom Action - takePhotoMobile] action in Button widget.
  JsonTakePhotoResponseStruct? takePhoteMob;
  // Stores action output result for [Backend Call - API (Process Invoice)] action in Button widget.
  ApiCallResponse? apiResultmmb;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
  }

  void dispose() {
    sidebarModel.dispose();
  }

  /// Additional helper methods are added here.

}
