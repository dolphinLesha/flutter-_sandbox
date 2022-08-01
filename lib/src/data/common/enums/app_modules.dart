import 'package:flutter/material.dart';
import 'package:flutter_sandbox/src/presentation/core/styles/app_colors.dart';
import 'package:flutter_sandbox/src/presentation/core/styles/app_typography.dart';

enum AppModulesEnum { buttons, labels, layouts }

extension AppModulesEnumX on AppModulesEnum {
  String get asString {
    switch (this) {
      case AppModulesEnum.buttons:
        return 'кнопки';
      case AppModulesEnum.labels:
        return 'записи';
      case AppModulesEnum.layouts:
        return 'контейнеры';
    }
  }

  bool get isButtons {
    return this == AppModulesEnum.buttons;
  }

  bool get isLabels {
    return this == AppModulesEnum.labels;
  }

  bool get isLayouts {
    return this == AppModulesEnum.layouts;
  }

  Widget get tooltipContent {
    switch (this) {
      case AppModulesEnum.buttons:
        return Text(
          'Кнопки',
          style: AT.body2.copyWith(
            color: AdditionalColors.background,
          ),
        );
      case AppModulesEnum.labels:
        return Text(
          'Записи',
          style: AT.body2.copyWith(
            color: AdditionalColors.background,
          ),
        );
      case AppModulesEnum.layouts:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Контейнеры',
              style: AT.body4.copyWith(
                color: AdditionalColors.background,
              ),
            ),
            SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i=0;i<20;i++)
                        Text(
                          'p $i',
                          style: AT.body2.copyWith(
                            color: AdditionalColors.background,
                          ),
                        ),
                    ],
                  ),

            ),
          ],
        );
    }
  }
}
