import '/components/sidebar_app_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sidebar21_model.dart';
export 'sidebar21_model.dart';

class Sidebar21Widget extends StatefulWidget {
  const Sidebar21Widget({Key? key}) : super(key: key);

  @override
  _Sidebar21WidgetState createState() => _Sidebar21WidgetState();
}

class _Sidebar21WidgetState extends State<Sidebar21Widget> {
  late Sidebar21Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Sidebar21Model());
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
        body: wrapWithModel(
          model: _model.sidebarAppModel,
          updateCallback: () => setState(() {}),
          child: SidebarAppWidget(),
        ),
      ),
    );
  }
}
