import 'package:d3kisankonnect/presentation/core/app_widget.dart';
import 'package:d3kisankonnect/injection.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Hive initialization
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);

  await configureInjection(Environment.prod);
  runApp(AppWidget());
}
