import '/back_office/componentes/sidebar/sidebar_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'clientes_editar_model.dart';
export 'clientes_editar_model.dart';

class ClientesEditarWidget extends StatefulWidget {
  const ClientesEditarWidget({Key? key}) : super(key: key);

  @override
  _ClientesEditarWidgetState createState() => _ClientesEditarWidgetState();
}

class _ClientesEditarWidgetState extends State<ClientesEditarWidget> {
  late ClientesEditarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClientesEditarModel());
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
                            'Clientes',
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
                                                            'InfoClienteYHistorial',
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
                                                              'fechadenacimiento':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .nacimiento,
                                                                ParamType
                                                                    .DateTime,
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
                                                            'InfoClienteYHistorial',
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
                                                              'fechadenacimiento':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .nacimiento,
                                                                ParamType
                                                                    .DateTime,
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
                                                            'InfoClienteYHistorial',
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
                                                              'fechadenacimiento':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .nacimiento,
                                                                ParamType
                                                                    .DateTime,
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
                                                            'InfoClienteYHistorial',
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
                                                              'fechadenacimiento':
                                                                  serializeParam(
                                                                dataTableUsersAppRecord
                                                                    .nacimiento,
                                                                ParamType
                                                                    .DateTime,
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
                                                      Container(
                                                        width: 100.0,
                                                        height: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .white,
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
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              if ((dataTableUsersAppRecord.estadoUser == false) && (dataTableUsersAppRecord.estadoSolicitud == 'Rechazado'))
                                                                                Flexible(
                                                                                  child: Text(
                                                                                    'Rechazado',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          color: Color(0xFFFB052B),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              if ((dataTableUsersAppRecord.estadoUser == false) && (dataTableUsersAppRecord.estadoSolicitud == 'Pendiente'))
                                                                                Flexible(
                                                                                  child: Text(
                                                                                    'Pendiente',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          color: Color(0xFF383838),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              if ((dataTableUsersAppRecord.estadoUser == false) && (dataTableUsersAppRecord.estadoSolicitud == 'Rechazado'))
                                                                                Flexible(
                                                                                  child: Text(
                                                                                    'Activo',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          color: Color(0xFF0FB40B),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            children: [
                                                                              if ((dataTableUsersAppRecord.estadoUser == false) && (dataTableUsersAppRecord.estadoSolicitud == 'Rechazado'))
                                                                                Container(
                                                                                  width: 13.0,
                                                                                  height: 13.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFFFB052B),
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                ),
                                                                              if ((dataTableUsersAppRecord.estadoUser == false) && (dataTableUsersAppRecord.estadoSolicitud == 'Pendiente'))
                                                                                Container(
                                                                                  width: 13.0,
                                                                                  height: 13.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFFFF0000),
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                ),
                                                                              if ((dataTableUsersAppRecord.estadoUser == false) && (dataTableUsersAppRecord.estadoSolicitud == 'Pendiente'))
                                                                                Container(
                                                                                  width: 13.0,
                                                                                  height: 13.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFF70DC6E),
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                ),
                                                                            ],
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
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Button',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
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
