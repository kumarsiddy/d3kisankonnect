import 'package:d3kisankonnect/config_reader.dart';
import 'package:d3kisankonnect/presentation/core/splash.dart';
import 'package:d3kisankonnect/di/injection.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> mainCommon(String env) async {
  // Call this if the main method is asynchronous
  WidgetsFlutterBinding.ensureInitialized();

  // Load the JSON config into memory
  await ConfigReader.initialize(env);

  // Hive initialization
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);

  await configureInjection();
  runApp(NewSplashPage());
}
