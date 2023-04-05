// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarDetailState {
// カレンダー情報
  AsyncValue<CalendarDetailViewItem> get calenderItem =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarDetailStateCopyWith<CalendarDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarDetailStateCopyWith<$Res> {
  factory $CalendarDetailStateCopyWith(
          CalendarDetailState value, $Res Function(CalendarDetailState) then) =
      _$CalendarDetailStateCopyWithImpl<$Res, CalendarDetailState>;
  @useResult
  $Res call({AsyncValue<CalendarDetailViewItem> calenderItem});
}

/// @nodoc
class _$CalendarDetailStateCopyWithImpl<$Res, $Val extends CalendarDetailState>
    implements $CalendarDetailStateCopyWith<$Res> {
  _$CalendarDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calenderItem = null,
  }) {
    return _then(_value.copyWith(
      calenderItem: null == calenderItem
          ? _value.calenderItem
          : calenderItem // ignore: cast_nullable_to_non_nullable
              as AsyncValue<CalendarDetailViewItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendarDetailStateCopyWith<$Res>
    implements $CalendarDetailStateCopyWith<$Res> {
  factory _$$_CalendarDetailStateCopyWith(_$_CalendarDetailState value,
          $Res Function(_$_CalendarDetailState) then) =
      __$$_CalendarDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<CalendarDetailViewItem> calenderItem});
}

/// @nodoc
class __$$_CalendarDetailStateCopyWithImpl<$Res>
    extends _$CalendarDetailStateCopyWithImpl<$Res, _$_CalendarDetailState>
    implements _$$_CalendarDetailStateCopyWith<$Res> {
  __$$_CalendarDetailStateCopyWithImpl(_$_CalendarDetailState _value,
      $Res Function(_$_CalendarDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calenderItem = null,
  }) {
    return _then(_$_CalendarDetailState(
      calenderItem: null == calenderItem
          ? _value.calenderItem
          : calenderItem // ignore: cast_nullable_to_non_nullable
              as AsyncValue<CalendarDetailViewItem>,
    ));
  }
}

/// @nodoc

class _$_CalendarDetailState implements _CalendarDetailState {
  const _$_CalendarDetailState(
      {this.calenderItem = const AsyncValue.loading()});

// カレンダー情報
  @override
  @JsonKey()
  final AsyncValue<CalendarDetailViewItem> calenderItem;

  @override
  String toString() {
    return 'CalendarDetailState(calenderItem: $calenderItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarDetailState &&
            (identical(other.calenderItem, calenderItem) ||
                other.calenderItem == calenderItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calenderItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendarDetailStateCopyWith<_$_CalendarDetailState> get copyWith =>
      __$$_CalendarDetailStateCopyWithImpl<_$_CalendarDetailState>(
          this, _$identity);
}

abstract class _CalendarDetailState implements CalendarDetailState {
  const factory _CalendarDetailState(
          {final AsyncValue<CalendarDetailViewItem> calenderItem}) =
      _$_CalendarDetailState;

  @override // カレンダー情報
  AsyncValue<CalendarDetailViewItem> get calenderItem;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarDetailStateCopyWith<_$_CalendarDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
