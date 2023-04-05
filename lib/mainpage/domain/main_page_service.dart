import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gals_app/mainpage/state/viewitem/gals_member_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final mainPageService = Provider.autoDispose((ref) => MainPageService());

class MainPageService {
  final memberInfo = FirebaseFirestore.instance;

  Future<List<GalsMemberInfo>> fetchMemberInfo() async {
    final List<GalsMemberInfo> galsMember = [];
    await memberInfo.collectionGroup('member_info').get().then((value) {
      for (var memberInfo in value.docs) {
        final memberProfile = GalsMemberInfo.fromDocument(memberInfo.data());
        galsMember.add(memberProfile);
      }
    });
    return galsMember;
  }
}
