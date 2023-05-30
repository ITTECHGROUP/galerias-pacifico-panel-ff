import '/back_office/componentes/sidebar/sidebar_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'clientes_pendientes_model.dart';
export 'clientes_pendientes_model.dart';

class ClientesPendientesWidget extends StatefulWidget {
  const ClientesPendientesWidget({Key? key}) : super(key: key);

  @override
  _ClientesPendientesWidgetState createState() =>
      _ClientesPendientesWidgetState();
}

class _ClientesPendientesWidgetState extends State<ClientesPendientesWidget> {
  late ClientesPendientesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClientesPendientesModel());
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
        backgroundColor: Color(0xFFF5F5F5),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.sidebarModel,
              updateCallback: () => setState(() {}),
              child: SidebarWidget(),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: 803.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 25.0, 0.0, 16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 25.0,
                                          height: 25.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/notification.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  51.0, 0.0, 0.0, 0.0),
                                          child: Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'A',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(38.0, 20.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Estado de Clientes',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: 500.0,
                                    decoration: BoxDecoration(),
                                    child: StreamBuilder<List<UsersAppRecord>>(
                                      stream: queryUsersAppRecord(
                                        queryBuilder: (usersAppRecord) =>
                                            usersAppRecord.where(
                                                'TerminoRegistro',
                                                isEqualTo: true),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                          );
                                        }
                                        List<UsersAppRecord>
                                            dataTableUsersAppRecordList =
                                            snapshot.data!;
                                        return Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: DataTable2(
                                            columns: [
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Nombre',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'DNI',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Mail',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Puntos',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Estado',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            rows: dataTableUsersAppRecordList
                                                .mapIndexed((dataTableIndex,
                                                        dataTableUsersAppRecord) =>
                                                    [
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'AltaDeCliente',
                                                            queryParams: {
                                                              'nombre':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .displayName,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'apellido':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .apellido,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'dni':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .dNINumber,
                                                                ParamType.int,
                                                              ),
                                                              'mail':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .email,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'puntos':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .puntosUser,
                                                                ParamType.int,
                                                              ),
                                                              'fechadenacimiento':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .nacimiento,
                                                                ParamType
                                                                    .DateTime,
                                                              ),
                                                              'dniFront':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .dNIFrontal,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'dniBack':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .dNIDorsal,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Flexible(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Flexible(
                                                                      child:
                                                                          Text(
                                                                        dataTableUsersAppRecord
                                                                            .displayName,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 12.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'AltaDeCliente',
                                                            queryParams: {
                                                              'nombre':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .displayName,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'apellido':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .apellido,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'dni':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .dNINumber,
                                                                ParamType.int,
                                                              ),
                                                              'mail':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .email,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'puntos':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .puntosUser,
                                                                ParamType.int,
                                                              ),
                                                              'fechadenacimiento':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .nacimiento,
                                                                ParamType
                                                                    .DateTime,
                                                              ),
                                                              'dniFront':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .dNIFrontal,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'dniBack':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .dNIDorsal,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Flexible(
                                                                    child: Text(
                                                                      dataTableUsersAppRecord
                                                                          .dNINumber
                                                                          .toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'AltaDeCliente',
                                                            queryParams: {
                                                              'nombre':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .displayName,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'apellido':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .apellido,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'dni':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .dNINumber,
                                                                ParamType.int,
                                                              ),
                                                              'mail':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .email,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'puntos':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .puntosUser,
                                                                ParamType.int,
                                                              ),
                                                              'fechadenacimiento':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .nacimiento,
                                                                ParamType
                                                                    .DateTime,
                                                              ),
                                                              'dniFront':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .dNIFrontal,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'dniBack':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .dNIDorsal,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                dataTableUsersAppRecord
                                                                    .email,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'AltaDeCliente',
                                                            queryParams: {
                                                              'nombre':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .displayName,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'apellido':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .apellido,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'dni':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .dNINumber,
                                                                ParamType.int,
                                                              ),
                                                              'mail':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .email,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'puntos':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .puntosUser,
                                                                ParamType.int,
                                                              ),
                                                              'fechadenacimiento':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .nacimiento,
                                                                ParamType
                                                                    .DateTime,
                                                              ),
                                                              'dniFront':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .dNIFrontal,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'dniBack':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .dNIDorsal,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                dataTableUsersAppRecord
                                                                    .puntosUser
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'AltaDeCliente',
                                                            queryParams: {
                                                              'nombre':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .displayName,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'apellido':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .apellido,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'dni':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .dNINumber,
                                                                ParamType.int,
                                                              ),
                                                              'mail':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .email,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'puntos':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .puntosUser,
                                                                ParamType.int,
                                                              ),
                                                              'fechadenacimiento':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .nacimiento,
                                                                ParamType
                                                                    .DateTime,
                                                              ),
                                                              'dniFront':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .dNIFrontal,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'dniBack':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .dNIDorsal,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  if ((dataTableUsersAppRecord
                                                                              .estadoUser ==
                                                                          false) &&
                                                                      (dataTableUsersAppRecord
                                                                              .estadoSolicitud ==
                                                                          'Rechazado'))
                                                                    Flexible(
                                                                      child:
                                                                          Text(
                                                                        'Rechazado',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Color(0xFF97162C),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  if ((dataTableUsersAppRecord
                                                                              .estadoUser ==
                                                                          false) &&
                                                                      (dataTableUsersAppRecord
                                                                              .estadoSolicitud ==
                                                                          'Pendiente'))
                                                                    Flexible(
                                                                      child:
                                                                          Text(
                                                                        'Pendiente',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Color(0xFF464646),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  if ((dataTableUsersAppRecord
                                                                              .estadoUser ==
                                                                          true) &&
                                                                      (dataTableUsersAppRecord
                                                                              .estadoSolicitud ==
                                                                          'Aceptado'))
                                                                    Flexible(
                                                                      child:
                                                                          Text(
                                                                        'Aceptado',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ]
                                                        .map((c) => DataCell(c))
                                                        .toList())
                                                .map((e) => DataRow(cells: e))
                                                .toList(),
                                            headingRowColor:
                                                MaterialStateProperty.all(
                                              Color(0x00000000),
                                            ),
                                            headingRowHeight: 80.0,
                                            dataRowColor:
                                                MaterialStateProperty.all(
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                            ),
                                            dataRowHeight: 60.0,
                                            border: TableBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            dividerThickness: 1.0,
                                            columnSpacing: 2.0,
                                            showBottomBorder: false,
                                            minWidth: 49.0,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 50.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 133.0,
                                            height: 44.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color: Color(0xFF658574),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 28.0,
                                                    height: 28.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF658574),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          '1',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 28.0,
                                                      height: 28.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF658574),
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            '1',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 28.0,
                                                      height: 28.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF658574),
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            '1',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 74.0, 50.0, 20.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 26.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
                                                  },
                                                  text:
                                                      'Ver historial completo',
                                                  options: FFButtonOptions(
                                                    width: 226.0,
                                                    height: 44.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: Colors.white,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFF304F47),
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                    elevation: 2.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        46.0, 26.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
                                                  },
                                                  text: 'Nuevo',
                                                  options: FFButtonOptions(
                                                    width: 226.0,
                                                    height: 44.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: Color(0xFF304F47),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                    elevation: 2.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
