// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gals_member_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GalsMemberInfo {
  /// 優先表示順
  num get memberNum => throw _privateConstructorUsedError;

  /// メンバー名
  String get memberName => throw _privateConstructorUsedError;

  /// アーティスト写真
  String get memberImage => throw _privateConstructorUsedError;

  /// Birthday
  String get birthday => throw _privateConstructorUsedError;

  /// メンバー紹介文
  String get synopsys => throw _privateConstructorUsedError;

  /// SNSリスト
  SnsUrl get urls => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GalsMemberInfoCopyWith<GalsMemberInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalsMemberInfoCopyWith<$Res> {
  factory $GalsMemberInfoCopyWith(
          GalsMemberInfo value, $Res Function(GalsMemberInfo) then) =
      _$GalsMemberInfoCopyWithImpl<$Res, GalsMemberInfo>;
  @useResult
  $Res call(
      {num memberNum,
      String memberName,
      String memberImage,
      String birthday,
      String synopsys,
      SnsUrl urls});

  $SnsUrlCopyWith<$Res> get urls;
}

/// @nodoc
class _$GalsMemberInfoCopyWithImpl<$Res, $Val extends GalsMemberInfo>
    implements $GalsMemberInfoCopyWith<$Res> {
  _$GalsMemberInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberNum = null,
    Object? memberName = null,
    Object? memberImage = null,
    Object? birthday = null,
    Object? synopsys = null,
    Object? urls = null,
  }) {
    return _then(_value.copyWith(
      memberNum: null == memberNum
          ? _value.memberNum
          : memberNum // ignore: cast_nullable_to_non_nullable
              as num,
      memberName: null == memberName
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String,
      memberImage: null == memberImage
          ? _value.memberImage
          : memberImage // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      synopsys: null == synopsys
          ? _value.synopsys
          : synopsys // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as SnsUrl,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SnsUrlCopyWith<$Res> get urls {
    return $SnsUrlCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GalsMemberInfoCopyWith<$Res>
    implements $GalsMemberInfoCopyWith<$Res> {
  factory _$$_GalsMemberInfoCopyWith(
          _$_GalsMemberInfo value, $Res Function(_$_GalsMemberInfo) then) =
      __$$_GalsMemberInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num memberNum,
      String memberName,
      String memberImage,
      String birthday,
      String synopsys,
      SnsUrl urls});

  @override
  $SnsUrlCopyWith<$Res> get urls;
}

/// @nodoc
class __$$_GalsMemberInfoCopyWithImpl<$Res>
    extends _$GalsMemberInfoCopyWithImpl<$Res, _$_GalsMemberInfo>
    implements _$$_GalsMemberInfoCopyWith<$Res> {
  __$$_GalsMemberInfoCopyWithImpl(
      _$_GalsMemberInfo _value, $Res Function(_$_GalsMemberInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberNum = null,
    Object? memberName = null,
    Object? memberImage = null,
    Object? birthday = null,
    Object? synopsys = null,
    Object? urls = null,
  }) {
    return _then(_$_GalsMemberInfo(
      memberNum: null == memberNum
          ? _value.memberNum
          : memberNum // ignore: cast_nullable_to_non_nullable
              as num,
      memberName: null == memberName
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String,
      memberImage: null == memberImage
          ? _value.memberImage
          : memberImage // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      synopsys: null == synopsys
          ? _value.synopsys
          : synopsys // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as SnsUrl,
    ));
  }
}

/// @nodoc

class _$_GalsMemberInfo implements _GalsMemberInfo {
  const _$_GalsMemberInfo(
      {required this.memberNum,
      required this.memberName,
      required this.memberImage,
      required this.birthday,
      required this.synopsys,
      required this.urls});

  /// 優先表示順
  @override
  final num memberNum;

  /// メンバー名
  @override
  final String memberName;

  /// アーティスト写真
  @override
  final String memberImage;

  /// Birthday
  @override
  final String birthday;

  /// メンバー紹介文
  @override
  final String synopsys;

  /// SNSリスト
  @override
  final SnsUrl urls;

  @override
  String toString() {
    return 'GalsMemberInfo(memberNum: $memberNum, memberName: $memberName, memberImage: $memberImage, birthday: $birthday, synopsys: $synopsys, urls: $urls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GalsMemberInfo &&
            (identical(other.memberNum, memberNum) ||
                other.memberNum == memberNum) &&
            (identical(other.memberName, memberName) ||
                other.memberName == memberName) &&
            (identical(other.memberImage, memberImage) ||
                other.memberImage == memberImage) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.synopsys, synopsys) ||
                other.synopsys == synopsys) &&
            (identical(other.urls, urls) || other.urls == urls));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberNum, memberName,
      memberImage, birthday, synopsys, urls);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GalsMemberInfoCopyWith<_$_GalsMemberInfo> get copyWith =>
      __$$_GalsMemberInfoCopyWithImpl<_$_GalsMemberInfo>(this, _$identity);
}

abstract class _GalsMemberInfo implements GalsMemberInfo {
  const factory _GalsMemberInfo(
      {required final num memberNum,
      required final String memberName,
      required final String memberImage,
      required final String birthday,
      required final String synopsys,
      required final SnsUrl urls}) = _$_GalsMemberInfo;

  @override

  /// 優先表示順
  num get memberNum;
  @override

  /// メンバー名
  String get memberName;
  @override

  /// アーティスト写真
  String get memberImage;
  @override

  /// Birthday
  String get birthday;
  @override

  /// メンバー紹介文
  String get synopsys;
  @override

  /// SNSリスト
  SnsUrl get urls;
  @override
  @JsonKey(ignore: true)
  _$$_GalsMemberInfoCopyWith<_$_GalsMemberInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
