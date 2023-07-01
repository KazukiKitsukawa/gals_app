// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppVersionItem {
  String get appName => throw _privateConstructorUsedError;
  String get packageName => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get buildNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppVersionItemCopyWith<AppVersionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionItemCopyWith<$Res> {
  factory $AppVersionItemCopyWith(
          AppVersionItem value, $Res Function(AppVersionItem) then) =
      _$AppVersionItemCopyWithImpl<$Res, AppVersionItem>;
  @useResult
  $Res call(
      {String appName, String packageName, String version, String buildNumber});
}

/// @nodoc
class _$AppVersionItemCopyWithImpl<$Res, $Val extends AppVersionItem>
    implements $AppVersionItemCopyWith<$Res> {
  _$AppVersionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? packageName = null,
    Object? version = null,
    Object? buildNumber = null,
  }) {
    return _then(_value.copyWith(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppVersionItemCopyWith<$Res>
    implements $AppVersionItemCopyWith<$Res> {
  factory _$$_AppVersionItemCopyWith(
          _$_AppVersionItem value, $Res Function(_$_AppVersionItem) then) =
      __$$_AppVersionItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String appName, String packageName, String version, String buildNumber});
}

/// @nodoc
class __$$_AppVersionItemCopyWithImpl<$Res>
    extends _$AppVersionItemCopyWithImpl<$Res, _$_AppVersionItem>
    implements _$$_AppVersionItemCopyWith<$Res> {
  __$$_AppVersionItemCopyWithImpl(
      _$_AppVersionItem _value, $Res Function(_$_AppVersionItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? packageName = null,
    Object? version = null,
    Object? buildNumber = null,
  }) {
    return _then(_$_AppVersionItem(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppVersionItem implements _AppVersionItem {
  const _$_AppVersionItem(
      {required this.appName,
      required this.packageName,
      required this.version,
      required this.buildNumber});

  @override
  final String appName;
  @override
  final String packageName;
  @override
  final String version;
  @override
  final String buildNumber;

  @override
  String toString() {
    return 'AppVersionItem(appName: $appName, packageName: $packageName, version: $version, buildNumber: $buildNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppVersionItem &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appName, packageName, version, buildNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppVersionItemCopyWith<_$_AppVersionItem> get copyWith =>
      __$$_AppVersionItemCopyWithImpl<_$_AppVersionItem>(this, _$identity);
}

abstract class _AppVersionItem implements AppVersionItem {
  const factory _AppVersionItem(
      {required final String appName,
      required final String packageName,
      required final String version,
      required final String buildNumber}) = _$_AppVersionItem;

  @override
  String get appName;
  @override
  String get packageName;
  @override
  String get version;
  @override
  String get buildNumber;
  @override
  @JsonKey(ignore: true)
  _$$_AppVersionItemCopyWith<_$_AppVersionItem> get copyWith =>
      throw _privateConstructorUsedError;
}
