import 'package:gals_app/mainpage/domain/main_page_service.dart';
import 'package:gals_app/mainpage/state/main_page_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final mainPageNotifier =
    StateNotifierProvider.autoDispose<MainPageNotifier, MainPageState>((ref) {
  return MainPageNotifier(service: ref.read(mainPageService));
});

class MainPageNotifier extends StateNotifier<MainPageState> {
  MainPageNotifier({required MainPageService service})
      : _mainPageService = service,
        super(const MainPageState());

  final MainPageService _mainPageService;

  /// 初回起動画面
  Future<void> init() async {
    final memberInfo = await _mainPageService.fetchMemberInfo();
    memberInfo.sort(((a, b) => a.memberNum.compareTo(b.memberNum)));
    state = state.copyWith(
      galsMemberInfo: AsyncValue.data(memberInfo),
    );
  }
}
