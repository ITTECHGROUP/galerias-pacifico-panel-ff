import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/panel/componentes/boton_cancelar/boton_cancelar_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ValidarFacturaPreviamenteRechazadaPopUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
  // Model for BotonCancelar component.
  late BotonCancelarModel botonCancelarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    botonCancelarModel = createModel(context, () => BotonCancelarModel());
  }

  void dispose() {
    botonCancelarModel.dispose();
  }

  /// Additional helper methods are added here.

}
