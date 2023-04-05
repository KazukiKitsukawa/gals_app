// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sns_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SnsUrl {
  /// TwitterURL
  String get memberTwitterUrl => throw _privateConstructorUsedError;

  /// InstagramURL
  String get memberInstagramURL => throw _privateConstructorUsedError;

  /// ShowroomURL
  String get showroomUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SnsUrlCopyWith<SnsUrl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnsUrlCopyWith<$Res> {
  factory $SnsUrlCopyWith(SnsUrl value, $Res Function(SnsUrl) then) =
      _$SnsUrlCopyWithImpl<$Res, SnsUrl>;
  @useResult
  $Res call(
      {String memberTwitterUrl, String memberInstagramURL, String showroomUrl});
}

/// @nodoc
class _$SnsUrlCopyWithImpl<$Res, $Val extends SnsUrl>
    implements $SnsUrlCopyWith<$Res> {
  _$SnsUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberTwitterUrl = null,
    Object? memberInstagramURL = null,
    Object? showroomUrl = null,
  }) {
    return _then(_value.copyWith(
      memberTwitterUrl: null == memberTwitterUrl
          ? _value.memberTwitterUrl
          : memberTwitterUrl // ignore: cast_nullable_to_non_nullable
              as String,
      memberInstagramURL: null == memberInstagramURL
          ? _value.memberInstagramURL
          : memberInstagramURL // ignore: cast_nullable_to_non_nullable
              as String,
      showroomUrl: null == showroomUrl
          ? _value.showroomUrl
          : showroomUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SnsUrlCopyWith<$Res> implements $SnsUrlCopyWith<$Res> {
  factory _$$_SnsUrlCopyWith(_$_SnsUrl value, $Res Function(_$_SnsUrl) then) =
      __$$_SnsUrlCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String memberTwitterUrl, String memberInstagramURL, String showroomUrl});
}

/// @nodoc
class __$$_SnsUrlCopyWithImpl<$Res>
    extends _$SnsUrlCopyWithImpl<$Res, _$_SnsUrl>
    implements _$$_SnsUrlCopyWith<$Res> {
  __$$_SnsUrlCopyWithImpl(_$_SnsUrl _value, $Res Function(_$_SnsUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberTwitterUrl = null,
    Object? memberInstagramURL = null,
    Object? showroomUrl = null,
  }) {
    return _then(_$_SnsUrl(
      memberTwitterUrl: null == memberTwitterUrl
          ? _value.memberTwitterUrl
          : memberTwitterUrl // ignore: cast_nullable_to_non_nullable
              as String,
      memberInstagramURL: null == memberInstagramURL
          ? _value.memberInstagramURL
          : memberInstagramURL // ignore: cast_nullable_to_non_nullable
              as String,
      showroomUrl: null == showroomUrl
          ? _value.showroomUrl
          : showroomUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SnsUrl implements _SnsUrl {
  const _$_SnsUrl(
      {required this.memberTwitterUrl,
      required this.memberInstagramURL,
      required this.showroomUrl});

  /// TwitterURL
  @override
  final String memberTwitterUrl;

  /// InstagramURL
  @override
  final String memberInstagramURL;

  /// ShowroomURL
  @override
  final String showroomUrl;

  @override
  String toString() {
    return 'SnsUrl(memberTwitterUrl: $memberTwitterUrl, memberInstagramURL: $memberInstagramURL, showroomUrl: $showroomUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SnsUrl &&
            (identical(other.memberTwitterUrl, memberTwitterUrl) ||
                other.memberTwitterUrl == memberTwitterUrl) &&
            (identical(other.memberInstagramURL, memberInstagramURL) ||
                other.memberInstagramURL == memberInstagramURL) &&
            (identical(other.showroomUrl, showroomUrl) ||
                other.showroomUrl == showroomUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, memberTwitterUrl, memberInstagramURL, showroomUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SnsUrlCopyWith<_$_SnsUrl> get copyWith =>
      __$$_SnsUrlCopyWithImpl<_$_SnsUrl>(this, _$identity);
}

abstract class _SnsUrl implements SnsUrl {
  const factory _SnsUrl(
      {required final String memberTwitterUrl,
      required final String memberInstagramURL,
      required final String showroomUrl}) = _$_SnsUrl;

  @override

  /// TwitterURL
  String get memberTwitterUrl;
  @override

  /// InstagramURL
  String get memberInstagramURL;
  @override

  /// ShowroomURL
  String get showroomUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SnsUrlCopyWith<_$_SnsUrl> get copyWith =>
      throw _privateConstructorUsedError;
}
