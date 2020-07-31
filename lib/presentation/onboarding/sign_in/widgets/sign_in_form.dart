import 'package:auto_route/auto_route.dart';
import 'package:d3kisankonnect/application/onboarding/sign_in/sign_in_bloc.dart';
import 'package:d3kisankonnect/presentation/core/colors.dart';
import 'package:d3kisankonnect/presentation/core/customview/button.dart';
import 'package:d3kisankonnect/presentation/core/customview/text.dart';
import 'package:d3kisankonnect/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SignInForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInState();
}

class _SignInState extends State<SignInForm> {
  static const EMAIL = 'email';
  static const PASSWORD = 'password';

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (BuildContext context, SignInState state) {
        state.map(
            initial: (Initial value) {},
            signedInUsingEmailAndPassword:
                (SignedInUsingEmailAndPassword value) {
              ExtendedNavigator.of(context).popUntil((route) => false);
              ExtendedNavigator.of(context).pushHomePage();
            },
            unauthenticated: (Unauthenticated value) {
              FlushbarHelper.createError(message: "Unauthenticated user")
                  .show(context);
              print('unauthenticated user');
            });
      },
      builder: (BuildContext context, SignInState state) {
        return _getSignInForm(context);
      },
    );
  }

  _getSignInForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: FormBuilder(
        key: _fbKey,
        autovalidate: _autoValidate,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Sign in to',
                      style: TextStyle(
                        color: AppColor.BLACK.color,
                        fontSize: 18,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sample App',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColor.PRIMARY.color,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SubTitleText('Enter email'),
                ],
              ),
              SizedBox(height: 16),
              FormBuilderTextField(
                attribute: EMAIL,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Enter email',
                ),
                keyboardType: TextInputType.text,
                validators: [
                  FormBuilderValidators.minLength(3),
                  FormBuilderValidators.maxLength(50),
                ],
                onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
              ),
              SizedBox(height: 16),
              FormBuilderTextField(
                attribute: PASSWORD,
                textInputAction: TextInputAction.done,
                obscureText: true,
                maxLines: 1,
                decoration: InputDecoration(
                  labelText: 'Enter password',
                ),
                keyboardType: TextInputType.visiblePassword,
                validators: [
                  FormBuilderValidators.minLength(5,
                      errorText: 'password not correct'),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: onRegister,
                    child: Padding(
                      padding: EdgeInsets.only(
                          bottom: 8, top: 8, left: 12, right: 12),
                      child: SubTitleText('Register'),
                    ),
                  ),
                  CustomButton(
                    'Sign In',
                    onSubmit,
                  ),
                ],
              ),
              SizedBox(height: 12)
            ]),
      ),
    );
  }

  onRegister() {
    ExtendedNavigator.of(context).popUntil((route) => false);
    ExtendedNavigator.of(context).pushSignUpPage();
  }

  onSubmit() {}
}
