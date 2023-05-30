import '/components/sidebar_app_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Sidebar21Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for SidebarApp component.
  late SidebarAppModel sidebarAppModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarAppModel = createModel(context, () => SidebarAppModel());
  }

  void dispose() {
    sidebarAppModel.dispose();
  }

  /// Additional helper methods are added here.

}
