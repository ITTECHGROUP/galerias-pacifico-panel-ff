import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '../../auth/base_auth_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? HomeAppWidget() : OnboardingAppWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? HomeAppWidget()
              : OnboardingAppWidget(),
        ),
        FFRoute(
          name: 'Register_1',
          path: '/register1',
          builder: (context, params) => Register1Widget(),
        ),
        FFRoute(
          name: 'Register_2',
          path: '/register2',
          builder: (context, params) => Register2Widget(),
        ),
        FFRoute(
          name: 'Onboarding_App',
          path: '/onboardingApp',
          builder: (context, params) => OnboardingAppWidget(),
        ),
        FFRoute(
          name: 'Login_App',
          path: '/loginApp',
          builder: (context, params) => LoginAppWidget(),
        ),
        FFRoute(
          name: 'Home_App',
          path: '/homeApp',
          builder: (context, params) => HomeAppWidget(),
        ),
        FFRoute(
          name: 'MisPremios',
          path: '/misPremios',
          builder: (context, params) => MisPremiosWidget(),
        ),
        FFRoute(
          name: 'NocheDeHotelYaoYao',
          path: '/nocheDeHotelYaoYao',
          builder: (context, params) => NocheDeHotelYaoYaoWidget(),
        ),
        FFRoute(
          name: 'OrdenDeCompraRochas',
          path: '/ordenDeCompraRochas',
          builder: (context, params) => OrdenDeCompraRochasWidget(
            image: params.getParam('image', ParamType.String),
            titulo: params.getParam('titulo', ParamType.String),
            descripcion: params.getParam('descripcion', ParamType.String),
            puntos: params.getParam('puntos', ParamType.int),
            local: params.getParam('local', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'MisPremiosOrdenar',
          path: '/misPremiosOrdenar',
          builder: (context, params) => MisPremiosOrdenarWidget(),
        ),
        FFRoute(
          name: 'Formulario',
          path: '/formulario',
          builder: (context, params) => FormularioWidget(
            fotoFactura: params.getParam('fotoFactura', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'AjustesApp',
          path: '/ajustesApp',
          builder: (context, params) => AjustesAppWidget(),
        ),
        FFRoute(
          name: 'CargaTusPuntosTicketCargado',
          path: '/cargaTusPuntosTicketCargado',
          builder: (context, params) => CargaTusPuntosTicketCargadoWidget(
            fotoFactura: params.getParam('fotoFactura', ParamType.String),
            puntos: params.getParam('puntos', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'BeneficiosExclusivos',
          path: '/beneficiosExclusivos',
          builder: (context, params) => BeneficiosExclusivosWidget(),
        ),
        FFRoute(
          name: 'TyCScreen',
          path: '/tyCScreen',
          builder: (context, params) => TyCScreenWidget(),
        ),
        FFRoute(
          name: 'password',
          path: '/password',
          builder: (context, params) => PasswordWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'Ajustes',
          path: '/ajustes',
          builder: (context, params) => AjustesWidget(),
        ),
        FFRoute(
          name: 'sidabar',
          path: '/sidabar',
          builder: (context, params) => SidabarWidget(),
        ),
        FFRoute(
          name: 'ClientesEditar',
          path: '/clientesEditar',
          builder: (context, params) => ClientesEditarWidget(),
        ),
        FFRoute(
          name: 'AdministrarCategorias',
          path: '/administrarCategorias',
          builder: (context, params) => AdministrarCategoriasWidget(),
        ),
        FFRoute(
          name: 'AltaDeCliente',
          path: '/altaDeCliente',
          builder: (context, params) => AltaDeClienteWidget(
            nombre: params.getParam('nombre', ParamType.String),
            apellido: params.getParam('apellido', ParamType.String),
            dni: params.getParam('dni', ParamType.int),
            fechadenacimiento:
                params.getParam('fechadenacimiento', ParamType.DateTime),
            mail: params.getParam('mail', ParamType.String),
            puntos: params.getParam('puntos', ParamType.int),
            dniFront: params.getParam('dniFront', ParamType.String),
            dniBack: params.getParam('dniBack', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'AnadirFactura',
          path: '/anadirFactura',
          builder: (context, params) => AnadirFacturaWidget(),
        ),
        FFRoute(
          name: 'BaseDeDatos',
          path: '/baseDeDatos',
          builder: (context, params) => BaseDeDatosWidget(),
        ),
        FFRoute(
          name: 'CrearNuevoCliente',
          path: '/crearNuevoCliente',
          builder: (context, params) => CrearNuevoClienteWidget(),
        ),
        FFRoute(
          name: 'CrearNuevoUsuario',
          path: '/crearNuevoUsuario',
          builder: (context, params) => CrearNuevoUsuarioWidget(),
        ),
        FFRoute(
          name: 'InfoClienteYHistorial',
          path: '/infoClienteYHistorial',
          builder: (context, params) => InfoClienteYHistorialWidget(
            nombre: params.getParam('nombre', ParamType.String),
            apellido: params.getParam('apellido', ParamType.String),
            dni: params.getParam('dni', ParamType.int),
            fechadenacimiento:
                params.getParam('fechadenacimiento', ParamType.DateTime),
            mail: params.getParam('mail', ParamType.String),
            puntos: params.getParam('puntos', ParamType.int),
            dniFront: params.getParam('dniFront', ParamType.String),
            dniBack: params.getParam('dniBack', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'ListadoPremios',
          path: '/listadoPremios',
          builder: (context, params) => ListadoPremiosWidget(),
        ),
        FFRoute(
          name: 'Locales',
          path: '/locales',
          builder: (context, params) => LocalesWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'Notificaciones',
          path: '/notificaciones',
          builder: (context, params) => NotificacionesWidget(),
        ),
        FFRoute(
          name: 'Notificaciones2',
          path: '/notificaciones2',
          builder: (context, params) => Notificaciones2Widget(),
        ),
        FFRoute(
          name: 'NuevaNotificacion',
          path: '/nuevaNotificacion',
          builder: (context, params) => NuevaNotificacionWidget(),
        ),
        FFRoute(
          name: 'NuevoBeneficio',
          path: '/nuevoBeneficio',
          builder: (context, params) => NuevoBeneficioWidget(),
        ),
        FFRoute(
          name: 'NuevoLocal',
          path: '/nuevoLocal',
          builder: (context, params) => NuevoLocalWidget(),
        ),
        FFRoute(
          name: 'NuevoPremio',
          path: '/nuevoPremio',
          builder: (context, params) => NuevoPremioWidget(),
        ),
        FFRoute(
          name: 'PremioRedimidoHotel',
          path: '/premioRedimidoHotel',
          builder: (context, params) => PremioRedimidoHotelWidget(),
        ),
        FFRoute(
          name: 'PremioRedimidoPerfume',
          path: '/premioRedimidoPerfume',
          builder: (context, params) => PremioRedimidoPerfumeWidget(),
        ),
        FFRoute(
          name: 'RedimirPremio',
          path: '/redimirPremio',
          builder: (context, params) => RedimirPremioWidget(),
        ),
        FFRoute(
          name: 'Register',
          path: '/register',
          builder: (context, params) => RegisterWidget(),
        ),
        FFRoute(
          name: 'Restablecer',
          path: '/restablecer',
          builder: (context, params) => RestablecerWidget(),
        ),
        FFRoute(
          name: 'TodasLasCategorias',
          path: '/todasLasCategorias',
          builder: (context, params) => TodasLasCategoriasWidget(),
        ),
        FFRoute(
          name: 'Usuarios',
          path: '/usuarios',
          builder: (context, params) => UsuariosWidget(),
        ),
        FFRoute(
          name: 'ValidarFacturas',
          path: '/validarFacturas',
          builder: (context, params) => ValidarFacturasWidget(),
        ),
        FFRoute(
          name: 'ValidarFacturas2',
          path: '/validarFacturas2',
          builder: (context, params) => ValidarFacturas2Widget(),
        ),
        FFRoute(
          name: 'ValidarFacturas3',
          path: '/validarFacturas3',
          builder: (context, params) => ValidarFacturas3Widget(),
        ),
        FFRoute(
          name: 'HabilitarMigracionCliente',
          path: '/habilitarMigracionCliente',
          builder: (context, params) => HabilitarMigracionClienteWidget(),
        ),
        FFRoute(
          name: 'CargaTusPuntos1',
          path: '/cargaTusPuntos1',
          builder: (context, params) => CargaTusPuntos1Widget(),
        ),
        FFRoute(
          name: 'CargaTusPuntos2',
          path: '/cargaTusPuntos2',
          builder: (context, params) => CargaTusPuntos2Widget(),
        ),
        FFRoute(
          name: 'CargaTusPuntos3',
          path: '/cargaTusPuntos3',
          builder: (context, params) => CargaTusPuntos3Widget(),
        ),
        FFRoute(
          name: 'sidebar21',
          path: '/sidebar21',
          builder: (context, params) => Sidebar21Widget(),
        ),
        FFRoute(
          name: 'sidebar21Copy',
          path: '/sidebar21Copy',
          builder: (context, params) => Sidebar21CopyWidget(),
        ),
        FFRoute(
          name: 'MisPuntos',
          path: '/misPuntos',
          builder: (context, params) => MisPuntosWidget(),
        ),
        FFRoute(
          name: 'ObtenerFacturaPorFoto',
          path: '/obtenerFacturaPorFoto',
          builder: (context, params) => ObtenerFacturaPorFotoWidget(),
        ),
        FFRoute(
          name: 'ResultadoFotoFactura',
          path: '/resultadoFotoFactura',
          builder: (context, params) => ResultadoFotoFacturaWidget(
            codFactura: params.getParam('codFactura', ParamType.String),
            localFactura: params.getParam('localFactura', ParamType.String),
            nombreCliente: params.getParam('nombreCliente', ParamType.String),
            fecha: params.getParam('fecha', ParamType.String),
            totales: params.getParam<String>('totales', ParamType.String, true),
          ),
        ),
        FFRoute(
          name: 'ClientesPendientes',
          path: '/clientesPendientes',
          builder: (context, params) => ClientesPendientesWidget(),
        ),
        FFRoute(
          name: 'LocalesData',
          path: '/localesData',
          builder: (context, params) => LocalesDataWidget(
            nombreLocal: params.getParam('nombreLocal', ParamType.String),
            categoriaLocal: params.getParam('categoriaLocal', ParamType.String),
            telefonoLocal: params.getParam('telefonoLocal', ParamType.int),
            puntosdeventaLocal:
                params.getParam('puntosdeventaLocal', ParamType.int),
            logoLocal: params.getParam('logoLocal', ParamType.String),
            estadoLocal: params.getParam('estadoLocal', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'CambiarContrasena',
          path: '/cambiarContrasena',
          builder: (context, params) => CambiarContrasenaWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.matches.length <= 1) {
      go('/');
    } else {
      pop();
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/onboardingApp';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Image.asset(
                      'assets/images/gp_logo.png',
                      width: MediaQuery.of(context).size.width * 0.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
