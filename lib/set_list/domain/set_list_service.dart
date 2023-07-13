import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gals_app/set_list/state/setlist_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final setListService = Provider((ref) => SetListService());

class SetListService {
  final firebaseInstance = FirebaseFirestore.instance;

  Future<SetListState> fetchAllMusicList() async {
    List<String> musicList = [];
    await firebaseInstance.collectionGroup('music_length').get().then((value) {
      for (var musics in value.docs) {
        for (var galsMusic in musics.data()['all_music']) {
          musicList.add(galsMusic);
        }
      }
    });
    return SetListState(musicList: musicList);
  }
}
