import 'package:freezed_annotation/freezed_annotation.dart';

part 'gals_music_list.freezed.dart';

@freezed
class GalsMusicList with _$GalsMusicList {
  const factory GalsMusicList({
    // imageUrl
    required String imageUrl,

    // tuneCoreUrl
    required String url,

    // releaseDate
    required String releaseDate,

    // songList
    required List<String> songList,

    // title
    required String title,

    // sortNumber
    required num sortNumber,
  }) = _GalsMusicList;

  factory GalsMusicList.fromDocument(Map<String, dynamic> doc) {
    return GalsMusicList(
        imageUrl: doc['imageUrl'] ?? '',
        releaseDate: doc['release_date'] ?? '',
        title: doc['title'] ?? '',
        songList: (doc['song_list'] as List<dynamic>).map((e) => e.toString()).toList(),
        sortNumber: doc['release_sort_num'] ?? -1,
        url: doc['music_url'] ?? '');
  }
}
