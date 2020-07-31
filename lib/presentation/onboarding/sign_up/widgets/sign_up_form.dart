import 'package:d3kisankonnect/application/onboarding/sign_up/sign_up_bloc.dart';
import 'package:d3kisankonnect/presentation/core/colors.dart';
import 'package:d3kisankonnect/presentation/core/customview/button.dart';
import 'package:d3kisankonnect/presentation/core/customview/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SignUpForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpForm> {
  static const NAME = 'name';
  static const GENDER = 'gender';
  static const EMAIL = 'email';
  static const MOBILE = 'mobile';
  static const PASSWORD = 'password';
  static const CONFIRM_PASSWORD = 'confirm_password';

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (BuildContext context, SignUpState signUpState) => {},
      builder: (BuildContext context, SignUpState signUpState) =>
          _getSignupForm(context),
    );
  }

  Widget _getSignupForm(BuildContext context) {
    final TextEditingController _passController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(12),
      child: FormBuilder(
        key: _fbKey,
        autovalidate: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Welcome to',
                    style: TextStyle(
                      color: AppColor.BLACK.color,
                      fontSize: 18,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sample Project',
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
                SubTitleText("Let's Get Started"),
              ],
            ),
            SizedBox(height: 16),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FormBuilderTextField(
                  attribute: NAME,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: 'Enter Name',
                  ),
                  keyboardType: TextInputType.text,
                  validators: [
                    FormBuilderValidators.minLength(3),
                    FormBuilderValidators.maxLength(50),
                  ],
                  onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                ),
                SizedBox(height: 16),
                SubTitleText('Gender'),
                FormBuilderChoiceChip(
                  attribute: GENDER,
                  selectedColor: AppColor.PRIMARY.color,
                  backgroundColor: AppColor.GRAY.color,
                  spacing: 16,
                  validators: [
                    FormBuilderValidators.required(),
                  ],
                  options: [
                    FormBuilderFieldOption(
                      child: SubTitleText(
                        'Male',
                        color: AppColor.WHITE.color,
                      ),
                      value: 'MALE',
                    ),
                    FormBuilderFieldOption(
                      child: SubTitleText(
                        'Female',
                        color: AppColor.WHITE.color,
                      ),
                      value: 'FEMALE',
                    ),
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
                    FormBuilderValidators.email(
                        errorText: 'Entered email not correct!'),
                  ],
                  onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                ),
                SizedBox(height: 16),
                FormBuilderTextField(
                  attribute: MOBILE,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: 'Enter phone',
                  ),
                  keyboardType: TextInputType.phone,
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  validators: [
                    FormBuilderValidators.minLength(10,
                        errorText: 'Not correct phone'),
                    FormBuilderValidators.maxLength(10,
                        errorText: 'Not correct phone'),
                    FormBuilderValidators.numeric(),
                  ],
                  onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                ),
                SizedBox(height: 16),
                FormBuilderTextField(
                  attribute: PASSWORD,
                  controller: _passController,
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                  maxLines: 1,
                  decoration: InputDecoration(
                    labelText: 'Enter password',
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  validators: [
                    FormBuilderValidators.minLength(5,
                        errorText: 'Enter password'),
                  ],
                  onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                ),
                SizedBox(height: 16),
                FormBuilderTextField(
                  attribute: CONFIRM_PASSWORD,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  maxLines: 1,
                  decoration: InputDecoration(
                    labelText: 'Confirm pasword',
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  validators: [
                    FormBuilderValidators.minLength(5,
                        errorText: 'Enter password'),
                    (value) {
                      if (value != _passController.text) {
                        return 'password not matching';
                      }
                      return null;
                    },
                  ],
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CustomButton(
                  'Sign up',
                  onSubmit,
                ),
              ],
            ),
            SizedBox(height: 12)
          ],
        ),
      ),
    );
  }

  onSubmit() {
    if (_fbKey.currentState.saveAndValidate()) {}
  }
}
