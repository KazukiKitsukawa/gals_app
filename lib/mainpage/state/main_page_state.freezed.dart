// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainPageState {
// メンバー情報
  AsyncValue<List<GalsMemberInfo>> get galsMemberInfo =>
      throw _privateConstructorUsedError; // 音楽情報
  AsyncValue<List<GalsMusicList>> get galsMusicList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPageStateCopyWith<MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageStateCopyWith<$Res> {
  factory $MainPageStateCopyWith(
          MainPageState value, $Res Function(MainPageState) then) =
      _$MainPageStateCopyWithImpl<$Res, MainPageState>;
  @useResult
  $Res call(
      {AsyncValue<List<GalsMemberInfo>> galsMemberInfo,
      AsyncValue<List<GalsMusicList>> galsMusicList});
}

/// @nodoc
class _$MainPageStateCopyWithImpl<$Res, $Val extends MainPageState>
    implements $MainPageStateCopyWith<$Res> {
  _$MainPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? galsMemberInfo = null,
    Object? galsMusicList = null,
  }) {
    return _then(_value.copyWith(
      galsMemberInfo: null == galsMemberInfo
          ? _value.galsMemberInfo
          : galsMemberInfo // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<GalsMemberInfo>>,
      galsMusicList: null == galsMusicList
          ? _value.galsMusicList
          : galsMusicList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<GalsMusicList>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainPageStateCopyWith<$Res>
    implements $MainPageStateCopyWith<$Res> {
  factory _$$_MainPageStateCopyWith(
          _$_MainPageState value, $Res Function(_$_MainPageState) then) =
      __$$_MainPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<GalsMemberInfo>> galsMemberInfo,
      AsyncValue<List<GalsMusicList>> galsMusicList});
}

/// @nodoc
class __$$_MainPageStateCopyWithImpl<$Res>
    extends _$MainPageStateCopyWithImpl<$Res, _$_MainPageState>
    implements _$$_MainPageStateCopyWith<$Res> {
  __$$_MainPageStateCopyWithImpl(
      _$_MainPageState _value, $Res Function(_$_MainPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? galsMemberInfo = null,
    Object? galsMusicList = null,
  }) {
    return _then(_$_MainPageState(
      galsMemberInfo: null == galsMemberInfo
          ? _value.galsMemberInfo
          : galsMemberInfo // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<GalsMemberInfo>>,
      galsMusicList: null == galsMusicList
          ? _value.galsMusicList
          : galsMusicList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<GalsMusicList>>,
    ));
  }
}

/// @nodoc

class _$_MainPageState implements _MainPageState {
  const _$_MainPageState(
      {this.galsMemberInfo = const AsyncValue.loading(),
      this.galsMusicList = const AsyncValue.loading()});

// メンバー情報
  @override
  @JsonKey()
  final AsyncValue<List<GalsMemberInfo>> galsMemberInfo;
// 音楽情報
  @override
  @JsonKey()
  final AsyncValue<List<GalsMusicList>> galsMusicList;

  @override
  String toString() {
    return 'MainPageState(galsMemberInfo: $galsMemberInfo, galsMusicList: $galsMusicList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainPageState &&
            (identical(other.galsMemberInfo, galsMemberInfo) ||
                other.galsMemberInfo == galsMemberInfo) &&
            (identical(other.galsMusicList, galsMusicList) ||
                other.galsMusicList == galsMusicList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, galsMemberInfo, galsMusicList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainPageStateCopyWith<_$_MainPageState> get copyWith =>
      __$$_MainPageStateCopyWithImpl<_$_MainPageState>(this, _$identity);
}

abstract class _MainPageState implements MainPageState {
  const factory _MainPageState(
      {final AsyncValue<List<GalsMemberInfo>> galsMemberInfo,
      final AsyncValue<List<GalsMusicList>> galsMusicList}) = _$_MainPageState;

  @override // メンバー情報
  AsyncValue<List<GalsMemberInfo>> get galsMemberInfo;
  @override // 音楽情報
  AsyncValue<List<GalsMusicList>> get galsMusicList;
  @override
  @JsonKey(ignore: true)
  _$$_MainPageStateCopyWith<_$_MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
