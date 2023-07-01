import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gals_app/setting/viewitem/app_version_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'setting_state.freezed.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default(AsyncValue.loading()) AsyncValue<AppVersionItem> appVersion,
  }) = _SettingState;
}
