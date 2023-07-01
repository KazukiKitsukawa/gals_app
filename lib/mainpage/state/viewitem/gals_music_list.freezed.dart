// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gals_music_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GalsMusicList {
// imageUrl
  String get imageUrl => throw _privateConstructorUsedError; // tuneCoreUrl
  String get url => throw _privateConstructorUsedError; // releaseDate
  String get releaseDate => throw _privateConstructorUsedError; // songList
  List<String> get songList => throw _privateConstructorUsedError; // title
  String get title => throw _privateConstructorUsedError; // sortNumber
  num get sortNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GalsMusicListCopyWith<GalsMusicList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalsMusicListCopyWith<$Res> {
  factory $GalsMusicListCopyWith(
          GalsMusicList value, $Res Function(GalsMusicList) then) =
      _$GalsMusicListCopyWithImpl<$Res, GalsMusicList>;
  @useResult
  $Res call(
      {String imageUrl,
      String url,
      String releaseDate,
      List<String> songList,
      String title,
      num sortNumber});
}

/// @nodoc
class _$GalsMusicListCopyWithImpl<$Res, $Val extends GalsMusicList>
    implements $GalsMusicListCopyWith<$Res> {
  _$GalsMusicListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? url = null,
    Object? releaseDate = null,
    Object? songList = null,
    Object? title = null,
    Object? sortNumber = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      songList: null == songList
          ? _value.songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sortNumber: null == sortNumber
          ? _value.sortNumber
          : sortNumber // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GalsMusicListCopyWith<$Res>
    implements $GalsMusicListCopyWith<$Res> {
  factory _$$_GalsMusicListCopyWith(
          _$_GalsMusicList value, $Res Function(_$_GalsMusicList) then) =
      __$$_GalsMusicListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imageUrl,
      String url,
      String releaseDate,
      List<String> songList,
      String title,
      num sortNumber});
}

/// @nodoc
class __$$_GalsMusicListCopyWithImpl<$Res>
    extends _$GalsMusicListCopyWithImpl<$Res, _$_GalsMusicList>
    implements _$$_GalsMusicListCopyWith<$Res> {
  __$$_GalsMusicListCopyWithImpl(
      _$_GalsMusicList _value, $Res Function(_$_GalsMusicList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? url = null,
    Object? releaseDate = null,
    Object? songList = null,
    Object? title = null,
    Object? sortNumber = null,
  }) {
    return _then(_$_GalsMusicList(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      songList: null == songList
          ? _value._songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sortNumber: null == sortNumber
          ? _value.sortNumber
          : sortNumber // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_GalsMusicList implements _GalsMusicList {
  const _$_GalsMusicList(
      {required this.imageUrl,
      required this.url,
      required this.releaseDate,
      required final List<String> songList,
      required this.title,
      required this.sortNumber})
      : _songList = songList;

// imageUrl
  @override
  final String imageUrl;
// tuneCoreUrl
  @override
  final String url;
// releaseDate
  @override
  final String releaseDate;
// songList
  final List<String> _songList;
// songList
  @override
  List<String> get songList {
    if (_songList is EqualUnmodifiableListView) return _songList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songList);
  }

// title
  @override
  final String title;
// sortNumber
  @override
  final num sortNumber;

  @override
  String toString() {
    return 'GalsMusicList(imageUrl: $imageUrl, url: $url, releaseDate: $releaseDate, songList: $songList, title: $title, sortNumber: $sortNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GalsMusicList &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            const DeepCollectionEquality().equals(other._songList, _songList) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sortNumber, sortNumber) ||
                other.sortNumber == sortNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, url, releaseDate,
      const DeepCollectionEquality().hash(_songList), title, sortNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GalsMusicListCopyWith<_$_GalsMusicList> get copyWith =>
      __$$_GalsMusicListCopyWithImpl<_$_GalsMusicList>(this, _$identity);
}

abstract class _GalsMusicList implements GalsMusicList {
  const factory _GalsMusicList(
      {required final String imageUrl,
      required final String url,
      required final String releaseDate,
      required final List<String> songList,
      required final String title,
      required final num sortNumber}) = _$_GalsMusicList;

  @override // imageUrl
  String get imageUrl;
  @override // tuneCoreUrl
  String get url;
  @override // releaseDate
  String get releaseDate;
  @override // songList
  List<String> get songList;
  @override // title
  String get title;
  @override // sortNumber
  num get sortNumber;
  @override
  @JsonKey(ignore: true)
  _$$_GalsMusicListCopyWith<_$_GalsMusicList> get copyWith =>
      throw _privateConstructorUsedError;
}
