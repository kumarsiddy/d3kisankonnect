import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:d3kisankonnect/domain/onboarding/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_event.dart';
part 'splash_state.dart';

part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final IAuthFacade _authFacade;

  SplashBloc(this._authFacade) : super(SplashState.initial());

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield* event.map(authCheckRequested: (either) async* {
      final isUserSignedIn = await _authFacade.isUserSignedIn();

      if (isUserSignedIn)
        yield SplashState.authenticated();
      else
        yield SplashState.unaunthenticated();
    });
  }
}
