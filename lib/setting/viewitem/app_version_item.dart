import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version_item.freezed.dart';

@freezed
class AppVersionItem with _$AppVersionItem {
  const factory AppVersionItem({
    required String appName,
    required String packageName,
    required String version,
    required String buildNumber,
  }) = _AppVersionItem;
}
