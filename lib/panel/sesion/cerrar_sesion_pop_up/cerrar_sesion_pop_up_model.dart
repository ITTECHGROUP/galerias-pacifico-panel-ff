import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/panel/componentes/boton_cancelar/boton_cancelar_widget.dart';
import '/panel/componentes/boton_cerrar_sesion/boton_cerrar_sesion_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CerrarSesionPopUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for BotonCancelar component.
  late BotonCancelarModel botonCancelarModel;
  // Model for BotonCerrarSesion component.
  late BotonCerrarSesionModel botonCerrarSesionModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    botonCancelarModel = createModel(context, () => BotonCancelarModel());
    botonCerrarSesionModel =
        createModel(context, () => BotonCerrarSesionModel());
  }

  void dispose() {
    botonCancelarModel.dispose();
    botonCerrarSesionModel.dispose();
  }

  /// Additional helper methods are added here.

}
