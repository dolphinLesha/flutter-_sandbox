import 'package:flutter/material.dart';
import 'package:flutter_sandbox/di.dart';
import 'package:flutter_sandbox/src/data/common/classes/pair.dart';
import 'package:flutter_sandbox/src/presentation/common/inputs/date_range_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: DI.store.state.themeState.currentTheme?.canvasColor,
      ),
      child: Center(
        child: CustomRangeDatePicker(
          width: 200,
          initialDateRange: Pair<DateTime, DateTime>(
              DateTime.now(), DateTime.now().add(const Duration(days: 15))),
          // selectedRangeCellPadding: EdgeInsets.all(0),
          // backGroundColor: Colors.white,
          radius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
