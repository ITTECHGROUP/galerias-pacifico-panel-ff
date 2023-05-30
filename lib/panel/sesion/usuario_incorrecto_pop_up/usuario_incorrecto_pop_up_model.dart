import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/panel/componentes/boton_cancelar/boton_cancelar_widget.dart';
import '/panel/componentes/boton_volvera_intentar/boton_volvera_intentar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UsuarioIncorrectoPopUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for BotonCancelar component.
  late BotonCancelarModel botonCancelarModel;
  // Model for BotonVolveraIntentar component.
  late BotonVolveraIntentarModel botonVolveraIntentarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    botonCancelarModel = createModel(context, () => BotonCancelarModel());
    botonVolveraIntentarModel =
        createModel(context, () => BotonVolveraIntentarModel());
  }

  void dispose() {
    botonCancelarModel.dispose();
    botonVolveraIntentarModel.dispose();
  }

  /// Additional helper methods are added here.

}
