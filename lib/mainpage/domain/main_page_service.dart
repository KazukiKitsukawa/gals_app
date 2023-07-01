import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gals_app/mainpage/state/viewitem/gals_member_info.dart';
import 'package:gals_app/mainpage/state/viewitem/gals_music_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final mainPageService = Provider.autoDispose((ref) => MainPageService());

class MainPageService {
  final firebaseInstance = FirebaseFirestore.instance;

  ///
  /// メインページ　メンバー詳細取得
  ///
  Future<List<GalsMemberInfo>> fetchMemberInfo() async {
    final List<GalsMemberInfo> galsMember = [];
    await firebaseInstance.collectionGroup('member_info').get().then((value) {
      for (var memberInfo in value.docs) {
        final memberProfile = GalsMemberInfo.fromDocument(memberInfo.data());
        galsMember.add(memberProfile);
      }
    });
    return galsMember;
  }

  ///
  /// メインページ　音楽情報取得
  ///
  Future<List<GalsMusicList>> fetchMusicList() async {
    final List<GalsMusicList> musicList = [];
    await firebaseInstance.collectionGroup('music_list').get().then((value) {
      for (var galsMusicList in value.docs) {
        final galsMusicListItem = GalsMusicList.fromDocument(galsMusicList.data());

        musicList.add(galsMusicListItem);

        musicList.sort(((a, b) => b.sortNumber.compareTo(a.sortNumber)));
      }
    });
    return musicList;
  }
}
