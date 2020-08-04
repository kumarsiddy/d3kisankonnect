import 'package:d3kisankonnect/lang/app_localizations.dart';
import 'package:d3kisankonnect/lang/localization_handler.dart';
import 'package:d3kisankonnect/presentation/core/customview/button.dart';
import 'package:d3kisankonnect/presentation/core/language/app_strings.dart';
import 'package:flutter/material.dart';

class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getString(context, 'english')),
      ),
      body: _LanguageForm(),
    );
  }
}

class _LanguageForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          Text(getString(context, AppStrings.sample_text)),
          SizedBox(height: 24),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CustomButton(
                  getString(context, AppStrings.english),
                  () => _onLanguageSelected(
                      AppLocalizations.getLocaleOf(AppStrings.english))),
              SizedBox(width: 12),
              CustomButton(
                  getString(context, AppStrings.hindi),
                  () => _onLanguageSelected(
                      AppLocalizations.getLocaleOf(AppStrings.hindi))),
            ],
          ),
        ],
      ),
    );
  }

  _onLanguageSelected(Locale locale) => localeHandler.setLocale(locale);
}
