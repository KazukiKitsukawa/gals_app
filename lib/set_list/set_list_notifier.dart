import 'dart:async';

import 'package:gals_app/set_list/domain/set_list_service.dart';
import 'package:gals_app/set_list/state/setlist_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final setListNotifier = AsyncNotifierProvider<SetListNotifier, SetListState>(SetListNotifier.new);

class SetListNotifier extends AsyncNotifier<SetListState> {
  @override
  FutureOr<SetListState> build() async {
    final setListServiceProvider = ref.read(setListService);
    return await setListServiceProvider.fetchAllMusicList();
  }

  Future<void> reFetchMusicList() async {
    final setListServiceProvider = ref.read(setListService);
    await update((p0) => setListServiceProvider.fetchAllMusicList());
  }
}
