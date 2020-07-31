import 'package:auto_route/auto_route.dart';
import 'package:d3kisankonnect/application/onboarding/splash/splash_bloc.dart';
import 'package:d3kisankonnect/presentation/core/colors.dart';
import 'package:d3kisankonnect/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (BuildContext context, SplashState state) {
        state.map(initial: (_) {
          print('initial');
        }, authenticated: (_) {
          ExtendedNavigator.of(context).popUntil((route) => false);
          ExtendedNavigator.of(context).pushHomePage();
        }, unaunthenticated: (_) {
          ExtendedNavigator.of(context).popUntil((route) => false);
          ExtendedNavigator.of(context).pushSignInPage();
        });
      },
      child: _getSplashPageWidget(context),
    );
  }

  Widget _getSplashPageWidget(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.PRIMARY.color,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: new BoxDecoration(
                    color: AppColor.WHITE.color,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.WHITE.color.withOpacity(0.2),
                        spreadRadius: 8,
                        blurRadius: 8,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'KK',
                        style: TextStyle(
                          color: AppColor.PRIMARY.color,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        bottom: 32, top: 16, left: 16, right: 16),
                    child: RichText(
                      text: TextSpan(
                        text: 'Welcome To',
                        style: TextStyle(
                          color: AppColor.WHITE.color,
                          fontSize: 32,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\nSample App',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CircularProgressIndicator(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
