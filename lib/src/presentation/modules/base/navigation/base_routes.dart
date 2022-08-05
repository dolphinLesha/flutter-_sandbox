import '../../../navigation/core/navigation_route.dart';
import '../../../navigation/core/route_path.dart';
import '../home_screen.dart';

class RouteBase extends RoutePath {
  const RouteBase() : super();
}

List<NavigationRoute> baseRoutes = [
  NavigationRoute(
    routePath: const RouteBase(),
    location: '/',
    screen: const HomeScreen(),
  ),
];
