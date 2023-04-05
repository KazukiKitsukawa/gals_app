// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarItem _$CalendarItemFromJson(Map<String, dynamic> json) {
  return _CalendarItem.fromJson(json);
}

/// @nodoc
mixin _$CalendarItem {
  /// タイトル(サマリー)
  String get title => throw _privateConstructorUsedError;

  /// リンク
  String get link => throw _privateConstructorUsedError;

  /// カレンダー更新日
  DateTime get updated => throw _privateConstructorUsedError;

  /// イベント開始日
  DateTime get eventStart => throw _privateConstructorUsedError;

  /// イベント終了日
  DateTime get eventEnd => throw _privateConstructorUsedError;

  /// 本文
  String get description => throw _privateConstructorUsedError;

  /// test
  Map<DateTime, List> get calendarEventDate =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarItemCopyWith<CalendarItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarItemCopyWith<$Res> {
  factory $CalendarItemCopyWith(
          CalendarItem value, $Res Function(CalendarItem) then) =
      _$CalendarItemCopyWithImpl<$Res, CalendarItem>;
  @useResult
  $Res call(
      {String title,
      String link,
      DateTime updated,
      DateTime eventStart,
      DateTime eventEnd,
      String description,
      Map<DateTime, List> calendarEventDate});
}

/// @nodoc
class _$CalendarItemCopyWithImpl<$Res, $Val extends CalendarItem>
    implements $CalendarItemCopyWith<$Res> {
  _$CalendarItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? updated = null,
    Object? eventStart = null,
    Object? eventEnd = null,
    Object? description = null,
    Object? calendarEventDate = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventStart: null == eventStart
          ? _value.eventStart
          : eventStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventEnd: null == eventEnd
          ? _value.eventEnd
          : eventEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      calendarEventDate: null == calendarEventDate
          ? _value.calendarEventDate
          : calendarEventDate // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendarItemCopyWith<$Res>
    implements $CalendarItemCopyWith<$Res> {
  factory _$$_CalendarItemCopyWith(
          _$_CalendarItem value, $Res Function(_$_CalendarItem) then) =
      __$$_CalendarItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String link,
      DateTime updated,
      DateTime eventStart,
      DateTime eventEnd,
      String description,
      Map<DateTime, List> calendarEventDate});
}

/// @nodoc
class __$$_CalendarItemCopyWithImpl<$Res>
    extends _$CalendarItemCopyWithImpl<$Res, _$_CalendarItem>
    implements _$$_CalendarItemCopyWith<$Res> {
  __$$_CalendarItemCopyWithImpl(
      _$_CalendarItem _value, $Res Function(_$_CalendarItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? updated = null,
    Object? eventStart = null,
    Object? eventEnd = null,
    Object? description = null,
    Object? calendarEventDate = null,
  }) {
    return _then(_$_CalendarItem(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventStart: null == eventStart
          ? _value.eventStart
          : eventStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventEnd: null == eventEnd
          ? _value.eventEnd
          : eventEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      calendarEventDate: null == calendarEventDate
          ? _value._calendarEventDate
          : calendarEventDate // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_CalendarItem implements _CalendarItem {
  const _$_CalendarItem(
      {required this.title,
      required this.link,
      required this.updated,
      required this.eventStart,
      required this.eventEnd,
      required this.description,
      required final Map<DateTime, List> calendarEventDate})
      : _calendarEventDate = calendarEventDate;

  factory _$_CalendarItem.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarItemFromJson(json);

  /// タイトル(サマリー)
  @override
  final String title;

  /// リンク
  @override
  final String link;

  /// カレンダー更新日
  @override
  final DateTime updated;

  /// イベント開始日
  @override
  final DateTime eventStart;

  /// イベント終了日
  @override
  final DateTime eventEnd;

  /// 本文
  @override
  final String description;

  /// test
  final Map<DateTime, List> _calendarEventDate;

  /// test
  @override
  Map<DateTime, List> get calendarEventDate {
    if (_calendarEventDate is EqualUnmodifiableMapView)
      return _calendarEventDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_calendarEventDate);
  }

  @override
  String toString() {
    return 'CalendarItem(title: $title, link: $link, updated: $updated, eventStart: $eventStart, eventEnd: $eventEnd, description: $description, calendarEventDate: $calendarEventDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarItem &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.eventStart, eventStart) ||
                other.eventStart == eventStart) &&
            (identical(other.eventEnd, eventEnd) ||
                other.eventEnd == eventEnd) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._calendarEventDate, _calendarEventDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      link,
      updated,
      eventStart,
      eventEnd,
      description,
      const DeepCollectionEquality().hash(_calendarEventDate));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendarItemCopyWith<_$_CalendarItem> get copyWith =>
      __$$_CalendarItemCopyWithImpl<_$_CalendarItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarItemToJson(
      this,
    );
  }
}

abstract class _CalendarItem implements CalendarItem {
  const factory _CalendarItem(
      {required final String title,
      required final String link,
      required final DateTime updated,
      required final DateTime eventStart,
      required final DateTime eventEnd,
      required final String description,
      required final Map<DateTime, List> calendarEventDate}) = _$_CalendarItem;

  factory _CalendarItem.fromJson(Map<String, dynamic> json) =
      _$_CalendarItem.fromJson;

  @override

  /// タイトル(サマリー)
  String get title;
  @override

  /// リンク
  String get link;
  @override

  /// カレンダー更新日
  DateTime get updated;
  @override

  /// イベント開始日
  DateTime get eventStart;
  @override

  /// イベント終了日
  DateTime get eventEnd;
  @override

  /// 本文
  String get description;
  @override

  /// test
  Map<DateTime, List> get calendarEventDate;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarItemCopyWith<_$_CalendarItem> get copyWith =>
      throw _privateConstructorUsedError;
}
