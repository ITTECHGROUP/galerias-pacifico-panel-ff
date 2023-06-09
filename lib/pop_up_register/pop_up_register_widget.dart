import '/components/pop_up_register_app_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pop_up_register_model.dart';
export 'pop_up_register_model.dart';

class PopUpRegisterWidget extends StatefulWidget {
  const PopUpRegisterWidget({Key? key}) : super(key: key);

  @override
  _PopUpRegisterWidgetState createState() => _PopUpRegisterWidgetState();
}

class _PopUpRegisterWidgetState extends State<PopUpRegisterWidget> {
  late PopUpRegisterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopUpRegisterModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.popUpRegisterAppModel,
            updateCallback: () => setState(() {}),
            child: PopUpRegisterAppWidget(),
          ),
        ),
      ),
    );
  }
}
