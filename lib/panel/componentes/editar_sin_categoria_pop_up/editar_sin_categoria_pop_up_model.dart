import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/panel/componentes/boton_cancelar/boton_cancelar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarSinCategoriaPopUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for BotonCancelar component.
  late BotonCancelarModel botonCancelarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    botonCancelarModel = createModel(context, () => BotonCancelarModel());
  }

  void dispose() {
    textController?.dispose();
    botonCancelarModel.dispose();
  }

  /// Additional helper methods are added here.

}
