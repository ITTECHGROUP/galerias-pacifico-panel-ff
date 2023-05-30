import '/back_office/componentes/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sidabar_model.dart';
export 'sidabar_model.dart';

class SidabarWidget extends StatefulWidget {
  const SidabarWidget({Key? key}) : super(key: key);

  @override
  _SidabarWidgetState createState() => _SidabarWidgetState();
}

class _SidabarWidgetState extends State<SidabarWidget> {
  late SidabarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidabarModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.sidebarModel,
            updateCallback: () => setState(() {}),
            child: SidebarWidget(),
          ),
        ),
      ),
    );
  }
}
