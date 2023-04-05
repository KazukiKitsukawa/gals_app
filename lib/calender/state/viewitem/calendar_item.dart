import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_item.freezed.dart';
part 'calendar_item.g.dart';

@freezed
class CalendarItem with _$CalendarItem {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CalendarItem({
    /// タイトル(サマリー)
    required String title,

    /// リンク
    required String link,

    /// カレンダー更新日
    required DateTime updated,

    /// イベント開始日
    required DateTime eventStart,

    /// イベント終了日
    required DateTime eventEnd,

    /// 本文
    required String description,

    /// test
    required Map<DateTime, List> calendarEventDate,
  }) = _CalendarItem;

  factory CalendarItem.fromJson(Map<String, dynamic> json) =>
      _$CalendarItemFromJson(json);
}
