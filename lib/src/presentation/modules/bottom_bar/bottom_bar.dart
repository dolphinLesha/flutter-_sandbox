import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sandbox/src/data/common/enums/app_modules.dart';
import 'package:flutter_sandbox/src/presentation/common/layouts/custom_tooltip.dart';
import 'package:flutter_sandbox/src/presentation/core/styles/app_colors.dart';
import 'package:flutter_sandbox/src/presentation/core/styles/app_typography.dart';

class BottomBar extends StatelessWidget {
  final Widget child;

  const BottomBar({
    Key? key,
    required this.child,
  }) : super(key: key);

  String get platformText {
    if (kIsWeb) {
      return 'Приложение запущено в браузере';
    }
    if (Platform.isAndroid)
      return 'Приложение запущено на Android';
    else if (Platform.isIOS)
      return 'Приложение запущено на IOS';
    else if (Platform.isLinux)
      return 'Приложение запущено на Linux';
    else if (Platform.isMacOS)
      return 'Приложение запущено на MacOS';
    else if (Platform.isWindows) return 'Приложение запущено на Windows';
    return 'Неизвестно, где запущено приложение';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: child,
        ),
        Flexible(
          flex: 0,
          child: DecoratedBox(
            decoration: const BoxDecoration(
              color: AdditionalColors.semiLightGrey,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    color: AdditionalColors.black,
                  ),
                  _ModulesTabPanel(),
                  Text(
                    '${platformText}',
                    style: AT.body3,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ModulesTabPanel extends StatelessWidget {
  const _ModulesTabPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var item in AppModulesEnum.values)
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: _IconModuleButton(
              appModule: item,
              selected: item.isButtons,
            ),
          ),
      ],
    );
  }
}

class _IconModuleButton extends StatefulWidget {
  final AppModulesEnum appModule;
  final bool selected;

  const _IconModuleButton({
    Key? key,
    required this.appModule,
    this.selected = false,
  }) : super(key: key);

  @override
  State<_IconModuleButton> createState() => _IconModuleButtonState();
}

class _IconModuleButtonState extends State<_IconModuleButton> {
  final Duration _animationDuration = const Duration(milliseconds: 200);
  final Color hoverColor = AdditionalColors.semiLightGrey;
  final Color clickedColor = AdditionalColors.darkGrey;
  final Color selectedColor = AdditionalColors.black;
  late Color commonColor = Colors.transparent;
  late Color currentColor = commonColor;

  IconData get icon {
    switch (widget.appModule) {
      case AppModulesEnum.buttons:
        return Icons.radio_button_checked;
      case AppModulesEnum.labels:
        return Icons.abc;
      case AppModulesEnum.layouts:
        return Icons.vertical_split_outlined;
    }
  }

  @override
  void initState() {
    super.initState();

    // if (widget.selected) {
    //   commonColor = selectedColor;
    // } else {
    //   commonColor = Colors.transparent;
    // }
    commonColor = Colors.transparent;
    currentColor = commonColor;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: _animationDuration,
      decoration: BoxDecoration(
        color: currentColor,
        borderRadius: BorderRadius.circular(16),
      ),
      width: 32,
      height: 32,
      child: MouseRegion(
        onEnter: (e) {

        },
        onExit: (e) {

        },
        child: GestureDetector(
          onTap: () {},
          child: CustomTooltip(
            appearanceStyle: AppearanceStyle.side,
            sideDirection: SideTooltipDirection.top,
            contentWidget: widget.appModule.tooltipContent,
            maxWidth: 300,
            maxHeight: 150,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Icon(
              icon,
              color: widget.selected ? AdditionalColors.lightGrey : AdditionalColors.black,
              size: 28,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
