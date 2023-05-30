import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_ver_historial_completo_model.dart';
export 'button_ver_historial_completo_model.dart';

class ButtonVerHistorialCompletoWidget extends StatefulWidget {
  const ButtonVerHistorialCompletoWidget({Key? key}) : super(key: key);

  @override
  _ButtonVerHistorialCompletoWidgetState createState() =>
      _ButtonVerHistorialCompletoWidgetState();
}

class _ButtonVerHistorialCompletoWidgetState
    extends State<ButtonVerHistorialCompletoWidget> {
  late ButtonVerHistorialCompletoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonVerHistorialCompletoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () {
        print('Button pressed ...');
      },
      text: 'Ver historial completo',
      options: FFButtonOptions(
        width: 286.0,
        height: 52.0,
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: Color(0x004B39EF),
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Poppins',
              color: Color(0xFF658574),
            ),
        borderSide: BorderSide(
          color: Color(0xFF658574),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
