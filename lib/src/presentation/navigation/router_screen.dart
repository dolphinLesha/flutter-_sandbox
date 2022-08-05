import 'package:flutter/material.dart';
import 'package:flutter_sandbox/src/presentation/modules/bottom_bar/bottom_bar.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../model/redux/state/app_state/app_state.dart';
import 'app_routes_config.dart';
import 'core/navigation_route.dart';

class RouterScreen extends StatelessWidget {
  const RouterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoreConnector<AppState, Store<AppState>>(
        converter: (store) => store,
        builder: (context, store) {
          NavigationRoute? navigationRoute = appRoutesMap[
              store.state.navigationState.currentRoute.runtimeType];

          if (navigationRoute != null) {
            return BottomBar(
              child: navigationRoute.screen,
            );
          }
          return const Center(
            child: Text('not found'),
          );
        },
      ),
    );
  }
}
