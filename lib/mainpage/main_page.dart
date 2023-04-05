import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gals_app/component/base_main_page.dart';
import 'package:gals_app/component/base_text_button.dart';
import 'package:gals_app/component/large_text.dart';
import 'package:gals_app/component/middle_text.dart';
import 'package:gals_app/component/smail_text.dart';
import 'package:gals_app/mainpage/gals_string.dart';
import 'package:gals_app/resources/assets/images.dart';
import 'package:gals_app/util/color.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

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
      isSafeArea: true,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: const FlexibleSpaceBar(
              background: Hero(
                tag: 'gals',
                child: Image(
                  image: GalsAppAssetImage.artistImage,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            backgroundColor: GalsColor.backgroundColor,
            automaticallyImplyLeading: false,
            floating: false,
            expandedHeight: MediaQuery.of(context).size.height / 4,
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: LargeText(
                text: GalsString.aboutMe,
                textColor: Color(0xFF000000),
                fontSize: 36,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
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
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: LargeText(
                text: GalsString.memberProfile,
                textColor: Color(0xFF000000),
                fontSize: 36,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(addAutomaticKeepAlives: false,
                (context, index) {
              return memberProfile.when(data: (data) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          CachedNetworkImage(
                            imageUrl: data[index].memberImage,
                          ),
                          Positioned(
                            top: 0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: LargeText(
                                isGoogleFont: true,
                                text: data[index].memberName,
                                fontSize: 60,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BaseTextButton(
                            onPressed: () {
                              launchUrl(
                                  Uri.parse(data[index].urls.memberTwitterUrl));
                            },
                            buttonText: GalsString.twitter,
                          ),
                          BaseTextButton(
                              onPressed: () {
                                launchUrl(Uri.parse(
                                    data[index].urls.memberInstagramURL));
                              },
                              buttonText: GalsString.instagram),
                          BaseTextButton(
                              onPressed: () {
                                launchUrl(
                                    Uri.parse(data[index].urls.showroomUrl));
                              },
                              buttonText: GalsString.showRoom),
                        ],
                      ),
                      MiddleText(
                        text: GalsString.birthday + data[index].birthday,
                        textColor: const Color(0xFF000000),
                        fontSize: 16,
                      ),
                    ],
                  ),
                );
              }, error: (Object error, StackTrace stackTrace) {
                return null;
              }, loading: () {
                return null;
              });
            }, childCount: 4),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 36,
              width: 36,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: MiddleText(
                  text: 'music',
                  textColor: Colors.amber,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
