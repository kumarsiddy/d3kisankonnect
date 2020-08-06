import 'package:d3kisankonnect/application/onboarding/sign_in/sign_in_bloc.dart';
import 'package:d3kisankonnect/di/injection.dart';
import 'package:d3kisankonnect/lang/app_localizations.dart';
import 'package:d3kisankonnect/lang/app_localization_handler.dart';
import 'package:d3kisankonnect/presentation/core/customview/button.dart';
import 'package:d3kisankonnect/presentation/core/language/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getString(context, 'english')),
      ),
      body: BlocProvider(
        create: (BuildContext context) => getIt<SignInBloc>(),
        child: SingleChildScrollView(child: _LanguageForm()),
      ),
    );
  }
}

class _LanguageForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _onLanguageSelected(Locale newLocale) {
      context
          .bloc<SignInBloc>()
          .add(SignInEvent.onLanguageChange(locale: newLocale));
    }

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
                      AppLocalizations.getLocaleOf(AppLocalizations.ENGLISH))),
              SizedBox(width: 12),
              CustomButton(
                  getString(context, AppStrings.hindi),
                  () => _onLanguageSelected(
                      AppLocalizations.getLocaleOf(AppLocalizations.HINDI))),
            ],
          ),
        ],
      ),
    );
  }
}
