import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gals_app/mainpage/state/viewitem/sns_url.dart';

part 'gals_member_info.freezed.dart';

@freezed
class GalsMemberInfo with _$GalsMemberInfo {
  const factory GalsMemberInfo({
    /// 優先表示順
    required num memberNum,

    /// メンバー名
    required String memberName,

    /// アーティスト写真
    required String memberImage,

    /// Birthday
    required String birthday,

    /// SNSリスト
    required SnsUrl urls,
  }) = _GalsMemberInfo;

  /// firebase格納
  factory GalsMemberInfo.fromDocument(Map<String, dynamic> doc) {
    return GalsMemberInfo(
      memberName: doc['name'] ?? '',
      memberImage: doc['member_image'] ?? '',
      birthday: doc['birthday'] ?? '',
      memberNum: doc['member_num'] ?? 0,
      urls: SnsUrl(
          memberTwitterUrl: doc['url']['twitter'] ?? '',
          memberInstagramURL: doc['url']['instagram'] ?? '',
          showroomUrl: doc['url']['showroom'] ?? ''),
    );
  }
}
