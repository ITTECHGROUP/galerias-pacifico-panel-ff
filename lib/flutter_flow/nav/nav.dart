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
          name: 'Register',
          path: '/register',
          builder: (context, params) => RegisterWidget(),
        ),
        FFRoute(
          name: 'Ajustes',
          path: '/ajustes',
          builder: (context, params) => AjustesWidget(),
        ),
        FFRoute(
          name: 'Clientes',
          path: '/clientes',
          builder: (context, params) => ClientesWidget(),
        ),
        FFRoute(
          name: 'CrearNuevoCliente',
          path: '/crearNuevoCliente',
          builder: (context, params) => CrearNuevoClienteWidget(),
        ),
        FFRoute(
          name: 'AltaDeCliente',
          path: '/altaDeCliente',
          builder: (context, params) => AltaDeClienteWidget(),
        ),
        FFRoute(
          name: 'InfoClienteYHistorial',
          path: '/infoClienteYHistorial',
          builder: (context, params) => InfoClienteYHistorialWidget(),
        ),
        FFRoute(
          name: 'AnadirFactura',
          path: '/anadirFactura',
          builder: (context, params) => AnadirFacturaWidget(),
        ),
        FFRoute(
          name: 'Restablecer',
          path: '/restablecer',
          builder: (context, params) => RestablecerWidget(),
        ),
        FFRoute(
          name: 'HabilitarMigracionCliente',
          path: '/habilitarMigracionCliente',
          builder: (context, params) => HabilitarMigracionClienteWidget(),
        ),
        FFRoute(
          name: 'Usuarios',
          path: '/usuarios',
          builder: (context, params) => UsuariosWidget(),
        ),
        FFRoute(
          name: 'CrearNuevoUsuario',
          path: '/crearNuevoUsuario',
          builder: (context, params) => CrearNuevoUsuarioWidget(),
        ),
        FFRoute(
          name: 'ListadoPremios',
          path: '/listadoPremios',
          builder: (context, params) => ListadoPremiosWidget(),
        ),
        FFRoute(
          name: 'NuevoPremio',
          path: '/nuevoPremio',
          builder: (context, params) => NuevoPremioWidget(),
        ),
        FFRoute(
          name: 'NuevoBeneficio',
          path: '/nuevoBeneficio',
          builder: (context, params) => NuevoBeneficioWidget(),
        ),
        FFRoute(
          name: 'Notificaciones',
          path: '/notificaciones',
          builder: (context, params) => NotificacionesWidget(),
        ),
        FFRoute(
          name: 'NuevaNotificacion',
          path: '/nuevaNotificacion',
          builder: (context, params) => NuevaNotificacionWidget(),
        ),
        FFRoute(
          name: 'NuevoLocal',
          path: '/nuevoLocal',
          builder: (context, params) => NuevoLocalWidget(),
        ),
        FFRoute(
          name: 'RedimirPremio',
          path: '/redimirPremio',
          builder: (context, params) => RedimirPremioWidget(),
        ),
        FFRoute(
          name: 'PremioRedimidoPerfume',
          path: '/premioRedimidoPerfume',
          builder: (context, params) => PremioRedimidoPerfumeWidget(),
        ),
        FFRoute(
          name: 'PremioRedimidoHotel',
          path: '/premioRedimidoHotel',
          builder: (context, params) => PremioRedimidoHotelWidget(),
        ),
        FFRoute(
          name: 'Notificaciones2',
          path: '/notificaciones2',
          builder: (context, params) => Notificaciones2Widget(),
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
          name: 'BaseDeDatos',
          path: '/baseDeDatos',
          builder: (context, params) => BaseDeDatosWidget(),
        ),
        FFRoute(
          name: 'AdministrarCategorias',
          path: '/administrarCategorias',
          builder: (context, params) => AdministrarCategoriasWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'Locales',
          path: '/locales',
          builder: (context, params) => LocalesWidget(),
        ),
        FFRoute(
          name: 'TodasLasCategorias',
          path: '/todasLasCategorias',
          builder: (context, params) => TodasLasCategoriasWidget(),
        ),
        FFRoute(
          name: 'MisPuntos',
          path: '/misPuntos',
          builder: (context, params) => MisPuntosWidget(),
        ),
        FFRoute(
          name: 'MisPremiosVoucher',
          path: '/misPremiosVoucher',
          builder: (context, params) => MisPremiosVoucherWidget(),
        ),
        FFRoute(
          name: 'BaseDeDatosCopy',
          path: '/baseDeDatosCopy',
          builder: (context, params) => BaseDeDatosCopyWidget(),
        ),
        FFRoute(
          name: 'Register_1',
          path: '/register1',
          builder: (context, params) => Register1Widget(),
        ),
        FFRoute(
          name: 'OrdenDeCompraRochas',
          path: '/ordenDeCompraRochas',
          builder: (context, params) => OrdenDeCompraRochasWidget(),
        ),
        FFRoute(
          name: 'AjustesApp',
          path: '/ajustesApp',
          builder: (context, params) => AjustesAppWidget(),
        ),
        FFRoute(
          name: 'Home_App',
          path: '/homeApp',
          builder: (context, params) => HomeAppWidget(),
        ),
        FFRoute(
          name: 'Password_App',
          path: '/passwordApp',
          builder: (context, params) => PasswordAppWidget(),
        ),
        FFRoute(
          name: 'Onboarding_App',
          path: '/onboardingApp',
          builder: (context, params) => OnboardingAppWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => ForgotPasswordWidget(),
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
          name: 'BeneficiosExclusivos',
          path: '/beneficiosExclusivos',
          builder: (context, params) => BeneficiosExclusivosWidget(),
        ),
        FFRoute(
          name: 'Formulario',
          path: '/formulario',
          builder: (context, params) => FormularioWidget(),
        ),
        FFRoute(
          name: 'MisPremiosOrdenar',
          path: '/misPremiosOrdenar',
          builder: (context, params) => MisPremiosOrdenarWidget(),
        ),
        FFRoute(
          name: 'CargaTusPuntosTotal',
          path: '/cargaTusPuntosTotal',
          builder: (context, params) => CargaTusPuntosTotalWidget(),
        ),
        FFRoute(
          name: 'TyCScreen',
          path: '/tyCScreen',
          builder: (context, params) => TyCScreenWidget(),
        ),
        FFRoute(
          name: 'Register_2',
          path: '/register2',
          builder: (context, params) => Register2Widget(),
        ),
        FFRoute(
          name: 'Login_App',
          path: '/loginApp',
          builder: (context, params) => LoginAppWidget(),
        ),
        FFRoute(
          name: 'PopUpRegister',
          path: '/popUpRegister',
          builder: (context, params) => PopUpRegisterWidget(),
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
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primary,
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
