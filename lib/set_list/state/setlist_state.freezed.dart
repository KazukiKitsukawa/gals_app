// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setlist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SetListState {
  bool get isDropDownNull =>
      throw _privateConstructorUsedError; // Firebaseから取得するGALSの楽曲データ
  AsyncValue<List<String>> get musicList => throw _privateConstructorUsedError;
  String get selectedDateTimeToString => throw _privateConstructorUsedError;
  String get shareText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetListStateCopyWith<SetListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetListStateCopyWith<$Res> {
  factory $SetListStateCopyWith(
          SetListState value, $Res Function(SetListState) then) =
      _$SetListStateCopyWithImpl<$Res, SetListState>;
  @useResult
  $Res call(
      {bool isDropDownNull,
      AsyncValue<List<String>> musicList,
      String selectedDateTimeToString,
      String shareText});
}

/// @nodoc
class _$SetListStateCopyWithImpl<$Res, $Val extends SetListState>
    implements $SetListStateCopyWith<$Res> {
  _$SetListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDropDownNull = null,
    Object? musicList = null,
    Object? selectedDateTimeToString = null,
    Object? shareText = null,
  }) {
    return _then(_value.copyWith(
      isDropDownNull: null == isDropDownNull
          ? _value.isDropDownNull
          : isDropDownNull // ignore: cast_nullable_to_non_nullable
              as bool,
      musicList: null == musicList
          ? _value.musicList
          : musicList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<String>>,
      selectedDateTimeToString: null == selectedDateTimeToString
          ? _value.selectedDateTimeToString
          : selectedDateTimeToString // ignore: cast_nullable_to_non_nullable
              as String,
      shareText: null == shareText
          ? _value.shareText
          : shareText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SetListStateCopyWith<$Res>
    implements $SetListStateCopyWith<$Res> {
  factory _$$_SetListStateCopyWith(
          _$_SetListState value, $Res Function(_$_SetListState) then) =
      __$$_SetListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isDropDownNull,
      AsyncValue<List<String>> musicList,
      String selectedDateTimeToString,
      String shareText});
}

/// @nodoc
class __$$_SetListStateCopyWithImpl<$Res>
    extends _$SetListStateCopyWithImpl<$Res, _$_SetListState>
    implements _$$_SetListStateCopyWith<$Res> {
  __$$_SetListStateCopyWithImpl(
      _$_SetListState _value, $Res Function(_$_SetListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDropDownNull = null,
    Object? musicList = null,
    Object? selectedDateTimeToString = null,
    Object? shareText = null,
  }) {
    return _then(_$_SetListState(
      isDropDownNull: null == isDropDownNull
          ? _value.isDropDownNull
          : isDropDownNull // ignore: cast_nullable_to_non_nullable
              as bool,
      musicList: null == musicList
          ? _value.musicList
          : musicList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<String>>,
      selectedDateTimeToString: null == selectedDateTimeToString
          ? _value.selectedDateTimeToString
          : selectedDateTimeToString // ignore: cast_nullable_to_non_nullable
              as String,
      shareText: null == shareText
          ? _value.shareText
          : shareText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetListState implements _SetListState {
  const _$_SetListState(
      {this.isDropDownNull = false,
      this.musicList = const AsyncValue.loading(),
      this.selectedDateTimeToString = '',
      this.shareText = ''});

  @override
  @JsonKey()
  final bool isDropDownNull;
// Firebaseから取得するGALSの楽曲データ
  @override
  @JsonKey()
  final AsyncValue<List<String>> musicList;
  @override
  @JsonKey()
  final String selectedDateTimeToString;
  @override
  @JsonKey()
  final String shareText;

  @override
  String toString() {
    return 'SetListState(isDropDownNull: $isDropDownNull, musicList: $musicList, selectedDateTimeToString: $selectedDateTimeToString, shareText: $shareText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetListState &&
            (identical(other.isDropDownNull, isDropDownNull) ||
                other.isDropDownNull == isDropDownNull) &&
            (identical(other.musicList, musicList) ||
                other.musicList == musicList) &&
            (identical(
                    other.selectedDateTimeToString, selectedDateTimeToString) ||
                other.selectedDateTimeToString == selectedDateTimeToString) &&
            (identical(other.shareText, shareText) ||
                other.shareText == shareText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDropDownNull, musicList,
      selectedDateTimeToString, shareText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetListStateCopyWith<_$_SetListState> get copyWith =>
      __$$_SetListStateCopyWithImpl<_$_SetListState>(this, _$identity);
}

abstract class _SetListState implements SetListState {
  const factory _SetListState(
      {final bool isDropDownNull,
      final AsyncValue<List<String>> musicList,
      final String selectedDateTimeToString,
      final String shareText}) = _$_SetListState;

  @override
  bool get isDropDownNull;
  @override // Firebaseから取得するGALSの楽曲データ
  AsyncValue<List<String>> get musicList;
  @override
  String get selectedDateTimeToString;
  @override
  String get shareText;
  @override
  @JsonKey(ignore: true)
  _$$_SetListStateCopyWith<_$_SetListState> get copyWith =>
      throw _privateConstructorUsedError;
}
