import '/components/pop_up_register_app_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PopUpRegisterModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for PopUpRegister_App component.
  late PopUpRegisterAppModel popUpRegisterAppModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    popUpRegisterAppModel = createModel(context, () => PopUpRegisterAppModel());
  }

  void dispose() {
    popUpRegisterAppModel.dispose();
  }

  /// Additional helper methods are added here.

}
