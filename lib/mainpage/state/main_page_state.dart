import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gals_app/mainpage/state/viewitem/gals_music_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:gals_app/mainpage/state/viewitem/gals_member_info.dart';

part 'main_page_state.freezed.dart';

@freezed
class MainPageState with _$MainPageState {
  const factory MainPageState({
    // メンバー情報
    @Default(AsyncValue.loading())
    AsyncValue<List<GalsMemberInfo>> galsMemberInfo,
    // 音楽情報
    @Default(AsyncValue.loading())
    AsyncValue<List<GalsMusicList>> galsMusicList,
  }) = _MainPageState;
}
