import 'package:d3kisankonnect/application/onboarding/sign_in/sign_in_bloc.dart';
import 'package:d3kisankonnect/presentation/injection.dart';
import 'package:d3kisankonnect/presentation/onboarding/sign_in/widgets/sign_in_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: BlocProvider(
        create: (BuildContext context) => getIt<SignInBloc>(),
        child: SingleChildScrollView(child: SignInForm()),
      ),
    );
  }
}
