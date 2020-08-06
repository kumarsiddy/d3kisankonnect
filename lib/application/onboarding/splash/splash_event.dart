part of 'splash_bloc.dart';

@freezed
abstract class SplashEvent with _$SplashEvent {
  const factory SplashEvent.authCheckRequested() = AuthCheckRequested;
  const factory SplashEvent.savedLanguageSelectionRequested() =
      SavedLanguageSelectionRequested;
}
