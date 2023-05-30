import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/sidebar_app2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeAppModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Sidebar_app2 component.
  late SidebarApp2Model sidebarApp2Model;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarApp2Model = createModel(context, () => SidebarApp2Model());
  }

  void dispose() {
    sidebarApp2Model.dispose();
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}
