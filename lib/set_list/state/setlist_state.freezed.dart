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
  List<String> get musicList => throw _privateConstructorUsedError;

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
  $Res call({List<String> musicList});
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
    Object? musicList = null,
  }) {
    return _then(_value.copyWith(
      musicList: null == musicList
          ? _value.musicList
          : musicList // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
  $Res call({List<String> musicList});
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
    Object? musicList = null,
  }) {
    return _then(_$_SetListState(
      musicList: null == musicList
          ? _value._musicList
          : musicList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_SetListState implements _SetListState {
  const _$_SetListState({required final List<String> musicList})
      : _musicList = musicList;

  final List<String> _musicList;
  @override
  List<String> get musicList {
    if (_musicList is EqualUnmodifiableListView) return _musicList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_musicList);
  }

  @override
  String toString() {
    return 'SetListState(musicList: $musicList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetListState &&
            const DeepCollectionEquality()
                .equals(other._musicList, _musicList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_musicList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetListStateCopyWith<_$_SetListState> get copyWith =>
      __$$_SetListStateCopyWithImpl<_$_SetListState>(this, _$identity);
}

abstract class _SetListState implements SetListState {
  const factory _SetListState({required final List<String> musicList}) =
      _$_SetListState;

  @override
  List<String> get musicList;
  @override
  @JsonKey(ignore: true)
  _$$_SetListStateCopyWith<_$_SetListState> get copyWith =>
      throw _privateConstructorUsedError;
}
