import 'dart:convert';
import 'dart:io';

import 'package:d3kisankonnect/lang/app_localizations.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@Singleton()
class LanguageCacheHandler {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> _getLanguageFileWith({@required String filename}) async {
    final path = await _localPath;
    return File('$path/$filename');
  }

  Future<File> writeJsonFor({
    @required Locale locale,
    @required String toBeWritten,
  }) async {
    String filename = _getFileNameFromLocale(locale);
    final file = await _getLanguageFileWith(filename: filename);
    return file.writeAsString(toBeWritten);
  }

// this method will try to find the corresponding json file for given locale
  Future<Option<Map<String, String>>> readJsonFor({
    @required Locale locale,
  }) async {
    try {
      String filename = _getFileNameFromLocale(locale);
      final file = await _getLanguageFileWith(filename: filename);
      String jsonString = await file.readAsString();

      return Some(_getMapFromJsonString(jsonString: jsonString));
    } catch (e) {
      print(e.toString());
      return None();
    }
  }

  String _getFileNameFromLocale(Locale locale) {
    return 'lang/${locale.languageCode}.json';
  }

  Map<String, String> _getMapFromJsonString({@required String jsonString}) {
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    return jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
  }

  Future<Map<String, String>> getDefaultLocaleJson() async {
    String filename =
        _getFileNameFromLocale(AppLocalizations.getDefaultLocale());
    String jsonString = await rootBundle.loadString(filename);
    return _getMapFromJsonString(jsonString: jsonString);
  }
}
