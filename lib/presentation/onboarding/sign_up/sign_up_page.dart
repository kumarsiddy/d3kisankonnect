import 'package:d3kisankonnect/application/onboarding/sign_up/sign_up_bloc.dart';
import 'package:d3kisankonnect/presentation/injection.dart';
import 'package:d3kisankonnect/presentation/onboarding/sign_up/widgets/sign_up_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: BlocProvider(
        create: (BuildContext context) => getIt<SignUpBloc>(),
        child: SingleChildScrollView(child: SignUpForm()),
      ),
    );
  }
}
