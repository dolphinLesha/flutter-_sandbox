import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../presentation/modules/base/navigation/base_routes.dart';
import '../../../../presentation/navigation/core/route_path.dart';

part 'navigation_state.freezed.dart';

// part 'navigation_state.g.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState({
    @JsonKey() @Default(RouteBase()) RoutePath currentRoute,
  }) = _NavigationState;

// factory NavigationState.fromJson(Map<String, dynamic> json) => _$NavigationStateFromJson(json);
}