// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_detail_view_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarDetailViewItem {
  /// タイトル(サマリー)
  String get title => throw _privateConstructorUsedError;

  /// リンク(カレンダーに行くため一旦コメントアウト）
  String get link => throw _privateConstructorUsedError;

  /// カレンダー更新日
  DateTime get updated => throw _privateConstructorUsedError;

  /// イベント開始日
  DateTime get eventStart => throw _privateConstructorUsedError;

  /// 本文
  String get description => throw _privateConstructorUsedError;

  /// HTMLタグを外した本文
  String get noHtmlDescription => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarDetailViewItemCopyWith<CalendarDetailViewItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarDetailViewItemCopyWith<$Res> {
  factory $CalendarDetailViewItemCopyWith(CalendarDetailViewItem value,
          $Res Function(CalendarDetailViewItem) then) =
      _$CalendarDetailViewItemCopyWithImpl<$Res, CalendarDetailViewItem>;
  @useResult
  $Res call(
      {String title,
      String link,
      DateTime updated,
      DateTime eventStart,
      String description,
      String noHtmlDescription});
}

/// @nodoc
class _$CalendarDetailViewItemCopyWithImpl<$Res,
        $Val extends CalendarDetailViewItem>
    implements $CalendarDetailViewItemCopyWith<$Res> {
  _$CalendarDetailViewItemCopyWithImpl(this._value, this._then);

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
    Object? description = null,
    Object? noHtmlDescription = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      noHtmlDescription: null == noHtmlDescription
          ? _value.noHtmlDescription
          : noHtmlDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendarDetailViewItemCopyWith<$Res>
    implements $CalendarDetailViewItemCopyWith<$Res> {
  factory _$$_CalendarDetailViewItemCopyWith(_$_CalendarDetailViewItem value,
          $Res Function(_$_CalendarDetailViewItem) then) =
      __$$_CalendarDetailViewItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String link,
      DateTime updated,
      DateTime eventStart,
      String description,
      String noHtmlDescription});
}

/// @nodoc
class __$$_CalendarDetailViewItemCopyWithImpl<$Res>
    extends _$CalendarDetailViewItemCopyWithImpl<$Res,
        _$_CalendarDetailViewItem>
    implements _$$_CalendarDetailViewItemCopyWith<$Res> {
  __$$_CalendarDetailViewItemCopyWithImpl(_$_CalendarDetailViewItem _value,
      $Res Function(_$_CalendarDetailViewItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? updated = null,
    Object? eventStart = null,
    Object? description = null,
    Object? noHtmlDescription = null,
  }) {
    return _then(_$_CalendarDetailViewItem(
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      noHtmlDescription: null == noHtmlDescription
          ? _value.noHtmlDescription
          : noHtmlDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CalendarDetailViewItem implements _CalendarDetailViewItem {
  const _$_CalendarDetailViewItem(
      {required this.title,
      required this.link,
      required this.updated,
      required this.eventStart,
      required this.description,
      required this.noHtmlDescription});

  /// タイトル(サマリー)
  @override
  final String title;

  /// リンク(カレンダーに行くため一旦コメントアウト）
  @override
  final String link;

  /// カレンダー更新日
  @override
  final DateTime updated;

  /// イベント開始日
  @override
  final DateTime eventStart;

  /// 本文
  @override
  final String description;

  /// HTMLタグを外した本文
  @override
  final String noHtmlDescription;

  @override
  String toString() {
    return 'CalendarDetailViewItem(title: $title, link: $link, updated: $updated, eventStart: $eventStart, description: $description, noHtmlDescription: $noHtmlDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarDetailViewItem &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.eventStart, eventStart) ||
                other.eventStart == eventStart) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.noHtmlDescription, noHtmlDescription) ||
                other.noHtmlDescription == noHtmlDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, link, updated, eventStart,
      description, noHtmlDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendarDetailViewItemCopyWith<_$_CalendarDetailViewItem> get copyWith =>
      __$$_CalendarDetailViewItemCopyWithImpl<_$_CalendarDetailViewItem>(
          this, _$identity);
}

abstract class _CalendarDetailViewItem implements CalendarDetailViewItem {
  const factory _CalendarDetailViewItem(
      {required final String title,
      required final String link,
      required final DateTime updated,
      required final DateTime eventStart,
      required final String description,
      required final String noHtmlDescription}) = _$_CalendarDetailViewItem;

  @override

  /// タイトル(サマリー)
  String get title;
  @override

  /// リンク(カレンダーに行くため一旦コメントアウト）
  String get link;
  @override

  /// カレンダー更新日
  DateTime get updated;
  @override

  /// イベント開始日
  DateTime get eventStart;
  @override

  /// 本文
  String get description;
  @override

  /// HTMLタグを外した本文
  String get noHtmlDescription;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarDetailViewItemCopyWith<_$_CalendarDetailViewItem> get copyWith =>
      throw _privateConstructorUsedError;
}
