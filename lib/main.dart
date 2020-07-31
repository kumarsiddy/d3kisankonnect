import 'package:d3kisankonnect/presentation/core/app_widget.dart';
import 'package:d3kisankonnect/presentation/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod).then((_) => runApp(AppWidget()));
}
