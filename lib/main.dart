import 'package:clixily/app/app.dart';
import 'package:clixily/app/dependencies.dart';
import 'package:clixily/app/environment_config.dart';
import 'package:clixily/core/dependency_injection/domain/dependencies_container.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupDependencies(
    getIt,
    clixilyApiUrl: EnvironmentConfig.host,
  );

  runApp(
    const App(appName: 'Clixily App'),
  );
}
