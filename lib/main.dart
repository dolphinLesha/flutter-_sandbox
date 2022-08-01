import 'package:flutter/material.dart';
import 'package:flutter_sandbox/src/app.dart';

import 'di.dart';

void main() async {
  await DI.init();

  runApp(App(
    store: DI.store,
  ));
}

