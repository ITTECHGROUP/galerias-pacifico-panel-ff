import '/auth/firebase_auth/auth_util.dart';
import '/components/sidebar_app2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AjustesAppModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // Model for Sidebar_app2 component.
  late SidebarApp2Model sidebarApp2Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarApp2Model = createModel(context, () => SidebarApp2Model());
  }

  void dispose() {
    sidebarApp2Model.dispose();
  }

  /// Additional helper methods are added here.

}
