import 'package:flutter_sandbox/src/presentation/modules/base/navigation/base_routes.dart';
import 'package:flutter_sandbox/src/presentation/navigation/unknown_route.dart';

import 'core/navigation_route.dart';
import 'core/route_maps.dart';
import 'core/route_path.dart';

class RouteUnknown extends RoutePath {
  const RouteUnknown() : super();
}

List<NavigationRoute> defaultRoutes = [
  NavigationRoute(
    routePath: const RouteUnknown(),
    // location: '/',
    screen: const UnknownScreen(),
  ),
];

List<NavigationRoute> appRouteList = [
  ...defaultRoutes,
  ...baseRoutes,
];

Map<Type, NavigationRoute> appRoutesMap =
    RoutesGenerator.generateRoutesMap(appRouteList);
Map<String, NavigationRoute> appRoutesMapByLocation =
    RoutesGenerator.generateRoutesMapWithLocationAsKey(appRouteList);
