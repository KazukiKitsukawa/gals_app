import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_page_state.freezed.dart';

@freezed
class SplashPageState with _$SplashPageState {
  const factory SplashPageState({
    @Default(false) initialCheck,
  }) = _SplashPageState;
}
