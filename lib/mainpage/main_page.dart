import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gals_app/component/base_main_page.dart';
import 'package:gals_app/component/large_text.dart';
import 'package:gals_app/component/smail_text.dart';
import 'package:gals_app/mainpage/gals_string.dart';
import 'package:gals_app/member_detail/member_detail_page.dart';
import 'package:gals_app/resources/assets/images.dart';
import 'package:gals_app/util/color.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'main_page_notifier.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  static const path = '/mainPage';
  static const name = 'mainPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainPage = ref.watch(mainPageNotifier.notifier);
    final memberProfile =
        ref.watch(mainPageNotifier.select((value) => value.galsMemberInfo));
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        mainPage.init();
      });
      return null;
    }, []);
    return BaseMainPage(
      showAppbar: false,
      title: 'test',
      isSafeArea: false,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(
                image: GalsAppAssetImage.artistImage,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: GalsColor.backgroundColor,
            automaticallyImplyLeading: false,
            floating: false,
            expandedHeight: MediaQuery.of(context).size.height / 4,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: LargeText(
                isGoogleFont: true,
                text: GalsString.aboutMe,
                textColor: GalsColor.backgroundColor,
                fontSize: 36,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LargeText(
                    textOverflow: TextOverflow.clip,
                    text: GalsString.galsAbout,
                    textColor: Color(0xFF000000),
                    fontSize: 16,
                    spacingHeight: 1.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: SmailText(
                      textOverflow: TextOverflow.clip,
                      text: GalsString.galsAboutSmallText,
                      textColor: Color(0xFF000000),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: LargeText(
                      textOverflow: TextOverflow.clip,
                      text: GalsString.lunaGreetText,
                      textColor: Color(0xFF000000),
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: SmailText(
                      textOverflow: TextOverflow.clip,
                      text: GalsString.lunaGreetSmallText,
                      textColor: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: LargeText(
                  isGoogleFont: true,
                  text: GalsString.memberProfile,
                  textColor: GalsColor.backgroundColor,
                  fontSize: 36,
                ),
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              addAutomaticKeepAlives: true,
              (context, index) {
                return memberProfile.when(data: (data) {
                  return Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: GestureDetector(
                          child: Hero(
                            transitionOnUserGestures: true,
                            tag: data[index].memberImage,
                            child: CachedNetworkImage(
                              imageUrl: data[index].memberImage,
                            ),
                          ),
                          onTap: () {
                            context.goNamed(MemberDetailPage.name,
                                extra: data[index]);
                          },
                        ),
                      ),
                      Positioned(
                        top: 5,
                        left: 15,
                        child: Hero(
                          tag: data[index].memberName,
                          child: LargeText(
                            text: data[index].memberName,
                            isGoogleFont: true,
                          ),
                        ),
                      ),
                    ],
                  );
                }, error: (Object error, StackTrace stackTrace) {
                  return null;
                }, loading: () {
                  return null;
                });
              },
              childCount: 4,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.7,
              crossAxisCount: 2,
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: LargeText(
                  fontSize: 36,
                  text: 'music',
                  textColor: GalsColor.backgroundColor,
                  isGoogleFont: true,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
