import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_detail_view_item.freezed.dart';

@freezed
class CalendarDetailViewItem with _$CalendarDetailViewItem {
  const factory CalendarDetailViewItem({
    /// タイトル(サマリー)
    required String title,

    /// リンク(カレンダーに行くため一旦コメントアウト）
    required String link,

    /// カレンダー更新日
    required DateTime updated,

    /// イベント開始日
    required DateTime eventStart,

    /// 本文
    required String description,

    /// HTMLタグを外した本文
    required String noHtmlDescription,
  }) = _CalendarDetailViewItem;
}
