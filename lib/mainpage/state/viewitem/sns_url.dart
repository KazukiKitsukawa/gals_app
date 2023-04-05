import 'package:freezed_annotation/freezed_annotation.dart';

part 'sns_url.freezed.dart';

@freezed
class SnsUrl with _$SnsUrl {
  const factory SnsUrl({
    /// TwitterURL
    required String memberTwitterUrl,

    /// InstagramURL
    required String memberInstagramURL,

    /// ShowroomURL
    required String showroomUrl,
  }) = _SnsUrl;
}
