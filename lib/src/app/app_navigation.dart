import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_ui_1/src/features/indexed_stack/indexed_stack_widget.dart';

abstract class NavigationRouteNames {
  static const mainScreen = '/';
}

class AppRouter {
  AppRouter();

  late final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        name: NavigationRouteNames.mainScreen,
        builder: (BuildContext context, GoRouterState state) {
          return IndexedStackWidget();
        },
      ),
    ],
    // redirect: (BuildContext context, GoRouterState state) {
    //   final loggedIn = appBloc.state.status == AppStatus.authenticated;
    //   final loggingIn = state.subloc == '/login';

    //   if (!loggedIn) return loggingIn ? null : '/login';
    //   if (loggingIn) return '/';
    //   return null;
    // },
    // refreshListenable: GoRouterRefreshStream(appBloc.stream),
  );
}

// class GoRouterRefreshStream extends ChangeNotifier {
//   GoRouterRefreshStream(Stream<dynamic> stream) {
//     notifyListeners();
//     _subscription =
//         stream.asBroadcastStream().listen((dynamic _) => notifyListeners());
//   }

//   late final StreamSubscription<dynamic> _subscription;

//   @override
//   void dispose() {
//     _subscription.cancel();
//     super.dispose();
//   }
// }
