import 'package:flutter/material.dart';

import '../core/route_path.dart';

abstract class RouteAction {}

class RouteChanged extends RouteAction {
  final RoutePath route;

  RouteChanged({required this.route});
}
