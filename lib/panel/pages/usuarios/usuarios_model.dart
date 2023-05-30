import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/panel/componentes/button_nuevo/button_nuevo_widget.dart';
import '/panel/componentes/sidebar/sidebar_widget.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UsuariosModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for ButtonNuevo component.
  late ButtonNuevoModel buttonNuevoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    buttonNuevoModel = createModel(context, () => ButtonNuevoModel());
  }

  void dispose() {
    sidebarModel.dispose();
    buttonNuevoModel.dispose();
  }

  /// Additional helper methods are added here.

}
